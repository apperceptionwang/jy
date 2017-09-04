<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Reg_Success.aspx.cs" Inherits="Reg_Success" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>中国地震局人才评价（评审）系统</TITLE>
<meta http-equiv="refresh" content="5;url=admin/admin_login.aspx?type=zgcpry">
<META http-equiv=Content-Type content="text/html; charset=GBK"><LINK 
href="./img/text.css" type=text/css rel=stylesheet><LINK 
href="./img/style_1024.css" type=text/css rel=STYLESHEET>
<SCRIPT language=JavaScript src="./img/script.js"></SCRIPT>

<SCRIPT language=JavaScript src="./img/css_suit.js"></SCRIPT>

<STYLE type=text/css>.input_button_go {
	BORDER-RIGHT: #333333 2px solid; BORDER-TOP: #ebdb9a 2px solid; BORDER-LEFT: #ebdb9a 2px solid; WIDTH: 30px; BORDER-BOTTOM: #333333 2px solid; HEIGHT: 20px; BACKGROUND-COLOR: #ffffd9
}
.input_search3 {
	BORDER-RIGHT: #997c1e 1px solid; BORDER-TOP: #997c1e 1px solid; BORDER-LEFT: #997c1e 1px solid; WIDTH: 20px; BORDER-BOTTOM: #997c1e 1px solid; HEIGHT: 17px; BACKGROUND-COLOR: #ffffff
}
</STYLE>

<META content="MSHTML 6.00.6000.16850" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0>
<form id="Form1" method="post" runat="server">
<SCRIPT language=JavaScript type=text/JavaScript>
<!--
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
//-->
</SCRIPT>

<SCRIPT language=JavaScript type=text/JavaScript>
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);

function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</SCRIPT>

<TABLE cellSpacing=0 cellPadding=0 width=1003 align=center border=0>
  <TBODY>
  <TR>
    <TD width=1003>
      <OBJECT 
      codeBase=http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=6,0,29,0 
      height=153 width=1003 classid=clsid:D27CDB6E-AE6D-11cf-96B8-444553540000><PARAM NAME="movie" VALUE="./img/top.swf"><PARAM NAME="quality" VALUE="high">
                                    <embed src="./img/top.swf"  quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer"   type="application/x-shockwave-flash" width="1003"        height="153">
                                    </embed></OBJECT></TD></TR></TBODY></TABLE>
<TABLE cellSpacing=0 cellPadding=0 width=1003 align=center border=0>
  <TBODY>
  <TR>
    <TD width=15 style="height: 35px"><IMG height=45 alt="" 
      src="./img/mht751(1).gif" width=15></TD>
    <TD background=img/index_04.gif style="width: 1044px; height: 35px">
      <TABLE class=b12 cellSpacing=2 cellPadding=0 width="93%" align=center 
      border=0>
        <TBODY>
        <TR>
          <TD>
            <SCRIPT>
today=new Date();
var day; var date; var hello; var wel;
hour=new Date().getHours()
if(hour < 6)hello='凌晨好'
else if(hour < 9)hello='早上好'
else if(hour < 12)hello='上午好'
else if(hour < 14)hello='中午好'
else if(hour < 17)hello='下午好'
else if(hour < 19)hello='傍晚好'
else if(hour < 22)hello='晚上好'
else {hello='夜里好!'}
if(today.getDay()==0)day='星期日'
else if(today.getDay()==1)day='星期一'
else if(today.getDay()==2)day='星期二'
else if(today.getDay()==3)day='星期三'
else if(today.getDay()==4)day='星期四'
else if(today.getDay()==5)day='星期五'
else if(today.getDay()==6)day='星期六'
date=(today.getYear())+'年'+(today.getMonth() + 1 )+'月'+today.getDate()+'日';
</SCRIPT>
            <SPAN style="FONT-SIZE: 9pt">今天是
            <SCRIPT>
