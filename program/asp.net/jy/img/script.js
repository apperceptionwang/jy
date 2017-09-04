function openNewWindow(obj,ww,hh) 	{
    var ww=ww ? ww:540;
    var hh=hh ? hh:300;
    var pp="toolbar=no,width="+ww+",height="+hh+",directories=no,status=no,scrollbars=yes,resizable=yes,menubar=no,top=200,left=200,titlebar=no"
    var newWind=window.open(obj,"NewWindow",pp);
	if (newWind.opener == null) { // for Nav 2.0x
   	  newWind.opener = self // this creates and sets a new property
	}
	newWind.focus();
	//alert(newWind.name);
}