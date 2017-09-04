<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yjysb-1.aspx.cs" Inherits="yjysb_1" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>中国地震局人才评价（评审）系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=GBK"><LINK 
href="./img/text.css" type=text/css rel=stylesheet><LINK 
href="./img/style_1024.css" type=text/css rel=STYLESHEET>
<SCRIPT language=JavaScript src="./img/script.js"></SCRIPT>
<script language=javascript src="./img/calendar_date.js"></script>

<SCRIPT language=JavaScript src="./img/css_suit.js"></SCRIPT>

<STYLE type=text/css>.input_button_go {
	BORDER-RIGHT: #333333 2px solid; BORDER-TOP: #ebdb9a 2px solid; BORDER-LEFT: #ebdb9a 2px solid; WIDTH: 30px; BORDER-BOTTOM: #333333 2px solid; HEIGHT: 20px; BACKGROUND-COLOR: #ffffd9
}
.input_search3 {
	BORDER-RIGHT: #997c1e 1px solid; BORDER-TOP: #997c1e 1px solid; BORDER-LEFT: #997c1e 1px solid; WIDTH: 20px; BORDER-BOTTOM: #997c1e 1px solid; HEIGHT: 17px; BACKGROUND-COLOR: #ffffff
}
</STYLE>

<META content="MSHTML 6.00.6000.16850" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 >
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
    <table align="center" border="0" cellpadding="0" cellspacing="0" width="1003">
        <tbody>
            <tr>
                <td style="height: 36px" width="15">
                    <img alt="" height="45" src="./img/mht751(1).gif" width="15" /></td>
                <td background="img/index_04.gif" style="width: 273px; height: 36px">
                    <table align="center" border="0" cellpadding="0" cellspacing="2" class="b12" style="width: 78%">
                        <tbody>
                            <tr>
                                <td style="height: 14px">

                                    <script>
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
                                    </script>

                                    <span style="font-size: 9pt">今天是

                                        <script>
