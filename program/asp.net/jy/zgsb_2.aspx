<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zgsb_2.aspx.cs" Inherits="zgsb_2" %>
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
    <TD background=img/index_04.gif style="width: 273px; height: 35px">
      <TABLE class=b12 cellSpacing=2 cellPadding=0 align=center 
      border=0 style="width: 78%">
        <TBODY>
        <TR>
          <TD style="height: 14px">
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
    <TD background=img/index_04.gif style="height: 35px; width: 291px;">
      <TABLE cellSpacing=0 cellPadding=0 width="50%" border=0>
        <TBODY>
        <TR>
          <TD style="height: 18px">
              <asp:LinkButton ID="lbtn_shouye" runat="server" Font-Bold="False" Font-Names="宋体"
                  Font-Size="12pt" ForeColor="Black" OnClick="lbtn_shouye_Click" Width="74px">首页</asp:LinkButton></TD>
          <TD style="height: 18px"><A 
            onmouseover="MM_swapImage('Image1771','','/img/index1_07.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="zgps.aspx"></A></TD>
          <TD style="height: 18px"><A 
            onmouseover="MM_swapImage('Image1772','','/img/index1_08.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"></A></TD>
          <TD style="width: 101px; height: 18px;"><A 
            onmouseover="MM_swapImage('Image1775','','/img/index1_09.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"></A>
              </TD>
          <TD style="width: 101px; height: 18px;"><A 
            onmouseover="MM_swapImage('Image1774','','/img/index1_11.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"></A>
              </TD>
          <TD style="height: 18px"><A 
            onmouseover="MM_swapImage('Image17731','','/img/index1_10.gif',1)" 
            onmouseout=MM_swapImgRestore() 
            href="#"></A>
              </TD></TR></TBODY></TABLE></TD>
    <TD background=img/index_04.gif style="height: 35px; width: 324px; text-align: right;">
        &nbsp;<asp:LinkButton ID="lbtn_PrintPreview" runat="server" Font-Bold="False" Font-Names="宋体"
            Font-Size="12pt" ForeColor="Black" OnClick="lbtn_PrintPreview_Click" Width="74px">打印预览</asp:LinkButton>
        <asp:LinkButton ID="lbtn_zpfs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="12pt"
            ForeColor="Black" OnClick="lbtn_zpfs_Click" Width="74px">自评分数</asp:LinkButton>&nbsp;
        &nbsp;<TD style="height: 35px; background-image: url(./img/mht766(1).gif); width: 205px; text-align: left;">
            &nbsp;<asp:LinkButton ID="lbtn_commit" runat="server" Font-Bold="False" Font-Names="宋体"
                  Font-Size="12pt" ForeColor="Black" OnClick="lbtn_commit_Click" Width="71px">上报提交</asp:LinkButton>
        &nbsp;
              <asp:LinkButton ID="lbtn_quit" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="12pt"
                  ForeColor="Black" OnClick="lbtn_quit_Click" Width="72px">安全退出</asp:LinkButton></TD>
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
                <td id="Td8" runat="server" style="width: 212px" valign="top" visible="true">
                    <a href="#"></a>
                    <asp:ImageButton ID="ImageButton12" runat="server" ImageUrl="./img/mht77_4.gif" OnClick="ImageButton12_Click" /></td>
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
          <TD vAlign=top style="width: 212px" id="TD1" runat="server" visible="true"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton10" runat="server" ImageUrl="./img/mht78_10.gif"
                  OnClick="ImageButton10_Click" Visible="False" /></TD></TR>
                  <TR>
          <TD vAlign=top style="width: 212px" id="TD6" runat="server" visible="true"><A 
            href="#"></A>
              <asp:ImageButton ID="ImageButton11" runat="server" ImageUrl="./img/mht78_11.gif"
                  OnClick="ImageButton11_Click" Visible="False" /></TD></TR>
                  </TBODY></TABLE>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD style="height: 8px"><IMG height=1 src="./img/mht778(1).gif" 
          width=1></TD></TR></TBODY></TABLE>
    <TD vAlign=top ><!--
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
                <TD valign="top" style="text-align: center">
                  <TABLE cellSpacing=1 cellPadding=2 width="100%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD valign="top"><!-- page_index begin //-->
                          <table id="Table2" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 10pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 486px; height: 19px">
                                          <span style="font-size: 14pt">一、个人简历和业务工作简介<br />
                                          </span>
                                          <asp:Label ID="Label4" runat="server" Font-Names="宋体" Font-Size="9pt" ForeColor="Red"
                                              Text="(注意：凡需要填写年月部分，只要选到月份，日期可以任选。照片上传大小限制为512K以内，格式限JPG、BMP。)" Width="716px"></asp:Label><br />
                                          <span style="color: #ff0000"></span>
                                      </td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 486px; height: 166px; font-size: 9pt;" valign="top">
                                          <table cellpadding="0" cellspacing="0" style="border-right: black 0px solid; border-top: black 0px solid;
                                              border-left: black 0px solid; width: 717px; border-bottom: black 0px solid; height: 156px">
                                              <tr>
                                                  <td style="border-right: black 1px; border-top: black 1px solid; border-left: black 1px solid;
                                                      width: 247px; border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      姓名</td>
                                                  <td style="border-right: black 1px; border-top: black 1px solid; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px">
                                                      <asp:TextBox ID="tbx2_xm" runat="server" Font-Size="9pt" Width="87px" Font-Names="宋体"></asp:TextBox></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      出生年月</td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px solid; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px">
                                                      <input id="tbx2_csny" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                          type="text" /></td>
                                                  <td style="border-right: black 1px; border-top: black 1px solid; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; width: 75px; text-align: right;">
                                                      性别：</td>
                                                  <td style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: left">
                                                      <asp:DropDownList ID="ddlist2_xb" runat="server" Width="39px">
                                                          <asp:ListItem>男</asp:ListItem>
                                                          <asp:ListItem>女</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td rowspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      width: 247px; border-bottom: black 1px solid; text-align: center">
                                                      最高学历</td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      学历名称</td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      <asp:Label ID="Label1" runat="server" Text="毕业时间(年、月)"></asp:Label></td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      专业</td>
                                                  <td colspan="2" style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      授予单位</td>
                                              </tr>
                                              <tr>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px">
                                                      <asp:DropDownList ID="ddlist2_xl1" runat="server">
                                                          <asp:ListItem>博士研究生</asp:ListItem>
                                                          <asp:ListItem>硕士研究生</asp:ListItem>
                                                          <asp:ListItem>大学本科</asp:ListItem>
                                                          <asp:ListItem>大学专科</asp:ListItem>
                                                          <asp:ListItem>大学普通班</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center"><input id="tbx2_bysj1" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 120px;"
                                                          type="text" /></td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px">
                                                      <asp:TextBox ID="tbx2_zy1" runat="server" Width="148px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                  <td colspan="2" style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      <asp:TextBox ID="tbx2_sydw1" runat="server" Width="138px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td rowspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      width: 247px; border-bottom: black 1px solid; text-align: center">
                                                      符合申报<br />
                                                      条件的学历</td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      学历名称</td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      <asp:Label ID="Label2" runat="server" Text="毕业时间(年、月)"></asp:Label></td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      专业</td>
                                                  <td colspan="2" style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      授予单位</td>
                                              </tr>
                                              <tr>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px">
                                                      <asp:DropDownList ID="ddlist2_xl2" runat="server">
                                                          <asp:ListItem>博士研究生</asp:ListItem>
                                                          <asp:ListItem>硕士研究生</asp:ListItem>
                                                          <asp:ListItem>大学本科</asp:ListItem>
                                                          <asp:ListItem>大学专科</asp:ListItem>
                                                          <asp:ListItem>大学普通班</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center"><input id="tbx2_bysj2" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 120px;"
                                                          type="text" /></td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px">
                                                      <asp:TextBox ID="tbx2_zy2" runat="server" Width="150px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                  <td colspan="2" style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      <asp:TextBox ID="tbx2_sydw2" runat="server" Width="142px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td rowspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      width: 247px; border-bottom: black 1px solid; text-align: center">
                                                      符合申报<br />
                                                      条件的学位</td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      学位名称</td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      <asp:Label ID="Label3" runat="server" Text="取得时间(年、月)"></asp:Label></td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      专业</td>
                                                  <td colspan="2" style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      授予单位</td>
                                              </tr>
                                              <tr>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px"><asp:DropDownList ID="ddlist2_xw" runat="server" Width="90px">
                                                          <asp:ListItem>博士学位</asp:ListItem>
                                                          <asp:ListItem>硕士学位</asp:ListItem>
                                                          <asp:ListItem>学士学位</asp:ListItem>
                                                          <asp:ListItem>无</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px; text-align: center"><input id="tbx2_qdsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 120px;"
                                                          type="text" /></td>
                                                  <td colspan="2" rowspan="" style="border-right: black 1px; border-top: black 1px;
                                                      border-left: black 1px solid; border-bottom: black 1px solid; height: 21px">
                                                      <asp:TextBox ID="tbx2_zy3" runat="server" Width="150px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                  <td colspan="2" style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      <asp:TextBox ID="tbx2_sydw3" runat="server" Width="140px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      width: 247px; border-bottom: black 1px solid; height: 21px; text-align: center">
                                                      现任技术职务</td>
                                                  <td colspan="2" style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 21px">
                                                      <asp:TextBox ID="tbx2_xrzw" runat="server" Width="208px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      width: 31px; border-bottom: black 1px solid; height: 19px; text-align: center">
                                                      <asp:Label ID="Label5" runat="server" Text="评定时间(年、月)" Width="56px"></asp:Label></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      width: 73px; border-bottom: black 1px solid; height: 19px; text-align: right;"><input id="tbx2_pdsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 112px; height: 21px;"
                                                          type="text" /></td>
                                                  <td style="border-right: black 1px; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center; width: 75px;">
                                                      聘任时间<br />
                                                      （年、月）</td>
                                                  <td style="border-right: black 1px solid; border-top: black 1px; border-left: black 1px solid;
                                                      border-bottom: black 1px solid; height: 19px; text-align: center"><input id="tbx2_prsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 98px;"
                                                          type="text" /></td>
                                              </tr>
                                          </table>
                                          <span style="color: #ff0000"></span>
                                          <asp:Image ID="img_photo" runat="server" Height="158px" Width="120px" />上传照片：&nbsp;
                                          <asp:FileUpload ID="FileUpload_photo" runat="server" Font-Names="宋体" Font-Size="9pt"
                                              Width="344px" /><asp:Button ID="btn_upload" runat="server" OnClick="btn_upload_Click"
                                                  Text="确定" /><br />
                                          <span style="color: #ff0000"></span>
                                          <span style="font-size: 10pt">业务工作简介：（限8<span lang="EN-US">00字符数</span>）<br />
                                              <ftb:FreeTextBox ID="ftb_gzjj" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                  Height="200px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                  Width="660px" EnableHtmlMode="True" EnableToolbars="False">
                                              </ftb:FreeTextBox>
                                          </span>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <!-- page_index end //--></TD></TR></TBODY></TABLE>
                    <input id="hdn_flag" runat="server" type="hidden" /><input id="hdn_page" runat="server"
                        style="width: 56px" type="hidden" /> <asp:ImageButton ID="imgbtn_save" runat="server" ImageUrl="./img/save.gif" OnClick="imgbtn_save_Click" />
          &nbsp;&nbsp;
          <asp:ImageButton ID="imgbtn_SaveNext" runat="server" ImageUrl="./img/savenext.gif"
              OnClick="imgbtn_SaveNext_Click" />
                    <asp:ImageButton ID="imgbtn_quit" runat="server" ImageUrl="./img/quit.gif" OnClick="imgbtn_quit_Click" Visible="False" />
                    &nbsp;&nbsp;
                </TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
      <P><A 
      onmouseover="MM_swapImage('Image_back','','images/new_images/btn_fanhui_blue.gif',1)" 
      onmouseout=MM_swapImgRestore() href="javascript:history.back()"></A> &nbsp;&nbsp;
      </P></DIV></TD>
<TABLE height=79 cellSpacing=0 cellPadding=0 width=1003 align=center border=0>
  <TBODY>
  <TR>
    <TD width=1012 background=img/index_121.gif height=79>
      <TABLE class=b12-20 cellSpacing=0 cellPadding=0 border=0 style="width: 82%">
        <TBODY>
        <TR>
          <TD width="11%">&nbsp;</TD>
          <TD style="text-align: center; width: 89%;">Copyright &copy; 2009 All Rights 
            Reserved<BR>
              版权所有：中国地震局人事教育和科技司 技术支持：人才评价（评审）系统课题组</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></form></BODY></HTML>

