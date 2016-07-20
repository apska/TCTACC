<?php
	require_once 'modules/class.messages.php';
	require_once 'modules/class.logger.php';
	require_once 'modules/xml.php';
	require_once('class.db.php');
	
	function fillStrRight($value, $length = 2){
		return str_pad($value, $length, "0", STR_PAD_LEFT);
	}

	function getDateArray(){
		$currentDate = getdate();
		
		return array(
			"days"           => fillStrRight($currentDate["mday"]),
			"months"         => fillStrRight($currentDate["mon"]),
			"years"          => fillStrRight($currentDate["year"]),
			
			"hours"         => fillStrRight($currentDate["hours"]),
			"minutes"       => fillStrRight($currentDate["minutes"]),
			"seconds"       => fillStrRight($currentDate["seconds"]),
			"milliseconds"  => fillStrRight(floor(microtime(true) * 1000 - time() * 1000), 3)
		);
	}
	
	//генерерация соли
	function genSalt(){
		$chars = "qazxswedcvfrtgbnhyujmkiolp1234567890QAZXSWEDCVFRTGBNHYUJMKIOLP";
		$max = 32;
		$size = StrLen($chars)-1;
		$randStr = null;
		
		while($max--){
			$randStr.=$chars[rand(0,$size)];
		}
		
		$salt = str_replace('=', '', base64_encode(md5(microtime() . $randStr)));
		
		return $salt;
	}
	
	//функция засолки строки/пароля
	function getRFC2898_MD5($string, $salt = false, $iterationCount = false){
		if(!$salt){
			$salt = genSalt();
		}
		
		if(!$iterationCount){
			$iterationCount = rand(5, 10);
		}
		
		for($i=0; $i < $iterationCount; $i++)
			$result = md5($string . $salt);
		
		return array ($result, $salt, $iterationCount);
	}
	
	//импорт карт
	function importCards(){
		try{
			if(!empty($_POST["ImportType"])){
				$impType = $_POST["ImportType"];
				
				switch($impType){
					case 'xml':
						if(!empty($_POST["ImportXmlText"])){
							try{
								$uid = $_SESSION["UID"];
								$bRollBack = false;
								DataBase::getInstance();
								
								//получаем карты пользователя
								$sql = "SELECT CardID, CardCount FROM users_cards WHERE uid = ".$uid;
								
								$statement = DataBase::myQuery($sql, true);
								
								//echo $user_cards->rowCount();
								
								
								$cardsArray = array();
								$cardsUpdateArray = array();
								
								while($card = $statement->fetch(PDO::FETCH_ASSOC)){
									$cardsArray[$card["CardID"]] = $card["CardCount"];
								}
								
								//var_dump($cardsArray);
								
								//exit();
								
								if($statement->rowCount() <= 0){
									$bUserHaveCards = false;
								}else{
									$bUserHaveCards = true;
								}
								
								//обрабатываем пришедшую XML
								$sXml = $_POST["ImportXmlText"];
								
								libxml_use_internal_errors(true);
								
								$dom = new DomDocument();
								$dom->preserveWhiteSpace = false;
								$dom->loadXML($sXml);
								
								
								if($dom->schemaValidate('XML/XSD/UserCards.xsd')){
									$queryInsertValues = "";
									$InsertCardsCount = 0;
									
									$xpath = new DOMXpath($dom);
									
									$userCards = $xpath->query("/userCards/item/value/userCard");
									
									foreach($userCards as $card){
										$cardNodes = $card->childNodes;
										foreach($cardNodes as $cardNode){
											if($cardNode->nodeName == "c_id"){
												$xmlCardID = $cardNode->nodeValue;
											}
											
											if($cardNode->nodeName == "cha_id"){
												$xmlFighterID = $cardNode->nodeValue;
											}
											
											if($cardNode->nodeName == "nb"){
												$xmlCardCount = $cardNode->nodeValue;
											}
										}
										//echo $xmlCardID." ".$xmlCardCount."|";
										
										//Формируем списки карт на вставку и обновление
										if($bUserHaveCards){
											if(array_key_exists($xmlCardID, $cardsArray)){
												if($cardsArray[$xmlCardID] != $xmlCardCount)
													$cardsUpdateArray[$xmlCardID] = $xmlCardCount;
											
											}else{
												if($queryInsertValues != '')
													$queryInsertValues = $queryInsertValues.",";
												
												if($queryInsertValues == ''){
													$queryInsertValues = "(".$uid.",".$xmlFighterID.",".$xmlCardID.",".$xmlCardCount.")";
												}else{
													$queryInsertValues = $queryInsertValues. "(".$uid.",".$xmlFighterID.",".$xmlCardID.",".$xmlCardCount.")";
												}
												
												$InsertCardsCount++;
											}
										}else{
											if($queryInsertValues != '')
												$queryInsertValues = $queryInsertValues.",";
											
											if($queryInsertValues == ''){
												$queryInsertValues = "(".$uid.",".$xmlFighterID.",".$xmlCardID.",".$xmlCardCount.")";
											}else{
												$queryInsertValues = $queryInsertValues. "(".$uid.",".$xmlFighterID.",".$xmlCardID.",".$xmlCardCount.")";
											}
											
											$InsertCardsCount++;
										}
									}
								}else{
									Messages::Message(8, 'Ошибка в труктуре данных о картах:');
									libxml_display_errors();
									exit();
								}
								
								//echo $queryInsertValues;
								
								//var_dump($cardsUpdateArray);
								
								//exit();
							
								DataBase::beginMyTransaction();
							
								//Если у пользователя есть карты и массив карт на обновление не пустой,
								//то обновляем карты пользователя.
								$updateCardsCount = Count($cardsUpdateArray);
								if($bUserHaveCards and ($updateCardsCount > 0)){
									$sql = "UPDATE users_cards SET CardCount=:pCardCount WHERE uid=".$uid." AND CardID=:pCardID";
									$prepQuery = DataBase::myPrepare($sql);
									
									foreach($cardsUpdateArray as $key => $value){ 
										$prepQuery->bindParam("pCardID", $key);
										$prepQuery->bindParam("pCardCount", $value);
										
										$prepQuery->execute();
									}
								}
								
								//Вставляем новые карты
								if($queryInsertValues != ''){
									$sql = "INSERT INTO users_cards (uid, FighterID, CardID, CardCount) VALUES ".$queryInsertValues;
									
									$res = DataBase::myExec($sql);
									
									if($res<1){
										$bRollBack = true;
										echo "Ошибка выполнения запроса!";
										exit();
									}
								}
								
								if(($InsertCardsCount != 0) || ($updateCardsCount != 0)){
									$mess = 'Карты успешно импортированы.';
									if($InsertCardsCount > 0)
										$mess = $mess.'[NL]Новых карт: '.$InsertCardsCount.'.';
									
									if($updateCardsCount > 0)
										$mess = $mess.'[NL]Обновлено карт: '.$updateCardsCount.'.';
									
									Messages::Message(0, $mess);
								}else{
									Messages::Message(0, 'Данные о картах в актуальном состоянии.');
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
							Messages::Message(8, 'Не введены данные для импорта карт.');
							exit();
						}
						break;
					case 'file':
						break;
					case 'json':
						break;
					default:
						break;
				}
				
				
			}else{
				Messages::Message(9, 'Выберите тип импорта.');
				exit();
			}
			
		}catch(Exception $e){
			Messages::Message(99, 'Внутренняя ошибка.');
			Logger::logError("Errors", 'Ошибка PHP: ' . $e->getMessage());
			exit();
		}
	}
	
	function getMainPage(){
		$tpl = new template_class;
		
		// открываем шаблон
		$tpl->get_tpl('tpl/MainPage.html');
		
		DataBase::getInstance();
		
		//получаем общее количество карт
		$sql = "SELECT (SELECT COUNT(CardID) FROM cards WHERE FighterID=1 AND CardRarity=1) AS 1Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=1 AND CardRarity=4) AS 1SRTotal,
									 
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=2 AND CardRarity=1) AS 2Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=2 AND CardRarity=4) AS 2SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=3 AND CardRarity=1) AS 3Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=3 AND CardRarity=4) AS 3SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=4 AND CardRarity=1) AS 4Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=4 AND CardRarity=4) AS 4SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=5 AND CardRarity=1) AS 5Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=5 AND CardRarity=4) AS 5SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=6 AND CardRarity=1) AS 6Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=6 AND CardRarity=4) AS 6SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=7 AND CardRarity=1) AS 7Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=7 AND CardRarity=4) AS 7SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=8 AND CardRarity=1) AS 8Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=8 AND CardRarity=4) AS 8SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=9 AND CardRarity=1) AS 9Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=9 AND CardRarity=4) AS 9SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=10 AND CardRarity=1) AS 10Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=10 AND CardRarity=4) AS 10SRTotal,

									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=11 AND CardRarity=1) AS 11Total,
									 (SELECT COUNT(CardID) FROM cards WHERE FighterID=11 AND CardRarity=4) AS 11SRTotal

						FROM cards
						WHERE CardID = 1";
		
		$TotalCardsCount = DataBase::myQuery($sql);
		
		//var_dump($TotalCardsCount);
		//exit();
		//echo $user_cards->rowCount();
		
		//Получаем количество карт пользователя и строим табличку
		$sql = "SELECT F.FighterName, COUNT(UC.CardID) AS UserTotal
						FROM users_cards UC
						LEFT JOIN cards C ON C.CardID = UC.CardID
						RIGHT JOIN fighters F ON F.FighterID = UC.FighterID
						WHERE UC.FighterID=:pFighterID AND C.CardRarity=:pCardRarity AND UC.uid = ".$_SESSION["UID"];
		
		$prepQuery = DataBase::myPrepare($sql);
		
		$TableBody = '';
		
		//цикл по бойцам
		for($i=1;$i<=11;$i++){
			if(($i % 2) == 0)
				$TableBody .= '<tr class="even">';
			else
				$TableBody .= '<tr>';
			
			$tdCards = '';
			
			//цикл по редкости карт
			for($j=1;$j<=4;$j++){
				$prepQuery->bindParam("pFighterID", $i);
				$prepQuery->bindParam("pCardRarity", $j);
				
				$prepQuery->execute();
				
				$uCards = $prepQuery->fetch(PDO::FETCH_ASSOC);
				
				$tdClass = '';
				
				if($j==1)
					$tdClass = 'bronze';
				else
					if($j==2)
						$tdClass = 'silver';
					else
						if($j==3)
							$tdClass = 'gold';
				
				if(($j==1)||($j==2)||($j==3)){
					if($TotalCardsCount[$i."Total"] == $uCards["UserTotal"])
						$tdClass .= ' complete';
				}
				if($j==4){
					if($TotalCardsCount[$i."SRTotal"] == $uCards["UserTotal"])
						$tdClass .= ' complete';
				}
				
				$tdCards .= '<td class="'.$tdClass.'">'.$uCards["UserTotal"].'</td>';
				
			}
			
			$tdFighterName = '<td>'.$uCards["FighterName"].'</td>';
			
			
			$TableBody .= $tdFighterName.'<td>'.$TotalCardsCount[$i."Total"].'</td>'.$tdCards.'<td>'.$TotalCardsCount[$i."SRTotal"].'</td>';
			
			$TableBody .= '</tr>';
		}
		
		//$TableBody = "<tr><td>Kazuya</td><td>x из y</td><td>x из y</td><td>x из y</td><td>x из y</td></tr>";
		
		// устанавливаем переменные шаблона
		$tpl->set_value('TABLEBODY',$TableBody);
		
		// запускаем парсинг шаблона
		$tpl->tpl_parse();
		
		// выводим HTML
		return $tpl->html;
	}
	
	function getCardsFilterPage(){
		DataBase::getInstance();
		
		$sql = 'SELECT DISTINCT F.FighterID, F.FighterName 
						FROM fighters F 
						LEFT JOIN users_cards UC ON UC.FighterID = F.FighterID 
						WHERE UC.uid = '.$_SESSION["UID"].' 
						ORDER BY F.FighterID';
		
		$statement = DataBase::myQuery($sql, true);
		
		$tpl = new template_class;
		
		if(!($statement->rowCount() > 0)){
			// открываем шаблон
			$tpl->get_tpl('tpl/CardsFilterPageErr.html');
			
			$err = 'У Вас нет карт для поиска. Импортируйте Ваши карты в меню "Импорт карт".';
			
			// устанавливаем переменные шаблона
			$tpl->set_value('ERROR',$err);
			
			// запускаем парсинг шаблона
			$tpl->tpl_parse();
			
			// выводим HTML
			return $tpl->html;
			
		}else{
			// открываем шаблон
			$tpl->get_tpl('tpl/CardsFilterPage.html');
			
			$SelCharacter = '<select id="char_sel" name="char_sel">
												<option value="0">Любой</option>';
			
			while($character = $statement->fetch(PDO::FETCH_ASSOC)){
				$SelCharacter .= '<option value="'.$character["FighterID"].'">'.$character["FighterName"].'</option>';
			}
			
			$SelCharacter .= '</select>';
			
			// устанавливаем переменные шаблона
			$tpl->set_value('SelCharacter',$SelCharacter);
			
			// запускаем парсинг шаблона
			$tpl->tpl_parse();
			
			// выводим HTML
			return $tpl->html;
		}
	}
	
	function findCards(){
		DataBase::getInstance();
		
		// идентификатор персонажа
		$cha_id = 0;
		if(!empty($_POST["char_sel"]))
			$cha_id = DataBase::ClearData($_POST["char_sel"], 'i');
		
		// **** Редкость ****
		if(!empty($_POST["bronze"]))
			$bronze = 1;
		else
			$bronze = 0;
		
		if(!empty($_POST["silver"]))
			$silver = 1;
		else
			$silver = 0;
		
		if(!empty($_POST["gold"]))
			$gold = 1;
		else
			$gold = 0;
		
		if(!empty($_POST["sr"]))
			$sr = 1;
		else
			$sr = 0;
		
		$sql_rar = '';
		
		if($bronze == 1)
			$sql_rar .= '(CardRarity = 1)';
		
		if($silver == 1){
			if($sql_rar == '')
				$sql_rar = '(CardRarity = 2)';
			else
				$sql_rar .= ' OR (CardRarity = 2)';
		}
		
		if($gold == 1){
			if($sql_rar == '')
				$sql_rar = '(CardRarity = 3)';
			else
				$sql_rar .= ' OR (CardRarity = 3)';
		}
		
		if($sr == 1){
			if($sql_rar == '')
				$sql_rar = '(CardRarity = 4)';
			else
				$sql_rar .= ' OR (CardRarity = 4)';
		}
		// ********
		
		// условие количества карт
		$equalampt = '=';
		if(!empty($_POST["eq_card_nb"])){
			switch($_POST["eq_card_nb"]){
				case "more":
					$equalampt = '>';
					break;
				case "less":
					$equalampt = '<';
					break;
				case "more_equels":
					$equalampt = '>=';
					break;
				case "less_equels":
					$equalampt = '<=';
					break;
				default:
					$equalampt = '=';
					break;
			}
		}
		
		// количество карт
		$card_nb = 0;
		if(!empty($_POST["card_nb"]))
			$card_nb = DataBase::ClearData($_POST["card_nb"], 'i');
		
		// уникальность
		$sql_unique = '';
		if(!empty($_POST["unique"])){
			switch($_POST["unique"]){
				case "yes":
					$sql_unique = ' AND C.IsUnique = 1';
					break;
				case "no":
					$sql_unique = ' AND C.IsUnique = 0';
					break;
				default:
					$sql_unique = '';
					break;
			}
		}
		
		// ограниченность
		$sql_limited = '';
		if(!empty($_POST["limited"])){
			switch($_POST["limited"]){
				case "yes":
					$sql_limited = ' AND C.IsLimited = 1';
					break;
				case "no":
					$sql_limited = ' AND C.IsLimited = 0';
					break;
				default:
					$sql_limited = '';
					break;
			}
		}
		
		//**** номер страницы
		$PageNum = 0;
		if(!empty($_POST["pageNum"])){
			if(is_numeric($_POST["pageNum"]))
				$PageNum = $_POST["pageNum"];
		}
		//*******
		
		// ***** сортировка
		$SortFields = array(); //Поля для сортировки
		$SortDirs   = array(); //Направления сортировки
		
		//Зачитываем параметры сортировки из сессии
		if(isset($_SESSION["SortFields"])){
			if($_SESSION["SortFields"] != '')
				$SortFields = explode(';', $_SESSION["SortFields"]);
		}
		if(isset($_SESSION["SortDirs"])){
			if($_SESSION["SortDirs"] != '')
				$SortDirs = explode(';', $_SESSION["SortDirs"]);
		}
		
		$field = '';
		$dir   = '';
		//var_dump(array_keys($SortFields, '1234'));
		
		if(!empty($_POST["sortField"])){
			switch($_POST["sortField"]){
				case 'CardCount':
					$field = 'UC.CardCount';
					if(in_array($field, $SortFields)){				//Если поле есть в массиве сортировки,
						$key = array_keys($SortFields, $field); //то получаем направление сортировки
						$dir = $SortDirs[$key[0]];									//и меняем его.
						
						if($dir == 'ASC')
							$dir = 'DESC';
						else
							$dir = 'ASC';
						
						$SortDirs[$key[0]] = $dir;
					}else{
						$SortFields[] = $field;									//Если поля нет, то сохраняем его
						$SortDirs[] = 'ASC';										//и порядок сортировки по умолчанию в массиве.
					}
					break;
				default:
					$field = '';
					break;
			}
		}
		//Сохраняем параметры сортировки в сессию
		$_SESSION["SortFields"] = implode(';', $SortFields);
		$_SESSION["SortDirs"] = implode(';', $SortDirs);
		
		//var_dump($SortFields);
		//var_dump($SortDirs);
		
		if(isset($_SESSION["SortFields"])){
			if($_SESSION["SortFields"] != '')
				$field = $SortFields[0];
		}
		if(isset($_SESSION["SortDirs"])){
			if($_SESSION["SortDirs"] != '')
				$dir   = $SortDirs[0];
		}
		//*****
		
		$sql = 'FROM users_cards UC 
						LEFT JOIN fighters F ON UC.FighterID = F.FighterID 
						LEFT JOIN cards C ON UC.CardID = C.CardID 
						LEFT JOIN card_rarity CR ON CR.RarityID = C.CardRarity 
						LEFT JOIN yes_no YN ON YN.ID = C.IsUnique 
						LEFT JOIN yes_no YN2 ON YN2.ID = C.IsLimited 
						WHERE UC.uid = '.$_SESSION["UID"];
		
		if($cha_id > 0)
			$sql .= ' AND UC.FighterID = '.$cha_id;
		
		if($sql_rar != '')
			$sql .= ' AND ('.$sql_rar.')';
		
		if($card_nb > 0)
			$sql .= ' AND UC.CardCount '.$equalampt.' '.$card_nb;
		
		if($sql_unique != '')
			$sql .= $sql_unique;
		
		if($sql_limited != '')
			$sql .= $sql_limited;
		
		$sqlCount = 'SELECT Count(UC.CardID) RowCount '.$sql;
		
		$stmt = DataBase::myQuery($sqlCount);
		
		$rowCount = $stmt["RowCount"];
		
		echo '<hr/>';
		
		if(!($rowCount > 0)){
			echo '<h3>Данные не найдены. Измените параметры поиска.</h3>';
		}else{
			echo '<div><span>Всего записей: '.$rowCount.'</span></div>';
			
			$RowsOnPage = 15;
			$StartRec = $PageNum * $RowsOnPage;
			
			//****** навгация *******
			$pagebar = '';
			
			$pagesDelta = 5;
			
			//вычисляем кол-во страниц
			$pages = ceil($rowCount/$RowsOnPage);
			//echo 'Кол-во страниц: '.$pages.'<br/>';
			
			// +1 т.к. нам приходит значение страницы на 1 меньше.
			$StartPage = $PageNum - $pagesDelta + 1;
			$EndPage = $PageNum + $pagesDelta + 1;
			
			if($StartPage < 1)
				$StartPage = 1;
			
			if($EndPage > $pages)
				$EndPage = $pages;
			
			if($PageNum > 0){
				$BackPage = $PageNum-1;
				$pagebar .= '<a href="javascript:void(0);" id="'.$BackPage.'">Предыдущая</a>';
			}
			
			if($StartPage > 1){
				$pagebar .= '<a href="javascript:void(0);" id="0">1</a>';
				
				if($StartPage > 2)
					$pagebar .= '<span id="threeDots">...</span>';
			}
			
			for($StartPage;$StartPage<=$EndPage;$StartPage++){
				$m = $StartPage-1;
				if($m == $PageNum)
					$pagebar .= '<a href="javascript:void(0);" id="'.$m.'" class="sel_page">'.$StartPage.'</a>';
				else
					$pagebar .= '<a href="javascript:void(0);" id="'.$m.'">'.$StartPage.'</a>';
			}
			
			if($pages > 1){
				if($EndPage < $pages){
					if($EndPage+1 < $pages)
						$pagebar .= '<span id="threeDots">...</span>';
					
					$penult = $pages-1;
					$pagebar .= '<a href="javascript:void(0);" id="'.$penult.'">'.$pages.'</a>';
				}
				
				if($PageNum+1 < $pages){
					$NextPage = $PageNum+1;
					$pagebar .= '<a href="javascript:void(0);" id="'.$NextPage.'">Следующая</a>';
				}
			}
			
			echo '<div id="pagebar"><span>Страницы: </span>'.$pagebar.'</div>';
			//************
			
			$sql = 'SELECT F.FighterName, C.CardName, CR.RarityDescr, YN.YN_Descr IsUnique, YN2.YN_Descr IsLimited, UC.CardCount '.$sql;
			if($field != '')
				$sql .= ' ORDER BY '.$field.' '.$dir;
			/* else
				$sql .= ' ORDER BY UC.CardID'; */
			
			$sql .= ' LIMIT '.$StartRec.', '.$RowsOnPage;
			
			$stmt = DataBase::myQuery($sql, true);
			
			$arrow = '';
			if($dir == 'ASC')
				$arrow = ' &uarr;';
			if($dir == 'DESC')
				$arrow = ' &darr;';
			
			$table = '<table id="findedCards">
									<caption>Найденные данные о Ваших картах.</caption>
									<colgroup>
										<col width="90px"/>
										<col width="200px"/>
										<col width="60px"/>
										<col width="60px"/>
										<col width="60px"/>
										<col width="115px"/>
									</colgroup>
									<thead>
										<tr>
											<td>Персонаж</td>
											<td>Название карты</td>
											<td>Редкость</td>
											<td>Карта уникальна</td>
											<td>Карта ограниченна</td>
											<td onclick="sortFindCards(this);" class="sort" name="CardCount">Количество'.$arrow.'</td>
										</tr>
									</thead>
									<tbody>';
			
			$i = 0;
			$TableBody = '';
			while($row = $stmt->fetch(PDO::FETCH_ASSOC)){
				if(($i % 2) == 0)
					$TableBody .= '<tr class="even">';
				else
					$TableBody .= '<tr>';
				
				$TableBody .= '<td>'.$row["FighterName"].'</td><td>'.$row["CardName"].'</td><td>'.$row["RarityDescr"].'</td><td>'.$row["IsUnique"].'</td><td>'.$row["IsLimited"].'</td><td>'.$row["CardCount"].'</td>';
				
				$TableBody .= '</tr>';
				
				$i++;
			}
			
			$table .= $TableBody.'</tbody></table>';
			
			echo $table;
		}
	}
?>