document.write(date + ' ' + day + ' ' );


                                        </script>

                                    </span>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td background="img/index_04.gif" style="width: 291px; height: 36px">
                    <table border="0" cellpadding="0" cellspacing="0" width="50%">
                        <tbody>
                            <tr>
                                <td style="height: 18px">
                                    <asp:LinkButton ID="lbtn_shouye" runat="server" Font-Bold="False" Font-Names="宋体"
                                        Font-Size="12pt" ForeColor="Black" OnClick="lbtn_shouye_Click" Width="74px">首页</asp:LinkButton></td>
                                <td style="height: 18px">
                                    <a href="zgps.aspx" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1771','','/img/index1_07.gif',1)">
                                    </a>
                                </td>
                                <td style="height: 18px">
                                    <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1772','','/img/index1_08.gif',1)">
                                    </a>
                                </td>
                                <td style="width: 101px; height: 18px">
                                    <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1775','','/img/index1_09.gif',1)">
                                    </a>
                                </td>
                                <td style="width: 101px; height: 18px">
                                    <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image1774','','/img/index1_11.gif',1)">
                                    </a>
                                </td>
                                <td style="height: 18px">
                                    <a href="#" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image17731','','/img/index1_10.gif',1)">
                                    </a>
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </td>
                <td background="img/index_04.gif" style="width: 324px; height: 36px; text-align: right">
                    &nbsp;<asp:LinkButton ID="lbtn_PrintPreview" runat="server" Font-Bold="False" Font-Names="宋体"
                        Font-Size="12pt" ForeColor="Black" OnClick="lbtn_PrintPreview_Click" Width="74px">打印预览</asp:LinkButton>
                    <asp:LinkButton ID="lbtn_zpfs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="12pt"
                        ForeColor="Black" OnClick="lbtn_zpfs_Click" Width="74px">自评分数</asp:LinkButton>
                    &nbsp;&nbsp;
                </td>
                <td style="background-image: url(./img/mht766(1).gif); width: 205px; height: 36px">
                    &nbsp;<asp:LinkButton ID="lbtn_commit" runat="server" Font-Bold="False" Font-Names="宋体"
                        Font-Size="12pt" ForeColor="Black" OnClick="lbtn_commit_Click" Width="71px">上报提交</asp:LinkButton>
                    <asp:LinkButton ID="lbtn_quit" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="12pt"
                        ForeColor="Black" OnClick="lbtn_quit_Click" Width="72px">安全退出</asp:LinkButton></td>
            </tr>
        </tbody>
    </table>
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
            <tr>
                <TD vAlign=top style="width: 212px" id="Td8" runat="server" visible="true">
                    <A 
            href="#"></a>
                    <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="./img/mht77_4.gif"
                  OnClick="ImageButton12_Click" /></td>
            </tr>
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
            href="#"></A>
              <asp:ImageButton ID="ImageButton7" runat="server" ImageUrl="./img/mht78d(1).gif"
                  OnClick="ImageButton7_Click" /></TD></TR>
                  
                  <TR>
          <TD vAlign=top style="width: 212px" id="TD6" runat="server" visible="true"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="./img/mht78_10.gif"
                  OnClick="ImageButton10_Click" Visible="False" /></TD></TR>
                  
                  <TR>
          <TD vAlign=top style="width: 212px" id="TD7" runat="server" visible="true"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="./img/mht78_11.gif"
                  OnClick="ImageButton11_Click" Visible="False" /></TD></TR>
                  
                  </TBODY></TABLE>
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
                  <TABLE cellSpacing=1 cellPadding=2 width="100%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD valign="top"><!-- page_index begin //-->
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
                                                          mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">九年十月</span>
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
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
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
                                                      padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt; background-color: transparent;
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
                                                      width: 126pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
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
                                                      width: 114.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 30.75pt;
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
                                                      width: 452.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 100pt;
                                                      background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .5pt"
                                                      valign="top" width="604">
                                                      <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                          <span style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">业务工作简介：（限8<span
                                                              lang="EN-US">00</span>字）<span lang="EN-US"></span></span></p>
                                                      <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; mso-line-height-rule: exactly">
                                                          <span lang="EN-US" style="font-size: 10.5pt; font-family: 宋体; mso-bidi-font-size: 12.0pt">
                                                              <span style="mso-spacerun: yes">
                                                                  <ftb:FreeTextBox ID="ftb_gzjj" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="200px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px" EnableToolbars="False">
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
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; font-size: 12pt;">二、任现职以来承担的主要任务和项目情况</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left;">
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <asp:Label ID="lbl_cdrw_yjy" runat="server" Text="（一）承担任务情况" Font-Names="宋体" Font-Size="10pt"></asp:Label><asp:Label ID="lbl_cdrw_gg"
                                                      runat="server" Text="（一）承担任务情况一" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                                          <div align="center" style="text-align: left">
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
                                                                      Width="352px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span></p>
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
                                                                      Width="352px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span><span lang="EN-US" style="font-size: 10.5pt;
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
                                                                      Width="352px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></span><span lang="EN-US" style="font-size: 10.5pt;
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
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly; text-align: left;">
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
                                                          <asp:TextBox ID="tbx3_41" runat="server" Width="43px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>
                                                          <asp:RangeValidator ID="RangeValidator14" runat="server" ControlToValidate="tbx3_41"
                                                              Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator></td>
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
                                                                  <asp:TextBox ID="tbx3_42" runat="server" Width="43px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>
                                                                  <asp:RangeValidator ID="RangeValidator15" runat="server" ControlToValidate="tbx3_42"
                                                                      Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                  <asp:CompareValidator ID="CompareValidator3" runat="server" ControlToCompare="tbx3_41"
                                                                      ControlToValidate="tbx3_42" Display="Dynamic" ErrorMessage="毕业人数应小于培养人数" Operator="LessThanEqual"
                                                                      Type="Integer"></asp:CompareValidator></span>&nbsp;</p>
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
                                                                  <asp:TextBox ID="tbx3_43" runat="server" Width="43px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>
                                                                  <asp:RangeValidator ID="RangeValidator16" runat="server" ControlToValidate="tbx3_43"
                                                                      Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator></span>&nbsp;</p>
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
                                                                  <asp:TextBox ID="tbx3_44" runat="server" Width="43px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>
                                                                  <asp:RangeValidator ID="RangeValidator17" runat="server" ControlToValidate="tbx3_44"
                                                                      Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                  <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToCompare="tbx3_43"
                                                                      ControlToValidate="tbx3_44" Display="Dynamic" ErrorMessage="毕业人数应小于培养人数" Operator="LessThanEqual"
                                                                      Type="Integer"></asp:CompareValidator></span></p>
                                                      </td>
                                                  </tr>
                                              </table>
                                              <div align="center" style="text-align: left">
                                                  <table id="Table3_21" runat="server" border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; width: 708px; border-bottom: black 1px solid; border-collapse: collapse; mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext">
                                                      <tr style="height: 21.4pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                          <td colspan="2" rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: windowtext 1pt solid; padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm;
                                                              border-left: #ece9d8; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              height: 21.4pt; background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                                                              mso-border-bottom-alt: .75pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                              mso-border-style-alt: solid">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span style="font-family: 宋体">任 务 名 称<span lang="EN-US"><?xml namespace="" prefix="O" ?><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td colspan="6" rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: black 0px solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                              mso-border-top-alt: .5pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .75pt;
                                                              mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span style="font-family: 宋体; border-top: black 0px solid;">工作内容及考核情况（20字以内）<span lang="EN-US"><?xml
                                                                      namespace="" prefix="O" ?><o:p></o:p></span></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="font-size: 10pt; height: 21.35pt; mso-yfti-irow: 1">
                                                      </tr>
                                                      <tr style="font-size: 10pt; height: 67.75pt; mso-yfti-irow: 2">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 35%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .75pt;
                                                              mso-border-bottom-alt: .5pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                                                              mso-border-style-alt: solid" rowspan="3">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-family: 宋体">1、主持省局级以上单位综合震情监测和分析预报工作<o:p></o:p></span></p><p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                      <span lang="EN-US" style="font-family: 宋体">
                                                                          <o:p></o:p>
                                                                      </span>
                                                                  </p>
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-family: 宋体">
                                                                      <o:p></o:p>
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 26%; padding-top: 0cm;
                                                              border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                              mso-border-left-alt: solid windowtext .5pt">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                                  tab-stops: 1.6pt">
                                                                  <span style="font-family: 宋体">工作内容及主持年限</span></p>
                                                          </td>
                                                          <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .5pt;
                                                              mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                              valign="top">
                                                              <asp:TextBox ID="tbx3_gg_gznr1" runat="server" Font-Names="宋体" Font-Size="9pt" TextMode="MultiLine"
                                                                  Width="230px"></asp:TextBox></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 26%; padding-top: 0cm;
                                                              border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                              mso-border-left-alt: solid windowtext .5pt">
                                                              年度考核结果(优秀)</td>
                                                          <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .5pt;
                                                              mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                              valign="top">
                                                              <asp:CheckBoxList ID="cbl3_1" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                                                              </asp:CheckBoxList></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 26%; padding-top: 0cm;
                                                              border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                              mso-border-left-alt: solid windowtext .5pt">
                                                              年度考核结果(称职)</td>
                                                          <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt;
                                                              background-color: transparent; text-align: left; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt"
                                                              valign="top">
                                                              <asp:CheckBoxList ID="cbl3_2" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                                                              </asp:CheckBoxList><span style="color: red; font-family: 宋体"><span lang="EN-US"></span></span></td>
                                                      </tr>
                                                      <tr style="font-size: 10pt; height: 63.9pt; mso-yfti-irow: 3">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 35%; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .75pt" rowspan="3">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-family: 宋体">2、负责本学科方法震情监测和分析预报工作<o:p></o:p></span></p><p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                      <span lang="EN-US" style="font-family: 宋体">
                                                                          <o:p></o:p>
                                                                      </span>
                                                                  </p>
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="font-family: 宋体">
                                                                      <o:p></o:p>
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 26%; padding-top: 0cm;
                                                              border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly;
                                                                  tab-stops: 1.6pt">
                                                                  <span style="font-family: 宋体">工作内容及负责年限<span lang="EN-US" style="color: red"><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt"
                                                              valign="top">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="color: red; font-family: 宋体">
                                                                      <asp:TextBox ID="tbx3_gg_gznr2" runat="server" Font-Names="宋体" Font-Size="9pt" TextMode="MultiLine"
                                                                          Width="230px"></asp:TextBox></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 26%; padding-top: 0cm;
                                                              border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                              mso-border-left-alt: solid windowtext .5pt">
                                                              年度考核结果(优秀)</td>
                                                          <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-top-alt: .75pt; mso-border-left-alt: .5pt; mso-border-bottom-alt: .5pt;
                                                              mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid"
                                                              valign="top">
                                                              <asp:CheckBoxList ID="cbl3_3" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                                                              </asp:CheckBoxList></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 26%; padding-top: 0cm;
                                                              border-bottom: windowtext 1pt solid; height: 24pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .75pt;
                                                              mso-border-left-alt: solid windowtext .5pt">
                                                              年度考核结果(称职)</td>
                                                          <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 24pt;
                                                              background-color: transparent; text-align: left; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt"
                                                              valign="top">
                                                              <asp:CheckBoxList ID="cbl3_4" runat="server" RepeatColumns="5" RepeatDirection="Horizontal">
                                                              </asp:CheckBoxList><span style="color: red; font-family: 宋体"><span lang="EN-US"></span></span></td>
                                                      </tr>
                                                      <tr style="font-size: 10pt; height: 27pt; mso-yfti-irow: 4">
                                                          <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 27pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .75pt" colspan="2">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 15pt; text-align: center;
                                                                  mso-line-height-rule: exactly; tab-stops: 1.6pt">
                                                                  <span lang="EN-US" style="font-family: 宋体">3、</span><span style="font-family: 宋体">培养研究生情况<span lang="EN-US"><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 20.62%;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top" width="20%">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span style="color: black; font-family: 宋体">协助培养</span><span style="color: black;
                                                                      font-family: 宋体">博士生人数<span lang="EN-US"><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 32%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="color: black; font-family: 宋体">
                                                                      <o:p><asp:TextBox id="tbx3_gg_yjs1" __designer:dtid="281513631416595" runat="server" Font-Size="9pt" Font-Names="宋体" Width="57px"></asp:TextBox></o:p>
                                                                      <asp:RangeValidator ID="RangeValidator7" runat="server" ControlToValidate="tbx3_gg_yjs1"
                                                                          Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator></span></p>
                                                          </td>
                                                          <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 13.88%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top" width="13%">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span style="color: black; font-family: 宋体">毕业人数<span lang="EN-US"><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 13.24%;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top" width="13%">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="color: black; font-family: 宋体">
                                                                      <o:p><asp:TextBox id="tbx3_gg_yjs2" __designer:dtid="281513631416608" runat="server" Font-Size="9pt" Font-Names="宋体" Width="57px"></asp:TextBox></o:p>
                                                                      <asp:RangeValidator ID="RangeValidator9" runat="server" ControlToValidate="tbx3_gg_yjs2"
                                                                          Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator><asp:CompareValidator
                                                                              ID="CompareValidator1" runat="server" ControlToCompare="tbx3_gg_yjs1" ControlToValidate="tbx3_gg_yjs2"
                                                                              Display="Dynamic" ErrorMessage="毕业人数应小于培养人数" Operator="LessThanEqual" Type="Integer"></asp:CompareValidator></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="font-size: 10pt; height: 22.5pt; mso-yfti-irow: 5; mso-yfti-lastrow: yes">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 20.62%;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 8pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top" width="20%">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span style="color: black; font-family: 宋体">培养硕士生人数<span lang="EN-US"><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 32%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 8pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="color: black; font-family: 宋体">
                                                                      <o:p><asp:TextBox id="tbx3_gg_yjs3" __designer:dtid="281513631416615" runat="server" Font-Size="9pt" Font-Names="宋体" Width="57px"></asp:TextBox></o:p>
                                                                      <asp:RangeValidator ID="RangeValidator12" runat="server" ControlToValidate="tbx3_gg_yjs3"
                                                                          Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                  </span>
                                                              </p>
                                                          </td>
                                                          <td colspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: #ece9d8; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8;
                                                              width: 13.88%; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 8pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top" width="13%">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span style="color: black; font-family: 宋体">毕业人数<span lang="EN-US"><o:p></o:p></span></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #ece9d8;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #ece9d8; width: 13.24%;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 8pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" valign="top" width="13%">
                                                              <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US" style="color: black; font-family: 宋体">
                                                                      <o:p><asp:TextBox id="tbx3_gg_yjs4" __designer:dtid="281513631416628" runat="server" Font-Size="9pt" Font-Names="宋体" Width="57px"></asp:TextBox></o:p>
                                                                      <asp:RangeValidator ID="RangeValidator13" runat="server" ControlToValidate="tbx3_gg_yjs4"
                                                                          Display="Dynamic" ErrorMessage="人数应为数字" MaximumValue="100" MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                      <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToCompare="tbx3_gg_yjs3"
                                                                          ControlToValidate="tbx3_gg_yjs4" Display="Dynamic" ErrorMessage="毕业人数应小于培养人数"
                                                                          Operator="LessThanEqual" Type="Integer"></asp:CompareValidator></span></p>
                                                          </td>
                                                      </tr>
                                                  </table>
                                              </div>
                                          </div><asp:ImageButton ID="ImageButton13" runat="server" ImageUrl="./img/save.gif" OnClick="imgbtn_save_Click" /><br />
                                          <asp:Label ID="lbl3_12" runat="server" Font-Names="宋体" Font-Size="10pt" Text="其他任务情况(限5项)"></asp:Label><br />
                                          <asp:GridView ID="gv_cdrw" runat="server" AutoGenerateColumns="False" BackColor="White"
                                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                              Height="1px" Width="713px" OnRowDeleting="gv_cdrw_RowDeleting" OnRowEditing="gv_cdrw_RowEditing" Visible="False">
                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                              <Columns>
                                                  <asp:TemplateField HeaderText="序号">
                                                      <ItemTemplate>
                                                      
                                                          <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+5%>" />
                                                      </ItemTemplate>
                                                      <ItemStyle Width="40px" />
                                                      <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                  </asp:TemplateField>
                                                  <asp:ButtonField DataTextField="rwmc" HeaderText="任务名称" Text="下载">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                  </asp:ButtonField>
                                                  <asp:HyperLinkField DataTextField="gznr" HeaderText="工作内容或情况">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                  </asp:HyperLinkField>
                                                  <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                      <EditItemTemplate>
                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                              Text="更新"></asp:LinkButton>
                                                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                              Text="取消"></asp:LinkButton>
                                                      </EditItemTemplate>
                                                      <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" Width="60px" />
                                                      <ItemTemplate>
                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                              Text="编辑"></asp:LinkButton>
                                                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                              Text="删除"></asp:LinkButton>
                                                      </ItemTemplate>
                                                  </asp:TemplateField>
                                              </Columns>
                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <AlternatingRowStyle BackColor="#F7F7F7" />
                                          </asp:GridView>
                                          <asp:GridView ID="gv_cdrw_gg" runat="server" AutoGenerateColumns="False" BackColor="White"
                                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                              Height="1px" OnRowDeleting="gv_cdrw_gg_RowDeleting" Visible="False" Width="713px" OnRowEditing="gv_cdrw_gg_RowEditing">
                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                              <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <AlternatingRowStyle BackColor="#F7F7F7" /><Columns>
                                                  <asp:TemplateField HeaderText="序号">
                                                      <ItemTemplate>
                                                          <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+4%>" />
                                                      </ItemTemplate>
                                                      <ItemStyle Width="40px" />
                                                      <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                  </asp:TemplateField>
                                                  <asp:ButtonField DataTextField="gzsj" HeaderText="承担工程项目名称" Text="下载">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                  </asp:ButtonField>
                                                  <asp:HyperLinkField DataTextField="gznr" HeaderText="通过评审的级别">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                  </asp:HyperLinkField>
                                                  <asp:BoundField DataField="js" HeaderText="角色">
                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                  </asp:BoundField>
                                                  <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                      <EditItemTemplate>
                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                              Text="更新"></asp:LinkButton>
                                                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                              Text="取消"></asp:LinkButton>
                                                      </EditItemTemplate>
                                                      <ItemStyle Width="60px" />
                                                      <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                      <ItemTemplate>
                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                              Text="编辑"></asp:LinkButton>
                                                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                              Text="删除"></asp:LinkButton>
                                                      </ItemTemplate>
                                                  </asp:TemplateField>
                                              </Columns>
                                              <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                              <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                              <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                          </asp:GridView>
                                          <span style="font-size: 10pt">
                                          </span>
                                          <table style="width: 550px" id="Table3_12" runat="server" visible="false"><tr><td style="text-align: right; width: 105px; height: 24px;"> 
                                              <asp:Label ID="lbl3_rwmc" runat="server" Text="任务名称：" Width="90px" Height="1px"></asp:Label></td><td style="width: 437px; height: 24px;">
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
                                                      <asp:ImageButton ID="imgbtn_cdrw" runat="server" ImageUrl="./img/add.gif" OnClick="btn_cdrw_Click" />
                                                      </td>
                                              </tr>
                                          </table>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <table id="Table3_22" runat="server" style="width: 550px" visible="false">
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              <asp:Label ID="Label4" runat="server" Height="1px" Text="承担工程项目名称：" Width="129px"></asp:Label></td>
                                                          <td style="width: 437px">
                                                              <asp:TextBox ID="tbx3_gzsj_gg" runat="server" Font-Names="宋体" Font-Size="9pt" Width="284px"></asp:TextBox></td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              <asp:Label ID="Label5" runat="server" Height="3px" Text="通过评审的级别：" Width="96px"></asp:Label></td>
                                                          <td style="width: 437px"><asp:DropDownList ID="ddl3_gznr_gg" runat="server" Width="288px">
                                                              <asp:ListItem>通过国家地震安全性评定委员会会议评审项目</asp:ListItem>
                                                              <asp:ListItem>通过省局（所）级会议评审科技服务项目</asp:ListItem>
                                                          </asp:DropDownList>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; text-align: right">
                                                              &nbsp;<asp:Label ID="Label7" runat="server" Text="角色：" Width="76px"></asp:Label></td>
                                                          <td style="width: 437px"><asp:DropDownList ID="ddl3_khjg_gg" runat="server" Width="132px">
                                                              <asp:ListItem>技术负责人</asp:ListItem>
                                                              <asp:ListItem>分项负责人</asp:ListItem>
                                                          </asp:DropDownList>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                          <td style="width: 112px; height: 30px">
                                                          </td>
                                                          <td style="width: 437px; height: 30px">
                                                              <asp:ImageButton ID="imgbtn3_cdrw_gg" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn3_cdrw_gg_Click" /></td>
                                                      </tr>
                                                  </table>
                                                  </span>
                                          </p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              &nbsp;</p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <table id="Table3_3" runat="server" style="width: 262px;
                                                      border-right-style: none; border-left-style: none; border-top: #000099 thin dashed; border-bottom: #000099 thin dashed;">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="width: 716px; height: 301px">
                                                              <span style="font-size: 10pt">（二）承担任务情况二</span><asp:GridView ID="gv_cdrw1_gg" runat="server" AutoGenerateColumns="False" BackColor="White"
                                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                              Height="1px" OnRowDeleting="gv_cdrw1_gg_RowDeleting" Width="713px" OnRowEditing="gv_cdrw1_gg_RowEditing">
                                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                  <Columns>
                                                                      <asp:TemplateField HeaderText="序号">
                                                                          <ItemTemplate>
                                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                          <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                          </ItemTemplate>
                                                                          <ItemStyle Width="40px" />
                                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                      </asp:TemplateField>
                                                                      <asp:ButtonField CommandName="edit" DataTextField="rwmc" HeaderText="国内外破坏性地震事件名称" Text="下载">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                      </asp:ButtonField>
                                                                      <asp:HyperLinkField DataTextField="gznr" HeaderText="现场工作内容">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                      </asp:HyperLinkField>
                                                                      <asp:BoundField DataField="js" HeaderText="角色" >
                                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                      </asp:BoundField>
                                                                      <asp:BoundField DataField="jy" HeaderText="是否属于国际救援">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                      </asp:BoundField>
                                                                      <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                          <EditItemTemplate>
                                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                  Text="更新"></asp:LinkButton>
                                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                  Text="取消"></asp:LinkButton>
                                                                          </EditItemTemplate>
                                                                          <ItemStyle Width="60px" />
                                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                          <ItemTemplate>
                                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                  Text="编辑"></asp:LinkButton>
                                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                  Text="删除"></asp:LinkButton>
                                                                          </ItemTemplate>
                                                                      </asp:TemplateField>
                                                                  </Columns>
                                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                                              </asp:GridView>
                                                              <table id="Table22" style="width: 550px">
                                                                  <tr>
                                                                      <td style="width: 202px; text-align: right; height: 24px;">
                                                                          <asp:Label ID="Label6" runat="server" Height="1px" Text="国内外破坏性地震事件名称：" Width="161px"></asp:Label></td>
                                                                      <td style="width: 437px; height: 24px;">
                                                                          <asp:TextBox ID="tbx3_dzmc_gg" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 202px; text-align: right">
                                                                          <asp:Label ID="Label16" runat="server" Height="3px" Text="现场工作内容：" Width="96px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx3_xcgznr_gg" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 202px; text-align: right">
                                                                          &nbsp;<asp:Label ID="Label28" runat="server" Text="角色：" Width="76px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:DropDownList ID="ddl3_js_gg" runat="server" Width="132px">
                                                                              <asp:ListItem>负责人</asp:ListItem>
                                                                              <asp:ListItem>主要承担者</asp:ListItem>
                                                                          </asp:DropDownList></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 202px; text-align: right">
                                                                          &nbsp;<asp:Label ID="Label24" runat="server" Text="是否属于国际救援：" Width="113px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:CheckBox ID="cbx3_gjjy_gg" runat="server" /></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 202px; height: 30px">
                                                                      </td>
                                                                      <td style="width: 437px; height: 30px">
                                                                          <asp:ImageButton ID="imgbtn3_cdrw1_gg" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn3_cdrw1_gg_Click" /></td>
                                                                  </tr>
                                                              </table>
                                                          </td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                                  <span style="font-size: 10pt">（三）承担项目情况（限</span></span><span
                                                  lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 黑体; font-size: 10pt;">10</span><span
                                                      style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span
                                                          style="font-size: 10pt"><span
                                                          style="font-family: 宋体">项）</span></span><asp:GridView ID="gv_drxmqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                          BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                          Height="1px" Width="713px" OnRowDeleting="gv_drxmqk_RowDeleting" OnRowEditing="gv_drxmqk_RowEditing">
                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                          <Columns>
                                                              <asp:TemplateField HeaderText="序号">
                                                                  <ItemTemplate>
                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                      <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                              </asp:TemplateField>
                                                              <asp:ButtonField CommandName="edit" DataTextField="ktmc" HeaderText="项目名称" Text="下载">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                              </asp:ButtonField>
                                                              <asp:HyperLinkField DataTextField="qzsj" HeaderText="起止时间">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                              </asp:HyperLinkField>
                                                              <asp:BoundField DataField="jfs" HeaderText="经费数">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                              </asp:BoundField>
                                                              <asp:BoundField DataField="kt" HeaderText="课题级别、编号及来源">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                              </asp:BoundField>
                                                              <asp:BoundField DataField="drjs" HeaderText="担任何角色">
                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                              </asp:BoundField>
                                                              <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                  <EditItemTemplate>
                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                          Text="更新"></asp:LinkButton>
                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                          Text="取消"></asp:LinkButton>
                                                                  </EditItemTemplate>
                                                                  <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                  <ItemTemplate>
                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                          Text="编辑"></asp:LinkButton>
                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                          Text="删除"></asp:LinkButton>
                                                                  </ItemTemplate>
                                                              </asp:TemplateField>
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
                                              <table style="width: 591px">
                                                  <tr>
                                                      <td style="height: 16px; width: 135px; text-align: right;">
                                                          项目名称：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx3_ktmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          来源：&nbsp;</td>
                                                      <td>
                                                          <asp:DropDownList ID="ddlist3_ktly1" runat="server" Width="440px" AutoPostBack="True" OnSelectedIndexChanged="ddlist3_ktly1_SelectedIndexChanged">
                                                      </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          &nbsp;级别：
                                                      </td>
                                                      <td>
                                                          <asp:DropDownList ID="ddlist3_ktjb" runat="server" Width="132px">
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          编号：&nbsp;</td>
                                                      <td>
                                                      <asp:TextBox ID="tbx3_ktbh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          项目批准单位：&nbsp;</td>
                                                      <td>
                                                          <asp:TextBox ID="tbx3_pzdw" runat="server" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          起止时间（年、月）：
                                                      </td>
                                                      <td>
                                                          <input id="Txt3_1" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                              type="text" />～<input id="Txt3_2" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                                  type="text" /><asp:TextBox ID="tbx3_qzsj" runat="server" Font-Names="宋体" Font-Size="9pt" Visible="False"></asp:TextBox>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          &nbsp;经费数（万元）： 
                                                      </td>
                                                      <td>
                                                      <asp:TextBox ID="tbx3_jfs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                          ID="RangeValidator2" runat="server" ControlToValidate="tbx3_jfs" ErrorMessage="提示：应为数字，最大为100000"
                                                          Font-Names="宋体" Font-Size="9pt" MaximumValue="100000" MinimumValue="0" SetFocusOnError="True"
                                                          Type="Double"></asp:RangeValidator></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; text-align: right">
                                                          担任何角色：&nbsp;</td>
                                                      <td>
                                                          <asp:DropDownList ID="ddlist3_drjs" runat="server" Width="132px">
                                                              <asp:ListItem>负责人</asp:ListItem>
                                                              <asp:ListItem>主要参加者</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px">
                                                      </td>
                                                      <td>
                                                              <asp:ImageButton ID="imgbtn_drxm" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_drxm_Click" /></td>
                                                  </tr>
                                              </table>
                                              <span></span><span lang="EN-US"
                                                  style="mso-fareast-font-family: 黑体"></span></div>
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
                                          <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                              mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                              mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                              <span style="font-size: 12pt">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                  mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                  mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                  三、任现职以来撰写的主要学术论著和报告情况（限</span><span lang="EN-US" style="mso-bidi-font-size: 12.0pt;
                                                      mso-fareast-font-family: 黑体; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US;
                                                      mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">10</span><span style="mso-bidi-font-size: 12.0pt;
                                                          mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                          mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                          mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">篇）<span style="font-family: 宋体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                              mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                              mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span></span></span></span></td>
                                  </tr>
                                  <tr style="font-size: 12pt; font-family: 华文中宋">
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <span style="font-size: 10.5pt; font-family: 楷体_GB2312; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                              <asp:GridView ID="gv_lzbgqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                  BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                  Height="1px" OnRowEditing="gv_lzbgqk_RowEditing" Width="713px" OnRowDeleting="gv_lzbgqk_RowDeleting">
                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                  <Columns>
                                                      <asp:TemplateField HeaderText="序号">
                                                          <ItemTemplate>
                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:TemplateField>
                                                      <asp:ButtonField CommandName="edit" DataTextField="lzmc" HeaderText="论著或报告名称" Text="下载">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:ButtonField>
                                                      <asp:HyperLinkField DataTextField="zs" HeaderText="字数">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:HyperLinkField>
                                                      <asp:BoundField DataField="slqk" HeaderText="收录情况">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="kwmc" HeaderText="刊物名称及期号">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="pm" HeaderText="排名">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="fbsj" HeaderText="发表时间">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:BoundField>
                                                      <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                          <EditItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                  Text="更新"></asp:LinkButton>
                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                  Text="取消"></asp:LinkButton>
                                                          </EditItemTemplate>
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                          <ItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                  Text="编辑"></asp:LinkButton>
                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                  Text="删除"></asp:LinkButton>
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                  </Columns>
                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                              </asp:GridView>
                                              <span style="font-family: 宋体"><span style="font-size: 9pt">&nbsp; &nbsp; </span><span><span style="font-size: 9pt">论著<span>或报告名称：
                                              </span></span></span></span>
                                              <asp:TextBox ID="tbx4_lzmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="476px"></asp:TextBox><span
                                                  style="font-size: 9pt; font-family: 宋体">（限30个字符）<br />
                                              </span>
                                                  <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                      <span style="font-size: 9pt; font-family: 宋体"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; 字数：
                                                      </span>
                                                      <asp:TextBox ID="tbx4_zs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><span
                                                          style="font-size: 9pt; font-family: 宋体">（字）</span><asp:RangeValidator
                                                          ID="RangeValidator1" runat="server" ControlToValidate="tbx4_zs" ErrorMessage="提示：应为数字，最大为10000000" MaximumValue="10000000" MinimumValue="0" Type="Double" Font-Names="宋体" Font-Size="9pt" SetFocusOnError="True"></asp:RangeValidator><br />
                                                      <span style="font-size: 9pt; font-family: 宋体"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 收录情况： </span>
                                                  </span>
                                                      <asp:DropDownList ID="ddlist4_slqk" runat="server" Width="219px">
                                                          <asp:ListItem>SCI收录期刊</asp:ListItem>
                                                          <asp:ListItem>EI收录期刊</asp:ListItem>
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
                                                      <asp:TextBox ID="tbx4_kwmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="485px"></asp:TextBox></span><span
                                                              style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span><span style="font-size: 9pt; font-family: 宋体"></span></span></span></p>
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; 是否被ISTP收录：&nbsp;
                                                          <asp:CheckBox ID="cbx4_istp" runat="server" /></span></span></span></p>
                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                  text-align: left; mso-line-height-rule: exactly">
                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span><span style="font-size: 9pt; font-family: 宋体">是否为在国际学术机构组织的会议上宣读的特邀或主题报告：</span></span></span><span
                                                          style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span><span
                                                              style="font-size: 9pt; font-family: 宋体"><asp:CheckBox ID="cbx4_xdbg" runat="server" /></span></span></span></p>
                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                      <span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; 排名： </span></span>
                                                      <asp:TextBox ID="tbx4_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                          ID="RangeValidator4" runat="server" ControlToValidate="tbx4_pm" ErrorMessage="提示：应为数字"
                                                          Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0" SetFocusOnError="True"
                                                          Type="Double"></asp:RangeValidator><br />
                                                      <span style="font-size: 9pt; font-family: 宋体">发表时间（年、月）： 
                                                          <input id="tbx4_fbsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                              type="text" /></span><br />
                                                      <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                          &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span>
                                                      <asp:ImageButton ID="imgbtn_lzbgqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_lzbgqk_Click" /></span></span></td>
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
                                              mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA; font-size: 12pt;">
                                              四、任现职以来取得的业绩成果</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 470px; height: 166px">
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 10pt">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  （一）<span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                      mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">成果获奖情况</span>（限</span><span lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 黑体">10</span></span><span style="font-size: 14pt;
                                                          font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span
                                                              style="font-size: 10pt">项）<br />
                                                          </span>
                                                          <span style="font-size: 9pt"><span style="font-family: 宋体"><span style="color: #ff0000">
                                              注：<span>同一项成果获得不同级别的奖励，只填写获得最高级别奖励的情况，不得重复填写<span
                                                      lang="EN-US"></span></span></span></span></span><asp:GridView
                                                              ID="gv_hjqk" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                              BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                              Width="713px" OnRowDeleting="gv_hjqk_RowDeleting" OnRowEditing="gv_hjqk_RowEditing" Font-Names="宋体" Font-Size="9pt">
                                                              <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                              <Columns>
                                                                  <asp:TemplateField HeaderText="序号">
                                                                      <ItemTemplate>
                                                                          <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                      <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                                      <ItemStyle Width="40px" />
                                                                  </asp:TemplateField>
                                                                  <asp:ButtonField DataTextField="hjcgmc" HeaderText="获奖成果名称">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  </asp:ButtonField>
                                                                  <asp:HyperLinkField DataTextField="jl" HeaderText="奖励名称">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  </asp:HyperLinkField>
                                                                  <asp:BoundField DataField="hjdj" HeaderText="获奖等级">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  </asp:BoundField>
                                                                  <asp:BoundField DataField="pm" HeaderText="排名">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  </asp:BoundField>
                                                                  <asp:BoundField DataField="hjsj" HeaderText="获奖时间">
                                                                      <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                  </asp:BoundField>
                                                                  <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                      <EditItemTemplate>
                                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                              Text="更新"></asp:LinkButton>
                                                                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                              Text="取消"></asp:LinkButton>
                                                                      </EditItemTemplate>
                                                                      <ItemStyle Width="60px" />
                                                                      <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                      <ItemTemplate>
                                                                          <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                              Text="编辑"></asp:LinkButton>
                                                                          <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                              Text="删除"></asp:LinkButton>
                                                                      </ItemTemplate>
                                                                  </asp:TemplateField>
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
                                              <span style="font-size: 10.5pt; font-family: 楷体_GB2312"></span><span>&nbsp; &nbsp; &nbsp; &nbsp; 获奖成果名称： </span>
                                                  <asp:TextBox ID="tbx5_hjcgmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30" Width="270px"></asp:TextBox><br />
                                          </p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 奖励<span style="font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                      mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                      mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">名称</span>：&nbsp;<asp:DropDownList ID="ddlist5_jljb" runat="server" Width="270px">
                                                          <asp:ListItem>国家自然科学奖</asp:ListItem>
                                                          <asp:ListItem>国家技术发明奖</asp:ListItem>
                                                          <asp:ListItem>国家科技进步奖</asp:ListItem>
                                                          <asp:ListItem Value="省部级">省部级科技奖</asp:ListItem>
                                                          <asp:ListItem>中国地震局防震减灾优秀成果奖</asp:ListItem>
                                                      </asp:DropDownList></span><span><asp:TextBox ID="tbx5_jlmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30" Visible="False"></asp:TextBox></span></span></span></p>
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
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <span style="font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                          mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                          mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                          mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">本人</span>排名： </span>
                                                  <asp:TextBox ID="tbx51_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                      ID="RangeValidator5" runat="server" ControlToValidate="tbx51_pm" ErrorMessage="提示：应为数字"
                                                      Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0"
                                                      Type="Double"></asp:RangeValidator><asp:TextBox ID="tbx5_zrs" runat="server" Font-Names="宋体" Font-Size="9pt" Visible="False">1</asp:TextBox><span style="font-size: 9pt; font-family: 宋体"></span></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 获奖时间： 
                                                      <input id="tbx5_hjsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; color: #000000;"
                                                          type="text" />
                                                  </span></span></span>
                                          </p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <span></span><span style="font-family: 宋体"><span style="font-size: 9pt"><span>&nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>&nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span>
                                                  <asp:ImageButton ID="imgbtn_hjqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_hjqk_Click" /></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span><span><span style="font-size: 10pt"><span style="mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'">（二）获得国家一级学会优秀论文奖情况（限3项）</span><?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                          prefix="o" ?></span></span></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <asp:GridView
                                                              ID="gv_yxlw" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                              BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                              Width="713px" OnRowDeleting="gv_yxlw_RowDeleting" OnRowEditing="gv_yxlw_RowEditing" Font-Names="宋体" Font-Size="9pt">
                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                  <Columns>
                                                      <asp:TemplateField HeaderText="序号">
                                                          <ItemTemplate>
                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                          <ItemStyle Width="40px" />
                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:TemplateField>
                                                      <asp:ButtonField CommandName="edit" DataTextField="lwmc" HeaderText="论文名称" Text="下载">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:ButtonField>
                                                      <asp:HyperLinkField DataTextField="hjmc" HeaderText="获奖名称">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:HyperLinkField>
                                                      <asp:BoundField DataField="zzpm" HeaderText="作者排名">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:BoundField>
                                                      <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                          <EditItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                  Text="更新"></asp:LinkButton>
                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                  Text="取消"></asp:LinkButton>
                                                          </EditItemTemplate>
                                                          <ItemStyle Width="60px" />
                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                          <ItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                  Text="编辑"></asp:LinkButton>
                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                  Text="删除"></asp:LinkButton>
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                  </Columns>
                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" Font-Names="宋体" Font-Size="9pt" />
                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                              </asp:GridView>
                                              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 论文名称：
                                              <asp:TextBox ID="tbx52_lwmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 获奖名称： </span>
                                                  <asp:TextBox ID="tbx52_hjmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                  <span>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 作者排名： </span></span>
                                                  <asp:TextBox ID="tbx52_zzpm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                      ID="RangeValidator10" runat="server" ControlToValidate="tbx52_zzpm" ErrorMessage="提示：应为数字"
                                                      Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0" SetFocusOnError="True"
                                                      Type="Double"></asp:RangeValidator></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span>
                                                  <asp:ImageButton ID="imgbtn_yxlw" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_yxlw_Click" /></span></p>
                                          <span lang="EN-US" style="font-size: 15pt; font-family: 楷体_GB2312; mso-hansi-font-family: 宋体;
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                          </span>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                              <span style="font-size: 10pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  （三）论文（第一作者或通讯作者）被引用情况</span><span lang="EN-US" style="mso-bidi-font-size: 12.0pt;
                                                      mso-fareast-font-family: 黑体"></span></p>
                                          <div align="center" style="text-align: left">
                                              <asp:GridView ID="gv_lwbyyqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                  BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                  Height="1px" Width="713px" OnRowDeleting="gv_lwbyyqk_RowDeleting" OnRowEditing="gv_lwbyyqk_RowEditing" Font-Names="宋体" Font-Size="9pt">
                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                  <Columns>
                                                      <asp:TemplateField HeaderText="序号">
                                                          <ItemTemplate>
                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                          <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                          <ItemStyle Width="40px" />
                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                      </asp:TemplateField>
                                                      <asp:ButtonField DataTextField="lwmc" HeaderText="论文名称">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:ButtonField>
                                                      <asp:HyperLinkField DataTextField="zz" HeaderText="作者">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:HyperLinkField>
                                                      <asp:BoundField DataField="fbsj" HeaderText="发表时间">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="kwmc" HeaderText="刊物名称、卷、期、页码">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:BoundField>
                                                      <asp:BoundField DataField="tycs" HeaderText="他引次数">
                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                      </asp:BoundField>
                                                      <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                          <EditItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                  Text="更新"></asp:LinkButton>
                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                  Text="取消"></asp:LinkButton>
                                                          </EditItemTemplate>
                                                          <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                          <ItemTemplate>
                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                  Text="编辑"></asp:LinkButton>
                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                  Text="删除"></asp:LinkButton>
                                                          </ItemTemplate>
                                                      </asp:TemplateField>
                                                  </Columns>
                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" Font-Names="宋体" Font-Size="9pt" />
                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                              </asp:GridView>
                                              <span lang="EN-US" style="font-size: 14pt; font-family: Times New Roman; mso-bidi-font-size: 12.0pt;
                                                  mso-fareast-font-family: 黑体">
                                                  
                                                  </span>
                                              &nbsp;</div>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                              </span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                  &nbsp; &nbsp; 论文名称： </span>
                                                  <asp:TextBox ID="tbx5_lwmc" runat="server" Font-Names="宋体" Font-Size="9pt" MaxLength="30"></asp:TextBox></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'"><span>
                                                  <span style="font-size: 9pt; font-family: 宋体">&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; &nbsp;&nbsp; 作者： 
                                                      <asp:DropDownList ID="ddlist5_zz" runat="server" Width="132px">
                                                          <asp:ListItem>第一作者</asp:ListItem>
                                                          <asp:ListItem>通讯作者</asp:ListItem>
                                                          <asp:ListItem>其他</asp:ListItem>
                                                      </asp:DropDownList></span><asp:TextBox ID="tbx5_zz" runat="server" Font-Names="宋体" Font-Size="9pt" Visible="False"></asp:TextBox><br />
                                                  <span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; 发表时间： 
                                                      <input id="tbx5_fbsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; color: #000000;"
                                                          type="text" /></span></span><br />
                                              </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                  mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                      刊物名称、卷、期、页码： </span>
                                                  <asp:TextBox ID="tbx5_kwmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><span><span><asp:TextBox ID="tbx52_pm" runat="server" Font-Names="宋体" Font-Size="9pt" Visible="False">1</asp:TextBox></span></span></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp; &nbsp; 他引次数： </span></span>
                                                  <asp:TextBox ID="tbx5_tycs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                      ID="RangeValidator8" runat="server" ControlToValidate="tbx5_tycs" ErrorMessage="提示：应为数字"
                                                      Font-Names="宋体" Font-Size="9pt" MaximumValue="100" MinimumValue="0" SetFocusOnError="True"
                                                      Type="Integer"></asp:RangeValidator></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  <span></span><span style="font-family: 宋体"><span style="font-size: 9pt"><span>&nbsp; &nbsp; &nbsp; &nbsp;</span>&nbsp;
                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                      &nbsp;&nbsp; </span></span>
                                                  <asp:ImageButton ID="imgbtn_lwbyyqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_lwbyyqk_Click" /></span></p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                              </span>&nbsp;</p>
                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                              <span style="font-size: 10pt">
                                              <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                  （四）获国家</span><span style="mso-hansi-font-family: 宋体">专利情况<span
                                                      style="mso-hansi-font-family: 宋体; mso-font-kerning: 1.0pt;
                                                      mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                      mso-bidi-language: AR-SA">（限<span lang="EN-US">3</span>项）</span></span></span></p>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 10.5pt; font-family: 仿宋_GB2312"></span>
                                                  <asp:GridView ID="gv_hgjzlqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                      BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                      Height="1px" Width="713px" OnRowDeleting="gv_hgjzlqk_RowDeleting" OnRowEditing="gv_hgjzlqk_RowEditing">
                                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                      <Columns>
                                                          <asp:TemplateField HeaderText="序号">
                                                              <ItemTemplate>
                                                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                              <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                              <ItemStyle Width="40px" />
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:TemplateField>
                                                          <asp:ButtonField DataTextField="zlmc" HeaderText="专利名称">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          </asp:ButtonField>
                                                          <asp:HyperLinkField DataTextField="zlh" HeaderText="专利号">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          </asp:HyperLinkField>
                                                          <asp:BoundField DataField="sj" HeaderText="时间">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="zllx" HeaderText="专利类型">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="pm" HeaderText="排名">
                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                          </asp:BoundField>
                                                          <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                              <EditItemTemplate>
                                                                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                      Text="更新"></asp:LinkButton>
                                                                  <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                      Text="取消"></asp:LinkButton>
                                                              </EditItemTemplate>
                                                              <ItemStyle Width="60px" />
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                              <ItemTemplate>
                                                                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                      Text="编辑"></asp:LinkButton>
                                                                  <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                      Text="删除"></asp:LinkButton>
                                                              </ItemTemplate>
                                                          </asp:TemplateField>
                                                      </Columns>
                                                      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                      <AlternatingRowStyle BackColor="#F7F7F7" />
                                                  </asp:GridView>
                                                  <span style="font-size: 9pt; font-family: 宋体">
                                                      专利名称： </span>
                                                  <asp:TextBox ID="tbx5_zlmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="270px"></asp:TextBox><br />
                                                  <span style="font-size: 9pt; font-family: 宋体"></span><span style="mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'"><span><span style="font-size: 9pt; font-family: 宋体">
                                                          &nbsp; 专利号：
                                                          <asp:TextBox ID="tbx5_zlh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                          &nbsp; &nbsp; 时间： 
                                                          <input id="tbx5_sj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; color: #000000;"
                                                              type="text" /></span></span><br />
                                                  </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                      mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                          专利类型： </span>
                                                      <asp:DropDownList ID="ddlist5_zllx" runat="server" Width="132px">
                                                          <asp:ListItem>技术发明专利</asp:ListItem>
                                                          <asp:ListItem>实用新型专利</asp:ListItem>
                                                      </asp:DropDownList><br />
                                                      <span></span><span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; 排名： </span>
                                                      </span>
                                                      <asp:TextBox ID="tbx5_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                          ID="RangeValidator6" runat="server" ControlToValidate="tbx5_pm" ErrorMessage="提示：应为数字"
                                                          Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0" SetFocusOnError="True"
                                                          Type="Double"></asp:RangeValidator><br />
                                                      </span>
                                              &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                              <asp:ImageButton ID="imgbtn_hgjzlqk" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_hgjzlqk_Click" />
                                              <table id="Table5_5" runat="server" border="0" style="font-size: 9pt; width: 716px; color: #000000;">
                                                  <tr>
                                                      <td align="left" style="width: 100px; height: 16px">
                                                          <asp:Label ID="Label1" runat="server" Font-Names="宋体" Font-Size="10pt" Text="（五）主要工作业绩（只需申报正研级高级工程师人员填写）"
                                                              Width="534px"></asp:Label><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                              mso-hansi-font-family: 'Times New Roman'"><asp:Label ID="Label30" runat="server" Font-Names="宋体" Font-Size="9pt" Text="1.监测（观测）和预报工作评比情况（评比结果为第一名，限5项）" Width="437px"></asp:Label>
                                                              <asp:GridView ID="gv5_1" runat="server"
                                                                  AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                                                  BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px" OnRowDeleting="gv5_1_RowDeleting"
                                                                  OnSelectedIndexChanging="gv5_1_SelectedIndexChanging" Width="713px" OnRowEditing="gv5_1_RowEditing">
                                                                  <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                  <Columns>
                                                                      <asp:TemplateField HeaderText="序号">
                                                                          <ItemTemplate>
                                                                              <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                         <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                   </ItemTemplate>
                                                                          <ItemStyle Width="40px" />
                                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                      </asp:TemplateField>
                                                                      <asp:BoundField DataField="nd" HeaderText="业绩名称">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                      </asp:BoundField>
                                                                      <asp:BoundField DataField="grpm" HeaderText="个人排名">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                      </asp:BoundField>
                                                                      <asp:ButtonField DataTextField="zmwjwh" HeaderText="证明文件标题及文号">
                                                                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                      </asp:ButtonField>
                                                                      <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                          <EditItemTemplate>
                                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                  Text="更新"></asp:LinkButton>
                                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                  Text="取消"></asp:LinkButton>
                                                                          </EditItemTemplate>
                                                                          <ItemStyle Width="60px" />
                                                                          <HeaderStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                          <ItemTemplate>
                                                                              <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                  Text="编辑"></asp:LinkButton>
                                                                              <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                  Text="删除"></asp:LinkButton>
                                                                          </ItemTemplate>
                                                                      </asp:TemplateField>
                                                                  </Columns>
                                                                  <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                  <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                  <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                  <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                  <AlternatingRowStyle BackColor="#F7F7F7" />
                                                              </asp:GridView>
                                                              <table id="Table101" runat="server" style="width: 550px; font-family: 宋体">
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          <asp:Label ID="Label2" runat="server" Height="1px" Text="业绩名称：" Width="90px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx5_1_nd" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          <asp:Label ID="Label3" runat="server" Height="3px" Text="个人排名：" Width="96px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx5_1_grpm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                                              ID="RangeValidator11" runat="server" ControlToValidate="tbx5_1_grpm" ErrorMessage="提示：应为数字"
                                                                              Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0" SetFocusOnError="True"
                                                                              Type="Double"></asp:RangeValidator></td>
                                                                  </tr>
                                                                  <tr>
                                                                      <td style="width: 105px; text-align: right">
                                                                          <asp:Label ID="Label8" runat="server" Text="证明文件文号：" Width="97px"></asp:Label></td>
                                                                      <td style="width: 437px">
                                                                          <asp:TextBox ID="tbx5_1_zmwjwh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
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
                                                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                  <span></span><span style="font-family: 宋体">2.荣获中国地震局地震监测预报、地震现场工作先进个人情况（限5项）</span></span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                      mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'"><span
                                                                                          style="font-family: 宋体"></span><asp:GridView
                                                                                          ID="gv5_2" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                                                          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                                                          OnRowDeleting="gv5_2_RowDeleting" OnSelectedIndexChanging="gv5_2_SelectedIndexChanging"
                                                                                          Width="713px" OnRowEditing="gv5_2_RowEditing">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField HeaderText="序号">
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                                                                  <ItemStyle Width="40px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="yjmc" HeaderText="业绩名称" >
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="nd" HeaderText="年度">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                                              </asp:BoundField>
                                                                                              <asp:ButtonField DataTextField="zmwjwh" HeaderText="证明文件标题及文号">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                                              </asp:ButtonField>
                                                                                              <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                  <EditItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                          Text="更新"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                          Text="取消"></asp:LinkButton>
                                                                                                  </EditItemTemplate>
                                                                                                  <ItemStyle Width="60px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                                                  <ItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                          Text="编辑"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                          Text="删除"></asp:LinkButton>
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table11" runat="server" style="width: 550px">
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label31" runat="server" Height="1px" Text="业绩名称：" Width="90px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_2_yjmc" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
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
                                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt" align="left">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                              </span>
                                                                          </p>
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体; font-family: 宋体;">
                                                                                  3.</span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                                      mso-hansi-font-family: 'Times New Roman'"><span style="font-family: 宋体"><span style="font-size: 9pt"><span
                                                                                          style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                          mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                          mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">作为主要技术负责人在短临预报方面的业绩（</span><span
                                                                                              style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">提出的可以证明的短临预报意见取得显著减灾实效，或获得中国地震局短临预报实现奖励，限</span><span
                                                                                                  lang="EN-US" style="mso-fareast-font-family: 宋体; mso-font-kerning: 1.0pt; mso-ansi-language: EN-US;
                                                                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">5</span><span style="mso-ascii-font-family: 'Times New Roman';
                                                                                                      mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">项</span><span
                                                                                                          style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                          mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                          mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">）</span></span></span><asp:GridView ID="gv5_3" runat="server"
                                                                                          AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                                                                          BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px" OnRowDeleting="gv5_3_RowDeleting"
                                                                                          OnSelectedIndexChanging="gv5_3_SelectedIndexChanging" Width="713px" OnRowEditing="gv5_3_RowEditing">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField HeaderText="序号">
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                 <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                   </ItemTemplate>
                                                                                                  <ItemStyle Width="40px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="dzsj" HeaderText="地震事件">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="zynr" HeaderText="主要内容">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="zj" HeaderText="震级">
                                                                                                  <HeaderStyle Font-Size="9pt" Font-Names="宋体" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                  <EditItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                          Text="更新"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                          Text="取消"></asp:LinkButton>
                                                                                                  </EditItemTemplate>
                                                                                                  <ItemStyle Width="60px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                  <ItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                          Text="编辑"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                          Text="删除"></asp:LinkButton>
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table12" runat="server" style="width: 550px">
                                                                                          <tr>
                                                                                              <td style="width: 105px; height: 15px; text-align: right">
                                                                                                  <asp:Label ID="Label11" runat="server" Height="1px" Text="地震事件：" Width="90px"></asp:Label></td>
                                                                                              <td style="width: 437px; height: 15px">
                                                                                                  <asp:TextBox ID="tbx5_3_dzsj" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right; height: 24px;">
                                                                                                  <asp:Label ID="Label14" runat="server" Height="3px" Text="主要内容：" Width="96px"></asp:Label></td>
                                                                                              <td style="width: 437px; height: 24px;">
                                                                                                  <asp:TextBox ID="tbx5_3_zynr" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 105px; text-align: right">
                                                                                                  <asp:Label ID="Label17" runat="server" Text="震级：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:DropDownList ID="ddlist5_3_zj" runat="server" Width="132px">
                                                                                                      <asp:ListItem Value="5～5.9级">5～5.9级</asp:ListItem>
                                                                                                      <asp:ListItem Value="6～6.9级">6～6.9级</asp:ListItem>
                                                                                                      <asp:ListItem Value="7级以上">7级以上</asp:ListItem>
                                                                                                  </asp:DropDownList></td>
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
                                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; font-size: 9pt;">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                  4. 作为主持开发的仪器、软件情况（限3项）</span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                                      mso-hansi-font-family: 'Times New Roman'"><asp:GridView ID="gv5_4" runat="server"
                                                                                          AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None"
                                                                                          BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px" OnRowDeleting="gv5_4_RowDeleting"
                                                                                          OnSelectedIndexChanging="gv5_4_SelectedIndexChanging" Width="713px" OnRowEditing="gv5_4_RowEditing">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField HeaderText="序号">
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                                                                  <ItemStyle Width="40px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="yqrjmc" HeaderText="仪器、软件名称">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="jddw" HeaderText="省、部级验收或鉴定单位">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" Font-Names="宋体" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="nd" HeaderText="验收或鉴定年度">
                                                                                                  <HeaderStyle Font-Size="9pt" Font-Names="宋体" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="yydw" HeaderText="主要推广应用单位">
                                                                                                  <HeaderStyle Font-Size="9pt" Font-Names="宋体" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                  <EditItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                          Text="更新"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                          Text="取消"></asp:LinkButton>
                                                                                                  </EditItemTemplate>
                                                                                                  <ItemStyle Width="60px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                  <ItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                          Text="编辑"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                          Text="删除"></asp:LinkButton>
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table13" runat="server" style="width: 550px">
                                                                                          <tr>
                                                                                              <td style="width: 191px; text-align: right">
                                                                                                  <asp:Label ID="Label19" runat="server" Height="1px" Text="仪器、软件名称：" Width="104px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_4_yqrjmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="358px"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 191px; text-align: right">
                                                                                                  <asp:Label ID="Label20" runat="server" Height="3px" Text="省、部级验收或鉴定单位：" Width="148px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_4_jddw" runat="server" Font-Names="宋体" Font-Size="9pt" Width="358px"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 191px; text-align: right; height: 23px;">
                                                                                                  <asp:Label ID="Label21" runat="server" Text="验收或鉴定年度：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px; height: 23px;">
                                                                                                  <asp:TextBox ID="tbx5_4_nd" runat="server" Font-Names="宋体" Font-Size="9pt" Width="77px"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 191px; text-align: right; height: 23px;">
                                                                                                  <asp:Label ID="Label22" runat="server" Text="主要推广应用单位（每项限2个）：" Width="192px"></asp:Label></td>
                                                                                              <td style="width: 437px; height: 23px;">
                                                                                                  <asp:TextBox ID="tbx5_4_yydw" runat="server" Font-Names="宋体" Font-Size="9pt" Width="358px"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 191px; height: 30px">
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
                                                                          mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .5pt; font-size: 9pt;">
                                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 20pt; mso-line-height-rule: exactly">
                                                                              <span lang="EN-US" style="mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体; font-family: 宋体;">
                                                                                  5.作为技术负责人完</span><span style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                                      mso-hansi-font-family: 'Times New Roman'"><span style="font-family: 宋体"><span style="font-size: 9pt">成的重大工程地震安全性评价情况（经国家地震安全性评定委员会评审通过，限3项）</span></span><asp:GridView ID="gv5_5"
                                                                                          runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#E7E7FF"
                                                                                          BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" Height="1px"
                                                                                          OnRowDeleting="gv5_5_RowDeleting" OnSelectedIndexChanging="gv5_5_SelectedIndexChanging"
                                                                                          Width="713px" OnRowEditing="gv5_5_RowEditing">
                                                                                          <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                          <Columns>
                                                                                              <asp:TemplateField HeaderText="序号">
                                                                                                  <ItemTemplate>
                                                                                                      <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                  <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                  </ItemTemplate>
                                                                                                  <ItemStyle Width="40px" />
                                                                                                  <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                              </asp:TemplateField>
                                                                                              <asp:BoundField DataField="xmmc" HeaderText="项目名称">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="yydw" HeaderText="应用单位">
                                                                                                  <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="nd" HeaderText="评审通过年度">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:BoundField DataField="wh" HeaderText="证明文件标题及文号">
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemStyle Font-Size="9pt" />
                                                                                              </asp:BoundField>
                                                                                              <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                  <EditItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                          Text="更新"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                          Text="取消"></asp:LinkButton>
                                                                                                  </EditItemTemplate>
                                                                                                  <ItemStyle Width="60px" />
                                                                                                  <HeaderStyle Font-Size="9pt" />
                                                                                                  <ItemTemplate>
                                                                                                      <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                          Text="编辑"></asp:LinkButton>
                                                                                                      <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                          Text="删除"></asp:LinkButton>
                                                                                                  </ItemTemplate>
                                                                                              </asp:TemplateField>
                                                                                          </Columns>
                                                                                          <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                          <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                          <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                          <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                      </asp:GridView>
                                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体">
                                                                                      <table id="Table14" runat="server" style="width: 550px">
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label25" runat="server" Height="1px" Text="项目名称：" Width="104px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_5_xmmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="385px"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label26" runat="server" Height="3px" Text="应用单位：" Width="148px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_5_yydw" runat="server" Font-Names="宋体" Font-Size="9pt" Width="385px"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label27" runat="server" Text="评审通过年度：" Width="97px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_5_nd" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                                                          </tr>
                                                                                          <tr>
                                                                                              <td style="width: 170px; text-align: right">
                                                                                                  <asp:Label ID="Label29" runat="server" Text="证明文件标题及文号：" Width="129px"></asp:Label></td>
                                                                                              <td style="width: 437px">
                                                                                                  <asp:TextBox ID="tbx5_5_wh" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
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
                                                          <div align="center">
                                                              &nbsp;</div>
                                                          </td>
                                                  </tr>
                                              </table>
                                          </p>
                                          </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table6" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse; color: #000000;"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          <span style="font-size: 12pt">六、上次申报后取得的新成果<span style="font-family: 宋体; mso-bidi-font-size: 12.0pt; mso-font-kerning: 1.0pt;
                                              mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                              mso-bidi-language: AR-SA">（限<span lang="EN-US">200</span>字）</span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center" style="text-align: left">
                                              <table id="TABLE6_1" runat="server" style="width: 324px">
                                                  <tr>
                                                      <td style="width: 90px; height: 23px; text-align: left">
                                                          上次申报年度：</td>
                                                      <td style="height: 23px">
                                                          <asp:DropDownList ID="ddl6_scsbnd" runat="server" Width="93px">
                                                          </asp:DropDownList></td>
                                                      <td style="width: 3px; height: 23px">
                                                      </td>
                                                  </tr>
                                              </table>
                                              <br />
                                              <ftb:FreeTextBox ID="ftb_chengguo" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                  Height="100px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                  Width="660px" EnableToolbars="False">
                                              </ftb:FreeTextBox>
                                              <div align="center" style="text-align: left">
                                                  <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: black 1px solid;
                                                      border-top: black 1px solid; border-left: black 1px solid; width: 546px; border-bottom: black 1px solid;
                                                      border-collapse: collapse; mso-table-layout-alt: fixed; mso-border-alt: solid windowtext .5pt;
                                                      mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext;
                                                      mso-border-insidev: .5pt solid windowtext">
                                                      <tr style="height: 38.4pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                          <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                              border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15pt; background-color: transparent;
                                                              mso-border-top-alt: .5pt; mso-border-left-alt: .75pt; mso-border-bottom-alt: .5pt;
                                                              mso-border-right-alt: .75pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span style="mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman';
                                                                      mso-hansi-font-family: 'Times New Roman'; font-family: 宋体;">年</span><span lang="EN-US" style="font-size: 10.5pt;
                                                                          mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman;
                                                                              mso-spacerun: yes">&nbsp; </span></span><span>
                                                                                  度</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                      mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                      </span></span><span>
                                                                                          考</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                              mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                              </span></span><span>
                                                                                                  核</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                                      mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                                      </span></span><span>
                                                                                                          情</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                                              mso-fareast-font-family: 宋体"><span style="font-family: Times New Roman; mso-spacerun: yes">&nbsp;
                                                                                                              </span></span><span>
                                                                                                                  况</span><span lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt;
                                                                                                                      mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 46.7pt; mso-yfti-irow: 1">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 138pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 10pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                              width="184">
                                                              考核年度</td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 138pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 10pt;
                                                              background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                              width="184">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US"></span><span style="font-size: 9pt; font-family: 宋体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                      <asp:Label ID="lbl_ndkh1" runat="server"></asp:Label></span><span
                                                                              lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 138pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 10pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt" width="184">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US"></span><span style="font-size: 9pt; font-family: 宋体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                      <asp:Label ID="lbl_ndkh2" runat="server"></asp:Label></span><span
                                                                              lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 117pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 10pt; background-color: transparent;
                                                              mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                                                              mso-border-left-alt: solid windowtext .5pt; mso-border-right-alt: solid windowtext .75pt">
                                                              <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: center; mso-line-height-rule: exactly">
                                                                  <span lang="EN-US"></span><span style="font-size: 9pt; font-family: 宋体;
                                                                          mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman'">
                                                                      <asp:Label ID="lbl_ndkh3" runat="server"></asp:Label></span><span
                                                                              lang="EN-US" style="font-size: 10.5pt; mso-bidi-font-size: 12.0pt; mso-fareast-font-family: 宋体"></span></p>
                                                          </td>
                                                      </tr>
                                                      <tr style="height: 38.1pt; mso-yfti-irow: 2; mso-yfti-lastrow: yes">
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 138pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 16pt;
                                                              background-color: transparent; text-align: center; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .75pt"
                                                              width="184">
                                                              考核等级</td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                              width: 138pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 16pt;
                                                              background-color: transparent; text-align: center; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-bottom-alt: solid windowtext .75pt"
                                                              width="184">
                                                              <asp:DropDownList ID="ddl6_ndkh1" runat="server" Width="93px">
                                                                  <asp:ListItem>优秀</asp:ListItem>
                                                                  <asp:ListItem>称职</asp:ListItem>
                                                                  <asp:ListItem>基本称职</asp:ListItem>
                                                                  <asp:ListItem>不称职</asp:ListItem>
                                                              </asp:DropDownList></td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 138pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                              height: 16pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                              mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                              mso-border-bottom-alt: solid windowtext .75pt; text-align: center;" width="184">
                                                              <asp:DropDownList ID="ddl6_ndkh2" runat="server" Width="93px">
                                                                  <asp:ListItem>优秀</asp:ListItem>
                                                                  <asp:ListItem>称职</asp:ListItem>
                                                                  <asp:ListItem>基本称职</asp:ListItem>
                                                                  <asp:ListItem>不称职</asp:ListItem>
                                                              </asp:DropDownList></td>
                                                          <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #dcd9a6;
                                                              padding-left: 5.4pt; padding-bottom: 0cm; border-left: #dcd9a6; width: 117pt;
                                                              padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                              height: 16pt; background-color: transparent; mso-border-top-alt: .5pt; mso-border-left-alt: .5pt;
                                                              mso-border-bottom-alt: .75pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                                                              mso-border-style-alt: solid; text-align: center;">
                                                              <asp:DropDownList ID="ddl6_ndkh3" runat="server" Width="93px">
                                                                  <asp:ListItem>优秀</asp:ListItem>
                                                                  <asp:ListItem>称职</asp:ListItem>
                                                                  <asp:ListItem>基本称职</asp:ListItem>
                                                                  <asp:ListItem>不称职</asp:ListItem>
                                                              </asp:DropDownList></td>
                                                      </tr>
                                                  </table>
                                              </div>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table7" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse; color: #000000;"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 16px;">
                                          <span style="font-size: 12pt">七、外语水平</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: medium none;
                                                  border-top: medium none; border-left: medium none; width: 552pt; border-bottom: medium none;
                                                  border-collapse: collapse; mso-border-alt: solid windowtext .5pt; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt;
                                                  mso-border-insideh: .5pt solid windowtext; mso-border-insidev: .5pt solid windowtext;">
                                                  <tr style="height: 54pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                      <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                          border-top: windowtext 1pt solid; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 457.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 54pt;
                                                          background-color: transparent; text-align: right; mso-border-alt: solid windowtext .5pt"
                                                          valign="top" width="610">
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体">&nbsp;1. </span><span style="font-family: 宋体">
                                                                  参加全国专业技术人员职称外语等级考试情况：<span lang="EN-US"></span></span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体"><span style="mso-spacerun: yes">&nbsp; </span>
                                                              </span><span style="font-family: 宋体; mso-bidi-font-size: 12.0pt">考试时间：<input id="txt7_kssj"
                                                                  runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt" type="text" />&nbsp; 语种：<asp:TextBox ID="tbx7_yz" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
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
                                                                  style="font-family: 宋体; mso-bidi-font-weight: bold"></span>免试理由（限50字）：</span></p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 12pt; font-family: 宋体">
                                                                  <ftb:FreeTextBox ID="ftb_wymsly" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="50px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px" EnableToolbars="False">
                                                                  </ftb:FreeTextBox>
                                                              </span>&nbsp;</p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <asp:ImageButton ID="ImageButton14" runat="server" ImageUrl="./img/save.gif" OnClick="imgbtn_save_Click" />&nbsp;</p>
                                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt 5.4pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 12pt; font-family: 宋体"></span><span lang="EN-US" style="font-size: 12pt; font-family: 宋体"> </span>
                                                              <span lang="EN-US" style="font-family: 宋体">3.</span><span style="font-size: 12pt;
                                                                  font-family: 宋体"></span><span style="font-size: 9pt">翻译论文、论著内容（限5项）：</span><asp:GridView ID="gv_fylw" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                      BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                      Height="1px" Width="667px" OnRowDeleting="gv_fylw_RowDeleting" Font-Names="宋体" Font-Size="9pt" OnRowEditing="gv_fylw_RowEditing">
                                                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                      <Columns>
                                                                          <asp:TemplateField HeaderText="序号">
                                                                              <ItemTemplate>
                                                                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                  <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>" />
                                                                              </ItemTemplate>
                                                                              <ItemStyle Width="40px" />
                                                                              <HeaderStyle Font-Size="9pt" />
                                                                          </asp:TemplateField>
                                                                          <asp:ButtonField DataTextField="fylw" HeaderText="翻译论文或著作名称">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:ButtonField>
                                                                          <asp:HyperLinkField DataTextField="ywz" HeaderText="原文种及翻译文种">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:HyperLinkField>
                                                                          <asp:BoundField DataField="zs" HeaderText="字数">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="cbdw" HeaderText="出版单位期刊名称">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                          <asp:BoundField DataField="cbsj" HeaderText="出版时间">
                                                                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                                                                          </asp:BoundField>
                                                                          <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                              <EditItemTemplate>
                                                                                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                      Text="更新"></asp:LinkButton>
                                                                                  <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                      Text="取消"></asp:LinkButton>
                                                                              </EditItemTemplate>
                                                                              <ItemStyle Width="60px" />
                                                                              <HeaderStyle Font-Size="9pt" />
                                                                              <ItemTemplate>
                                                                                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                      Text="编辑"></asp:LinkButton>
                                                                                  <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                      Text="删除"></asp:LinkButton>
                                                                              </ItemTemplate>
                                                                          </asp:TemplateField>
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
                                                                      <asp:TextBox ID="tbx7_zs" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><span
                                                                          style="font-size: 9pt">（万字）</span><asp:RangeValidator ID="RangeValidator3" runat="server"
                                                                              ControlToValidate="tbx7_zs" ErrorMessage="提示：应为数字" Font-Names="宋体" Font-Size="9pt"
                                                                              MaximumValue="1000" MinimumValue="0" Type="Double" SetFocusOnError="True"></asp:RangeValidator><br />
                                                                  </span><span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt;
                                                                      mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt; font-family: 宋体">
                                                                          &nbsp; 出版单位期刊名称： </span>
                                                                      <asp:TextBox ID="tbx7_cbdw" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><br />
                                                                      <span></span><span><span style="font-size: 9pt; font-family: 宋体">&nbsp; &nbsp; &nbsp;
                                                                          &nbsp; &nbsp; 出版时间： <input id="tbx7_cbsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                          type="text" /></span></span></span></p>
                                                              <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                  text-align: left; mso-line-height-rule: exactly">
                                                                  <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                      <asp:ImageButton ID="imgbtn_fylw" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_fylw_Click" /></span></p>
                                                              <span lang="EN-US">
                                                                  
                                                              </span></span></td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table8" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse; color: #000000;"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          <span style="font-size: 12pt">八、计算机水平</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px">
                                          <div align="center" style="text-align: left">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="width: 736px">
                                                  <tr style="height: 54pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes">
                                                      <td valign="top">
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
                                                              <span style="font-family: 宋体"></span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-weight: bold"> </span></p>
                                                          <p>
                                                              <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-weight: bold">&nbsp;2.<span
                                                                  style="font-family: 宋体; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                  mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                                                                  mso-bidi-font-weight: bold">如免试，</span></span><span
                                                                  style="font-family: 宋体; mso-bidi-font-weight: bold">免试理由：</span><span lang="EN-US"
                                                                      style="font-size: 12pt; font-family: 华文中宋; mso-bidi-font-weight: bold">
                                                                      <asp:DropDownList ID="ddlist8_msly" runat="server"
                                                                          Width="589px">
                                                                          <asp:ListItem Value="0">无</asp:ListItem>
                                                                          <asp:ListItem Value="1">具有计算机专业本科及以上学历</asp:ListItem>
                                                                          <asp:ListItem Value="2">参加全国计算机专业技术资格（水平）考试，取得中级及以上证书</asp:ListItem>
                                                                          <asp:ListItem Value="3">博士研究生毕业，获得博士学位</asp:ListItem>
                                                                      </asp:DropDownList>
                                                                      <br />
                                                                  </span><span lang="EN-US" style="font-size: 12pt; font-family: 华文中宋; mso-bidi-font-weight: bold">
                                                                      <asp:Label ID="lbl8_dj" runat="server" Font-Names="宋体" Font-Size="9pt" Text="等级："
                                                                          Visible="False"></asp:Label><asp:DropDownList ID="ddlist8_dj" runat="server" Visible="False">
                                                                              <asp:ListItem Value="1">一级</asp:ListItem>
                                                                              <asp:ListItem Value="2">二级</asp:ListItem>
                                                                              <asp:ListItem Value="3">三级</asp:ListItem>
                                                                              <asp:ListItem Value="4">四级</asp:ListItem>
                                                                          </asp:DropDownList></span></p>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table9" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse; color: #000000;"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px">
                                          <span style="font-size: 12pt">九、破格申请理由</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; text-align: left;">
                                          <div align="center" style="text-align: left">
                                              <table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" width="600">
                                                  <tr style="height: 335.75pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; mso-yfti-lastrow: yes;
                                                      page-break-inside: avoid">
                                                      <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                          padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                          width: 450.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 335.75pt;
                                                          background-color: transparent; mso-border-alt: solid windowtext .5pt" width="600" valign="top">
                                                          <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt; text-align: left;
                                                              mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span lang="EN-US">1.</span></b><b style="mso-bidi-font-weight: normal"><span
                                                                  style="font-family: 宋体">破格申报类别：<br />
                                                                  <table style="width: 692px">
                                                                      <tr>
                                                                          <td style="width: 35px; height: 42px">
                                                                          </td>
                                                                          <td style="height: 42px">
                                                                  <asp:RadioButtonList ID="cbxlist_pglb" runat="server" RepeatDirection="Horizontal" AutoPostBack="True" OnSelectedIndexChanged="cbxlist_pglb_SelectedIndexChanged">
                                                                      <asp:ListItem Selected="True" Value="0">无</asp:ListItem>
                                                                      <asp:ListItem Value="1">1、学历破格</asp:ListItem>
                                                                      <asp:ListItem Value="2">2、资历破格</asp:ListItem>
                                                                  </asp:RadioButtonList></td>
                                                                          <td style="width: 3px; height: 42px">
                                                                          </td>
                                                                      </tr>
                                                                  </table>
                                                              </span></b><b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-family: 宋体"></span></b></p>
                                                          <table id="TABLE9_1" runat="server" style="width: 717px">
                                                              <tr>
                                                                  <td colspan="3" rowspan="3" style="width: 245px; height: 16px">
                                                                      <strong>2.<b
                                                                  style="mso-bidi-font-weight: normal"><span style="font-family: 宋体">破格申报条件：</span></b></strong><span style="font-family: 宋体">&nbsp;<table style="width: 692px">
                                                                              <tr>
                                                                                  <td style="width: 35px; height: 42px">
                                                                                  </td>
                                                                                  <td style="height: 42px">
                                                                  <asp:CheckBoxList ID="cbxlist_pgtj" runat="server" RepeatDirection="Horizontal" Width="423px">
                                                                      <asp:ListItem Value="1">1、获得奖励</asp:ListItem>
                                                                      <asp:ListItem Value="2">2、发表论著</asp:ListItem>
                                                                      <asp:ListItem Value="3">3、承担重点项目</asp:ListItem>
                                                                  </asp:CheckBoxList></td>
                                                                                  <td style="width: 3px; height: 42px">
                                                                                  </td>
                                                                              </tr>
                                                                          </table>
                                                                      </span>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: center; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-family: 宋体"></span>
                                                          </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-family: 宋体">3.</span></b><b
                                                                  style="mso-bidi-font-weight: normal"><span style="font-family: 宋体">具体破格理由：<table
                                                                      style="width: 692px">
                                                                      <tr>
                                                                          <td style="width: 35px">
                                                                          </td>
                                                                          <td>
                                                                              （<span lang="EN-US" style="font-size: 10pt">1</span>）<span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt"><span style="mso-bidi-font-size: 12.0pt"><span
                                                                                      style="font-size: 9pt"><span style="font-family: 宋体">获得国家级或省部级</span><asp:TextBox ID="tbx9_1" runat="server" Width="113px"></asp:TextBox><span style="font-family: 宋体">奖</span><asp:TextBox
                                                                                  ID="tbx9_2" runat="server" Width="39px"></asp:TextBox><u><span lang="EN-US"><span
                                                                                      style="mso-spacerun: yes"></span></span></u><span style="font-family: 宋体">等奖，排名第</span><u><span lang="EN-US"><span style="mso-spacerun: yes"><asp:TextBox
                                                                                          ID="tbx9_3" runat="server" Width="36px"></asp:TextBox></span></span></u><span style="font-family: 宋体"><span lang="EN-US"><span
                                                                                              style="mso-spacerun: yes"> </span></span>；<asp:RangeValidator ID="RangeValidator18"
                                                                                                  runat="server" ControlToValidate="tbx9_3" Display="Dynamic" ErrorMessage="提示：排名应为数字"
                                                                                                  Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0" Type="Integer"></asp:RangeValidator></span></span></span><span style="font-size: 9pt;
                                                                                                  font-family: 宋体"> </span></span>
                                                                          </td>
                                                                          <td style="font-size: 9pt; width: 3px; font-family: 宋体">
                                                                          </td>
                                                                      </tr>
                                                                      <tr style="font-size: 9pt; font-family: 宋体">
                                                                          <td style="width: 35px">
                                                                          </td>
                                                                          <td>
                                                                              （<span lang="EN-US">2</span>）作为第一作者，有<asp:TextBox ID="tbx9_4" runat="server" Width="39px"></asp:TextBox><span
                                                                                  style="font-size: 9pt; font-family: 宋体">篇学术论文被<span
                                                                                  lang="EN-US">SCI</span><span style="font-size: 10pt; font-family: 仿宋_GB2312">、</span><span lang="EN-US">EI</span><span style="font-size: 10pt; font-family: 仿宋_GB2312">、</span><span lang="EN-US">ISTP</span>收录；<asp:RangeValidator
                                                                                      ID="RangeValidator19" runat="server" ControlToValidate="tbx9_4" Display="Dynamic"
                                                                                      ErrorMessage="提示：应为数字" Font-Names="宋体" Font-Size="9pt" MaximumValue="100" MinimumValue="0"
                                                                                      Type="Integer"></asp:RangeValidator></span>
                                                                          </td>
                                                                          <td style="width: 3px">
                                                                          </td>
                                                                      </tr>
                                                                      <tr>
                                                                          <td style="width: 35px; height: 25px">
                                                                          </td>
                                                                          <td style="height: 25px">
                                                                              （<span lang="EN-US">3</span>）作为项目负责人承担国家级<u><span
                                                                                  lang="EN-US"><span style="mso-spacerun: yes"><asp:TextBox ID="tbx9_5" runat="server"
                                                                                      Width="174px"></asp:TextBox></span></span></u>项目。</td>
                                                                          <td style="width: 3px; height: 25px">
                                                                          </td>
                                                                      </tr>
                                                                  </table>
                                                                      <span lang="EN-US"></span></span></b></p><span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                      <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 21pt; line-height: 20pt;
                                                                          mso-line-height-rule: exactly">
                                                                          <span style="mso-bidi-font-size: 12.0pt"><span style="font-size: 9pt"><span style="font-family: 宋体">
                                                                          </span></span></span>
                                                                  </span><span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt"><span
                                    style="font-size: 9pt; font-family: 宋体"></span></span>&nbsp;<p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 21pt; line-height: 20pt;
                                                                      mso-line-height-rule: exactly">
                                                                      <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                          <span style="font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="font-size: 9pt">
                                                                          </span></span><span style="font-size: 9pt; font-family: 宋体; mso-bidi-font-size: 12.0pt;
                                                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"></span>
                                                                  <span style="font-size: 9pt; color: #cc0000; font-family: 宋体">
                                                                      </span></span>
                                                                  </p>
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                              <span lang="EN-US" style="font-size: 10.5pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 12.0pt">
                                                                  <span style="font-size: 9pt; color: #cc0000; font-family: 宋体">
                                                                      <asp:Label ID="Label15" runat="server" Text="完成此模块后，如需修改，请点击相应模块进行修改；如确认申报信息无误，请核对自评分数！"
                                                                          Width="551px"></asp:Label>&nbsp;</span>&nbsp;
                                                                  &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                                                  </span></p>
                                                                  </td>
                                                              </tr>
                                                              <tr style="font-family: 宋体">
                                                              </tr>
                                                              <tr style="font-family: 宋体">
                                                              </tr>
                                                          </table>
                                                                  <asp:RadioButtonList ID="rbtnlist_sh" runat="server" RepeatDirection="Horizontal"
                                                                      Width="170px">
                                                                      <asp:ListItem>通过</asp:ListItem>
                                                                      <asp:ListItem Value="未通过">未通过</asp:ListItem>
                                                                  </asp:RadioButtonList>
                                                          <input id="Hidden1" runat="server" type="hidden" style="font-family: 宋体" /></td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <!-- page_index end //--><table id="Table10" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 16px;">
                                          <span style="font-size: 12pt">五、代表性成果（限2项）</span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px" align="left" valign="top">
                                          <div align="center" style="text-align: left">
                                              <table id="Table16" align="center" bgcolor="#e7e7e7" border="0" cellpadding="3" cellspacing="1"
                                                  height="413" style="width: 681px">
                                                  <tr >
                                                      <td colspan ="2" align="center" bgcolor="#f7f7f7" style="font-size: 12px; width: 48px; color: #000000;
                                                          font-family: Verdana, Arial, Helvetica, sans-serif; height: 18px; text-align: left">
                                                          <asp:Label ID="Label13" runat="server" Text="（一）代表性成果一" Width="122px" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                                                  </tr>
                                                  <tr>
                                                      <td align="center" bgcolor="#f7f7f7" style="font-size: 12px; width: 69px; color: #000000;
                                                          font-family: Verdana, Arial, Helvetica, sans-serif; height: 18px; text-align: left">
                                                          名称：</td>
                                                          <td><asp:TextBox ID="tbx10_1" runat="server" Width="610px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan ="2" align="left" bgcolor="#f7f7f7" valign="top">
                                                          <table id="table21" border="0" cellpadding="0" cellspacing="0" height="147" style="width: 666px">
                                                              <tr>
                                                                  <td style="font-size: 12px; width: 358px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                                                      height: 25px">
                                                                      内容（限600字符）：</td>
                                                              </tr>
                                                              <tr>
                                                                  <td style="font-size: 12px; width: 358px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                                                      height: 124px; text-align: justify" valign="top">
                                                                      <font face="宋体">
                                                                          <ftb:FreeTextBox ID="ftb10_1" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="150px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px" EnableToolbars="False">
                                                                          </ftb:FreeTextBox>
                                                                      </font>
                                                                  </td>
                                                              </tr>
                                                          </table>
                                                          <table id="Table15" border="0" cellpadding="0" cellspacing="2" style="width: 664px;
                                                              height: 20px">
                                                              <tr>
                                                                  <td style="width: 87px; height: 1px; text-align: right">
                                                                      附件：</td>
                                                                  <td colspan="4" style="width: 334px; height: 1px; text-align: left">
                                                                      <asp:LinkButton ID="lbtn10_1" runat="server" OnClick="lbtn10_1_Click"></asp:LinkButton>
                                                                      <asp:LinkButton ID="lbtn10_11" runat="server" OnClick="lbtn10_1_Click">下载</asp:LinkButton></td>
                                                              </tr>
                                                              <tr>
                                                                  <td style="width: 87px; height: 1px; text-align: right">
                                                                      上传附件：</td>
                                                                  <td colspan="4" style="width: 334px; height: 1px; text-align: left">
                                                                      <asp:FileUpload ID="fu10_1" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" />
                                                                      &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>
                                                              </tr>
                                                              <tr>
                                                                  <td style="width: 87px; height: 1px">
                                                                  </td>
                                                                  <td colspan="4" style="width: 334px; height: 1px; text-align: left">
                                                                      <asp:ImageButton ID="imgbtn10_1" runat="server" ImageUrl="./img/save.gif" OnClick="imgbtn10_1_Click" />
                                                                      <asp:ImageButton ID="imgbtn10_1_del" runat="server" ImageUrl="./img/delete.gif" OnClick="imgbtn10_1_del_Click" /></td>
                                                              </tr>
                                                          </table>
                                                          <table id="Table19" align="center" bgcolor="#e7e7e7" border="0" cellpadding="3" cellspacing="1"
                                                              height="413" style="width: 681px">
                                                              <tr>
                                                                  <td colspan ="2" align="center" bgcolor="#f7f7f7" style="font-size: 12px; width: 48px; color: #000000;
                                                                      font-family: Verdana, Arial, Helvetica, sans-serif; height: 18px; text-align: left">
                                                                      <asp:Label ID="Label9" runat="server" Text="（二）代表性成果二" Width="125px" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                                                              </tr>
                                                              <tr>
                                                                  <td align="center" bgcolor="#f7f7f7" style="font-size: 12px; width: 69px; color: #000000;
                                                                      font-family: Verdana, Arial, Helvetica, sans-serif; height: 18px; text-align: left">
                                                                      名称：</td>
                                                                      <td><asp:TextBox ID="tbx10_2" runat="server" Width="610px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                              </tr>
                                                              <tr>
                                                                  <td colspan ="2" align="left" bgcolor="#f7f7f7" valign="top">
                                                                      <table id="Table17" border="0" cellpadding="0" cellspacing="0" height="147" style="width: 666px">
                                                                          <tr>
                                                                              <td style="font-size: 12px; width: 358px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                                                                  height: 25px">
                                                                                  内容（限600字符）：</td>
                                                                          </tr>
                                                                          <tr>
                                                                              <td style="font-size: 12px; width: 358px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                                                                  height: 124px; text-align: justify" valign="top">
                                                                                  <font face="宋体">
                                                                                      <ftb:FreeTextBox ID="ftb10_2" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                                      Height="150px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                      Width="660px" EnableToolbars="False">
                                                                                      </ftb:FreeTextBox>
                                                                                  </font>
                                                                              </td>
                                                                          </tr>
                                                                      </table>
                                                                      <table id="Table18" border="0" cellpadding="0" cellspacing="2" style="width: 664px;
                                                                          height: 20px">
                                                                          <tr>
                                                                              <td style="width: 87px; height: 1px; text-align: right">
                                                                                  附件：</td>
                                                                              <td colspan="4" style="width: 334px; height: 1px; text-align: left">
                                                                                  <asp:LinkButton ID="lbtn10_2" runat="server" OnClick="lbtn10_2_Click"></asp:LinkButton>
                                                                                  <asp:LinkButton ID="lbtn10_21" runat="server" OnClick="lbtn10_2_Click">下载</asp:LinkButton></td>
                                                                          </tr>
                                                                          <tr>
                                                                              <td style="width: 83px; height: 1px; text-align: right">
                                                                                  上传附件：</td>
                                                                              <td colspan="4" style="width: 334px; height: 1px; text-align: left">
                                                                                  <asp:FileUpload ID="fu10_2" runat="server"
                                                          Width="226px" Font-Names="宋体" Font-Size="9pt" />
                                                                                  &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                                                                              </td>
                                                                          </tr>
                                                                          <tr>
                                                                              <td style="width: 83px; height: 1px">
                                                                              </td>
                                                                              <td colspan="4" style="width: 334px; height: 1px; text-align: left">
                                                                                  <asp:ImageButton ID="imgbtn10_2" runat="server" ImageUrl="./img/save.gif" OnClick="imgbtn10_2_Click" />
                                                                                  <asp:ImageButton ID="imgbtn10_2_del" runat="server" ImageUrl="./img/delete.gif" OnClick="imgbtn10_2_del_Click" /></td>
                                                                          </tr>
                                                                      </table>
                                                                  </td>
                                                              </tr>
                                                          </table>
                                                      </td>
                                                  </tr>
                                              </table>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <P><A 
      onmouseover="MM_swapImage('Image_back','','images/new_images/btn_fanhui_blue.gif',1)" 
      onmouseout=MM_swapImgRestore() href="javascript:history.back()"></A> <asp:ImageButton ID="imgbtn_save" runat="server" ImageUrl="./img/save.gif" OnClick="imgbtn_save_Click" />
          &nbsp;
          <asp:ImageButton ID="imgbtn_SaveNext" runat="server" ImageUrl="./img/savenext.gif"
              OnClick="imgbtn_SaveNext_Click" />
          &nbsp;
          <asp:ImageButton ID="imgbtn_quit" runat="server" ImageUrl="./img/quit.gif"
              OnClick="imgbtn_quit_Click" Visible="False" /></P></DIV></TD>
<TABLE height=79 cellSpacing=0 cellPadding=0 width=1003 align=center border=0>
  <TBODY>
  <TR>
    <TD width=1012 background=img/index_121.gif style="height: 79px">
      <TABLE class=b12-20 cellSpacing=0 cellPadding=0 border=0 style="width: 82%">
        <TBODY>
        <TR>
          <TD width="11%">&nbsp;</TD>
          <TD style="text-align: center; width: 89%;">Copyright &copy; 2009 All Rights 
            Reserved<BR>
              版权所有：中国地震局人事教育和科技司 技术支持：人才评价（评审）系统课题组</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></form></BODY></HTML>
