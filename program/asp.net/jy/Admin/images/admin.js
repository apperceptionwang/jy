
// 修改编辑栏高度
function admin_Size(num,objname)
{
	var obj=document.getElementById(objname)
	if (parseInt(obj.rows)+num>=3) {
		obj.rows = parseInt(obj.rows) + num;	
	}
	if (num>0)
	{
		obj.width="90%";
	}
}

function helpscript(n){
	txtRun=n;window.open('../helpview.asp','admin_help','toolbar=no,menubar=no,scrollbars=no, resizable=1, location=no, status=no,top=0,left=0,width=600,height=300')

}

function runscript(n){
	txtRun=n;window.open("../templates_view.asp","templates_view")
}
function rundvscript(n,astr){
	txtRun=n;window.open("http://bbs.dvbbs.net/loadtemplates.asp?"+astr+"","loadtemplates")
}

var ColorImg;
var ColorValue;
function hideColourPallete() {
	document.getElementById("colourPalette").style.visibility="hidden";
}
function Getcolor(img_val,input_val){
	var obj = document.getElementById("colourPalette");
	ColorImg = img_val;
	ColorValue = document.getElementById(input_val);
	if (obj){
	obj.style.left = getOffsetLeft(ColorImg) + "px";
	obj.style.top = (getOffsetTop(ColorImg) + ColorImg.offsetHeight) + "px";
	if (obj.style.visibility=="hidden")
	{
	obj.style.visibility="visible";
	}else {
	obj.style.visibility="hidden";
	}
	}
}
//Colour pallete top offset
function getOffsetTop(elm) {
	var mOffsetTop = elm.offsetTop;
	var mOffsetParent = elm.offsetParent;
	while(mOffsetParent){
		mOffsetTop += mOffsetParent.offsetTop;
		mOffsetParent = mOffsetParent.offsetParent;
	}
	return mOffsetTop;
}

//Colour pallete left offset
function getOffsetLeft(elm) {
	var mOffsetLeft = elm.offsetLeft;
	var mOffsetParent = elm.offsetParent;
	while(mOffsetParent) {
		mOffsetLeft += mOffsetParent.offsetLeft;
		mOffsetParent = mOffsetParent.offsetParent;
	}
	return mOffsetLeft;
}
function setColor(color)
{
	if (ColorValue){ColorValue.value = color;}
	if (ColorImg){ColorImg.style.backgroundColor = color;}
	document.getElementById("colourPalette").style.visibility="hidden";
}

//SELECT表单选取
function CheckSel(Voption,Value)
{
	var obj = document.getElementById(Voption);
	for (i=0;i<obj.length;i++){
		if (obj.options[i].value==Value){
		obj.options[i].selected=true;
		break;
		}
	}
}

//单选表单选取
function chkradio(Obj,Val)
{
	if (Obj)
	{
	for (i=0;i<Obj.length;i++){
		if (Obj[i].value==Val){
		Obj[i].checked=true;
		break;
		}
	}
	}
}
//用户组批量更新按钮 <input type="button" value="选择用户组" onclick="getGroup('Select_Group');">
//记录 更新ID的表单 <input name="groupid" type="hidden" value="<%=Request("groupid")%>">
function getGroup(Did)
{
var SGroup = fetch_object(Did);
	if (SGroup){
		if (SGroup.style.display=='none'){
		SGroup.style.top = (document.body.scrollTop+((document.body.clientHeight-300)/2))+"px";
		SGroup.style.left = (document.body.scrollLeft+((document.body.clientWidth-480)/2))+"px";
		SGroup.style.display = '';
		}
		else{
			var SelGroupid = fetch_object("SelGroupid");
			var groupid = fetch_object("groupid");
			var Val="";
			SGroup.style.display='none';
			if (SelGroupid){
				for (var i=0;i<SelGroupid.length;i++){
					if (SelGroupid.options[i].selected){
						Val += SelGroupid.options[i].value;
						Val += ",";
					}
				}
				groupid.value = Val.substr(0,Val.lastIndexOf(","));
			}
		}
	}
}

//复选表单全选事件 form：表单名
function CheckAll(form)  {
	for (var i=0;i<form.elements.length;i++)
	{
		var e = form.elements[i];
		if (e.name != 'chkall'&&e.type=="checkbox")
		{
			e.checked = form.chkall.checked;
		}
	}
}