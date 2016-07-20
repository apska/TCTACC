<?php
	try{
		require_once 'modules/0.common.php';
		require_once 'modules/class.messages.php';
		require_once 'modules/class.logger.php';

		require_once 'modules/template_class.php';
		
		//***** ТЕСТ Класса Messages
		/* header('Content-type: text/plain; charset=utf-8');
		require_once 'modules/class.messages.php';
		
		Messages::Message(10,'Первое сообщение');
		Messages::Message(11,'Второе сообщение');
		Messages::Message(12,'Третье сообщение');
		
		echo Messages::currentErrCode();
		
		
		exit(); */
		
		//*******
		
		// проверяем включены ли куки
		/* if(!checkEnableCookies()){
			
			header('Content-type: text/html; charset=utf-8');
			echo '<h2>Для работы на сайте необходимо включить СOOKIE.</h2>';
			exit();
		} */
		
		session_start();
		
		if(empty($_COOKIE["PHPSESSID"])){
			header('Content-type: text/html; charset=utf-8');
			echo '<h2>Для работы на сайте необходимо включить СOOKIE.</h2>';
			exit();
		}
		
		header('Content-type: text/html; charset=utf-8');
		if(!empty($_SESSION["Login"])){
			//echo "Привет: ".$_SESSION["Login"];
			
			$tpl = new template_class;
			
			if(!empty($_POST["act_type"])){
				$ActionType = $_POST["act_type"];
				
				switch($ActionType){
					case "getImportPage":
						// открываем шаблон
						$tpl->get_tpl('tpl/CardImport.html');
						
						// устанавливаем переменные шаблона
						//$tpl->set_value('USER',$_SESSION["Login"]);
						
						// запускаем парсинг шаблона
						//$tpl->tpl_parse();
						
						// выводим HTML
						echo $tpl->html;
						
						break;
					case "getMainPage":
						echo getMainPage();
						break;
					case "getCardsFilterPage":
						echo getCardsFilterPage();
						break;
					case "findCards":
						echo findCards();
						break;
					case "importCards":
						importCards();
						break;
					default:
						exit();
						break;
				}
			
			}else{
			
				// открываем шаблон
				//$tpl->get_tpl('tpl/main.tpl');
				$tpl->get_tpl('tpl/main.html');
				
				// устанавливаем переменные шаблона
				$tpl->set_value('USER', $_SESSION["Login"]);
				$tpl->set_value('CONTENT', getMainPage());
				
				// запускаем парсинг шаблона
				$tpl->tpl_parse();
				
				// выводим HTML
				echo $tpl->html;
			}
		}else{
			
			if(!empty($_POST["act_type"])){
				$ActionType = $_POST["act_type"];
				
				switch($ActionType){
					case "login":
						include 'modules/login.php';
						break;
					case "register":
						include 'modules/register.php';
						break;
					case "recover_pass":
						include 'modules/recover_pass.php';
						break;
					default:
						exit();
						break;
				}
			
			}else{
				echo join('',file('pages/index.html'));
			}
		}
	}catch(Exception $e){
		Messages::Message(99, 'Внутренняя ошибка.');
		Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
		exit();
	}
	
	
?>