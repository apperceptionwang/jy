<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tsjtry_bak.aspx.cs" Inherits="tsjtry" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD><TITLE>中国地震局人才评价（评审）系统</TITLE>
<META http-equiv=Content-Type content="text/html; charset=GBK"><LINK 
href="./img/text.css" type=text/css rel=stylesheet><LINK 
href="./img/style_1024.css" type=text/css rel=STYLESHEET>
<SCRIPT language=JavaScript src="./img/script.js"></SCRIPT>
<script language=javascript src="./img/calendar.js"></script>
<SCRIPT language=JavaScript src="./img/css_suit.js"></SCRIPT>

<STYLE type=text/css>.input_button_go {
	BORDER-RIGHT: #333333 2px solid; BORDER-TOP: #ebdb9a 2px solid; BORDER-LEFT: #ebdb9a 2px solid; WIDTH: 30px; BORDER-BOTTOM: #333333 2px solid; HEIGHT: 20px; BACKGROUND-COLOR: #ffffd9
}
.input_search3 {
	BORDER-RIGHT: #997c1e 1px solid; BORDER-TOP: #997c1e 1px solid; BORDER-LEFT: #997c1e 1px solid; WIDTH: 20px; BORDER-BOTTOM: #997c1e 1px solid; HEIGHT: 17px; BACKGROUND-COLOR: #ffffff
}
</STYLE>

<META content="MSHTML 6.00.6000.16850" name=GENERATOR></HEAD>
<BODY leftMargin=0 topMargin=0 style="color: #000000" >
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
                                        Font-Size="12pt" ForeColor="Black" Width="74px" OnClick="lbtn_shouye_Click">首页</asp:LinkButton></td>
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
                    <asp:LinkButton ID="lbtn_zpfs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="12pt"
                        ForeColor="Black" Width="74px" Visible="False">自评分数</asp:LinkButton>&nbsp;
                    &nbsp;&nbsp;
                </td>
                <td style="background-image: url(./img/mht766(1).gif); width: 205px; height: 36px">
                    &nbsp;<asp:LinkButton ID="lbtn_commit" runat="server" Font-Bold="False" Font-Names="宋体"
                        Font-Size="12pt" ForeColor="Black" Width="71px" OnClick="lbtn_commit_Click">上报提交</asp:LinkButton>
                    <asp:LinkButton ID="lbtn_quit" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="12pt"
                        ForeColor="Black" Width="72px" OnClick="lbtn_quit_Click">安全退出</asp:LinkButton></td>
            </tr>
        </tbody>
    </table>
