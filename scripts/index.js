var mainURL = 'http://localhost';

function register(){
	var data = $('form#register_form :input').serializeArray();
	
	data.push({name: "act_type", value: "register"});
	
	$.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(data){
			var answer = parseAnswer(data);
			if(answer){
				if(answer.ERRCODE == 0){
					alert(answer.ERRMESSAGE);
					//закрываем форму
					$('div#register').toggleClass('hidden');
					disableWin(false);
				}else{
					reloadCaptcha('imgRegCaptcha');
					alert(answer.ERRMESSAGE);
				}
			}
		},
		fail : function(){
			alert(lr_ajax_fail);
		}
	});
}

function logIn(){
	var data = $('form#authorization_form :input').serializeArray();
	
	data.push({name: "act_type", value: "login"});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(data){
			var answer = parseAnswer(data);
			if(answer){
				if(answer.ERRCODE == 0)
					window.location.reload();
				else
					alert(answer.ERRMESSAGE);
			}
		},
		fail : function(){
			alert(lr_ajax_fail);
		}
	});
}

function exit(){
	var data = new Array;
	
	data.push({name: "act_type", value: "exit"});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "dispatcher.php",
		async : false,
		success : function(data){
			window.location.href = mainURL;
		},
		fail : function(){
			alert(lr_ajax_fail);
		}
	});
}

function recoverPass(){
	var data = $('form#recoverPass_form :input').serializeArray();
	
	data.push({name: "act_type", value: "recover_pass"});
	
	$.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(data){
			var answer = parseAnswer(data);
			if(answer){
				if(answer.ERRCODE == 0){
					alert(answer.ERRMESSAGE);
					//закрываем форму
					$('div#recoverPass').toggleClass('hidden');
					disableWin(false);
				}else{
					reloadCaptcha('imgRecoverPassCaptcha');
					alert(answer.ERRMESSAGE);
				}
			}
			
			/* if(data){
				var errCode = parseInt(data)
				if(!isNaN(errCode)){
					if(errCode != 0)
						reloadCaptcha('imgRecoverPassCaptcha');
					
					switch(errCode){
						case 0:
							alert(lrecPas_0);
							//закрываем форму
							$('div#recoverPass').toggleClass('hidden');
							disableWin(false);
						break;
						case 11:
							alert(lr_11);
							break;
						case 20:
							alert(lrecPas_20);
							break;
						case 100:
							alert(l_captcha_err);
							break;
						case 150:
							alert(l_pictures_err);
							break;
						case 200:
							alert(l_email_err);
							break;
						case 300:
							alert(lrecPas_300);
							break;
						case 350:
							alert(lrecPas_350);
							break;
						default:
							alert(lr_unknown_err);
							break;
					}
				}
			} */
		},
		fail : function(){
			alert(lr_ajax_fail);
		}
	});
}

function reloadCaptcha(id){
	var currentTime = new Date();
	document.getElementById(id).src = 'dispatcher.php?act_type=captcha&rnd=' + currentTime.getTime();
}

function showAuthForm(){
	var authDiv = $('div#authorization'),
			coords = getCenterCordsForObj(authDiv);
	
	
	authDiv.css({left: coords[0],
							 top: coords[1]
							});
	disableWin(true);
	authDiv.toggleClass('hidden');
}

function showRegForm(){
	reloadCaptcha('imgRegCaptcha');
	var regDiv = $('div#register'),
			coords = getCenterCordsForObj(regDiv);
	
	regDiv.css({left: coords[0],
							top: coords[1]
						 });
	disableWin(true);
	regDiv.toggleClass('hidden');
}

function showRecoverPassForm(){
	reloadCaptcha('imgRecoverPassCaptcha');
	var div = $('div#recoverPass'),
			coords = getCenterCordsForObj(div);
	
	div.css({left: coords[0],
					 top: coords[1]
					});
	disableWin(true);
	div.toggleClass('hidden');
}

