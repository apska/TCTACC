<?php
	class Messages{
		protected static $_instance = null;
		protected $error_code = 0;
		protected $messages = array();
		
		public static function getInstance(){ // получить экземпляр данного класса
			if(self::$_instance === null){ // если экземпляр данного класса  не создан
				self::$_instance = new self;  // создаем экземпляр данного класса
			}
			return self::$_instance; // возвращаем экземпляр данного класса
		}
		
		// подключаемся к БД при создании объекта
		private function __construct(){
			
		}
		
		// выводим сообщения при уничтожении объекта
		function __destruct(){
			$MessCount = Count($this->messages);
			if($MessCount > 0){
				$messShown = '';
				for($i=0; $i < $MessCount; $i++){
					if($messShown == ''){
						$messShown = $this->messages[$i];
					}else{
						$messShown = $messShown . "[NL]" . $this->messages[$i];
					}
				}
				
				if($messShown != ''){
					header('Content-type: text/plain; charset=utf-8');
					echo "<ERR_CODE>".$this->error_code."</ERR_CODE><ERR_MESSAGE>".$messShown."</ERR_MESSAGE>";
				}
			}
		}
		
		private function __clone(){} //запрещаем клонирование объекта модификатором private
    
    private function __wakeup(){} //запрещаем клонирование объекта модификатором private
    
		static function Message($err_code, $mess='default message'){
			$obj = self::getInstance();
			
			$obj->error_code = $err_code;
			array_push($obj->messages, $mess);
			
			/* $this->error_code = $err_code;
			array_push($this->messages, $mess); */
		}
		
		// возвращает текущий код ошибки
		static function currentErrCode(){
			$obj = self::getInstance();
			return $obj->error_code;
		}
	}
?>