<TABLE height=406 cellSpacing=4 cellPadding=0 width=1003 align=center 
  border=0><TBODY>
  <TR>
    <TD vAlign=top bgColor=#e7f5f6 style="height: 398px; width: 53px;">
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD height=8><IMG height=1 src="./img/mht778(1).gif" 
          width=1></TD></TR></TBODY></TABLE>
    <TD vAlign=top style="height: 398px; width: 751px; font-family: 宋体;" ><!--
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
      <DIV align=center style="text-align: left">
      <TABLE cellSpacing=2 cellPadding=2 width="100%" align=center border=0>
        <TBODY>
        <TR>
          <TD colSpan=2 style="height: 522px; text-align: center" align="left" valign="top"><table id="Table1" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="border-collapse: collapse" width="100%">
              <tr>
                                      <td align="left" colspan="4" style="width: 461px; height: 18px; text-align: center;">
                                          <span style="font-size: 12pt">&nbsp;<asp:LinkButton ID="lbtn_1" runat="server" OnClick="lbtn_1_Click">第一页</asp:LinkButton>
                                              <asp:LinkButton ID="lbtn_2" runat="server" OnClick="lbtn_2_Click">第二页</asp:LinkButton>
                                              <asp:LinkButton ID="lbtn_3" runat="server" OnClick="lbtn_3_Click">第三页</asp:LinkButton>
                                              <asp:LinkButton ID="lbtn_4" runat="server" OnClick="lbtn_4_Click">第四页</asp:LinkButton>
                                              <asp:LinkButton ID="lbtn_5" runat="server" OnClick="lbtn_5_Click">第五页</asp:LinkButton>&nbsp;
                                          </span></td>
              </tr>
          </table>
            <TABLE cellSpacing=0 cellPadding=0 width="98%" align=center 
            bgColor=#ffffff border=0>
              <TBODY>
              <TR>
                <TD>
                  <TABLE cellSpacing=1 cellPadding=2 width="100%" 
                  bgColor=#ffffff border=0>
                    <TBODY>
                    <TR>
                      <TD valign="top" style="height: 316px"><!-- page_index begin //--><table id="Table1" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                          <tbody>
                              <tr align="middle" bgcolor="#d5eaff">
                                  <td align="left" colspan="4" style="width: 472px; height: 19px">
                                      <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                              <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                  特殊津贴人员审核表</span></span></span></td>
                              </tr>
                              <tr>
                                  <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                      <div align="center" style="text-align: left">
                                          <div align="center" style="text-align: left"><table id="Table21" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 10pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr>
                                      <td colspan="4" style="width: 486px; height: 227px" valign="top">
                                          <table id="Table20" border="0" cellpadding="0" cellspacing="2" style="height: 1px"
                                              width="700">
                                              <tr>
                                                  <td style="width: 74px; text-align: right; height: 23px;">
                                                      部门：</td>
                                                  <td style="width: 146px; height: 23px;">
                                                      <asp:TextBox ID="tbx_bm" runat="server" Width="160px" Enabled="False" ReadOnly="True">中国地震局</asp:TextBox>
                                                  </td>
                                                  <td style="width: 75px; text-align: right; height: 23px;">
                                                      类别：</td>
                                                  <td colspan="2" style="height: 23px">
                                                      <asp:DropDownList ID="ddlist_lb" runat="server" Width="160px" Enabled="False">
                                                          <asp:ListItem>享受政府特殊津贴</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; text-align: right; height: 23px;" id="TD1" runat="server" visible="false">
                                                      专家代码：</td>
                                                  <td style="width: 146px; height: 23px;" id="TD4" runat="server" visible="false">
                                                      <asp:TextBox ID="tbx_zjdm" runat="server" Width="160px"></asp:TextBox>
                                                  </td>
                                                  <td style="width: 75px; text-align: right; height: 23px;" id="TD2" runat="server" visible="false">
                                                      专家标识：</td>
                                                  <td colspan="2" style="height: 23px" id="TD3" runat="server" visible="false">
                                                      <asp:TextBox ID="tbx_zjbs" runat="server" Width="160px"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; text-align: right;">
                                                      姓名：</td>
                                                  <td style="width: 146px">
                                                      <asp:TextBox ID="tbx_Name" runat="server" Width="160px"></asp:TextBox>
                                                  </td>
                                                  <td style="width: 75px; text-align: right">
                                                      出生日期：</td>
                                                  <td colspan="2">
                                                      <input id="txt_csrq" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 160px;"
                                                          type="text" /></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      性别：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_xb" runat="server" Width="160px">
                                                          <asp:ListItem>男</asp:ListItem>
                                                          <asp:ListItem>女</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      出生地：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_csd" runat="server" Width="160px"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      <span>
                                                      政治面貌：</span></td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_zzmm" runat="server" Width="161px">
                                                          <asp:ListItem>中共党员</asp:ListItem>
                                                          <asp:ListItem>共青团员</asp:ListItem>
                                                          <asp:ListItem>群众</asp:ListItem>
                                                          <asp:ListItem>民主党派</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      <span>
                                                      民族：</span></td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_mz" runat="server" Width="160px">
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      文化程度：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_whcd" runat="server" Width="160px">
                                                          <asp:ListItem>博士研究生</asp:ListItem>
                                                          <asp:ListItem>硕士研究生</asp:ListItem>
                                                          <asp:ListItem>大学本科</asp:ListItem>
                                                          <asp:ListItem>大学专科</asp:ListItem>
                                                          <asp:ListItem>大学普通班</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      学位：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_xw" runat="server" Width="160px">
                                                          <asp:ListItem>博士学位</asp:ListItem>
                                                          <asp:ListItem>硕士学位</asp:ListItem>
                                                          <asp:ListItem>学士学位</asp:ListItem>
                                                          <asp:ListItem>无</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      毕业时间：</td>
                                                  <td style="width: 146px; height: 21px"><input id="txt_bysj" runat="server" name="s1" onfocus="calendar_date()" style="font-size: 9pt; width: 160px;"
                                                          type="text" onserverchange="txt_bysj_ServerChange" /></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      毕业学校：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_byxx" runat="server" Width="285px" OnTextChanged="lbtn_commit_Click"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      所学专业：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:TextBox ID="tbx_sxzy" runat="server" Width="160px"></asp:TextBox></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      <span>
                                                      从事专业：</span></td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_cszy" runat="server" Width="285px"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      技术职称：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_jszc" runat="server" Font-Names="宋体"
                                                          Font-Size="9pt" Width="159px">
                                                          <asp:ListItem>研究员</asp:ListItem>
                                                          <asp:ListItem Selected="True">正研级高级工程师</asp:ListItem>
                                                          <asp:ListItem>副研究员</asp:ListItem>
                                                          <asp:ListItem>高级工程师</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      工作单位：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_gzdw" runat="server" Width="285px" ReadOnly="True"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      工作时间：</td>
                                                  <td style="width: 146px; height: 21px"><input id="txt_gzsj" runat="server" name="s1" onfocus="calendar_date()" style="font-size: 9pt; width: 160px;"
                                                          type="text" /></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      <span>
                                                      单位类别：</span></td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_dwlb" runat="server" Width="160px">
                                                          <asp:ListItem>企业</asp:ListItem>
                                                          <asp:ListItem>事业</asp:ListItem>
                                                          <asp:ListItem>机关（党政军群）</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      <span>
                                                      单位性质：</span></td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_dwxz" runat="server" Width="161px">
                                                          <asp:ListItem>全民</asp:ListItem>
                                                          <asp:ListItem>集体</asp:ListItem>
                                                          <asp:ListItem>个体</asp:ListItem>
                                                          <asp:ListItem>合资</asp:ListItem>
                                                          <asp:ListItem>外资</asp:ListItem>
                                                          <asp:ListItem>其它</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      在岗状态：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_zgzt" runat="server" Width="160px">
                                                          <asp:ListItem>一线应聘</asp:ListItem>
                                                          <asp:ListItem>退居二线但未离退</asp:ListItem>
                                                          <asp:ListItem>已办理退休手续</asp:ListItem>
                                                          <asp:ListItem>已办理离休手续</asp:ListItem>
                                                          <asp:ListItem>离退休后被返聘</asp:ListItem>
                                                          <asp:ListItem>停薪留职</asp:ListItem>
                                                          <asp:ListItem>已退职</asp:ListItem>
                                                          <asp:ListItem>已去世</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      <span>
                                                      行政职务：</span></td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_xzzw" runat="server" Width="161px">
                                                          <asp:ListItem>无</asp:ListItem>
                                                          <asp:ListItem>处长</asp:ListItem>
                                                          <asp:ListItem>副处长</asp:ListItem>
                                                          <asp:ListItem>所长</asp:ListItem>
                                                          <asp:ListItem>副所长</asp:ListItem>
                                                          <asp:ListItem>院长</asp:ListItem>
                                                          <asp:ListItem>副院长</asp:ListItem>
                                                          <asp:ListItem>主任</asp:ListItem>
                                                          <asp:ListItem>副主任</asp:ListItem>
                                                          <asp:ListItem>总工程师</asp:ListItem>
                                                          <asp:ListItem>副总工程师</asp:ListItem>
                                                          <asp:ListItem>室主任</asp:ListItem>
                                                          <asp:ListItem>室副主任</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      行政级别：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_xzjb" runat="server" Width="160px">
                                                          <asp:ListItem>无</asp:ListItem>
                                                          <asp:ListItem>单项副部</asp:ListItem>
                                                          <asp:ListItem>正厅局级</asp:ListItem>
                                                          <asp:ListItem>副厅局级</asp:ListItem>
                                                          <asp:ListItem>正县处级</asp:ListItem>
                                                          <asp:ListItem>副县处级</asp:ListItem>
                                                          <asp:ListItem>正乡科级</asp:ListItem>
                                                          <asp:ListItem>副乡科级</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      <span>
                                                      工改前级别：</span></td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_ggqjb" runat="server" Width="161px">
                                                          <asp:ListItem>无</asp:ListItem>
                                                          <asp:ListItem>科研</asp:ListItem>
                                                          <asp:ListItem>高教</asp:ListItem>
                                                          <asp:ListItem>工程</asp:ListItem>
                                                          <asp:ListItem>技术</asp:ListItem>
                                                          <asp:ListItem>卫生一级</asp:ListItem>
                                                          <asp:ListItem>卫生二级</asp:ListItem>
                                                          <asp:ListItem>卫生三级</asp:ListItem>
                                                          <asp:ListItem>卫生四级</asp:ListItem>
                                                          <asp:ListItem>文艺一级</asp:ListItem>
                                                          <asp:ListItem>文艺二级</asp:ListItem>
                                                          <asp:ListItem>文艺三级</asp:ListItem>
                                                          <asp:ListItem>文艺四级</asp:ListItem>
                                                          <asp:ListItem>文艺五级</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      归口行业：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_gkhy" runat="server" Width="160px">
                                                          <asp:ListItem>自然科学研究</asp:ListItem>
                                                          <asp:ListItem>社会科学研究</asp:ListItem>
                                                          <asp:ListItem>自然科学教学</asp:ListItem>
                                                          <asp:ListItem>社会科学教学</asp:ListItem>
                                                          <asp:ListItem>工程技术</asp:ListItem>
                                                          <asp:ListItem>文化艺术</asp:ListItem>
                                                          <asp:ListItem>农业技术</asp:ListItem>
                                                          <asp:ListItem>新闻出版</asp:ListItem>
                                                          <asp:ListItem>医疗卫生</asp:ListItem>
                                                          <asp:ListItem>社会科学其它</asp:ListItem>
                                                          <asp:ListItem>自然科学其它</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      联系电话：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:TextBox ID="tbx_lxdh" runat="server" Width="160px"></asp:TextBox></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      邮政编码：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_yzbm" runat="server" Width="160px"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      院士：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_ys" runat="server" Width="161px">
                                                          <asp:ListItem>否</asp:ListItem>
                                                          <asp:ListItem>科学院院士</asp:ListItem>
                                                          <asp:ListItem>工程院院士</asp:ListItem>
                                                          <asp:ListItem>两院院士</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right" id="TD5" runat="server" visible="false">
                                                      跟踪标记：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_gzbj" runat="server" Width="285px" Visible="False"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      特贴年份：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_ttnf" runat="server" Width="161px" Enabled="False">
                                                          <asp:ListItem>无</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      特贴金额：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_ttje" runat="server" Width="285px" Enabled="False" ReadOnly="True">无</asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      突贡年份：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_tgnf" runat="server" Width="161px">
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      省部年份：</td>
                                                  <td colspan="2" style="height: 21px"><asp:DropDownList ID="ddlist_sbnf" runat="server" Width="161px">
                                                  </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      回国年份：</td>
                                                  <td style="width: 146px; height: 21px"><asp:DropDownList ID="ddlist_hgnf" runat="server" Width="161px">
                                                  </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      何处归来：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:TextBox ID="tbx_hcgl" runat="server" Width="285px"></asp:TextBox></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      来华津贴：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:TextBox ID="tbx_lhjt" runat="server" Width="160px"></asp:TextBox></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      博导年份：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddlist_bdnf" runat="server" Width="160px">
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 74px; height: 21px; text-align: right;">
                                                      进博站年：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddlist_jbzn" runat="server" Width="161px">
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                  </td>
                                                  <td colspan="2" style="height: 21px"></td>
                                              </tr>
                                          </table>
                                          </td>
                                  </tr>
                              </tbody>
                          </table>
                                          </div>
                                      </div>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              <span style="font-size: 14pt; font-family: 黑体; mso-bidi-font-size: 12.0pt; mso-ascii-font-family: 'Times New Roman'">
                                              </span>
                                          </p>
                                          <div align="center" style="text-align: left"><span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                              <table style="width: 715px">
                                                  <tr>
                                                      <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                          第1页</td>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                                  <tr>
                                                  </tr>
                                              </table>
                                          </span></div>
                                  </td>
                              </tr>
                          </tbody>
                      </table>
                      <table id="Table2" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 19px; text-align: left">
                                          <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                                  <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                      <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                          mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                          mso-bidi-language: AR-SA">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                          </p>
                                                          主要专业工作经历
                                                      </span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; text-align: left" valign="top">
                                          <div align="center" style="text-align: left">
                                              <table style="width: 591px">
                                                  <tr>
                                                      <td style="height: 16px">
                                                          <ftb:FreeTextBox ID="ftb2_1" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                              Height="200px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                              Width="660px">
                                                          </ftb:FreeTextBox>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td>
                                                          &nbsp;</td>
                                                  </tr>
                                              </table>
                                              <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                  <table style="width: 715px">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                              第2页</td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                              </span>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          
                          <table id="Table3" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 19px; text-align: left">
                                          <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                                  <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                      <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                          mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                          mso-bidi-language: AR-SA">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                          </p>
                                                              <span style="font-size: 12pt"><span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman';
                                                                  mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">获奖情况</span></span></span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  <asp:GridView ID="gv_hjqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                      BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                      Height="1px" Width="713px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing">
                                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                      <Columns>
                                                          <asp:TemplateField HeaderText="序号">
                                                              <ItemTemplate>
                                                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                  <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                              </ItemTemplate>
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:TemplateField>
                                                          <asp:BoundField DataField="jlzl" HeaderText="奖励种类">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="hjxm" HeaderText="获奖项目">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="jldj" HeaderText="奖励等级">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="pm" HeaderText="排名">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="nd" HeaderText="年度">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
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
                                                                  <asp:LinkButton ID="lbtn_edit" runat="server" CausesValidation="False" CommandName="Edit"
                                                                      Text="编辑"></asp:LinkButton>
                                                                  <asp:LinkButton ID="lbtn_del" runat="server" CausesValidation="False" CommandName="Delete"
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
                                                  &nbsp;</div>
                                          </div>
                                          <div align="center" style="text-align: left">
                                              <table style="width: 591px; font-family: 宋体">
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          年度：</td>
                                                      <td style="height: 16px">
                                                          <asp:DropDownList ID="ddlist3_nd" runat="server" Width="92px">
                                                          </asp:DropDownList><asp:TextBox ID="tbx3_nd" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px" Visible="False"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          奖励种类：</td>
                                                      <td style="height: 16px">
                                                          <asp:DropDownList ID="ddlist3_jlzl" runat="server" Width="275px">
                                                              <asp:ListItem>国家自然科学奖</asp:ListItem>
                                                              <asp:ListItem>国家发明奖</asp:ListItem>
                                                              <asp:ListItem>国家科技进步奖</asp:ListItem>
                                                              <asp:ListItem>省部级奖</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          获奖项目：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx3_hjxm" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; text-align: right">
                                                          奖励等级：</td>
                                                      <td>
                                                          <asp:DropDownList ID="ddlist3_jldj" runat="server" Width="53px">
                                                              <asp:ListItem>0</asp:ListItem>
                                                              <asp:ListItem>1</asp:ListItem>
                                                              <asp:ListItem>2</asp:ListItem>
                                                              <asp:ListItem>3</asp:ListItem>
                                                              <asp:ListItem>9</asp:ListItem>
                                                          </asp:DropDownList><asp:TextBox ID="tbx3_jldj" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px" Visible="False"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; text-align: right">
                                                          排名：&nbsp;</td>
                                                      <td>
                                                          <asp:TextBox ID="tbx3_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                              ID="RangeValidator1" runat="server" ControlToValidate="tbx3_pm" ErrorMessage="提示：应为数字"
                                                              Font-Names="宋体" Font-Size="9pt" MaximumValue="15" MinimumValue="0" Type="Double"></asp:RangeValidator></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px">
                                                      </td>
                                                      <td>
                                                      </td>
                                                  </tr>
                                              </table>
                                              <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                  <table style="width: 715px">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                              第3页</td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                              </span>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <table id="Table4" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 19px">
                                          <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                                  <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                      专业水平情况</span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  &nbsp;</div>
                                          </div><div align="center" style="text-align: left">
                                              <table style="width: 591px; font-family: 宋体">
                                                  <tr>
                                                      <td style="height: 16px; text-align: left" colspan="2">
                                                          主要突出贡献事迹：</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="text-align: left" colspan="2">
                                                          <ftb:FreeTextBox ID="ftb4_1" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                              Height="200px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                              Width="660px">
                                                          </ftb:FreeTextBox>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          代表论文和著作：&nbsp;</td>
                                                  </tr>
                                                  <tr>
                                                      <td style="text-align: left" colspan="2">
                                                          <ftb:FreeTextBox ID="ftb4_2" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                              Height="200px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                              Width="660px">
                                                          </ftb:FreeTextBox>
                                                      </td>
                                                  </tr>
                                                  <tr>
                                                      <td style="text-align: left" colspan="2">
                                                          最新成果：</td>
                                                  </tr>
                                                  <tr>
                                                      <td colspan="2">
                                                          <ftb:FreeTextBox ID="ftb4_3" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                                                              Height="200px" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                              Width="660px">
                                                          </ftb:FreeTextBox>
                                                      </td>
                                                  </tr>
                                              </table>
                                              <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                  <table style="width: 715px">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                              第4页</td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                              </span>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <!-- page_index end //--><table id="Table5" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr align="middle" bgcolor="#d5eaff">
                                      <td align="left" colspan="4" style="width: 472px; height: 19px; text-align: left">
                                          <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                                  <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                      <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                          mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                          mso-bidi-language: AR-SA">
                                                          <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                              text-align: left; mso-line-height-rule: exactly">
                                                          </p>
                                                          <span style="font-size: 12pt"><span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman';
                                                                  mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">考核情况</span></span></span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  <asp:GridView ID="gv_khqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                      BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                      Height="1px" Width="713px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing">
                                                      <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                      <Columns>
                                                          <asp:TemplateField HeaderText="序号">
                                                              <ItemTemplate>
                                                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                  <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                              </ItemTemplate>
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                          </asp:TemplateField>
                                                          <asp:BoundField DataField="khnd" HeaderText="考核年度">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="khnr" HeaderText="考核内容">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="khjl" HeaderText="考核结论">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                              <EditItemTemplate>
                                                                  <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                      Text="更新"></asp:LinkButton>
                                                                  <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                      Text="取消"></asp:LinkButton>
                                                              </EditItemTemplate>
                                                              <ItemTemplate>
                                                                  <asp:LinkButton ID="lbtn_edit" runat="server" CausesValidation="False" CommandName="Edit"
                                                                      Text="编辑"></asp:LinkButton>
                                                                  <asp:LinkButton ID="lbtn_del" runat="server" CausesValidation="False" CommandName="Delete"
                                                                      Text="删除"></asp:LinkButton>
                                                              </ItemTemplate>
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                          </asp:TemplateField>
                                                      </Columns>
                                                      <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                      <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                      <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                      <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                      <AlternatingRowStyle BackColor="#F7F7F7" />
                                                  </asp:GridView>
                                                  &nbsp;</div>
                                          </div>
                                          <div align="center" style="text-align: left">
                                              <table style="width: 591px; font-family: 宋体">
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          考核年度：</td>
                                                      <td style="height: 16px">
                                                          <asp:DropDownList ID="ddlist5_khnd" runat="server" Width="92px">
                                                          </asp:DropDownList><asp:TextBox ID="tbx5_khnd" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                              Visible="False" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          考核内容：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx5_khnr" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          考核结论：</td>
                                                      <td style="height: 16px">
                                                          <asp:DropDownList ID="ddlist5_khjl" runat="server" Width="92px">
                                                              <asp:ListItem>优秀</asp:ListItem>
                                                              <asp:ListItem>良好</asp:ListItem>
                                                              <asp:ListItem>合格</asp:ListItem>
                                                              <asp:ListItem>不合格</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px">
                                                      </td>
                                                      <td>
                                                      </td>
                                                  </tr>
                                              </table>
                                              <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                  <table style="width: 715px">
                                                      <tr>
                                                          <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                              第5页</td>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                      <tr>
                                                      </tr>
                                                  </table>
                                              </span>
                                          </div>
                                      </td>
                                  </tr>
                              </tbody>
                          </table>
                          <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE> <asp:ImageButton ID="imgbtn_save" runat="server" ImageUrl="./img/mht793(1).gif" OnClick="imgbtn_save_Click" />&nbsp;
              &nbsp;<asp:ImageButton ID="imgbtn_SaveNext" runat="server" ImageUrl="./img/savenext.gif"
              OnClick="imgbtn_SaveNext_Click" />
          &nbsp;&nbsp;
          <asp:ImageButton ID="imgbtn_quit" runat="server" ImageUrl="./img/quit.gif"
              OnClick="imgbtn_quit_Click" Visible="False" /></TD></TR></TBODY></TABLE>
      <P style="text-align: center"><A 
      onmouseover="MM_swapImage('Image_back','','images/new_images/btn_fanhui_blue.gif',1)" 
      onmouseout=MM_swapImgRestore() href="javascript:history.back()"></A> &nbsp; &nbsp; &nbsp;
      </P></DIV></TD>
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

