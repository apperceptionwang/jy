document.writeln('<meta http-equiv="Pragma" content="no-cache">');
document.writeln('<meta http-equiv="Cache-Control" content="no-cache">');
document.writeln('<meta http-equiv="Expires" content="0">');

if (screen.width>=1024||screen.height>=768){ //分辨率超过1024×768
	document.writeln('<link rel="stylesheet" href="css/style_1024.css" type="text/css">');
}else if (screen.width<=800||screen.height<=600){ //分辨率低于800×600
	document.writeln('<link rel="stylesheet" href="css/style_800.css" type="text/css">');
}