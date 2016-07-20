<?php
	try{
		require_once 'class.messages.php';
		require_once 'class.logger.php';
		
		if($_SERVER["REQUEST_METHOD"]=='POST'){
			header('Content-type: text/plain; charset=utf-8');
			
			if(!empty($_POST["login"]) and !empty($_POST["password"])){
				require_once('class.db.php');
				
				DataBase::getInstance();
			
				$Login    = DataBase::clearData($_POST["login"]);
				
				$sql = "SELECT UID, Login, Password, IsActive, Salt, SaltIteration ".
							 "FROM users ".
							 "WHERE Login = ".$Login;
				
				$user = DataBase::myQuery($sql);
				
				if($user){
					list($MD5SaltedPass, $salt, $SaltIteration) = getRFC2898_MD5($_POST["password"], $user["Salt"], $user["SaltIteration"]);
					
					if($MD5SaltedPass != $user["Password"]){
						Messages::Message(10, 'Вы ошиблись при вводе логина или пароля.');
						exit();
					}
					
					if($user["IsActive"] != 1){
						Messages::Message(12, 'Ваш аккаунт не активирован. Активируйте Ваш аккаунт перейдя по ссылке из письма.');
						exit();
					}else{
						$_SESSION["UID"] = $user["UID"];
						$_SESSION["Login"] = $user["Login"];
						
						Messages::Message(0);
						exit();
					}
				}else{
					Messages::Message(10, 'Вы ошиблись при вводе логина или пароля.');
					exit();
				}
			}else{
				Messages::Message(11, 'Не все поля формы заполнены!');
				exit();
			}
		}
	}catch(Exception $e){
		Messages::Message(99, 'Внутренняя ошибка.');
		Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
		exit();
	}
?>