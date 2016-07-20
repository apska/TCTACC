<?php
	session_start();
	
	$img = imageCreateFromJPEG("img/noise.jpg");
	
	$color = imageColorAllocate($img,64,64,64);
	imageAntiAlias($img,true);
	
	$nChars = 5;
	$randStr = substr(md5(uniqid()),0,$nChars);
	$_SESSION["Captcha"] = $randStr;
	
	$x = 20;
	$y = 30;
	
	for($i=0;$i<$nChars;$i++){
		$deltaX = rand(20,40);
		$size = rand(22,38);
		$angle = -30 + rand(0,60);
		imageTtfText($img,$size,$angle,$x,$y,$color,"fonts/bellb.ttf",$randStr{$i});
		$x += $deltaX;
	}
	
	header("Content-Type: image/png");
	imageJPEG($img,NULL,90);
?>