<?php
	
	include_once '0.common.php';
	
	class Logger{
		private $logPath = 'Logs'; // каталог с логами
		private $File; // файл логирования
		
		protected static $_instance = null;
		
		public static function getInstance(){ // получить экземпляр данного класса
			if(self::$_instance === null){ // если экземпляр данного класса  не создан
				self::$_instance = new self;  // создаем экземпляр данного класса
			}
			return self::$_instance; // возвращаем экземпляр данного класса
		}
		
		public static function logError($logDir, $msg){
			$obj = self::getInstance();
			
			$filename = date("d.m.Y") . ".log"; // имя файла
			
			if($obj->File !== false){
				$obj->File = fopen($obj->logPath."/".$logDir."/".$filename, "a+");
				
				$date = getDateArray();
				
				fwrite($obj->File, $date["days"] . "/" . $date["months"] . "/" . $date["years"] . " " . $date["hours"] . ":" . $date["minutes"] . ":" . $date["seconds"] . '.' . $date["milliseconds"] . "\n");
				fwrite($obj->File, $msg . "\n");
				fwrite($obj->File, "===================================================\n");
			}
		}
		
		function __destruct(){
			if($this->File !== false){
				fclose($this->File);
			}
		}
		
		private function __clone(){} //запрещаем клонирование объекта модификатором private
    
    private function __wakeup(){} //запрещаем клонирование объекта модификатором private
		
		/* private $File;
  	
		function __construct($filename) {
			$this->File = fopen($filename, "a+");
		}
		
		function __destruct() {
			if ($this->File !== false) {
				fclose($this->File);
			}
		}
  
		public function trace($msg){
			if ($this->File !== false){
				$date = getDateArray();
				
				fwrite($this->File, $date["days"] . "/" . $date["months"] . "/" . $date["years"] . " " . $date["hours"] . ":" . $date["minutes"] . ":" . $date["seconds"] . '.' . $date["milliseconds"] . "\n");
				fwrite($this->File, $msg . "\n");
				fwrite($this->File, "===================================================\n");
			}
		} */
	}
?>