<?php
	try{
		header('Content-type: text/plain; charset=utf-8');
		
		require_once 'class.messages.php';
		require_once 'class.logger.php';
		
		if($_SERVER["REQUEST_METHOD"]=='POST'){
			if(!empty($_POST["regLogin"]) and !empty($_POST["regEmail"]) and !empty($_POST["regPassword"]) and !empty($_POST["r_regPassword"]) and !empty($_POST["regCaptcha"])){
				$regLogin      = $_POST["regLogin"];
				$regEmail      = $_POST["regEmail"];
				$regPassword   = $_POST["regPassword"];
				$r_regPassword = $_POST["r_regPassword"];
				
				if(isset($_SESSION["Captcha"])){
					if($_SESSION["Captcha"] != $_POST["regCaptcha"]){
						Messages::Message(100,'Вы ввели неправильный код безопасности.');
					}
				}else{
					Messages::Message(150,'Включите отображение картинок для проверки кода безопасности.');
				}
				
				if(!filter_var($regEmail, FILTER_VALIDATE_EMAIL)){
					Messages::Message(200,'E-mail имеет недопустимий формат! Например, "example@gmail.com"!');
				}
				
				if($regPassword != $r_regPassword){
					Messages::Message(125,'Пароли не совпадают!');
				}
				
				if(Messages::currentErrCode() != 0){
					exit();
				}
				
				$bRollBack = false;
				
				try{
					require_once('class.db.php');
					
					DataBase::getInstance();
					
					//проверяем Логин
					$regLogin = DataBase::clearData($regLogin);
					
					$sql = "SELECT UID FROM users WHERE Login = ".$regLogin;
					
					$user = DataBase::myQuery($sql);
					if($user){
						Messages::Message(110,'Пользователь с логином '.$regLogin.' уже существует.');
					}
					
					//проверяем Почту
					$regEmail = DataBase::clearData($regEmail);
					
					$sql = "SELECT UID FROM users WHERE Email = ".$regEmail;
					
					$user = DataBase::myQuery($sql);
					if($user){
						Messages::Message(110,'Пользователь с e-mail '.$regEmail.' уже существует.');
					}
					
					if(Messages::currentErrCode() != 0){
						exit();
					}
					
					$dateTime = date("Y-m-d H:i:s");
					
					list($MDregPassword, $passSalt, $iterationCount) = getRFC2898_MD5($regPassword);
					
					$sql = "INSERT INTO users(
																			Login,
																			Password,
																			email,
																			EnterCount,
																			RegDateTime,
																			LastEnter,
																			Salt,
																			SaltIteration
																		)
														 VALUES ("
																			.$regLogin.",'"
																			.$MDregPassword."',"
																			.$regEmail.",
																			0,'"
																			.$dateTime."','"
																			.$dateTime."','"
																			.$passSalt."',"
																			.$iterationCount."
																		 )";
					DataBase::beginMyTransaction();
					$res = DataBase::myExec($sql);
					
					if($res<1){
						//echo "Ошибка выполнения запроса!";
						exit();
					}else{
						//отправка подтверждения регистрации
						$sql = "SELECT UID, Login, email FROM users WHERE Email = ".$regEmail;
						
						$user = DataBase::myQuery($sql);
						if(!$user){
							$bRollBack = true;
							//echo "Ошибка запроса!";
							exit();
						}
						
						$uid      = md5($user['UID']);
						$login    = $user['Login'];
						$email    = $user['email'];
						$act_type = md5('activate');
						
						$subject  = "Подтверждение регистрации.";
						$message  = "Здравствуйте! Спасибо за регистрацию на сайте www.tctacc.pe.hu\r\n".
												"Ваш логин: ".$login."\r\n".
												"Для того чтобы войти в свой аккуант его нужно активировать.\r\n".
												"Чтобы активировать Ваш аккаунт, перейдите по ссылке:\r\n".
												"http://www.tctacc.pe.hu/dispatcher.php?act_type=".$act_type."&l=".$login."&u=".$uid."\r\n\r\n".
												"С уважением, Администрация сайта www.tctacc.pe.hu";
						$headers  = "Content-type:text/plain; Charset=utf-8\r\n";
						$headers .= "From: service@tctacc.pe.hu\r\n";
						
						//*****!!!!! РАСКОММЕНТИРОВАТЬ ПЕРЕД ЗАЛИВКОЙ НА СЕРВЕР
						//if(mail($email, $subject, $message, $headers)){
							Messages::Message(0, 'Вы успешно зарегистрировались! На Ваш E-mail выслано письмо с cсылкой, для активации вашего аккуанта.');
						//}else{
						//	Messages::Message(99, 'Ошибка при отправке письма активации.');
						//	throw new Exception("Ошибка при отправке письма активации.");
						//}
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