document.write(date + ' ' + day + ' ' );
    </SCRIPT>
             </SPAN></TD></TR></TBODY></TABLE></TD>
    <TD width=291 background=img/index_04.gif style="height: 35px">
      <TABLE cellSpacing=0 cellPadding=0 width="50%" border=0>
        <TBODY>
        <TR>
          <TD><A 
            onmouseover="MM_swapImage('Image177','','/img/index1_06.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="default.aspx"><IMG height=45 
            src="./img/mht754(1).gif" border=0 
            name=Image177 style="width: 72px"></A></TD>
          <TD><A 
            onmouseover="MM_swapImage('Image1771','','/img/index1_07.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"><IMG id=Image1771 
            height=45 src="./img/mht757(1).gif" width=100 border=0 
            name=Image1771></A></TD>
          <TD><A 
            onmouseover="MM_swapImage('Image1772','','/img/index1_08.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"><IMG 
            id=Image1772 height=45 src="./img/mht75A(1).gif" width=100 
            border=0 name=Image1772></A></TD>
          <TD style="width: 101px"><A 
            onmouseover="MM_swapImage('Image1775','','/img/index1_09.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"><IMG height=45 
            src="./img/mht75D(1).gif" width=100 border=0 
            name=Image186 id="Image1775"></A></TD>
          <TD style="width: 101px"><A 
            onmouseover="MM_swapImage('Image1774','','/img/index1_11.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"><IMG height=45 
            src="./img/mht75D(2).gif" width=100 border=0 
            name=Image186 id="Image1774"></A></TD>
          <TD><A 
            onmouseover="MM_swapImage('Image17731','','/img/index1_10.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="zgps.aspx"><IMG 
            id=Image1773 height=45 src="./img/mht760(1).gif" width=100 
            border=0 name=Image17731></A></TD></TR></TBODY></TABLE></TD>
    <TD width=292 background=img/index_04.gif style="height: 35px">
    <TD width=189 style="height: 35px"><IMG height=45 alt="" src="./img/mht766(1).gif" 
      width=189></TD>
<TABLE height=406 cellSpacing=4 cellPadding=0 width=1003 align=center 
  border=0><TBODY>
  <TR>
    <TD vAlign=top width=232 bgColor=#e7f5f6 style="height: 398px">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=8><IMG height=1 src="./img/mht778(1).gif" 
          width=1></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=2 cellPadding=2 width=216 align=center border=0>
        <TBODY>
        <TR>
          <TD style="width: 212px">
              <a href = "admin/admin_login.aspx?type=zgcpry"><img src="./img/mht77_1.gif" border = 0 /></a></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px">
              <a href = "admin/admin_login.aspx?type=zhuanjia"><img src="./img/mht77_3.gif" border = 0 /></a></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px">
              <a href = "reg.aspx"><img src="./img/mht77_2.gif" border = 0 /></a></TD></TR>
        </TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD style="height: 8px"><IMG height=1 src="./img/mht778(1).gif" 
          width=1></TD></TR></TBODY></TABLE>
    <TD vAlign=top width=759 style="height: 398px" ><!--
		<table>
			<tr>
				<td align="right">
                    <input type="button" name="go1" value="全部" class="input_button_go"  style="width:50;cursor:hand"
                       onClick="window.location='result_list.jsp?searchby=st_org_id&st_org_id=NJ01RS&st_category_id=&st_service_name=&page_number=1&st_sort_name=1'">&nbsp
					<input type="button" name="go2" value="许可" class="input_button_go"  style="width:50;cursor:hand"
                       onClick="window.location='result_list.jsp?searchby=st_org_id&st_org_id=NJ01RS&st_category_id=&st_service_name=&page_number=1&st_sort_name=2';">&nbsp
					<input type="button" name="go3" value="处罚" class="input_button_go"  style="width:50;cursor:hand"
                       onClick="window.location='result_list.jsp?searchby=st_org_id&st_org_id=NJ01RS&st_category_id=&st_service_name=&page_number=1&st_sort_name=3'">&nbsp
					<input type="button" name="go4" value="强制" class="input_button_go"  style="width:50;cursor:hand"
                       onClick="window.location='result_list.jsp?searchby=st_org_id&st_org_id=NJ01RS&st_category_id=&st_service_name=&page_number=1&st_sort_name=4'">&nbsp
					<input type="button" name="go5" value="征收" class="input_button_go"  style="width:50;cursor:hand"
                       onClick="window.location='result_list.jsp?searchby=st_org_id&st_org_id=NJ01RS&st_category_id=&st_service_name=&page_number=1&st_sort_name=5'">&nbsp
					<input type="button" name="go6" value="其他" class="input_button_go"  style="width:50;cursor:hand"
                       onClick="window.location='result_list.jsp?searchby=st_org_id&st_org_id=NJ01RS&st_category_id=&st_service_name=&page_number=1&st_sort_name=6'">&nbsp</td>
			</tr>
		</table>
		-->
      <DIV align=center>
      <TABLE cellSpacing=2 cellPadding=2 width="100%" align=center border=0>
        <TBODY>
        <TR>
          <TD colSpan=2>
            <TABLE cellSpacing=0 cellPadding=0 width="98%" align=center 
            bgColor=#ffffff border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE cellSpacing=1 cellPadding=1 width="100%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD>
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                          <TR vAlign=top align=middle>
                            <TD noWrap align=left> <IMG 
                              height=36 src="./img/index_114.gif" 
                              width=150 border=0 name=Image_back> </TD>
                            <TD align=right id="TD1" runat="server" visible="false"><INPUT class=input_button_go style="WIDTH: 50px; CURSOR: hand" onclick="window.location='result_list.jsp?searchby=st_org_id&amp;st_org_id=NJ01RS&amp;st_category_id=&amp;st_service_name=&amp;page_number=1&amp;st_sort_name=1';" type=button value=全部 name=go1>&nbsp; 
