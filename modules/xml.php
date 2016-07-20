<?php
	require_once 'modules/class.messages.php';
	
	function libxml_display_error($error){
    switch($error->level){
      case LIBXML_ERR_WARNING:
        $result = "Предупреждение $error->code: ";
        break;
      case LIBXML_ERR_ERROR:
        $result = "Ошибка $error->code: ";
        break;
      case LIBXML_ERR_FATAL:
        $result = "Критическая ошибка $error->code: ";
        break;
			default:
				break;
    }
    
		$result .= trim($error->message);
    
		/* if($error->file){
      $result .=  " в файле: $error->file";
    }
    $result .= " на строке $error->line"; */

    return $result;
	}

	function libxml_display_errors() {
    $errors = libxml_get_errors();
    foreach($errors as $error){
      Messages::Message(199, libxml_display_error($error));
    }
    libxml_clear_errors();
	}
?>