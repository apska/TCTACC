<?php
	try{
		require_once 'class.messages.php';
		require_once 'class.logger.php';
		
		if($_SERVER["REQUEST_METHOD"]=='POST'){
			header('Content-type: text/plain; charset=utf-8');
			
			if(!empty($_POST["recoverEmail"]) and !empty($_POST["recoverCaptcha"])){
				try{
					$recoverEmail  = $_POST["recoverEmail"];
					
					if(!filter_var($recoverEmail, FILTER_VALIDATE_EMAIL)){
						Messages::Message(200,'E-mail имеет недопустимий формат! Например, "example@gmail.com"!');
					}
					
					if(isset($_SESSION["Captcha"])){
						if($_SESSION["Captcha"] != $_POST["recoverCaptcha"]){
							Messages::Message(100,'Вы ввели неправильный код безопасности.');
						}
					}else{
						Messages::Message(150,'Включите отображение картинок для проверки кода безопасности.');
					}
					
					if(Messages::currentErrCode() != 0){
						exit();
					}
					
					require_once('class.db.php');
					
					DataBase::getInstance();
					
					$recoverEmail = DataBase::clearData($recoverEmail);
					
					$sql = "SELECT UID, Login, email FROM users WHERE email = ".$recoverEmail;
					
					$user = DataBase::myQuery($sql);
					
					if($user){
						$email = $user["email"];
						$Login = $user["Login"];
						$uid = $user["UID"];
						
						$chars="qazxswedcvfrtgbnhyujmkiolp1234567890QAZXSWEDCVFRTGBNHYUJMKIOLP";
						$max=10;
						$size=StrLen($chars)-1;
						$pass=null;
						
						while($max--){
							$pass.=$chars[rand(0,$size)];
						}
						
						list($newMdPass, $passSalt, $iterationCount) = getRFC2898_MD5($pass);
						
						$bRollBack = false;
						$sql = "UPDATE users SET Password='".$newMdPass."', Salt='".$passSalt."', SaltIteration=".$iterationCount." WHERE UID=".$uid;
						
						DataBase::beginMyTransaction();
						
						$res = DataBase::myExec($sql);
						
						if($res<1){
							//echo "Ошибка выполнения запроса восстановления пароля.";
							exit();
						}else{
							// Отправляем письмо
							$subject  = "Востановления пароля пользователю ".$Login." для сайта www.tctacc.pe.hu!";
							$message  = "Вы запросили восстановление пароля для аккаунта ".$Login." на сайте www.tctacc.pe.hu\r\n".
													"Ваш новый пароль: ".$pass."\r\n".
													"С уважением, Администрация сайта www.tctacc.pe.hu";
							$headers  = "Content-type:text/plain; Charset=utf-8\r\n";
							$headers .= "From: service@tctacc.pe.hu\r\n";
							
							//*****!!!!! РАСКОММЕНТИРОВАТЬ ПЕРЕД ЗАЛИВКОЙ НА СЕРВЕР
							//if(mail($email, $subject, $message, $headers)){
								Messages::Message(0, 'Новый пароль отправлен на ваш e-mail!');
							//}else{
							//	Messages::Message(99, 'Ошибка при отправке письма восстановления пароля.');
							//	throw new Exception("Ошибка при отправке письма восстановления пароля.");
							//}
						}
					}else{
						Messages::Message(20, 'Не найден аккаунт с электронной почтой '.$recoverEmail.'.');
						exit();
					}
				}catch(Exception $e){
					$bRollBack = true;
					Messages::Message(99, 'Внутренняя ошибка.');
					Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
					exit();
				}finally{
					if($bRollBack){
						DataBase::myRollBack();
					}else{
						DataBase::myCommit();
					}
				}
			}else{
				Messages::Message(11, 'Не все поля формы заполнены!');
			}
		}
	}catch(Exception $e){
		Messages::Message(99, 'Внутренняя ошибка.');
		Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
		exit();
	}
?>