function cancelRegistration(){
	$('input#regLogin').val('');
	$('input#regPassword').val('');
	$('input#r_regPassword').val('');
	var registerDiv = $('div#register');
	registerDiv.toggleClass('hidden');
	
	disableWin(false);
}

function cancelRecoverPass(){
	$('input#recoverEmail').val('');
	$('input#recoverCaptcha').val('');
	$('div#recoverPass').toggleClass('hidden');
	
	disableWin(false);
}

function closeWindow(){
	$('input[type="text"], input[type="password"]').val('');
	$('div#authorization').toggleClass('hidden');
	
	disableWin(false);
}

function getImportPage(menu){
	disableWin(true, true);
	var data = new Array;
	
	data.push({name: "act_type", value: "getImportPage"});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(response){
			$('div#content').html(response);
			setActivePage(menu);
			disableWin(false);
		},
		fail : function(){
			alert(lr_ajax_fail);
			disableWin(false);
		}
	});
}

function changeImportType(inp){
	var impType = $(inp).val();
	switch(impType){
		case 'xml':
			$('div#file').addClass('hidden');
			$('div#json').addClass('hidden');
			$('div#xml').removeClass('hidden');
			break;
		case 'file':
			$('div#xml').addClass('hidden');
			$('div#json').addClass('hidden');
			$('div#file').removeClass('hidden');
			break;
		case 'json':
			$('div#xml').addClass('hidden');
			$('div#file').addClass('hidden');
			$('div#json').removeClass('hidden');
			break;
		default:
			break;
	}
}

function getMainPage(menu){
	disableWin(true, true);
	
	var data = new Array;
	
	data.push({name: "act_type", value: "getMainPage"});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : true,
		success : function(response){
			$('div#content').html(response);
			setActivePage(menu);
			disableWin(false);
		},
		fail : function(){
			alert(lr_ajax_fail);
			disableWin(false);
		}
	});
}

function getCardsFilterPage(menu){
	disableWin(true, true);
	var data = new Array;
	
	data.push({name: "act_type", value: "getCardsFilterPage"});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(response){
			$('div#content').html(response);
			setActivePage(menu);
			disableWin(false);
		},
		fail : function(){
			alert(lr_ajax_fail);
			disableWin(false);
		}
	});
}

function findCards(pageNum, sortField){
	disableWin(true, true);
	var data = $('form#CardsFilter :input').add('form#CardsFilter select').serializeArray();
	
	data.push({name: "act_type", value: "findCards"});
	
	if(!isNaN(pageNum))
		data.push({name: "pageNum", value: pageNum});
	
	if(sortField)
		data.push({name: "sortField", value: sortField});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(response){
			$('div#findResult').html(response);
			
			$('#pagebar a').click(function(){
				findCards($(this).attr('id'));
			});
			
			disableWin(false);
		},
		fail : function(){
			alert(lr_ajax_fail);
			disableWin(false);
		}
	});
}

function sortFindCards(column){
	var pageNum = $('div#pagebar a.sel_page').attr('id');
			sortField = $(column).attr('name');
			
	//console.log($(column).attr('name'));
	findCards(pageNum, sortField);
}

function importCards(){
	disableWin(true, true);
	var data = $('form#CardImport :input').add('form#CardImport textarea').serializeArray();
	
	data.push({name: "act_type", value: "importCards"});
	
	var xmlHTTP = $.ajax({
		type : "POST",
		data : data,
		url : "index.php",
		async : false,
		success : function(response){
			var answer = parseAnswer(response);
			if(answer){
				alert(answer.ERRMESSAGE);
				disableWin(false);
			}
		},
		fail : function(){
			alert(lr_ajax_fail);
			disableWin(false);
		}
	});
}

function setActivePage(menu){
	$('#left_menu ul li').removeClass('selected');
	var page = $(menu).parents()[0];
	$(page).addClass('selected');
}

var b_index = true;