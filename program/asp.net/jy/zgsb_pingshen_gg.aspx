<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zgsb_pingshen_gg.aspx.cs" Inherits="zgsb_pingshen_gg" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>中国地震局人才评价（评审）系统</TITLE>
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
            href="zgps.aspx"><IMG id=Image1771 
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
            href="#"><IMG 
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
          <TD style="width: 212px"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="./img/mht77B(1).gif"
                  OnClick="ImageButton1_Click" ToolTip="111" /></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="./img/mht77e(1).gif"
                  OnClick="ImageButton2_Click" /></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="./img/mht787(1).gif"
                  OnClick="ImageButton3_Click" /></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton4" runat="server" ImageUrl="./img/mht78_1.gif" OnClick="ImageButton4_Click" /></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px"><A 
            href="zgps.aspx"></A>
              <asp:ImageButton ID="ImageButton5" runat="server" ImageUrl="./img/mht781(1).gif"
                  OnClick="ImageButton5_Click" /></TD></TR>
        <TR>
          <TD vAlign=top style="width: 212px; height: 45px;" id="TD2" runat="server" visible="true"><A 
            href="#"></a>
              <asp:ImageButton ID="ImageButton6" runat="server" ImageUrl="./img/mht78a(1).gif"
                  OnClick="ImageButton6_Click" /></TD></TR>
            <tr>
                <TD vAlign=top style="width: 212px; height: 45px;" id="Td5" runat="server" visible="true">
                    <A 
            href="#"></a>
                    <asp:ImageButton ID="ImageButton9" runat="server" ImageUrl="./img/mht769(1).gif"
                        OnClick="ImageButton9_Click" /></td>
            </tr>
            <tr>
                <TD vAlign=top style="width: 212px; height: 45px;" id="Td4" runat="server" visible="true">
                    <A 
            href="#"></a>
                    <asp:ImageButton ID="ImageButton8" runat="server" ImageUrl="./img/mht784(1).gif"
                        OnClick="ImageButton8_Click" /></td>
            </tr>
        <TR>
          <TD vAlign=top style="width: 212px" id="TD3" runat="server" visible="true"><A 
            href="http://www.mynj.gov.cn/isp/orgInfo/govList.jsp"></A>
              <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="./img/mht78d(1).gif"
                  OnClick="ImageButton7_Click" /></TD></TR></TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD style="height: 8px"><IMG height=1 src="./img/mht778(1).gif" 
          width=1></TD></TR></TBODY></TABLE>
    <TD vAlign=top style="height: 398px; width: 751px;" ><!--
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
                              height=36 src="./img/index_113.gif" 
                              width=150 border=0 name=Image_back id="IMG2" runat="server" visible="false"> </TD>
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
                          <table id="Table1" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="border-collapse: collapse" width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 461px">
                                          综合评审表</td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 461px; height: 166px">
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span style="font-size: 18pt; font-family: 宋体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                  mso-hansi-font-family: 'Times New Roman'">中国地震局正高级专业技术职务任职资格</span><span lang="EN-US"
                                                      style="font-size: 18pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"><?xml
                                                          namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?><?xml namespace=""
                                                              prefix="O" ?></span></p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 18pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                  mso-fareast-font-family: 宋体">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span style="font-size: 24pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  综</span><span style="font-size: 24pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                      mso-fareast-font-family: 黑体"> </span><span style="font-size: 24pt; font-family: 黑体;
                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">合</span><span
                                                              style="font-size: 24pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                              mso-fareast-font-family: 黑体"> </span><span style="font-size: 24pt; font-family: 黑体;
                                                                  mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">评</span><span
                                                                      style="font-size: 24pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                                      mso-fareast-font-family: 黑体"> </span><span style="font-size: 24pt; font-family: 黑体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">审</span><span
                                                                              style="font-size: 24pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                                              mso-fareast-font-family: 黑体"> </span><span style="font-size: 24pt; font-family: 黑体;
                                                                                  mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">表</span><span
                                                                                      lang="EN-US" style="font-size: 24pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 黑体"></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt"><span style="font-family: Times New Roman;
                                                  mso-spacerun: yes">&nbsp; &nbsp; </span></span><span style="font-size: 14pt;
                                                      mso-bidi-font-size: 12.0pt">工作单位：<asp:DropDownList
                                                  ID="ddlist_gzdw" runat="server" Width="237px" Font-Names="宋体" Font-Size="9pt">
                                                          <asp:ListItem>地震监测预报</asp:ListItem>
                                                          <asp:ListItem>震害防御</asp:ListItem>
                                                          <asp:ListItem>应急救援</asp:ListItem>
                                                          <asp:ListItem>科技服务</asp:ListItem>
                                                          <asp:ListItem>技术支撑</asp:ListItem>
                                                      </asp:DropDownList></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; mso-bidi-font-size: 12.0pt"><span lang="EN-US"></span>
                                              </span>&nbsp;</p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  <span style="mso-spacerun: yes">&nbsp; </span></span><span style="font-size: 14pt; mso-bidi-font-size: 12.0pt">姓<span lang="EN-US"><span style="mso-spacerun: yes">
                                                          &nbsp; &nbsp;</span></span>名：<span lang="EN-US"><asp:TextBox ID="tbx_xm" runat="server"
                                                              Width="270px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></span></p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  <span style="mso-spacerun: yes">&nbsp; </span></span><span style="font-size: 14pt; mso-bidi-font-size: 12.0pt">现任专业<span lang="EN-US"></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  <span style="mso-spacerun: yes">&nbsp; </span></span><span style="font-size: 14pt; mso-bidi-font-size: 12.0pt">技术职务：<asp:DropDownList
                                                  ID="ddlist_xrzw" runat="server" Width="190px" Font-Names="宋体" Font-Size="9pt">
                                                      <asp:ListItem>副研究员</asp:ListItem>
                                                      <asp:ListItem>高级工程师</asp:ListItem>
                                                  </asp:DropDownList><span lang="EN-US"></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  <span style="mso-spacerun: yes">&nbsp; </span><span style="mso-spacerun: yes"></span>
                                              </span><span style="font-size: 14pt; mso-bidi-font-size: 12.0pt">从事工作：<asp:DropDownList
                                                  ID="ddlist_csgz" runat="server" Width="160px" Font-Names="宋体" Font-Size="9pt">
                                                  <asp:ListItem>地震监测预报</asp:ListItem>
                                                  <asp:ListItem>震害防御</asp:ListItem>
                                                  <asp:ListItem>应急救援</asp:ListItem>
                                                  <asp:ListItem>科技服务</asp:ListItem>
                                                  <asp:ListItem>技术支撑</asp:ListItem>
                                              </asp:DropDownList><span lang="EN-US"></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt">
                                                  <span style="mso-spacerun: yes"></span></span>&nbsp;</p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt">
                                                  <span style="mso-spacerun: yes">&nbsp; </span><span style="mso-spacerun: yes"></span>
                                              </span><span style="mso-bidi-font-size: 12.0pt"><span><span>申报专业<span lang="EN-US"></span></span></span></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt"><span style="font-size: 14pt;
                                                  mso-spacerun: yes">&nbsp; </span></span><span style="mso-bidi-font-size: 12.0pt">
                                                      <span style="font-size: 14pt">技术职务：</span><asp:Label ID="lbl_sbzw" runat="server"
                                                          Text="研究员" Width="269px" Font-Names="宋体" Font-Size="9pt"></asp:Label><span lang="EN-US"></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes">
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span><span lang="EN-US" style="mso-bidi-font-size: 12.0pt">
                                                      
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt"><span style="font-size: 10pt;
                                                  mso-spacerun: yes">&nbsp; </span></span><span style="font-size: 14pt;
                                                      mso-bidi-font-size: 12.0pt">填表日期：<span lang="EN-US"><asp:Label ID="lbl_tbrq" runat="server"
                                                          Width="269px" Font-Names="宋体" Font-Size="9pt"></asp:Label></span></span></p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt">
                                                  
                                                  <span style="font-size: 10pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; </span></span>
                                          </p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="font-family: Times New Roman; mso-bidi-font-size: 12.0pt">
                                                  
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                          </p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt">
                                                  
                                                  <span style="font-size: 10pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; </span></span>
                                          </p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt">
                                                  
                                                  <span style="font-size: 10pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; </span></span>
                                          </p>
                                              <span style="font-size: 10pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                      text-align: center; mso-line-height-rule: exactly">
                                                      <span style="font-size: 18pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  中国地震局人事教育和科技司制</span><span lang="EN-US" style="font-size: 18pt; letter-spacing: 2pt;
                                                              mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                                  prefix="o" ?></span></p>
                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: center; mso-line-height-rule: exactly">
                                              <span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                  mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                  二</span><span style="font-size: 18pt;
                                                      font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt; mso-font-kerning: 1.0pt;
                                                      mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                      mso-bidi-language: AR-SA">〇〇</span><span style="font-size: 18pt; font-family: 宋体;
                                                          letter-spacing: 2pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                          mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                          mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">九年七月</span>
                                              </span></td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table2" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 10pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 486px; height: 19px">
                                          个人简历和业务工作简介</td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 486px; height: 166px">
                                          <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: medium none;
                                              border-top: medium none; margin: auto auto auto 1.45pt; border-left: medium none;
                                              width: 714px; border-bottom: medium none; border-collapse: collapse; mso-table-layout-alt: fixed;
                                              mso-border-alt: solid windowtext .5pt; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;
                                              mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext">
                                              <tr style="height: 22.95pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 425pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.95pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">姓<span
                                                              lang="EN-US"><span style="mso-spacerun: yes">&nbsp; </span></span>名<span lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.95pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_xm" runat="server" Width="71px"></asp:TextBox></span>&nbsp;</p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.95pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">出 生<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">年 月<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.95pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_csny" runat="server" Width="150px"></asp:TextBox></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 75.15pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.95pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="100">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">性<span
                                                              lang="EN-US"><span style="mso-spacerun: yes">&nbsp; </span></span>别<span lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 39.3pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.95pt; background-color: transparent;
                                                      mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .5pt;
                                                      mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                      width="52">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:DropDownList id="ddlist2_xb" runat="server" Width="39px">
                                                                      <asp:ListItem>男</asp:ListItem>
                                                                      <asp:ListItem>女</asp:ListItem>
                                                                  </asp:DropDownList></span></p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 1">
                                                  <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 425pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">最高学历<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">学历<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">名称<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">毕业时间<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">（年、月）<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">专<span
                                                              lang="EN-US"><span style="mso-spacerun: yes"> &nbsp; </span></span>业<span lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="153">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">授予单位<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 2">
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 33pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_xl1" runat="server" Width="71px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 33pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_bysj1" runat="server" Width="126px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 33pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_zy1" runat="server" Width="150px"></asp:TextBox>
                                                          </span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 33pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="153">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_sydw1" runat="server" Width="178px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 3">
                                                  <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 425pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">符合申报<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">条件的学历<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">学历<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">名称<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">毕业时间<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">（年、月）<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">专<span
                                                              lang="EN-US"><span style="mso-spacerun: yes"> &nbsp; </span></span>业<span lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="153">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">授予单位<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 4">
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_xl2" runat="server" Width="71px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_bysj2" runat="server" Width="126px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_zy2" runat="server" Width="150px"></asp:TextBox>
                                                          </span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="153">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_sydw2" runat="server" Width="178px"></asp:TextBox></span></p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 5">
                                                  <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 425pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">符合申报<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">条件的学位<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">学位<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">名称<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">取得时间<span
                                                              lang="EN-US"></span></span></p>
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">（年、月）<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">专<span
                                                              lang="EN-US"><span style="mso-spacerun: yes"> &nbsp; </span></span>业<span lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="153">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">授予单位<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 6">
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_xw" runat="server" Width="71px"></asp:TextBox></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="84">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_qdsj" runat="server" Width="126px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_zy3" runat="server" Width="150px"></asp:TextBox>
                                                          </span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="153">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_sydw3" runat="server" Width="178px"></asp:TextBox>
                                                          </span>
                                                      </p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 30.75pt; mso-yfti-irow: 7">
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 425pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">现任技术职务<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="168">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: left; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_xrzw" runat="server" Width="208px"></asp:TextBox></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 129pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">评定时间（年、月）<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 54pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="72">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_pdsj" runat="server" Width="69px"></asp:TextBox></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 75.15pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt" width="100">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">聘任时间（年、月）<span
                                                              lang="EN-US"></span></span></p>
                                                  </td>
                                                  <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                      padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 39.3pt;
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                      mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                      mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                      width="52">
                                                      <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 14pt;
                                                          text-align: center; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <asp:TextBox id="tbx2_prsj" runat="server" Width="69px"></asp:TextBox></span></p>
                                                  </td>
                                              </tr>
                                              <tr style="height: 363.65pt; mso-yfti-irow: 8; mso-yfti-lastrow: yes">
                                                  <td colspan="7" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 452.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 26pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .5pt"
                                                      valign="top" width="604">
                                                      <asp:Image ID="img_photo" runat="server" Height="158px" Width="120px" />上传照片：
                                                      <asp:FileUpload ID="FileUpload_photo" runat="server"
                                                          Width="344px" Font-Names="宋体" Font-Size="9pt" /></td>
                                              </tr>
                                              <tr style="height: 363.65pt; mso-yfti-irow: 8; mso-yfti-lastrow: yes">
                                                  <td colspan="7" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                      border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                      width: 452.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 363.65pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .5pt"
                                                      valign="top" width="604">
                                                      <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">业务工作简介：（限<span
                                                              lang="EN-US">2000</span>字）<span lang="EN-US"></span></span></p>
                                                      <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <span style="mso-spacerun: yes">
                                                                  <ftb:FreeTextBox ID="ftb_gzjj" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="400px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px">
                                                                  </ftb:FreeTextBox>
                                                              </span>
                                                              
                                                          </span>
                                                      </p>
                                                  </td>
                                              </tr>
                                          </table>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table3" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 19px">
                                          <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">任现职以来承担的主要任务和项目情况</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">（一）承担任务情况</span></p>
                                          <div align="center">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: medium none;
                                                  border-top: medium none; border-left: medium none; width: 708px; border-bottom: medium none;
                                                  border-collapse: collapse; mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt;
                                                  mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext;
                                                  mso-border-insidev: .5pt solid windowtext" id="Table3_11" runat="server">
                                                  <tr style="height: 45.35pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 27.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt"
                                                          width="37">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">序号<span
                                                                  lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 206.45pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt; background-color: transparent;
                                                          mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .75pt;
                                                          mso-border-right-alt: .5pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                          width="275">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">任 务 名 称<span
                                                                  lang="EN-US"></span></span></p>
                                                      </td>
                                                      <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                          width: 228.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt;
                                                          background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                                                          mso-border-bottom-alt: .75pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                          mso-border-style-alt: solid" width="305">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">工作内容或情况<span
                                                                  lang="EN-US"></span></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 50.25pt; mso-yfti-irow: 1">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 27.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 29pt;
                                                          background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .75pt;
                                                          mso-border-bottom-alt: .5pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                          mso-border-style-alt: solid" width="37">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  1</span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 206.45pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 29pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="275">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-size: 10.5pt; color: black;
                                                                  font-family: 宋体; mso-bidi-font-size: 12.0pt">是否全面主持强破坏性地震现场的考察、监测预报、震害评估、应急救援等工作？<asp:RadioButtonList
                                                                      ID="rbtnlist3_1" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
                                                                      Width="153px" OnSelectedIndexChanged="rbtnlist3_1_SelectedIndexChanged">
                                                                      <asp:ListItem>是</asp:ListItem>
                                                                      <asp:ListItem Selected="True">否</asp:ListItem>
                                                                  </asp:RadioButtonList></span></b></p>
                                                      </td>
                                                      <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                          width: 228.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 29pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="305">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">
                                                                      <asp:Label ID="lbl3_1" runat="server" Text="不超过20个汉字"></asp:Label><br />
                                                                  </span>
                                                                  <asp:TextBox ID="tbx3_1" runat="server" Height="78px" MaxLength="20" TextMode="MultiLine"
                                                                      Width="352px"></asp:TextBox></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 50.25pt; mso-yfti-irow: 2">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 27.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 11pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt" width="37">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  2</span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 206.45pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 11pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="275">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-size: 10.5pt; color: red;
                                                                  font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="color: black">是否主持所（省局）级综合震情监测、分析预报工作？</span><asp:RadioButtonList
                                                                      ID="rbtnlist3_2" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
                                                                      Width="153px" OnSelectedIndexChanged="rbtnlist3_1_SelectedIndexChanged">
                                                                      <asp:ListItem>是</asp:ListItem>
                                                                      <asp:ListItem Selected="True">否</asp:ListItem>
                                                                  </asp:RadioButtonList><span lang="EN-US"></span></span></b></p>
                                                      </td>
                                                      <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                          width: 228.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 11pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="305">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 5.25pt; line-height: 18pt;
                                                              mso-line-height-rule: exactly; mso-char-indent-count: .5">
                                                              <span style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">
                                                                      <asp:Label ID="lbl3_2" runat="server" Text="不超过20个汉字"></asp:Label></span><asp:TextBox
                                                                      ID="tbx3_2" runat="server" Height="78px" MaxLength="20" TextMode="MultiLine"
                                                                      Width="352px"></asp:TextBox></span><span lang="EN-US" style="font-size: 10.5pt;
                                                                      font-family: 宋体; mso-bidi-font-size: 12.0pt"></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 50.25pt; mso-yfti-irow: 3">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 27.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt" width="37">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  3</span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 206.45pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="275">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-size: 10.5pt; color: red;
                                                                  font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="color: black">是否负责所（省局）级学科方法震情监测、分析预报工作？</span><asp:RadioButtonList
                                                                      ID="rbtnlist3_3" runat="server" AutoPostBack="True" RepeatDirection="Horizontal"
                                                                      Width="153px" OnSelectedIndexChanged="rbtnlist3_1_SelectedIndexChanged">
                                                                      <asp:ListItem>是</asp:ListItem>
                                                                      <asp:ListItem Selected="True">否</asp:ListItem>
                                                                  </asp:RadioButtonList><span lang="EN-US"></span></span></b></p>
                                                      </td>
                                                      <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                          width: 228.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="305">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 5.25pt; line-height: 18pt;
                                                              mso-line-height-rule: exactly; mso-char-indent-count: .5; text-align: left;">
                                                              <span style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">
                                                                      <asp:Label ID="lbl3_3" runat="server" Text="不超过20个汉字"></asp:Label></span><asp:TextBox
                                                                      ID="tbx3_3" runat="server" Height="78px" MaxLength="20" TextMode="MultiLine"
                                                                      Width="352px"></asp:TextBox></span><span lang="EN-US" style="font-size: 10.5pt;
                                                                      font-family: 宋体; mso-bidi-font-size: 12.0pt"></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 27pt; mso-yfti-irow: 4">
                                                      <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 27.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt" width="37">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  4</span></p>
                                                      </td>
                                                      <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #dcd9a6; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                          width: 206.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" width="275">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-size: 10.5pt;
                                                                  font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="color: black">培养研究生情况：<span lang="EN-US"></span></span></span></b></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 81pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span
                                                                  style="color: black">
                                                                  协助培养<span lang="EN-US"></span></span></span></p>
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span
                                                                  style="color: black">
                                                                  博士生人数<span lang="EN-US"></span></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 45pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; text-align: left;" valign="top" width="60">
                                                          <asp:TextBox ID="tbx3_41" runat="server" Width="43px"></asp:TextBox></td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top" width="84">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; color: black; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  毕业人数</span><span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 47.55pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top" width="63">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly; text-align: left;">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <asp:TextBox ID="tbx3_42" runat="server" Width="43px"></asp:TextBox></span>&nbsp;</p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 22.5pt; mso-yfti-irow: 5; mso-yfti-lastrow: yes">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 81pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; height: 23pt;" valign="top">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span
                                                                  style="color: black">
                                                                  培养硕士生人数<span lang="EN-US"></span></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 45pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; height: 23pt;" valign="top" width="60">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly; text-align: left;">
                                                              <span lang="EN-US" style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <asp:TextBox ID="tbx3_43" runat="server" Width="43px"></asp:TextBox></span>&nbsp;</p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 63pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; height: 23pt;" valign="top" width="84">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; color: black; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  毕业人数</span><span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 47.55pt;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; height: 23pt;" valign="top" width="63">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly; text-align: left;">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <asp:TextBox ID="tbx3_44" runat="server" Width="43px"></asp:TextBox></span></p>
                                                      </td>
                                                  </tr>
                                              </table>
                                              <table id="Table3_21" runat="server" border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable"
                                                  style="border-right: medium none; border-top: medium none; border-left: medium none;
                                                  width: 150%; border-bottom: medium none; border-collapse: collapse; mso-border-alt: solid windowtext .5pt;
                                                  mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext;
                                                  mso-border-insidev: .5pt solid windowtext">
                                                  <tr style="height: 42.55pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 12%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 21pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">序号<span
                                                                  lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?></span></span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 93%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 21pt;
                                                          background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                                                          mso-border-bottom-alt: .75pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                          mso-border-style-alt: solid">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">工作时间或地震<span
                                                                  lang="EN-US"></span></span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 20.8%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 21pt;
                                                          background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                                                          mso-border-bottom-alt: .75pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                          mso-border-style-alt: solid" width="20%">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">工作内容<span
                                                                  lang="EN-US"></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12.24%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 21pt; background-color: transparent;
                                                          mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .75pt;
                                                          mso-border-right-alt: .5pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                          width="12%">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">角色<span
                                                                  lang="EN-US"></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 21pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">考核</span><span
                                                                  style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">结果<span lang="EN-US"></span></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 42.55pt; mso-yfti-irow: 1">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 12%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .75pt;
                                                          mso-border-bottom-alt: .5pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                          mso-border-style-alt: solid">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  1</span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                          border-left: #ece9d8; width: 93%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                          height: 42.55pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                          mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                              tab-stops: 1.6pt">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">参加省局级综合监测、预报工作情况：<br />
                                                                      可选择录入不同的年度</span></span></b><b style="mso-bidi-font-weight: normal"><span style="font-size: 10.5pt;
                                                                          font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="color: black"><span lang="EN-US"><asp:TextBox
                                                                              ID="tbx3_gg_gzsj1" runat="server" Font-Size="9pt" Width="114px"></asp:TextBox></span></span></span></b></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 20.8%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="20%">
                                                          <asp:DropDownList ID="ddlist3_gg_gznr1" runat="server" Font-Size="9pt" Width="183px">
                                                              <asp:ListItem>省局级以上单位综合震情监测</asp:ListItem>
                                                              <asp:ListItem>省局级以上单位综合分析预报</asp:ListItem>
                                                          </asp:DropDownList><span style="font-size: 10pt"> </span>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 12.24%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="12%">
                                                          <asp:DropDownList ID="ddlist3_gg_js1" runat="server" Font-Size="9pt" Width="48px">
                                                              <asp:ListItem>主持</asp:ListItem>
                                                              <asp:ListItem>参加</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 42.55pt; background-color: transparent;
                                                          mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .5pt;
                                                          mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                          valign="middle">
                                                          <asp:DropDownList ID="ddlist3_gg_khjg1" runat="server" Font-Size="9pt" Width="48px">
                                                              <asp:ListItem>优秀</asp:ListItem>
                                                              <asp:ListItem>称职</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr style="height: 42.55pt; mso-yfti-irow: 2">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 12%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  2</span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                          border-left: #ece9d8; width: 93%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                          height: 42.55pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                              tab-stops: 1.6pt">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-size: 10.5pt; font-family: 宋体;
                                                                  mso-bidi-font-size: 12.0pt"><span style="color: black"><span style="font-size: 9pt">
                                                                      参加本学科地震监测预报工作情况：</span><br />
                                                                      <span lang="EN-US"><span style="font-size: 10pt">可选择录入不同的年度</span><asp:TextBox ID="tbx3_gg_gzsj2"
                                                                          runat="server" Font-Size="9pt" Width="114px"></asp:TextBox>
                                                                      </span></span></span></b>
                                                          </p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 20.8%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="20%">
                                                          <asp:DropDownList ID="ddlist3_gg_gznr2" runat="server" Font-Size="9pt" Width="183px">
                                                              <asp:ListItem>本学科方法震情监测</asp:ListItem>
                                                              <asp:ListItem>本学科方法分析预报</asp:ListItem>
                                                          </asp:DropDownList><span style="font-size: 10pt"> </span>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 12.24%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="12%">
                                                          <asp:DropDownList ID="ddlist3_gg_js2" runat="server" Font-Size="9pt" Width="48px">
                                                              <asp:ListItem>负责</asp:ListItem>
                                                              <asp:ListItem>参加</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 42.55pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                          valign="middle">
                                                          <asp:DropDownList ID="ddlist3_gg_khjg2" runat="server" Font-Size="9pt" Width="48px">
                                                              <asp:ListItem>优秀</asp:ListItem>
                                                              <asp:ListItem>称职</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr style="height: 42.55pt; mso-yfti-irow: 3">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 12%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt">
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                          border-left: #ece9d8; width: 93%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                          height: 42.55pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                              tab-stops: 1.6pt">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">参加国内地震现场工作情况：</span></span></b></p>
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                              tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span
                                                                  style="color: black"><span style="font-size: 9pt">可录入国内不同的破坏性地震时间、地点、震级</span><br />
                                                                  <asp:TextBox ID="tbx3_gg_gzsj3" runat="server" Font-Size="9pt" Width="243px"></asp:TextBox></span></span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 20.8%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="20%">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly">
                                                              <span style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              </span>
                                                          </p>
                                                          <asp:DropDownList ID="ddlist3_gg_gznr3" runat="server" Font-Size="9pt" Width="106px">
                                                              <asp:ListItem>考察</asp:ListItem>
                                                              <asp:ListItem>监测预报</asp:ListItem>
                                                              <asp:ListItem>震害评估</asp:ListItem>
                                                              <asp:ListItem>安全鉴定</asp:ListItem>
                                                              <asp:ListItem>救援</asp:ListItem>
                                                              <asp:ListItem>通讯保障</asp:ListItem>
                                                              <asp:ListItem>其他</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12.24%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 42.55pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="12%">
                                                          <asp:DropDownList ID="ddlist3_gg_js3" runat="server" Font-Size="9pt" Width="79px">
                                                              <asp:ListItem>负责</asp:ListItem>
                                                              <asp:ListItem>主要承担者</asp:ListItem>
                                                          </asp:DropDownList>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 42.55pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                          valign="middle">
                                                          <asp:DropDownList ID="ddlist3_gg_khjg3" runat="server" Font-Size="9pt" Width="85px">
                                                              <asp:ListItem>已提交报告</asp:ListItem>
                                                              <asp:ListItem>未提交报告</asp:ListItem>
                                                          </asp:DropDownList>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 50.1pt; mso-yfti-irow: 4">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 12%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 50.1pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  4</span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                          border-left: #ece9d8; width: 93%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                          height: 50.1pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                              tab-stops: 1.6pt">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">参加国际地震救援现场工作情况：<span lang="EN-US"></span></span></span></b></p>
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                              tab-stops: 1.6pt">
                                                              <span style="color: black; font-family: 宋体; mso-bidi-font-size: 12.0pt">可录入参加的不同国外地震时间、地点、震级<br />
                                                              </span><span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <asp:TextBox ID="tbx3_gg_gzsj4" runat="server" Width="243px"></asp:TextBox></span></p>
                                                      </td>
                                                      <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 20.8%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 50.1pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="20%">
                                                          <asp:TextBox ID="tbx3_gg_gznr4" runat="server" Width="184px"></asp:TextBox></td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12.24%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 50.1pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="12%">
                                                          <asp:TextBox ID="tbx3_gg_js4" runat="server" Width="88px"></asp:TextBox></td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 50.1pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                          valign="middle">
                                                          <asp:TextBox ID="tbx3_gg_khjg4" runat="server" Width="88px"></asp:TextBox>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 31.5pt; mso-yfti-irow: 5">
                                                      <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 12%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31.5pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .75pt">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt -6.15pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  5</span></p>
                                                      </td>
                                                      <td colspan="2" rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                          border-left: #ece9d8; width: 93%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                          height: 31.5pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span style="font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">培养研究生情况<span lang="EN-US"></span></span></span></b></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                          width: 11.86%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31.5pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top" width="11%">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt;
                                                              text-align: center; mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; color: black; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  博士生人数</span><span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 8.94%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="8%">
                                                          <asp:TextBox ID="tbx3_gg_yjs1" runat="server" Width="57px"></asp:TextBox>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12.24%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top" width="12%">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt;
                                                              text-align: center; mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span
                                                                  style="color: black">毕业<span lang="EN-US"></span></span></span></p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt;
                                                              text-align: center; mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">人数</span><span lang="EN-US"></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 31.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <asp:TextBox ID="tbx3_gg_yjs2" runat="server" Width="57px"></asp:TextBox></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr style="height: 25.5pt; mso-yfti-irow: 6">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 11.86%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 25.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top" width="11%">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt;
                                                              text-align: center; mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; color: black; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  硕士生人数</span><span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 8.94%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 25.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="middle" width="8%">
                                                          <asp:TextBox ID="tbx3_gg_yjs3" runat="server" Width="57px"></asp:TextBox>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12.24%;
                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 25.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt" valign="top" width="12%">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt;
                                                              text-align: center; mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span
                                                                  style="color: black">毕业<span lang="EN-US"></span></span></span></p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt;
                                                              text-align: center; mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                              <span style="font-size: 10.5pt; color: red; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <span style="color: black">人数</span><span lang="EN-US"></span></span></p>
                                                      </td>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 12%; padding-top: 0cm;
                                                          border-bottom: windowtext 1pt solid; height: 25.5pt; background-color: transparent;
                                                          mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                          mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                                  <asp:TextBox ID="tbx3_gg_yjs4" runat="server" Width="57px"></asp:TextBox></span></p>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                          <br />
                                          <asp:GridView ID="gv_cdrw" runat="server" AutoGenerateColumns="False" BackColor="White"
                                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                              Height="1px" Width="464px">
                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                              <Columns>
                                                  <asp:BoundField DataField="id" HeaderText="序号">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                  </asp:BoundField>
                                                  <asp:ButtonField CommandName="edit" DataTextField="rwmc" HeaderText="任务名称" Text="下载">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                  </asp:ButtonField>
                                                  <asp:HyperLinkField DataTextField="gznr" HeaderText="工作内容或情况">
                                                      <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                  </asp:HyperLinkField>
                                              </Columns>
                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <AlternatingRowStyle BackColor="#F7F7F7" />
                                          </asp:GridView>
                                          <asp:GridView ID="gv_cdrw_gg" runat="server" AutoGenerateColumns="False" BackColor="White"
                                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                              Height="1px" Visible="False" Width="464px">
                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                              <Columns>
                                                  <asp:TemplateField>
                                                      <ItemTemplate>
                                                          <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                      </ItemTemplate>
                                                  </asp:TemplateField>
                                                  <asp:BoundField DataField="id" HeaderText="序号">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                  </asp:BoundField>
                                                  <asp:ButtonField CommandName="edit" DataTextField="rwmc" HeaderText="任务名称" Text="下载">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                  </asp:ButtonField>
                                                  <asp:HyperLinkField DataTextField="gznr" HeaderText="工作内容">
                                                      <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                  </asp:HyperLinkField>
                                                  <asp:BoundField DataField="qzsj" HeaderText="起止日期">
                                                      <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                  </asp:BoundField>
                                                  <asp:BoundField DataField="zwjs" HeaderText="职务或角色">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                  </asp:BoundField>
                                              </Columns>
                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <AlternatingRowStyle BackColor="#F7F7F7" />
                                          </asp:GridView>
                                          <table style="width: 550px" id="Table3_12" runat="server" visible="false"><tr><td style="text-align: right; width: 105px;"> 
                                              <asp:Label ID="lbl3_rwmc" runat="server" Text="任务名称：" Width="90px" Height="1px"></asp:Label></td><td style="width: 437px">
                                          <asp:TextBox ID="tbx3_rwmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td></tr>
                                          <tr><td style="text-align: right; width: 105px;"> 
                                              <asp:Label ID="lbl3_gznr" runat="server" Text="工作内容或情况：" Width="96px" Height="3px"></asp:Label></td><td style="width: 437px">
                                                      <asp:TextBox ID="tbx3_gznr" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td></tr>
                                          <tr><td style="text-align: right; width: 105px;"> 
                                              <asp:Label ID="lbl3_qzrq" runat="server" Text="起止日期：" Visible="False" Width="64px"></asp:Label></td>
                                              <td style="width: 437px">
                                                  <asp:TextBox ID="tbx3_qzrq" runat="server" Font-Names="宋体" Font-Size="9pt" Visible="False"></asp:TextBox></td>
                                          </tr>
                                              <tr>
                                                  <td style="text-align: right; width: 105px;">
                                                      &nbsp;<asp:Label ID="lbl3_zwjs" runat="server" Text="职务或角色：" Width="76px" Visible="False"></asp:Label></td>
                                                  <td style="width: 437px">
                                                      <asp:TextBox ID="tbx3_zwjs" runat="server" Font-Names="宋体" Font-Size="9pt" Visible="False"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 105px; height: 30px;">
                                                  </td>
                                                  <td style="width: 437px; height: 30px">
                                                      <asp:ImageButton ID="imgbtn_cdrw" runat="server" ImageUrl="./img/add.gif" OnClick="btn_cdrw_Click" /></td>
                                              </tr>
                                          </table>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <table id="Table3_22" runat="server" style="width: 550px" visible="false">
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              <asp:Label ID="Label4" runat="server" Height="1px" Text="工作时间或地震：" Width="104px"></asp:Label></td>
                                                          <td style="width: 437px">
                                                              <asp:TextBox ID="tbx3_gzsj_gg" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              <asp:Label ID="Label5" runat="server" Height="3px" Text="工作内容：" Width="96px"></asp:Label></td>
                                                          <td style="width: 437px">
                                                              <asp:TextBox ID="tbx3_gznr_gg" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              <asp:Label ID="Label6" runat="server" Text="角色：" Width="64px"></asp:Label></td>
                                                          <td style="width: 437px">
                                                              <asp:TextBox ID="tbx3_js_gg" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              &nbsp;<asp:Label ID="Label7" runat="server" Text="考核结果：" Width="76px"></asp:Label></td>
                                                          <td style="width: 437px">
                                                              <asp:TextBox ID="tbx3_khjg_gg" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; height: 30px">
                                                          </td>
                                                          <td style="width: 437px; height: 30px">
                                                              <asp:ImageButton ID="imgbtn3_cdrw_gg" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn3_cdrw_gg_Click" /></td>
                                                      </tr>
                                                  </table>
                                                  <asp:Panel ID="Panel3_1" runat="server" Height="50px" Width="125px">
                                                      <table id="Table15" border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable"
                                                          style="margin: auto auto auto 4.65pt; width: 379pt; border-collapse: collapse;
                                                          mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; border-right: black thin solid; border-top: black thin solid; border-left: black thin solid; border-bottom: black thin solid;" visible="false" width="505">
                                                          <tr style="height: 24.75pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: black 1pt; height: 24.75pt; background-color: transparent;
                                                                  mso-border-alt: solid windowtext .5pt; mso-border-bottom-alt: none black 0cm"
                                                                  width="167">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          内容<span lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                                              prefix="o" ?><?xml namespace="" prefix="o" ?></span></span></p>
                                                              </td>
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 136.75pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt; background-color: transparent;
                                                                  mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="182">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              
                                                                          </span></span>
                                                                  </p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 58pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          成绩优秀者</span></p>
                                                              </td>
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 71pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24.75pt; background-color: transparent;
                                                                  mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          称职者<span lang="EN-US"></span></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 49.5pt; mso-yfti-irow: 1">
                                                              <td rowspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 49.5pt;
                                                                  background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                                  mso-border-bottom-alt: solid black .5pt" width="167">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                          mso-bidi-font-family: 宋体">1.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                              mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">负责某方面技术工作<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 136.75pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 49.5pt; background-color: transparent;
                                                                  mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="182">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          主持局级以上单位综合震情监控和分析预报工作</span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 58pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 49.5pt;
                                                                  background-color: transparent; text-align: center; mso-border-top-alt: solid windowtext .5pt;
                                                                  mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt">
                                                                  0.3/年<br />
                                                                  <asp:TextBox ID="tbx3_cdrw1" runat="server" Width="43px"></asp:TextBox>年</td>
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: 宋体;
                                                                  height: 49.5pt; background-color: transparent; mso-border-top-alt: solid windowtext .5pt;
                                                                  mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="mso-font-kerning: 0pt; mso-bidi-font-family: 宋体"><span lang="EN-US">
                                                                          0.2/年<BR /><asp:TextBox id="tbx3_cdrw2" runat="server" Width="43px"></asp:TextBox>年
                                                                      </span></span>
                                                                  </p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 46pt; mso-yfti-irow: 2">
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 136.75pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 46pt; background-color: transparent;
                                                                  mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt"
                                                                  width="182">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          负责本学科方法震情监测和分析预报工作</span></p>
                                                              </td>
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 58pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 46pt; background-color: transparent;
                                                                  mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt; font-size: 9pt;">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              0.2/年<BR /><asp:TextBox id="tbx3_cdrw3" runat="server" Width="43px"></asp:TextBox>年</span></span></p>
                                                              </td>
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 71pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 46pt; background-color: transparent;
                                                                  mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt; font-size: 9pt;">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              0.1/年<BR /><asp:TextBox id="tbx3_cdrw4" runat="server" Width="43px"></asp:TextBox>年
                                                                          </span></span>
                                                                  </p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 45.2pt; mso-yfti-irow: 3">
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 45.2pt; background-color: transparent;
                                                                  mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt" colspan="3">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          主持破坏性地震的考察、监测预报、震害评估、安全鉴定、救援、通讯保障等现场工作一次，并提交相应报告，负责人得<asp:RadioButton ID="rbtn3_cdrw1" runat="server" GroupName="renwu" Text="0.5" />分，主要承担者<asp:RadioButton ID="rbtn3_cdrw2" runat="server" GroupName="renwu" Text="0.2" />分，参加国际救援现场工作增加<asp:CheckBox ID="cbx3_1"
                                                                                          runat="server" Text="0.1" /></span>分</p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 3.5pt; mso-yfti-irow: 4; mso-yfti-lastrow: yes">
                                                              <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 3.5pt;
                                                                  background-color: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="167">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                          mso-bidi-font-family: 宋体">5.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                              mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">研究生培养<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td colspan="3" style="border-right: #ece9d8; padding-right: 5.4pt; border-top: #ece9d8;
                                                                  padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 254pt;
                                                                  padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 3.5pt; background-color: transparent;
                                                                  mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt"
                                                                  width="339">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          培养硕士研究生或协助培<?xml namespace="" ns="urn:schemas-microsoft-com:office:smarttags" prefix="st1" ?><?xml
                                                                              namespace="" prefix="st1" ?><st1:personname productid="养" w:st="on">养</st1:personname>博士研究生<span
                                                                                  lang="EN-US">1</span>名（已毕业）以上<span lang="EN-US"><span style="mso-spacerun: yes"> &nbsp;
                                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:CheckBox ID="cbx3_2"
                                                                                          runat="server" Text="1.0" />
                                                                                  </span></span></span>
                                                                  </p>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                      <asp:Button ID="btn3_1" runat="server" OnClick="btn3_1_Click" Text="确定" /></asp:Panel>
                                                  （二）承担项目情况（限</span><span
                                                  lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 黑体">10</span><span
                                                      style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span
                                                          style="font-size: 9pt; font-family: 宋体">项</span>）
                                                      <asp:GridView ID="gv_drxmqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                          BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                          Height="1px" Width="714px" OnSelectedIndexChanging="gv_drxmqk_SelectedIndexChanging">
                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                          <Columns>
                                                              <asp:TemplateField>
                                                                  <ItemTemplate>
                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
                                                              <asp:BoundField DataField="id" HeaderText="序号">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                              </asp:BoundField>
                                                              <asp:ButtonField CommandName="edit" DataTextField="ktmc" HeaderText="课题名称" Text="下载">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                              </asp:ButtonField>
                                                              <asp:HyperLinkField DataTextField="qzsj" HeaderText="起止时间">
                                                                  <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                              </asp:HyperLinkField>
                                                              <asp:BoundField DataField="jfs" HeaderText="经费数">
                                                                  <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                              </asp:BoundField>
                                                              <asp:BoundField DataField="kt" HeaderText="课题级别、编号及来源">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                              </asp:BoundField>
                                                              <asp:BoundField DataField="drjs" HeaderText="但任何角色">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                              </asp:BoundField>
                                                              <asp:CommandField SelectText="评分" ShowSelectButton="True" />
                                                          </Columns>
                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                      </asp:GridView>
                                                  </span><span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 黑体">
                                                      
                                                  </span>
                                          </p>
                                          <div align="center" style="text-align: left">
                                              <table id="TABLE17" runat="server" style="width: 712px" visible="false">
                                                  <tr>
                                                      <td colspan="3" rowspan="3" style="height: 238px">
                                                          &nbsp; &nbsp; &nbsp;
                                              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 课题名称：
                                              <asp:TextBox ID="tbx3_ktmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30"></asp:TextBox><br />
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span style="font-size: 9pt"><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          课题来源：&nbsp;</span><asp:DropDownList ID="ddlist3_ktly" runat="server" Width="277px" AutoPostBack="True" OnSelectedIndexChanged="ddlist3_ktly_SelectedIndexChanged">
                                                          <asp:ListItem Value="国家级科技项目">1.国家级科技项目</asp:ListItem>
                                                          <asp:ListItem Value="国家自然科学基金">   ①国家自然科学基金</asp:ListItem>
                                                          <asp:ListItem Value="科技部4类科技计划">   ②科技部4类科技计划</asp:ListItem>
                                                          <asp:ListItem Value="发改委科技专项">   ③发改委科技专项</asp:ListItem>
                                                          <asp:ListItem Value="财政部科技专项">   ④财政部科技专项</asp:ListItem>
                                                          <asp:ListItem Value="省部级科技项目">2.省部级科技项目</asp:ListItem>
                                                          <asp:ListItem Value="地震行业科研专项">   ①地震行业科研专项</asp:ListItem>
                                                          <asp:ListItem Value="中国地震局及其他部委、各省、直辖市设立的项目">   ②中国地震局及其他部委、各省、直辖市设立的项目</asp:ListItem>
                                                          <asp:ListItem Value="所（省局）级重点科技项目">3.所（省局）级重点科技项目</asp:ListItem>
                                                          <asp:ListItem Value="重点项目">   ①重点项目</asp:ListItem>
                                                          <asp:ListItem Value="一般项目">   ②一般项目</asp:ListItem>
                                                      </asp:DropDownList></span></span></span></p>
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span style="font-size: 9pt"><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                          mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                              课题级别：
                                                              <asp:DropDownList ID="ddlist3_ktjb1" runat="server" Width="132px">
                                                                  <asp:ListItem Value="重大项目">①重大项目</asp:ListItem>
                                                                  <asp:ListItem Value="一级课题（重点项目）">②一级课题（重点项目）</asp:ListItem>
                                                                  <asp:ListItem Value="二级课题（面上项目）">③二级课题（面上项目）</asp:ListItem>
                                                                  <asp:ListItem Value="三级课题">④三级课题</asp:ListItem>
                                                              </asp:DropDownList><asp:DropDownList ID="ddlist3_ktjb2" runat="server" Width="132px" Visible="False">
                                                                  <asp:ListItem Value="重点项目">①重点项目</asp:ListItem>
                                                                  <asp:ListItem Value="一级课题（面上项目）">②一级课题（面上项目）</asp:ListItem>
                                                                  <asp:ListItem Value="二级课题">③二级课题</asp:ListItem>
                                                              </asp:DropDownList></span></span></span></span></p>
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span style="font-size: 9pt"><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                          mso-ascii-font-family: 'Times New Roman'"><span></span><span style="font-size: 9pt;
                                                              font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 课题编号：
                                                      <asp:TextBox ID="tbx3_ktbh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span><br />
                                                      </span>&nbsp; 起止时间（年、月）：
                                                          <asp:TextBox ID="tbx3_qzsj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                          &nbsp; &nbsp; &nbsp; 经费数（万元）： </span>
                                                      <asp:TextBox ID="tbx3_jfs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'">
                                                      <span style="font-size: 9pt; font-family: 宋体"></span><span style="font-family: 宋体"><span
                                                          style="font-size: 9pt">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 但任何角色：&nbsp;</span></span><asp:DropDownList ID="ddlist3_drjs" runat="server" Width="132px">
                                                              <asp:ListItem>负责人</asp:ListItem>
                                                              <asp:ListItem>主要参加者</asp:ListItem>
                                                          </asp:DropDownList></span></p>
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          上传附件： </span>
                                                      <asp:FileUpload ID="FileUpload3_cdxm" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /><br />
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="imgbtn_drxm" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_drxm_Click" /></span></p><p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                                          <span>注： “经费数”应填写本人实际承担科研项目的经费数目，“担任何角色”应填写负责人或参加者，并按项目的级别进行排序。</span></p>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                              </table>
                                          </div>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span>
                                                  <asp:Panel ID="Panel3_2" runat="server" Height="50px" Width="125px" Visible="False">
                                                      <table id="Table16" runat="server" border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable"
                                                          style="margin: auto auto auto 4.65pt; width: 408pt; border-collapse: collapse;
                                                          mso-padding-alt: 0cm 5.4pt 0cm 5.4pt" width="544">
                                                          <tr style="height: 14.25pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                              <td rowspan="10" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                                  width: 29pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-alt: solid windowtext .5pt" width="39">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          项目任务<span lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                                              prefix="o" ?><?xml namespace="" prefix="o" ?><?xml namespace="" prefix="o" ?><?xml
                                                                                  namespace="" prefix="o" ?><?xml namespace="" prefix="o" ?></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="167">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          内容<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              
                                                                          </span></span>
                                                                  </p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          负责人<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          主要参加者<span lang="EN-US"></span></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 12pt; mso-yfti-irow: 1">
                                                              <td rowspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: black 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid black .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="167">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                          mso-bidi-font-family: 宋体">2.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                              mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">国家级科技项目<span lang="EN-US">(</span>国家自然科学基金、科技部<span
                                                                                  lang="EN-US">4</span>类科技计划、发改委和财政部的科技专项等<span lang="EN-US">)</span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          重大项目<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_1" runat="server" GroupName="a" Text="2.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_2" runat="server" GroupName="a" Text="0.5" /></span><span
                                                                              style="font-size: 10pt"></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="font-size: 10pt; height: 12pt; mso-yfti-irow: 2">
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">一级课题（重点项目）<span
                                                                          lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_3" runat="server" GroupName="a" Text="1.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_4" runat="server" GroupName="a" Text="0.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 12pt; mso-yfti-irow: 3">
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          二级课题（面上项目）<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_5" runat="server" GroupName="a" Text="1.0" /><span lang="EN-US"><span
                                                                              style="font-size: 9pt"><span style="font-family: 楷体_GB2312"></span></span></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                                  border-left: #ece9d8; width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                                  font-family: 楷体_GB2312; height: 12pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_6" runat="server" GroupName="a" Text="0.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="font-size: 9pt; height: 12pt; mso-yfti-irow: 4">
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="mso-font-kerning: 0pt; mso-bidi-font-family: 宋体"><span style="font-family: 楷体_GB2312">
                                                                          三级课题<span lang="EN-US"></span></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: 楷体_GB2312;
                                                                  height: 12pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_7" runat="server" GroupName="a" Text="0.8" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_8" runat="server" GroupName="a" Text="0.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 17.25pt; mso-yfti-irow: 5">
                                                              <td rowspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: #ece9d8; height: 17.25pt; background-color: transparent;
                                                                  mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt"
                                                                  width="167">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                          mso-bidi-font-family: 宋体">3.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                              mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">省部级科技项目（地震行业科研专项、中国地震局及其他部委、各省、直辖市设立的项目）<span
                                                                                  lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                                  border-left: #ece9d8; width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                                  height: 17pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="mso-font-kerning: 0pt; mso-bidi-font-family: 宋体"><span style="font-family: 楷体_GB2312">
                                                                          重点项目<span lang="EN-US"></span></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm;
                                                                  border-left: #ece9d8; width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                                  font-family: 楷体_GB2312; height: 17pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_9" runat="server" GroupName="a" Text="1.0" /></span><span
                                                                              style="font-size: 10pt"></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm;
                                                                  border-left: #ece9d8; width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                                  height: 17pt; background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_10" runat="server" GroupName="a" Text="0.2" /></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 17.25pt; mso-yfti-irow: 6">
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 17.25pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          一级课题（面上项目）<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 17.25pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_11" runat="server" GroupName="a" Text="0.8" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 17.25pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_12" runat="server" GroupName="a" Text="0.2" /></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 17.25pt; mso-yfti-irow: 7">
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 17pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          二级课题<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 17pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_13" runat="server" GroupName="a" Text="0.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 17pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_14" runat="server" GroupName="a" Text="0.2" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 12pt; mso-yfti-irow: 8">
                                                              <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt"
                                                                  width="167">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                          mso-bidi-font-family: 宋体">4.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                              mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">所（省局）级重点科技项目<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          重点项目<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_15" runat="server" GroupName="a" Text="0.3" /></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              
                                                                          </span></span>
                                                                  </p>
                                                              </td>
                                                          </tr>
                                                          <tr style="height: 12pt; mso-yfti-irow: 9; mso-yfti-lastrow: yes">
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          一般项目<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_16" runat="server" GroupName="a" Text="0.2" /></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="95">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              
                                                                          </span></span>
                                                                  </p>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                      <table id="Table23" runat="server" border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable"
                                                          style="margin: auto auto auto 4.65pt; width: 413pt; border-collapse: collapse;
                                                          mso-padding-alt: 0cm 5.4pt 0cm 5.4pt">
                                                          <tr>
                                                              <td rowspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                                  width: 506pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      </span>&nbsp;</p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="167" rowspan="3">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              
                                                                          </span></span>
                                                                  </p>
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                          mso-bidi-font-family: 宋体">5.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                              mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">承担的工程项目</span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          <span lang="EN-US">
                                                                              
                                                                          </span></span>
                                                                  </p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          技术负责人<span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                                  background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          分项负责人</span></p>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                          通过国家地震安全性评定委员会会议评审项目</span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_17" runat="server" GroupName="a" Text="0.5" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_18" runat="server" GroupName="a" Text="0.2" /></span><span
                                                                              style="font-size: 10pt"></span></p>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 114pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span style="font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">通过省局（所）级会议评审科技服务项目</span></p>
                                                              </td>
                                                              <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt" width="108">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span>
                                                                          <asp:RadioButton ID="rbtn3_19" runat="server" GroupName="a" Text="0.2" /><span lang="EN-US"></span></span></p>
                                                              </td>
                                                              <td align="left" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                                  border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                                  width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                                  background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                                  mso-border-right-alt: solid windowtext .5pt">
                                                                  <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                      mso-pagination: widow-orphan">
                                                                      <span><span lang="EN-US"></span></span>
                                                                  </p>
                                                              </td>
                                                          </tr>
                                                      </table>
                                                      <asp:Button ID="btn3_2" runat="server" OnClick="btn3_2_Click" Text="确定" /></asp:Panel>
                         
                          </span><span lang="EN-US"
                                                  style="mso-fareast-font-family: 黑体"></span></p>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                           <table id="Table4" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 24px;">
                                          <span style="font-size: 12pt; font-family: 华文中宋; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                              mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                              mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                              三、任现职以来撰写的主要学术论著和报告情况（限</span><span lang="EN-US" style="mso-bidi-font-size: 12.0pt;
                                                  mso-fareast-font-family: 黑体; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US;
                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">10</span><span style="font-size: 12pt;
                                                      font-family: 华文中宋; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                      mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">篇）</span></td>
                                  </tr>
                                  <tr style="font-size: 12pt; font-family: 华文中宋">
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <span style="font-size: 10.5pt; font-family: 楷体_GB2312; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                              <asp:GridView ID="gv_lzbgqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                  BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                  Height="1px" Width="700px" OnSelectedIndexChanging="gv_lzbgqk_SelectedIndexChanging">
                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                  <Columns>
                                                      <asp:TemplateField>
                                                          <ItemTemplate>
                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                      <asp:BoundField DataField="id" HeaderText="序号">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:ButtonField CommandName="edit" DataTextField="lzmc" HeaderText="论著或报告名称" Text="下载">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                          <ItemStyle ForeColor="#C000C0" />
                                                      </asp:ButtonField>
                                                      <asp:HyperLinkField DataTextField="zs" HeaderText="字数">
                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                      </asp:HyperLinkField>
                                                      <asp:BoundField DataField="slqk" HeaderText="收录情况">
                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="kwmc" HeaderText="刊物名称及期号">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="pm" HeaderText="排名">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="fbsj" HeaderText="发表时间">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:CommandField SelectText="评分" ShowCancelButton="False" ShowSelectButton="True" />
                                                  </Columns>
                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                              </asp:GridView>
                                              <span style="font-family: 宋体"><span style="font-size: 9pt"> </span><span><span style="font-size: 9pt"><span>
                                                  <table id="TABLE18" runat="server" style="width: 695px" visible="false">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="width: 229px; height: 201px">
                                                              &nbsp; &nbsp; <span><span style="font-size: 9pt">论著<span>或报告名称：
                                              <asp:TextBox ID="tbx4_lzmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30"></asp:TextBox><span
                                                  style="font-size: 9pt; font-family: 宋体">（限30个汉字）<br />
                                              </span>
                                                  <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                      <span style="font-size: 9pt; font-family: 宋体"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; 字数：
                                                      </span>
                                                      <asp:TextBox ID="tbx4_zs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                      <span style="font-size: 9pt; font-family: 宋体"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 收录情况： </span>
                                                  </span>
                                                      <asp:DropDownList ID="ddlist4_slqk" runat="server" Width="219px">
                                                          <asp:ListItem>SCI收录期刊</asp:ListItem>
                                                          <asp:ListItem>EI收录期刊</asp:ListItem>
                                                          <asp:ListItem>ISTP</asp:ListItem>
                                                          <asp:ListItem>核心期刊</asp:ListItem>
                                                          <asp:ListItem>一般期刊</asp:ListItem>
                                                          <asp:ListItem>专著</asp:ListItem>
                                                          <asp:ListItem>国际学术会议论文集</asp:ListItem>
                                                          <asp:ListItem>技术报告</asp:ListItem>
                                                          <asp:ListItem>其他</asp:ListItem>
                                                      </asp:DropDownList><br />
                                                  </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                          刊物名称及期号或出版社名称或国际学术会议论文集名称：</span></span><p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt;
                                                      font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span style="font-size: 10.5pt; font-family: 楷体_GB2312"> </span><span style="font-size: 9pt;
                                                          font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp;&nbsp; </span>
                                                      <asp:TextBox ID="tbx4_kwmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span><span
                                                              style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span><span style="font-size: 9pt; font-family: 宋体"></span></span></span></p>
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; 排名： </span></span>
                                                      <asp:TextBox ID="tbx4_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                      <span style="font-size: 9pt; font-family: 宋体">发表时间（年、月）： </span>
                                                      <asp:TextBox ID="tbx4_fbsj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                      <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 上传附件：
                                                      </span>
                                                      <asp:FileUpload ID="FileUpload4" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /><br />
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="imgbtn_lzbgqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_lzbgqk_Click" /></span></p>
                                </span></span></span>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                              </span></span></span></span><p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <asp:Panel ID="Panel4" runat="server" Height="50px" Width="125px" Visible="False">
                                                          <table border="0" cellpadding="0" cellspacing="0" style="width: 379pt; border-collapse: collapse; border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid;"
                                                              width="505" x:str="">
                                                              <colgroup>
                                                                  <col style="width: 125pt; mso-width-source: userset; mso-width-alt: 5312" width="166" />
                                                                  <col style="width: 102pt; mso-width-source: userset; mso-width-alt: 4352" width="136" />
                                                                  <col style="width: 81pt; mso-width-source: userset; mso-width-alt: 3456" width="108" />
                                                                  <col style="width: 71pt; mso-width-source: userset; mso-width-alt: 3040" width="95" />
                                                              </colgroup>
                                                              <tr height="17" style="height: 12.75pt; mso-height-source: userset">
                                                                  <td class="xl23" height="85" rowspan="5" style="border-right: windowtext 0.5pt solid;
                                                                      border-top: windowtext 0.5pt solid; border-left: windowtext 0.5pt solid; width: 125pt;
                                                                      border-bottom: windowtext 0.5pt solid; height: 63.75pt; background-color: transparent"
                                                                      width="166">
                                                                      <span style="font-size: 10pt; font-family: 宋体">1.论文在期刊上发表</span></td>
                                                                  <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                                                                      font-size: 10pt; border-left: windowtext; width: 102pt; border-bottom: windowtext 0.5pt solid;
                                                                      font-family: 宋体; background-color: transparent" width="136">
                                                                  </td>
                                                                  <td class="xl22" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                                                                      font-size: 10pt; border-left: windowtext; width: 81pt; border-bottom: windowtext 0.5pt solid;
                                                                      font-family: 宋体; background-color: transparent" width="108">
                                                                      第一作者</td>
                                                                  <td class="xl22" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                                                                      font-size: 10pt; border-left: windowtext; width: 71pt; border-bottom: windowtext 0.5pt solid;
                                                                      font-family: 宋体; background-color: transparent" width="95">
                                                                      非第一作者</td>
                                                              </tr>
                                                              <tr height="17" style="font-size: 10pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                                                                  <td class="xl22" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                                                                      background-color: transparent">
                                                                      SCI收录期刊</td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                                                                      x:num="1">
                                                                      <asp:RadioButton ID="rbtn4_1" runat="server" GroupName="lzbg" Text="1.0" /></td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                                                                      x:num="0.1">
                                                                      <asp:RadioButton ID="rbtn4_2" runat="server" GroupName="lzbg" Text="0.1" /></td>
                                                              </tr>
                                                              <tr height="17" style="font-size: 10pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                                                                  <td class="xl22" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                                                                      background-color: transparent">
                                                                      EI收录期刊</td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                                                                      x:num="0.7">
                                                                      <asp:RadioButton ID="rbtn4_3" runat="server" GroupName="lzbg" Text="0.7" /></td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                                                                      x:num="0.1">
                                                                      <asp:RadioButton ID="rbtn4_4" runat="server" GroupName="lzbg" Text="0.1" /></td>
                                                              </tr>
                                                              <tr height="17" style="font-size: 10pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                                                                  <td class="xl22" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                                                                      background-color: transparent">
                                                                      核心期刊</td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                                                                      x:num="0.5">
                                                                      <asp:RadioButton ID="rbtn4_5" runat="server" GroupName="lzbg" Text="0.5" /></td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                                                                      x:num="0.1">
                                                                      <asp:RadioButton ID="rbtn4_6" runat="server" GroupName="lzbg" Text="0.1" /></td>
                                                              </tr>
                                                              <tr height="17" style="font-size: 10pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                                                                  <td class="xl22" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 13pt;
                                                                      background-color: transparent">
                                                                      一般期刊</td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 13pt;
                                                                      background-color: transparent" x:num="0.2">
                                                                      <asp:RadioButton ID="rbtn4_7" runat="server" GroupName="lzbg" Text="0.2" /></td>
                                                                  <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 13pt;
                                                                      background-color: transparent" x:num="0.1">
                                                                      <asp:RadioButton ID="rbtn4_8" runat="server" GroupName="lzbg" Text="0.1" /></td>
                                                              </tr>
                                                              <tr height="51" style="font-size: 10pt; font-family: 宋体; height: 38.25pt; mso-height-source: userset">
                                                                  <td class="xl23" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                                                                      height: 38pt; background-color: transparent" width="166">
                                                                      2.论文在国际学术会议文集上发表</td>
                                                                  <td class="xl26" colspan="3" style="border-right: #ece9d8; border-top: windowtext 0.5pt solid;
                                                                      border-left: windowtext; width: 254pt; border-bottom: windowtext 0.5pt solid;
                                                                      background-color: transparent; height: 38pt;" width="339">
                                                                      第一作者<asp:RadioButton ID="rbtn4_11" runat="server" GroupName="lzbg2" Text="0.2" />
                                                                      是否被ISTP收录<asp:CheckBox ID="cbx4_istp" runat="server" Text="0.3" />
                                                                      &nbsp; 非第一作者<asp:RadioButton ID="rbtn4_12" runat="server" GroupName="lzbg2" Text="0.1" />
                                                                      <br />
                                                                      在国际学术机构组织的会议上宣读的特邀或主题报告第一作者<asp:RadioButton ID="rbtn4_13" runat="server" GroupName="lzbg2"
                                                                          Text="0.7" /></td>
                                                              </tr>
                                                              <tr>
                                                                  <td class="xl23" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                                                                      height: 33px; background-color: transparent" width="166">
                                                                      <span style="font-family: 宋体">
                                                                      3.撰写出版20万字以上专著</span></td>
                                                                  <td class="xl26" colspan="3" style="border-right: #ece9d8; border-top: windowtext 0.5pt solid;
                                                                      border-left: windowtext; width: 254pt; border-bottom: windowtext 0.5pt solid;
                                                                      background-color: transparent; height: 33px;" width="339">
                                                                      <span style="font-family: 宋体">第1作者得</span><asp:RadioButton ID="rbtn4_21" runat="server" GroupName="lzbg3" Text="0.8" /><span style="font-family: 宋体">分，主要合作者得</span><asp:RadioButton ID="rbtn4_22" runat="server" GroupName="lzbg3" Text="0.4" /><span style="font-family: 宋体">分（各类论文集、工程报告、资料汇编、志述等不按专著对待）</span></td>
                                                              </tr>
                                                              <tr height="35" style="font-size: 10pt; font-family: 宋体; height: 26.25pt; mso-height-source: userset">
                                                                  <td class="xl23" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                                                                      border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                                                                      height: 26pt; background-color: transparent" width="166">
                                                                      4.完成有关报告</td>
                                                                  <td class="xl26" colspan="3" style="border-right: #ece9d8; border-top: windowtext 0.5pt solid;
                                                                      border-left: windowtext; width: 254pt; border-bottom: windowtext 0.5pt solid;
                                                                      background-color: transparent; height: 26pt;" width="339">
                                                                      完成国家级或省、部级重点科研、工程和开发项目的结题验收报告（或工作总结报告），或完成地震监测预报、震害防御与地震应急等工作中的研究报告，报告的执笔人得<asp:RadioButton ID="rbtn4_31" runat="server" GroupName="lzbg4" Text="0.3" />分，主要撰写人得<asp:RadioButton ID="rbtn4_32" runat="server" GroupName="lzbg4" Text="0.1" />分</td>
                                                              </tr>
                                                          </table>
                                                          <asp:Button ID="btn4" runat="server" OnClick="btn4_Click" Text="确定" /></asp:Panel>
                                                  </span></p>
                                          </span></td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table5" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 470px">
                                          <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                              mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                              mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                              四、任现职以来取得的业绩成果</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 470px; height: 166px">
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  （一）<span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                      mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">成果获奖情况</span>（限</span><span lang="EN-US" style="font-size: 14pt; font-family: Times New Roman;
                                                      mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 黑体">10</span><span style="font-size: 14pt;
                                                          font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">项）<asp:GridView
                                                              ID="gv_hjqk" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                              BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                              Width="642px">
                                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                              <Columns>
                                                                  <asp:TemplateField>
                                                                      <ItemTemplate>
                                                                          <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                      </ItemTemplate>
                                                                  </asp:TemplateField>
                                                                  <asp:BoundField DataField="id" HeaderText="序号">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                  </asp:BoundField>
                                                                  <asp:ButtonField CommandName="edit" DataTextField="hjcgmc" HeaderText="获奖成果名称" Text="下载">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                  </asp:ButtonField>
                                                                  <asp:HyperLinkField DataTextField="jl" HeaderText="奖励级别及奖励名称">
                                                                      <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                  </asp:HyperLinkField>
                                                                  <asp:BoundField DataField="hjdj" HeaderText="获奖等级">
                                                                      <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                  </asp:BoundField>
                                                                  <asp:BoundField DataField="pm" HeaderText="排名">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                  </asp:BoundField>
                                                                  <asp:BoundField DataField="hjsj" HeaderText="获奖时间">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                  </asp:BoundField>
                                                              </Columns>
                                                              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                              <AlternatingRowStyle BackColor="#F7F7F7" />
                                                          </asp:GridView>
                                                      </span>
                                          </p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span style="font-size: 10.5pt; font-family: 楷体_GB2312"></span><span>
                                                  <table id="TABLE19" runat="server" style="width: 639px" visible="false">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="width: 209px; height: 16px">
                                                              &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; 获奖成果名称： 
                                                  <asp:TextBox ID="tbx5_hjcgmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30"></asp:TextBox><br />
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      奖励级别：&nbsp;<asp:DropDownList ID="ddlist5_jljb" runat="server" Width="270px">
                                                          <asp:ListItem>国家自然科学奖</asp:ListItem>
                                                          <asp:ListItem>国家技术发明奖</asp:ListItem>
                                                          <asp:ListItem>国家科技进步奖</asp:ListItem>
                                                          <asp:ListItem>省部级</asp:ListItem>
                                                          <asp:ListItem>中国地震局防震减灾优秀成果奖</asp:ListItem>
                                                      </asp:DropDownList></span><br />
                                                  <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; 奖励名称：<asp:TextBox ID="tbx5_jlmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30"></asp:TextBox></span></span></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span>&nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp;获奖等级： <asp:DropDownList ID="ddlist5_hjdj" runat="server" Width="132px">
                                                          <asp:ListItem>一等奖</asp:ListItem>
                                                          <asp:ListItem>二等奖</asp:ListItem>
                                                          <asp:ListItem>三等奖</asp:ListItem>
                                                      </asp:DropDownList>&nbsp;</span></span><br />
                                              </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 排名： </span>
                                                  <asp:TextBox ID="tbx51_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  <span></span><span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; 获奖时间： </span></span>
                                                  <asp:TextBox ID="tbx5_hjsj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <span></span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; 上传附件： </span>
                                                  <asp:FileUpload ID="FileUpload5_hjqk" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /><br />
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<asp:ImageButton ID="imgbtn_hjqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_hjqk_Click" /></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                              </span>
                                              <span style="font-size: 14pt"><span style="font-family: 黑体"><span style="mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'">（二）</span><b style="mso-bidi-font-weight: normal"><span
                                                      style="color: black">获得国家一级学会优秀论文奖情况<span lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                          prefix="o" ?></span></span></b></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <asp:GridView
                                                              ID="gv_yxlw" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                              BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                              Width="464px">
                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                  <Columns>
                                                      <asp:TemplateField>
                                                          <ItemTemplate>
                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                      <asp:BoundField DataField="id" HeaderText="序号">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:ButtonField CommandName="edit" DataTextField="lwmc" HeaderText="论文名称" Text="下载">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:ButtonField>
                                                      <asp:HyperLinkField DataTextField="hjmc" HeaderText="获奖名称">
                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                      </asp:HyperLinkField>
                                                      <asp:BoundField DataField="zzpm" HeaderText="作者排名">
                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                  </Columns>
                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                              </asp:GridView>
                                              <table id="Table20" runat="server" style="width: 563px" visible="false">
                                                  <tr>
                                                      <td colspan="3" rowspan="3" style="width: 209px; height: 16px">
                                                          &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 论文名称：
                                              <asp:TextBox ID="tbx52_lwmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 获奖名称： </span>
                                                  <asp:TextBox ID="tbx52_hjmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 作者排名： </span></span>
                                                  <asp:TextBox ID="tbx52_zzpm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span><p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">&nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 上传附件：
                                                  <asp:FileUpload ID="FileUpload5_yxlw" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /><br />
                                              </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; &nbsp; &nbsp;
                                                  <asp:ImageButton ID="imgbtn_yxlw" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_yxlw_Click" /></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                              </table>
                                              注：<span>同一项成果获得不同级别的奖励，只填写获得最高级别奖励的情况，不得重复填写<span
                                                      lang="EN-US"></span></span></p>
                                          <span lang="EN-US" style="font-size: 15pt; font-family: 楷体_GB2312; mso-hansi-font-family: 宋体;
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                              <br clear="all" style="page-break-before: always" />
                                          </span>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  （三）论文（第一作者或通讯作者）被引用情况</span><span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 12.0pt;
                                                      mso-fareast-font-family: 黑体"></span></p>
                                          <div align="center" style="text-align: left">
                                              <asp:GridView ID="gv_lwbyyqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                  BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                  Height="1px" Width="464px">
                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                  <Columns>
                                                      <asp:TemplateField>
                                                          <ItemTemplate>
                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                      <asp:BoundField DataField="id" HeaderText="序号">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:ButtonField CommandName="edit" DataTextField="lwmc" HeaderText="论文名称" Text="下载">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:ButtonField>
                                                      <asp:HyperLinkField DataTextField="zz" HeaderText="作者">
                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                      </asp:HyperLinkField>
                                                      <asp:BoundField DataField="fbsj" HeaderText="发表时间">
                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="kwmc" HeaderText="刊物名称、卷、期、页码">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="tycs" HeaderText="他引次数">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                      </asp:BoundField>
                                                  </Columns>
                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                              </asp:GridView>
                                              <table id="Table21" runat="server" style="width: 554px" visible="false">
                                                  <tr>
                                                      <td colspan="3" rowspan="3" style="width: 209px; height: 16px">
                                                          <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; 论文名称： </span>
                                                  <asp:TextBox ID="tbx5_lwmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30"></asp:TextBox><p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span style="font-size: 9pt; font-family: 宋体">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp;&nbsp; 作者： </span>
                                                  <asp:TextBox ID="tbx5_zz" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 发表时间： </span></span>
                                                  <asp:TextBox ID="tbx5_fbsj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                              </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                      刊物名称、卷、期、页码： </span>
                                                  <asp:TextBox ID="tbx5_kwmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  <span></span><span><span style="font-size: 9pt; font-family: 宋体">&nbsp;&nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;他引次数： </span></span>
                                                  <asp:TextBox ID="tbx5_tycs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <span></span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; 上传附件： </span>
                                                  <asp:FileUpload ID="FileUpload5_lwyy" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /><br />
                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  <asp:ImageButton ID="imgbtn_lwbyyqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_lwbyyqk_Click" /></span></p>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                              </table>
                                              <span lang="EN-US" style="font-size: 14pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                  mso-fareast-font-family: 黑体">
                                                  
                                                  </span>
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                              </span></div>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 10.5pt; font-family: 仿宋_GB2312"><table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="margin: auto auto auto 4.65pt;
                                                      width: 482pt; border-collapse: collapse; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid;"
                                                      width="643">
                                                  <tr>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 125pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt"
                                                              width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">7.论著引用情况</span></p>
                                                          </td>
                                                          <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 328pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      得分：<asp:TextBox ID="tbx5_1" runat="server" Width="94px"></asp:TextBox><asp:RangeValidator
                                                                          ID="RangeValidator1" runat="server" ControlToValidate="tbx5" ErrorMessage="*"
                                                                          MaximumValue="1.5" MinimumValue="0"></asp:RangeValidator></span></p>
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      以第１作者（含通讯作者）发表的论著被他人引用5次，得0.5分，多引用一次加0.1分，最高可得1.5分。</span></p>
                                                          </td>
                                                  </tr>
                                              </table><table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="margin: auto auto auto 4.65pt;
                                                      width: 482pt; border-collapse: collapse; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; border-right: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid; border-top-style: none; border-top-color: black;"
                                                      width="643">
                                                  <tr>
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 125pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt"
                                                              width="167">
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                              <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">8.研发仪器、软件或完成地震安平项目</span></p>
                                                      </td>
                                                      <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 328pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt">
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                              <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                  得分：<asp:TextBox ID="tbx5_2" runat="server" Width="94px"></asp:TextBox><asp:RangeValidator
                                                                      ID="RangeValidator11" runat="server" ControlToValidate="tbx5" ErrorMessage="*"
                                                                      MaximumValue="1.5" MinimumValue="0"></asp:RangeValidator></span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                              <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                  主持开发、研制的仪器、软件等经省、部级验收或鉴定，并在全国地震系统或国家重点工程建设中得到广泛推广应用者每项得0.6分，最多不超过1.8分；作为技术负责人完成的重大工程地震安全性评价等项目，经国家地震安全性评定委员会会议评审通过并在工程中得以应用，每项得0.4分，最多不超过1.2分</span></p>
                                                      </td>
                                                  </tr>
                                              </table>
                                                  <asp:Button ID="btn5_1" runat="server" OnClick="btn5_1_Click" Text="确定" /></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt"><span style="font-family: 黑体">
                                                  （四）获国家<span style="mso-hansi-font-family: 宋体">专利情况</span></span></span><asp:GridView ID="gv_hgjzlqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                      BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                      Height="1px" Width="464px">
                                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                      <Columns>
                                                          <asp:TemplateField>
                                                              <ItemTemplate>
                                                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                              </ItemTemplate>
                                                          </asp:TemplateField>
                                                          <asp:BoundField DataField="id" HeaderText="序号">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:ButtonField CommandName="edit" DataTextField="zlmc" HeaderText="专利名称" Text="下载">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:ButtonField>
                                                          <asp:HyperLinkField DataTextField="zlh" HeaderText="专利号">
                                                              <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                          </asp:HyperLinkField>
                                                          <asp:BoundField DataField="sj" HeaderText="时间">
                                                              <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="zllx" HeaderText="专利类型">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="pm" HeaderText="排名">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                      </Columns>
                                                      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                      <AlternatingRowStyle BackColor="#F7F7F7" />
                                                  </asp:GridView>
                                                  <span style="font-size: 9pt; font-family: 宋体">
                                                      <table id="Table22" runat="server" style="width: 675px" visible="false">
                                                          <tr>
                                                              <td colspan="3" rowspan="3" style="width: 312px; height: 16px">
                                                      专利名称： 
                                                  <asp:TextBox ID="tbx5_zlmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  <span style="font-size: 9pt; font-family: 宋体"></span><span style="mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'"><span><span style="font-size: 9pt; font-family: 宋体">
                                                          &nbsp; 专利号：
                                                          <asp:TextBox ID="tbx5_zlh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                          &nbsp; &nbsp; 时间： </span></span>
                                                      <asp:TextBox ID="tbx5_sj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                          专利类型： </span>
                                                      <asp:DropDownList ID="ddlist5_zllx" runat="server" Width="132px">
                                                          <asp:ListItem>技术发明专利</asp:ListItem>
                                                          <asp:ListItem>实用新型专利</asp:ListItem>
                                                          <asp:ListItem>外观专利</asp:ListItem>
                                                      </asp:DropDownList><br />
                                                      <span></span><span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; 排名： </span>
                                                      </span>
                                                      <asp:TextBox ID="tbx5_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                      <span style="font-size: 9pt; font-family: 宋体">上传附件： </span>
                                                      <asp:FileUpload ID="FileUpload5_hgjzlqk" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /></span><p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                              <asp:ImageButton ID="imgbtn_hgjzlqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_hgjzlqk_Click" />&nbsp;</p>
                                                              </td>
                                                          </tr>
                                                          <tr>
                                                          </tr>
                                                          <tr>
                                                          </tr>
                                                      </table>
                                                  </span>
                                          </p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              &nbsp;&nbsp;
                                              <table id="Table5_5" runat="server" border="0" style="font-size: 9pt; width: 716px" visible="false">
                                                  <tr>
                                                      <td align="left" style="width: 100px; height: 16px">
                                                          <asp:Label ID="Label1" runat="server" Font-Names="黑体" Font-Size="14pt" Text="（五）主要工作业绩（只需申报正研级高级工程师人员填写）"
                                                              Width="534px"></asp:Label>
                                                          <br />
                                                          <span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                              mso-hansi-font-family: 'Times New Roman'">1.全国监测预报评比第一名<asp:GridView ID="gv5_1" runat="server"
                                                                  AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                                                  BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                                  OnSelectedIndexChanging="gv5_1_SelectedIndexChanging" Width="464px">
                                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                  <Columns>
                                                                      <asp:TemplateField>
                                                                          <ItemTemplate>
                                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                          </ItemTemplate>
                                                                      </asp:TemplateField>
                                                                      <asp:BoundField DataField="id" HeaderText="序号">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                      </asp:BoundField>
                                                                      <asp:BoundField DataField="nd" HeaderText="年度">
                                                                          <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                      </asp:BoundField>
                                                                      <asp:BoundField DataField="grpm" HeaderText="个人排名">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                      </asp:BoundField>
                                                                      <asp:ButtonField CommandName="edit" DataTextField="zmwjwh" HeaderText="证明文件文号" Text="下载">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                      </asp:ButtonField>
                                                                      <asp:CommandField SelectText="评分" ShowSelectButton="True" />
                                                                  </Columns>
                                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                                              </asp:GridView>
                                                              <table id="Table10" runat="server" style="width: 550px; font-family: 宋体" visible="false">
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          <asp:Label ID="Label2" runat="server" Height="1px" Text="年度：" Width="90px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx5_1_nd" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          <asp:Label ID="Label3" runat="server" Height="3px" Text="个人排名：" Width="96px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx5_1_grpm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          <asp:Label ID="Label8" runat="server" Text="证明文件文号：" Width="97px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx5_1_zmwjwh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          &nbsp;<asp:Label ID="Label9" runat="server" Text="上传附件：" Width="76px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:FileUpload ID="FileUpload5_1" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                              Width="226px" /></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 105px; height: 30px">
                                                                      </td>
                                                                      <td style="width: 437px; height: 30px">
                                                                          <asp:ImageButton ID="imgbtn5_1" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn5_1_Click" /></td>
                                                                  </tr>
                                                              </table>
                                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: medium none;
                                                                  border-top: medium none; border-left: medium none; border-bottom: medium none;
                                                                  font-family: 宋体; border-collapse: collapse; mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt;
                                                                  mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext;
                                                                  mso-border-insidev: .5pt solid windowtext">
                                                                  <tr style="font-family: Times New Roman; height: 27pt; mso-yfti-irow: 2">
                                                                      <td colspan="9" style="border-right: #dcd9a6; padding-right: 5.4pt; border-top: #dcd9a6;
                                                                          padding-left: 5.4pt; font-size: 9pt; padding-bottom: 0cm; border-left: #dcd9a6;
                                                                          width: 458pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt;
                                                                          background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                  <span style="font-size: 9pt"></span>2.</span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                      mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">荣获中国地震局地震监测预报、地震现场工作先进个人称号者<asp:GridView
                                                                                          ID="gv5_2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                                                          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px" OnSelectedIndexChanging="gv5_2_SelectedIndexChanging"
                                                                                          Width="464px">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField>
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="id" HeaderText="序号">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="nd" HeaderText="年度">
                                                                                                  <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:ButtonField CommandName="edit" DataTextField="zmwjwh" HeaderText="证明文件文号" Text="下载">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:ButtonField>
                                                                                              <asp:CommandField SelectText="评分" ShowSelectButton="True" />
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table11" runat="server" style="width: 550px" visible="false">
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label10" runat="server" Height="1px" Text="年度：" Width="90px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_2_nd" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label12" runat="server" Text="证明文件文号：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_2_zmwjwh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  &nbsp;<asp:Label ID="Label13" runat="server" Text="上传附件：" Width="76px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:FileUpload ID="FileUpload5_2" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                                                      Width="226px" /></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; height: 30px">
                                                                                              </td>
                                                                                              <td style="width: 437px; height: 30px">
                                                                                                  <asp:ImageButton ID="imgbtn5_2" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn5_2_Click" /></td>
                                                                                          </tr>
                                                                                      </table>
                                                                                  </span>
                                                                          </p>
                                                                      </td>
                                                                  </tr>
                                                                  <tr style="font-family: Times New Roman; height: 25.5pt; mso-yfti-irow: 5">
                                                                      <td colspan="9" style="border-right: #dcd9a6; padding-right: 5.4pt; border-top: #dcd9a6;
                                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 458pt;
                                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 26pt; background-color: transparent;
                                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                              </span>
                                                                          </p>
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                  3.</span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                                      mso-hansi-font-family: 'Times New Roman'">提出短临地震预报意见<asp:GridView ID="gv5_3" runat="server"
                                                                                          AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                                                                          BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                                                          OnSelectedIndexChanging="gv5_3_SelectedIndexChanging" Width="614px">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField>
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="id" HeaderText="序号">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="dznd" HeaderText="地震年度">
                                                                                                  <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="dzdd" HeaderText="地震地点">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="dzzj" HeaderText="地震震级">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="ybxg" HeaderText="预报效果">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="js" HeaderText="角色">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:CommandField SelectText="评分" ShowSelectButton="True" />
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table12" runat="server" style="width: 550px" visible="false">
                                                                                          <tr>
                                                                                              <td style="width: 105px; height: 15px; text-align: right">
                                                                                                  <asp:Label ID="Label11" runat="server" Height="1px" Text="地震年度：" Width="90px"></asp:Label></td>
                                                                                              <td style="width: 437px; height: 15px">
                                                                                                  <asp:TextBox ID="tbx5_3_dznd" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label14" runat="server" Height="3px" Text="地震地点：" Width="96px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_3_dzdd" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label17" runat="server" Text="地震震级：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_3_dzzj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; height: 23px; text-align: right">
                                                                                                  <asp:Label ID="Label15" runat="server" Text="预报效果：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px; height: 23px">
                                                                                                  <asp:DropDownList ID="ddlist5_3_ybxg" runat="server" Width="277px">
                                                                                                      <asp:ListItem>可以证明断临预报意见取得显著的减灾实效</asp:ListItem>
                                                                                                      <asp:ListItem>获得中国地震局短临预报实现奖励</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label18" runat="server" Text="角色：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:DropDownList ID="ddlist5_3_js" runat="server" Width="132px">
                                                                                                      <asp:ListItem>主要技术负责人</asp:ListItem>
                                                                                                      <asp:ListItem>参加者</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  &nbsp;<asp:Label ID="Label16" runat="server" Text="上传附件：" Width="76px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:FileUpload ID="FileUpload5_3" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                                                      Width="226px" /></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; height: 30px">
                                                                                              </td>
                                                                                              <td style="width: 437px; height: 30px">
                                                                                                  <asp:ImageButton ID="imgbtn5_3" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn5_3_Click" /></td>
                                                                                          </tr>
                                                                                      </table>
                                                                                  </span>
                                                                          </p>
                                                                      </td>
                                                                  </tr>
                                                                  <tr style="height: 29.25pt; mso-yfti-irow: 8">
                                                                      <td colspan="9" style="border-right: #dcd9a6; padding-right: 5.4pt; border-top: #dcd9a6;
                                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 458pt;
                                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 29pt; background-color: transparent;
                                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                  4. </span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                                      mso-hansi-font-family: 'Times New Roman'">仪器、软件开发、研制情况<asp:GridView ID="gv5_4" runat="server"
                                                                                          AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                                                                          BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                                                          OnSelectedIndexChanging="gv5_4_SelectedIndexChanging" Width="677px">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField>
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="id" HeaderText="序号">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="yqrjmc" HeaderText="仪器、软件名称">
                                                                                                  <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="jdqk" HeaderText="省、部级验收或鉴定情况">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="jddw" HeaderText="验收或鉴定单位">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="tgyyqk" HeaderText="推广应用情况">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="pm" HeaderText="排名">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:CommandField SelectText="评分" ShowSelectButton="True" />
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table13" runat="server" style="width: 550px" visible="false">
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label19" runat="server" Height="1px" Text="仪器、软件名称：" Width="104px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_4_yqrjmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label20" runat="server" Height="3px" Text="省、部级验收或鉴定情况：" Width="148px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:DropDownList ID="ddlist5_4_jdqk" runat="server" Width="132px">
                                                                                                      <asp:ListItem>验收</asp:ListItem>
                                                                                                      <asp:ListItem>鉴定</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label21" runat="server" Text="验收或鉴定单位：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_4_jddw" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label22" runat="server" Text="推广应用情况：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:DropDownList ID="ddlist5_4_tgyyqk" runat="server" Width="132px">
                                                                                                      <asp:ListItem>获得应用</asp:ListItem>
                                                                                                      <asp:ListItem>未获得应用</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label23" runat="server" Text="排名：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_4_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  &nbsp;<asp:Label ID="Label24" runat="server" Text="上传附件：" Width="76px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:FileUpload ID="FileUpload5_4" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                                                      Width="226px" /></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; height: 30px">
                                                                                              </td>
                                                                                              <td style="width: 437px; height: 30px">
                                                                                                  <asp:ImageButton ID="imgbtn5_4" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn5_4_Click" /></td>
                                                                                          </tr>
                                                                                      </table>
                                                                                  </span>
                                                                          </p>
                                                                      </td>
                                                                  </tr>
                                                                  <tr style="font-family: Times New Roman; height: 25.65pt; mso-yfti-irow: 11">
                                                                      <td colspan="9" style="border-right: #dcd9a6; padding-right: 5.4pt; border-top: #dcd9a6;
                                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 458pt;
                                                                          padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 25.65pt; background-color: transparent;
                                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                  5.</span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                                      mso-hansi-font-family: 'Times New Roman'">完成的重大工程地震安全性评价情况<asp:GridView ID="gv5_5"
                                                                                          runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                                                          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px" OnSelectedIndexChanging="gv5_5_SelectedIndexChanging"
                                                                                          Width="614px">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField>
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="id" HeaderText="序号">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="xmmc" HeaderText="项目名称">
                                                                                                  <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="js" HeaderText="角色">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="psqk" HeaderText="评审情况">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="wh" HeaderText="文号">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:CommandField SelectText="评分" ShowSelectButton="True" />
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table14" runat="server" style="width: 550px" visible="false">
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label25" runat="server" Height="1px" Text="项目名称：" Width="104px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_5_xmmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label26" runat="server" Height="3px" Text="角色：" Width="148px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:DropDownList ID="ddlist5_5_js" runat="server" Width="132px">
                                                                                                      <asp:ListItem>技术负责人</asp:ListItem>
                                                                                                      <asp:ListItem>分享负责人</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label27" runat="server" Text="评审情况：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:DropDownList ID="ddlist5_5_psqk" runat="server" Width="132px">
                                                                                                      <asp:ListItem>通过国家地震安全性评定委员会会议评审</asp:ListItem>
                                                                                                      <asp:ListItem>通过省局（所）级会议评审</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label29" runat="server" Text="文号：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_5_wh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  &nbsp;<asp:Label ID="Label30" runat="server" Text="上传附件：" Width="76px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:FileUpload ID="FileUpload5_5" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                                                      Width="226px" /></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; height: 30px">
                                                                                              </td>
                                                                                              <td style="width: 437px; height: 30px">
                                                                                                  <asp:ImageButton ID="imgbtn5_5" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn5_5_Click" /></td>
                                                                                          </tr>
                                                                                      </table>
                                                                                  </span>
                                                                          </p>
                                                                      </td>
                                                                  </tr>
                                                              </table>
                                                          </span>
                                              <asp:Panel
                                                  ID="Panel5" runat="server" Height="50px" Width="125px" Visible="False">
                                                  <table border="0" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="margin: auto auto auto 4.65pt;
                                                      width: 482pt; border-collapse: collapse; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt"
                                                      width="643">
                                                      <tr style="height: 24pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                          <td rowspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt" width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">1.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                          mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">获得国家级科技奖<span lang="EN-US"><?xml
                                                                              namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?><?xml namespace=""
                                                                                  prefix="o" ?></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt;
                                                              background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      奖励等级<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt;
                                                              background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      第一完成人<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 71pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      前三分之一<span lang="EN-US"><br />
                                                                      </span>完成人<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 74pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      其他<span lang="EN-US"><br />
                                                                      </span>主要完成人<span lang="EN-US"></span></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 14.25pt; mso-yfti-irow: 1">
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      一等奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_1" runat="server" GroupName="zl" Text="5.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_2" runat="server" GroupName="zl" Text="3.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 14.25pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_3" runat="server" GroupName="zl" Text="2.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 12pt; mso-yfti-irow: 2">
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      二等奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_4" runat="server" GroupName="zl" Text="3.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_5" runat="server" GroupName="zl" Text="1.5" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_6" runat="server" GroupName="zl" Text="1.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 12pt; mso-yfti-irow: 3">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 102pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt"
                                                              width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      三等奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_7" runat="server" GroupName="zl" Text="2.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_8" runat="server" GroupName="zl" Text="1.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_9" runat="server" GroupName="zl" Text="0.6" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 12pt; mso-yfti-irow: 4">
                                                          <td rowspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">2.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                          mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">获得省、部级科技奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      一等奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_10" runat="server" GroupName="zl" Text="2.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_11" runat="server" GroupName="zl" Text="1.2" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_12" runat="server" GroupName="zl" Text="0.8" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 12pt; mso-yfti-irow: 5">
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      二等奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_13" runat="server" GroupName="zl" Text="1.5" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_14" runat="server" GroupName="zl" Text="0.8" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_15" runat="server" GroupName="zl" Text="0.5" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 12pt; mso-yfti-irow: 6">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 102pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt"
                                                              width="136">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      三等奖<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_16" runat="server" GroupName="zl" Text="1.0" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_17" runat="server" GroupName="zl" Text="0.6" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">
                                                                      <asp:RadioButton ID="rbtn5_18" runat="server" GroupName="zl" Text="0.3" />
                                                                      
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 27.75pt; mso-yfti-irow: 7">
                                                          <td style="border-right: black 1px solid; padding-right: 5.4pt; border-top: black 1px solid;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1px solid; width: 328pt;
                                                              padding-top: 0cm; border-bottom: black 1px solid; height: 22pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;"
                                                              width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">3.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                          mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">获得其他奖励<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td colspan="4" style="border-right: black 1px solid; padding-right: 5.4pt;
                                                              border-top: black 1px solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1px solid;
                                                              width: 328pt; padding-top: 0cm; border-bottom: black 1px solid; height: 22pt;
                                                              background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="437">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      国家级个人科技奖获得者<asp:RadioButton ID="rbtn5_19" runat="server" GroupName="zl" Text="1.5" />分
                                                                      &nbsp; </span>
                                                              </p>
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      国家一级学会优秀论文奖第<span lang="EN-US">1</span>作者
                                                                      <asp:RadioButton ID="rbtn5_20" runat="server" GroupName="zl" Text="0.8" />分<span
                                                                          lang="EN-US"></span></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td rowspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 125pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-left-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">4.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                          mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">在地震预报工作方面</span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136">
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">&nbsp;5-5.9级地震</span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">&nbsp;6-6.9级地震</span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 12pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">&nbsp;7级以上地震</span></p>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 102pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="136" rowspan="2">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      提出的可以证明的短临预报意见取得显著地减灾实效，或获得中国地震局短临预报实现奖励的主要技术负责人</span></p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 81pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="108" rowspan="2">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">&nbsp;</span><span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体"><asp:RadioButton ID="rbtn5_21" runat="server" GroupName="zl" Text="1.0" />
                                                                          
                                                                      </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 71pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="95" rowspan="2">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">&nbsp;</span><span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体"><asp:RadioButton ID="rbtn5_22" runat="server" GroupName="zl" Text="1.5" />
                                                                          
                                                                      </span>
                                                              </p>
                                                          </td>
                                                          <td nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 74pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="99" rowspan="2">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center;
                                                                  mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">&nbsp;</span><span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体"><asp:RadioButton ID="rbtn5_23" runat="server" GroupName="zl" Text="2.0" />
                                                                          
                                                                      </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-right: black 1px solid; padding-right: 5.4pt; border-top: black 1px solid;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1px solid; width: 328pt;
                                                              padding-top: 0cm; border-bottom: black 1px solid; height: 22pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;"
                                                              width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">5.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                          mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">监测预报评比及获得先进个人情况</span></p>
                                                          </td>
                                                          <td colspan="4" style="border-right: black 1px solid; padding-right: 5.4pt;
                                                              border-top: black 1px solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1px solid;
                                                              width: 328pt; padding-top: 0cm; border-bottom: black 1px solid; height: 22pt;
                                                              background-color: transparent; mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt" width="437">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      得分<asp:TextBox ID="tbx5_3" runat="server" Width="94px"></asp:TextBox></span></p>
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      在家各类监测预报工作评比中获第一名的负责人每次得0.4分，主要参加人员（排名2-4者）每次得0.2分；荣获中国地震局地震监测预报、地震现场工作先进个人称号者每次得0.6分</span></p>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-right: black 1px solid; padding-right: 5.4pt; border-top: black 1px solid;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1px solid; width: 328pt;
                                                              padding-top: 0cm; border-bottom: black 1px solid; height: 22pt; background-color: transparent;
                                                              mso-border-bottom-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;"
                                                              width="167">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span lang="EN-US" style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt;
                                                                      mso-bidi-font-family: 宋体">6.</span><span style="font-size: 10pt; font-family: 宋体;
                                                                          mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">获得国家专利<span lang="EN-US"></span></span></p>
                                                          </td>
                                                          <td colspan="4" nowrap="nowrap" style="border-right: black 1px solid; padding-right: 5.4pt;
                                                              border-top: black 1px solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: black 1px solid;
                                                              width: 328pt; padding-top: 0cm; border-bottom: black 1px solid; height: 22pt;
                                                              background-color: transparent; mso-border-bottom-alt: solid windowtext .5pt;
                                                              mso-border-right-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;" width="437">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left; mso-pagination: widow-orphan">
                                                                  <span style="font-size: 10pt; font-family: 宋体; mso-font-kerning: 0pt; mso-bidi-font-family: 宋体">
                                                                      作为第一申请人获得国家发明专利<span lang="EN-US"><asp:RadioButton ID="rbtn5_24" runat="server" GroupName="zl1"
                                                                          Text="1.0" /></span>分，实用新型专利<span lang="EN-US"><asp:RadioButton ID="rbtn5_25" runat="server"
                                                                              GroupName="zl1" Text="0.5" /></span>分。<span lang="EN-US"></span></span></p>
                                                          </td>
                                                      </tr>
                                                  </table>
                                                  <asp:Button ID="btn5" runat="server" OnClick="btn5_Click" Text="确定" /></asp:Panel>
                                                          <br />
                                                          &nbsp;</td>
                                                  </tr>
                                              </table>
                                          </p>
                                          </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table6" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          上次申报后取得的新成果</td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center" style="text-align: left">
                                              <ftb:FreeTextBox ID="ftb_chengguo" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                  Height="400px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                  Width="660px">
                                              </ftb:FreeTextBox>
                                              <div align="center" style="text-align: left">
                                                  <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: black 1px solid;
                                                      border-top: black 1px solid; border-left: black 1px solid; width: 546px; border-bottom: black 1px solid;
                                                      border-collapse: collapse; mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt;
                                                      mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext;
                                                      mso-border-insidev: .5pt solid windowtext">
                                                      <tr style="height: 38.4pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                          <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 462.4pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 38.4pt;
                                                              background-color: transparent; mso-border-top-alt: .5pt; mso-border-left-alt: .75pt;
                                                              mso-border-bottom-alt: .5pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                                                              mso-border-style-alt: solid" width="617">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                      mso-hansi-font-family: 'Times New Roman'">年</span><span lang="EN-US" style="font-size: 10.5pt;
                                                                          mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman;
                                                                              mso-spacerun: yes">&nbsp; </span></span><span style="font-size: 10.5pt; font-family: 宋体;
                                                                                  mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                                  度</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                      mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                      </span></span><span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                                                          mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                                          考</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                              mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                              </span></span><span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                                                                  mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                                                  核</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                                      mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                                      </span></span><span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                                                                          mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                                                          情</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                                              mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                                              </span></span><span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                                                                                  mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                                                                  况</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                                                      mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 46.7pt; mso-yfti-irow: 1">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 138pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 46.7pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                              width="184">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-size: 10.5pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                                      mso-fareast-font-family: 宋体">2005</span><span style="font-size: 10.5pt; font-family: 宋体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">年</span><span
                                                                              lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 138pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 46.7pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" width="184">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-size: 10.5pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                                      mso-fareast-font-family: 宋体">2006</span><span style="font-size: 10.5pt; font-family: 宋体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">年</span><span
                                                                              lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 117pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 46.7pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-size: 10.5pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                                      mso-fareast-font-family: 宋体">2007</span><span style="font-size: 10.5pt; font-family: 宋体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">年</span><span
                                                                              lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 38.1pt; mso-yfti-irow: 2; mso-yfti-lastrow: yes">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 138pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 38.1pt;
                                                              background-color: transparent; text-align: center; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .75pt"
                                                              width="184">
                                                              <asp:TextBox ID="tbx6_ndkh1" runat="server"></asp:TextBox></td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 138pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                              height: 38.1pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                              mso-border-bottom-alt: solid windowtext .75pt" width="184">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; text-align: center;
                                                                  mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                      <asp:TextBox id="tbx6_ndkh2" runat="server"></asp:TextBox>
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 117pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                              height: 38.1pt; background-color: transparent; mso-border-top-alt: .5pt; mso-border-left-alt: .5pt;
                                                              mso-border-bottom-alt: .75pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                                                              mso-border-style-alt: solid">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; text-align: center;
                                                                  mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                      <asp:TextBox id="tbx6_ndkh3" runat="server"></asp:TextBox>
                                                                  </span>
                                                              </p>
                                                          </td>
                                                      </tr>
                                                  </table>
                                              </div>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table7" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          外语水平</td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: medium none;
                                                  border-top: medium none; border-left: medium none; width: 457.55pt; border-bottom: medium none;
                                                  border-collapse: collapse; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;
                                                  mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext"
                                                  width="610">
                                                  <tr style="height: 54pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                      <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 457.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 54pt;
                                                          background-color: transparent; text-align: right; mso-border-alt: solid windowtext .5pt"
                                                          valign="top" width="610">
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 12pt; font-family: 宋体">
                                                                  
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<span
                                                                      style="font-size: 9pt"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                      &nbsp; </span></span>
                                                          </p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体">&nbsp;1. </span><span style="font-family: 宋体">
                                                                  参加全国专业技术人员职称外语等级考试情况：<span lang="EN-US"></span></span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体"><span style="mso-spacerun: yes">&nbsp; </span>
                                                              </span><span style="font-family: 宋体; mso-bidi-font-size: 12.0pt">考试时间：<asp:TextBox
                                                                  ID="tbx7_kssj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>&nbsp; 语种：<asp:TextBox ID="tbx7_yz" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                                  &nbsp; &nbsp; &nbsp; <u><span lang="EN-US"><span style="mso-spacerun: yes"></span></span>
                                                                  </u>级别：<span lang="EN-US"><span style="mso-spacerun: yes"><asp:TextBox ID="tbx7_jb"
                                                                      runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>&nbsp; </span></span>专业：<asp:TextBox ID="tbx7_zy" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>&nbsp;<br />
                                                                  <span lang="EN-US"><span style="mso-spacerun: yes">&nbsp; &nbsp; &nbsp; </span></span>
                                                                  分数：<asp:TextBox ID="tbx7_fs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><span lang="EN-US"><span
                                                                      style="mso-spacerun: yes"> &nbsp; &nbsp; &nbsp;&nbsp; </span></span></span>
                                                          </p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span style="font-family: 宋体; mso-bidi-font-size: 12.0pt"><u><span lang="EN-US"><span
                                                                  style="mso-spacerun: yes"></span></span></u></span><span lang="EN-US" style="font-family: 宋体">
                                                                      2.</span><span style="font-family: 宋体">如免试，<span
                                                                  style="font-family: 宋体; mso-bidi-font-weight: bold"></span>免试理由：</span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 12pt; font-family: 宋体">
                                                                  <ftb:FreeTextBox ID="ftb_wymsly" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="400px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px">
                                                                  </ftb:FreeTextBox>
                                                              </span><span lang="EN-US" style="font-size: 12pt; font-family: 宋体">&nbsp; &nbsp; </span>
                                                          </p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体">3.</span><span style="font-size: 12pt;
                                                                  font-family: 宋体"></span><span style="font-size: 9pt">翻译论文、论著内容：</span><asp:GridView ID="gv_fylw" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                      BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                      Height="1px" Width="667px">
                                                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                      <Columns>
                                                                          <asp:TemplateField>
                                                                              <ItemTemplate>
                                                                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                              </ItemTemplate>
                                                                          </asp:TemplateField>
                                                                          <asp:BoundField DataField="id" HeaderText="序号">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                          <asp:ButtonField CommandName="edit" DataTextField="fylw" HeaderText="翻译论文或著作名称" Text="下载">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                              <ItemStyle ForeColor="#C000C0" />
                                                                          </asp:ButtonField>
                                                                          <asp:HyperLinkField DataTextField="ywz" HeaderText="原文种及翻译文种">
                                                                              <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                          </asp:HyperLinkField>
                                                                          <asp:BoundField DataField="zs" HeaderText="字数">
                                                                              <HeaderStyle Font-Size="Smaller" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="cbdw" HeaderText="出版单位期刊名称">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="cbsj" HeaderText="出版时间">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                      </Columns>
                                                                      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                      <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                  </asp:GridView>
                                                          </p>
                                                          <span style="font-size: 12pt; font-family: 宋体">
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: left; mso-line-height-rule: exactly">
                                                                  <span style="font-size: 9pt">翻译论文或著作名称： </span>
                                                                  <asp:TextBox ID="tbx7_fylw" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></p>
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: left; mso-line-height-rule: exactly">
                                                                  <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                                      <span style="font-size: 9pt; font-family: 宋体">&nbsp; 原文种及翻译文种： </span>
                                                                      <asp:TextBox ID="tbx7_ywz" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                                      <span style="font-size: 9pt; font-family: 宋体">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                          &nbsp;&nbsp; 字数： </span></span>
                                                                      <asp:TextBox ID="tbx7_zs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                                  </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                                      mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                                          &nbsp; 出版单位期刊名称： </span>
                                                                      <asp:TextBox ID="tbx7_cbdw" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                                      <span></span><span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp;
                                                                          &nbsp; &nbsp; 出版时间： </span></span>
                                                                      <asp:TextBox ID="tbx7_cbsj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></p>
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: left; mso-line-height-rule: exactly">
                                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                                      <span></span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp;
                                                                          &nbsp; 上传附件： </span>
                                                                      <asp:FileUpload ID="FileUpload7_fylw" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /><br />
                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                      <asp:ImageButton ID="imgbtn_fylw" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_fylw_Click" /></span></p>
                                                              <span lang="EN-US">
                                                                  <br />
                                                                  
                                                              </span></span></td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table8" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          计算机水平</td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center" style="text-align: left">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" width="602">
                                                  <tr style="height: 54pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
                                                      <td valign="top">
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 12pt; font-family: 宋体">
                                                                  
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 18pt; text-indent: -18pt;
                                                              line-height: 23pt; text-align: left; mso-line-height-rule: exactly; mso-list: l0 level1 lfo1;
                                                              tab-stops: list 18.0pt">
                                                              <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-family: 宋体"><span style="mso-list: Ignore">
                                                                  &nbsp;1.<span style="font-weight: normal; line-height: normal; font-style: normal;
                                                                      font-family: 'Times New Roman'; font-variant: normal"> &nbsp;&nbsp; </span></span>
                                                              </span><span style="font-family: 宋体">参加全国专业技术人员计算机应用能力考试情况：</span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 18pt; text-indent: -18pt;
                                                              line-height: 23pt; text-align: left; mso-line-height-rule: exactly; mso-list: l0 level1 lfo1;
                                                              tab-stops: list 18.0pt">
                                                              <span style="font-family: 宋体">通过科目<span lang="EN-US">1</span>：<span
                                                                  lang="EN-US"><span style="mso-spacerun: yes"><asp:TextBox ID="tbx8_km1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></span>科目<span
                                                                      lang="EN-US">3</span>：<asp:TextBox ID="tbx8_km3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 18pt; text-indent: -18pt;
                                                              line-height: 23pt; text-align: left; mso-line-height-rule: exactly; mso-list: l0 level1 lfo1;
                                                              tab-stops: list 18.0pt">
                                                              <span style="font-family: 宋体"></span>
                                                              <span style="font-family: 宋体">&nbsp; &nbsp; 科目<span lang="EN-US">2</span>：<span lang="EN-US"><span
                                                                  style="mso-spacerun: yes"><asp:TextBox ID="tbx8_km2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></span>科目<span
                                                                      lang="EN-US">4</span>：<asp:TextBox ID="tbx8_km4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 18pt; text-indent: -18pt;
                                                              line-height: 23pt; text-align: left; mso-line-height-rule: exactly; mso-list: l0 level1 lfo1;
                                                              tab-stops: list 18.0pt">
                                                              <span style="font-family: 宋体"></span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-weight: bold"> 上传附件：
                                                                  <asp:FileUpload ID="FileUpload8_jsj" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" /></span></p>
                                                          <p>
                                                              <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-weight: bold">&nbsp;2.<span
                                                                  style="font-family: 宋体; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                  mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                                                                  mso-bidi-font-weight: bold">如免试，</span></span><span
                                                                  style="font-family: 宋体; mso-bidi-font-weight: bold">免试理由：</span><span lang="EN-US"
                                                                      style="font-size: 12pt; font-family: 华文中宋; mso-bidi-font-weight: bold">&nbsp; &nbsp;
                                                                      &nbsp; &nbsp;
                                                                      <ftb:FreeTextBox ID="ftb_jsjmsly" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                          Height="400px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                          Width="660px">
                                                                      </ftb:FreeTextBox>
                                                                      </span>
                                                          </p>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table9" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          破格申请理由</td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" width="600">
                                                  <tr style="height: 335.75pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;
                                                      page-break-inside: avoid">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 450.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 335.75pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt" width="600">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; text-align: left;
                                                              mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span lang="EN-US">1.</span></b><b style="mso-bidi-font-weight: normal"><span
                                                                  style="font-family: 宋体">破格申报类别：<br />
                                                                  <asp:CheckBoxList ID="cbxlist_pglb" runat="server" RepeatDirection="Horizontal">
                                                                      <asp:ListItem Value="1">1、学历破格</asp:ListItem>
                                                                      <asp:ListItem Value="2">2、资历破格</asp:ListItem>
                                                                  </asp:CheckBoxList></span></b><span style="font-family: 宋体"><span lang="EN-US"><span
                                                                      style="mso-spacerun: yes"> &nbsp; </span></span><span lang="EN-US"><span style="mso-spacerun: yes">
                                                                          &nbsp;&nbsp;</span></span></span><span lang="EN-US" style="font-family: 宋体"> &nbsp;
                                                                              &nbsp; </span>
                                                          </p>
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt -0.15pt; text-indent: 3pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly; mso-char-indent-count: .25;
                                                              mso-para-margin-left: -.01gd">
                                                              <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-family: 宋体">2.</span></b><b
                                                                  style="mso-bidi-font-weight: normal"><span style="font-family: 宋体">破格申报条件：<span lang="EN-US"></span></span></b></p>
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 23.9pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly; mso-char-indent-count: 1.99">
                                                              <span style="font-family: 宋体">
                                                                  <asp:CheckBoxList ID="cbxlist_pgtj" runat="server" RepeatDirection="Horizontal">
                                                                      <asp:ListItem Value="1">1、获得奖励</asp:ListItem>
                                                                      <asp:ListItem Value="2">2、发表论著</asp:ListItem>
                                                                      <asp:ListItem Value="3">3、承担重点项目</asp:ListItem>
                                                                  </asp:CheckBoxList></span></p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体"></span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 3pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly; mso-char-indent-count: .25">
                                                              <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-family: 宋体">3.</span></b><b
                                                                  style="mso-bidi-font-weight: normal"><span style="font-family: 宋体">具体破格理由：<span lang="EN-US"></span></span></b></p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  <ftb:FreeTextBox ID="ftb_jtpgly" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="400px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px">
                                                                  </ftb:FreeTextBox>
                                                                  <span style="font-size: 9pt; color: #cc0000; font-family: 宋体">
                                                                      <asp:Label ID="lbl_confirm" runat="server" Text=" 一旦提交就不能再进行修改，请检查无误后再提交。" Visible="False"></asp:Label></span></span></p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  <span style="font-size: 9pt; color: #cc0000; font-family: 宋体">&nbsp;</span>&nbsp;
                                                                  &nbsp; &nbsp; &nbsp; &nbsp;<input id="Hidden1" runat="server" type="hidden" />
                                                                  <input id="hdn_flag" runat="server" style="width: 55px" type="hidden" />
                                                                  <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>&nbsp;
                                                                  <br />
                                                                  <asp:RadioButtonList ID="rbtnlist_sh" runat="server" RepeatDirection="Horizontal"
                                                                      Width="170px">
                                                                      <asp:ListItem>通过</asp:ListItem>
                                                                      <asp:ListItem Value="未通过">未通过</asp:ListItem>
                                                                  </asp:RadioButtonList></span></p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp;
                                                                  &nbsp; &nbsp; &nbsp;
                                                                  <asp:ImageButton ID="imgbtn_confirm" runat="server" ImageUrl="./img/commit.gif" OnClick="imgbtn_confirm_Click" />
                                                                  <asp:ImageButton ID="imgbtn_pingfen" runat="server" ImageUrl="./img/pingfen.gif" OnClick="imgbtn_pingfen_Click" />
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                  &nbsp; &nbsp;&nbsp; </span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                          </p>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <!-- page_index end //--></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <P><A 
      onmouseover="MM_swapImage('Image_back','','images/new_images/btn_fanhui_blue.gif',1)" 
      onmouseout=MM_swapImgRestore() href="javascript:history.back()"></A> <asp:ImageButton ID="imgbtn_save" runat="server" ImageUrl="./img/mht793(1).gif" OnClick="imgbtn_save_Click" />
      </P></DIV></TD>
<TABLE height=79 cellSpacing=0 cellPadding=0 width=1003 align=center border=0>
  <TBODY>
  <TR>
    <TD width=1012 background=img/index_121.gif height=79>
      <TABLE class=b12-20 cellSpacing=0 cellPadding=0 border=0 style="width: 82%">
        <TBODY>
        <TR>
          <TD width="11%">&nbsp;</TD>
          <TD style="text-align: right; width: 89%;">Copyright &copy; 2009 All Rights 
            Reserved<BR>
              版权所有：中国地震局人事教育和科技司 技术支持：人才评价（评审）系统课题组</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></form></BODY></HTML>

