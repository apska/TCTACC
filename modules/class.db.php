<?php
	
	require_once 'class.messages.php';
	require_once 'class.logger.php';
	
	class DataBase{
		
		private $db_host			= "localhost";
		private $db_login			= "u332101712_apska";
		private $db_password	= "789976apska1904";
		private $db_name			= "u332101712_tct";
		
		private $connection = null;
		
		protected static $_instance = null;
		
		public static function getInstance(){ // получить экземпляр данного класса
			if(self::$_instance === null){ // если экземпляр данного класса  не создан
				self::$_instance = new self;  // создаем экземпляр данного класса
			}
			return self::$_instance; // возвращаем экземпляр данного класса
		}
		
		// подключаемся к БД при создании объекта
		function __construct(){
			try{
				$this->connection = new PDO('mysql:host='.$this->db_host.';dbname='.$this->db_name, $this->db_login, $this->db_password);
			}catch(PDOException $e){
				Messages::Message(99, 'Внутренняя ошибка.');
				Logger::logError("Errors", 'Ошибка соединения с БД: ' . $e->getMessage());
				exit();
			}
		}
		
		// удаляем соединение при уничтожении объекта
		function __destruct(){
			$this->connection = null;
		}
		
		// обрабатываем переменные запроса
		static function clearData($data, $type="s"){
			$obj = self::getInstance();
			
			switch($type){
				case "s":
					$data = $obj->connection->quote(trim(strip_tags($data)));
					break;
				case "i":
					$data = abs((int)$data);
					break;
			}
			return $data;
		}
		
		// запрос на выборку
		static function myQuery($sql, $bGetStmt = false, $fetch = PDO::FETCH_ASSOC){
			try{
				$obj = self::getInstance();
				
				$statement = $obj->connection->query($sql);
				if(!$statement)
					throw new PDOException("Code: " . $obj->connection->errorCode() . ". ErrorInfo: " . serialize($obj->connection->errorInfo()) . ".\nSQL: ".$sql);
				
				if($bGetStmt){
					return $statement;
				}else{
					return $statement->fetch($fetch);
				}
			}catch(PDOException $e){
				Messages::Message(99, 'Внутренняя ошибка.');
				Logger::logError("Errors", 'Ошибка запроса: ' . $e->getMessage());
				exit();
			}
		}
		
		// запрос на исполнение
		static function myExec($sql){
			try{
				$obj = self::getInstance();
				
				$res = $obj->connection->exec($sql);
				if(!(bool)$res)
					throw new PDOException("Code: " . $obj->connection->errorCode() . ". ErrorInfo: " . serialize($obj->connection->errorInfo()) . ".\nSQL: ".$sql);
				
				return $res;
			}catch(PDOException $e){
				Messages::Message(99, 'Внутренняя ошибка.');
				Logger::logError("Errors", 'Ошибка запроса: ' . $e->getMessage());
				exit();
			}
		}
		
		static function myPrepare($sql){
			try{
			/* $var="User', email='test";
			$a=new PDO("mysql:host=localhost;dbname=database;","root","");
			$b=$a->prepare("UPDATE `users` SET user=:var");
			$b->bindParam(":var",$var);
			$b->execute(); */
				$obj = self::getInstance();
				
				$prepQuery = $obj->connection->prepare($sql);
				
				return $prepQuery;
			}catch(PDOException $e){
				Messages::Message(99, 'Внутренняя ошибка.');
				Logger::logError("Errors", 'Ошибка запроса: ' . $e->getMessage());
				exit();
			}
		}
		
		// начало транзакции
		static function beginMyTransaction(){
			$obj = self::getInstance();
			
			$obj->connection->beginTransaction();
		}
		
		// откат транзакции
		static function myRollBack(){
			$obj = self::getInstance();
			
			$obj->connection->rollBack();
		}
		
		// подтверждение транзакции
		static function myCommit(){
			$obj = self::getInstance();
			
			$obj->connection->commit();
		}
		
		private function __clone(){} //запрещаем клонирование объекта модификатором private
    
    private function __wakeup(){} //запрещаем клонирование объекта модификатором private
    
	}
?>