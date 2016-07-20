<?php
	
	include_once '0.common.php';
	
	class logger0{
		
		private $File;
  	
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
		}
	}
?>