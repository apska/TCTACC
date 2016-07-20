function disableWin(bDisable, bWait, z_index){
	function waiter(){
		var waiterX = (document.documentElement.clientWidth/2)-181,
				waiterY = (document.documentElement.clientHeight/2)-16;
		
		var blockWait = '<div id="waiter" style="left:'+waiterX+'; top:'+waiterY+'; z-index: '+z_index+1+';">Пожалуйста подождите  <img src="../img/waiter.gif"></img></div>';
		
		return blockWait;
	}
	if(!bWait)
		bWait = false;
	
	if(isNaN(z_index))
		z_index = 1000;
	
	var blockDiv = '<div id="blockDiv" style="z-index: '+z_index+';"></div>';
	
	if(bDisable==true){
		$('body').append(blockDiv);
		if(bWait==true)
			$('body').append(waiter());
	}else
		if(bDisable==false){
			$('div#blockDiv, div#waiter').remove();
		}
}

function getCenterCordsForObj(div){
	var client_x = document.documentElement.clientWidth/2,
			client_y = document.documentElement.clientHeight/2,
			divWidth = div.width()/2,
			divHeight = div.height()/2;
	
	return [client_x-divWidth, client_y-divHeight];
}

function getXMLHttpRequest(){
	if (window.XMLHttpRequest){
		try{
			return new XMLHttpRequest();
		}catch(e){}
	}else
		if(window.ActiveXObject){
			try{
				return new ActiveXObject('Msxml2.XMLHTTP');
			}catch(e){}
			try{
				return new ActiveXObject('Micrisoft.XMLHTTP');
			}catch(e){}
		}
	return null;
}

function parseAnswer(data){
	if(data){
		var matches = /(<ERR_CODE>.+<\/ERR_CODE>)(<ERR_MESSAGE>.+<\/ERR_MESSAGE>)/g.exec(data);
		if(!matches)
			return null;
		
		if(matches[1]){
			var errCode = matches[1].replace(/<ERR_CODE>/g,'').replace(/<\/ERR_CODE>/g,'');
			errCode = parseInt(errCode);
		}
		
		if(matches[2]){
			var errMess = matches[2].replace(/<ERR_MESSAGE>/g,'').replace(/<\/ERR_MESSAGE>/g,'').replace(/\[NL\]/g,'\n');
		}
		
		if(!isNaN(errCode) && errMess){
			return {ERRCODE :errCode, ERRMESSAGE : errMess};
		}else{
			return null;
		}
	}
}

var b_common = true;