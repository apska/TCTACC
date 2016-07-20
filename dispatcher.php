<?php
	try{
		require_once 'modules/class.messages.php';
		require_once 'modules/class.logger.php';
		
		if($_SERVER["REQUEST_METHOD"]=='POST'){
			if(!empty($_POST["act_type"])){
				$ActionType = $_POST["act_type"];
				
				switch($ActionType){
					case "exit":
						require_once 'modules/exit.php';
						break;
					default:
						break;
				}
			}
		}
		
		if($_SERVER["REQUEST_METHOD"]=='GET'){
			if(!empty($_GET["act_type"])){
				$ActionType = $_GET["act_type"];
				
				if($ActionType == md5('activate')){
					require_once 'modules/activation.php';
				}else{
				
					switch($ActionType){
						case "captcha":
							require_once 'modules/noise-picture.php';
							break;
						default:
							break;
					}
				}
			}
		}
	}catch(Exception $e){
		Messages::Message(99, 'Внутренняя ошибка.');
		Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
		exit();
	}
?>