<INPUT class=input_button_go style="WIDTH: 50px; CURSOR: hand" onclick="window.location='result_list.jsp?searchby=st_org_id&amp;st_org_id=NJ01RS&amp;st_category_id=&amp;st_service_name=&amp;page_number=1&amp;st_sort_name=2';" type=button value=许可 name=go2>&nbsp; 
<INPUT class=input_button_go style="WIDTH: 50px; CURSOR: hand" onclick="window.location='result_list.jsp?searchby=st_org_id&amp;st_org_id=NJ01RS&amp;st_category_id=&amp;st_service_name=&amp;page_number=1&amp;st_sort_name=3'" type=button value=处罚 name=go3>&nbsp; 
<INPUT class=input_button_go style="WIDTH: 50px; CURSOR: hand" onclick="window.location='result_list.jsp?searchby=st_org_id&amp;st_org_id=NJ01RS&amp;st_category_id=&amp;st_service_name=&amp;page_number=1&amp;st_sort_name=4'" type=button value=强制 name=go4>&nbsp; 
<INPUT class=input_button_go style="WIDTH: 50px; CURSOR: hand" onclick="window.location='result_list.jsp?searchby=st_org_id&amp;st_org_id=NJ01RS&amp;st_category_id=&amp;st_service_name=&amp;page_number=1&amp;st_sort_name=5'" type=button value=征收 name=go5>&nbsp; 
<INPUT class=input_button_go style="WIDTH: 50px; CURSOR: hand" onclick="window.location='result_list.jsp?searchby=st_org_id&amp;st_org_id=NJ01RS&amp;st_category_id=&amp;st_service_name=&amp;page_number=1&amp;st_sort_name=6'" type=button value=其他 name=go6></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
                  <TABLE cellSpacing=1 cellPadding=2 width="100%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD><!-- page_index begin //-->
                          <!-- page_index end //-->
                          <br />
                          <asp:LinkButton ID="lbtn_login" runat="server" OnClick="lbtn_login_Click">注册成功，5秒后自动跳转到登陆界面，如无跳转点击进入登陆界面</asp:LinkButton><br />
                      </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <P><A 
      onmouseover="MM_swapImage('Image_back','','images/new_images/btn_fanhui_blue.gif',1)" 
      onmouseout=MM_swapImgRestore() href="javascript:history.back()"><IMG 
      height=28 src="./img/mht793(1).gif" width=78 border=0 
      name=Image_back id="IMG1" runat="server" visible="false"></A> </P></DIV></TD>
<TABLE height=79 cellSpacing=0 cellPadding=0 width=1003 align=center border=0>
  <TBODY>
  <TR>
    <TD width=1012 background=img/index_121.gif height=79>
      <TABLE class=b12-20 cellSpacing=0 cellPadding=0 width="60%" border=0>
        <TBODY>
        <TR>
          <TD width="11%">&nbsp;</TD>
          <TD width="89%" style="text-align: right">Copyright &copy; 2009 All Rights 
            Reserved<BR>
              版权所有：中国地震局 技术支持：史磊</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></form></BODY></HTML>
