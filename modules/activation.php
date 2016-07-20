<?php
	try{
		require_once 'class.messages.php';
		require_once 'class.logger.php';
		
		if($_SERVER["REQUEST_METHOD"]=='GET'){
			header('Content-type: text/html; charset=utf-8');
			
			//"http://www.tctacc.pe.hu/dispatcher.php?act_type=".$act_type."&l=".$login."&u=".$uid."\n\n".
			if(!empty($_GET["l"]) and !empty($_GET["u"])){
				
				require_once('class.db.php');
				
				DataBase::getInstance();
				
				$Login = DataBase::clearData($_GET["l"]);
				$uid   = $_GET["u"];
				
				$sql = "SELECT UID FROM users WHERE Login = ".$Login;
				
				$user = DataBase::myQuery($sql);
				
				if($user){
					if(md5($user["UID"]) != $uid){
						echo "Ошибка! Ваш аккуант не активирован. Обратитесь в службу поддержки.<br/><a href='index.php'>Главная страница</a>";
					}else{
						$sql = "UPDATE users SET IsActive=1 WHERE Login=".$Login;
						$res = DataBase::myExec($sql);
						//echo "REs = ".$res."<br/>";
						if($res<1){
							echo "Ошибка выполнения запроса активации";
							exit();
						}else{
							echo "Ваш аккуант <strong>".$Login."</strong> успешно активирован! Теперь вы можете зайти на сайт под своим логином и паролем!<br/><a href='index.php'>Главная страница</a>";
						}
					}
				}else{
					echo 'Ошибка. Не найден аккаунт для активации.<br/><a href="index.php">Главная страница</a>';
					exit();
				}
				
			}else{
				echo "<h3>Отсутствуют параметры для активации!</h3>";
				exit();
			}
		}
	}catch(Exception $e){
		Messages::Message(99, 'Внутренняя ошибка.');
		Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
		exit();
	}
?>