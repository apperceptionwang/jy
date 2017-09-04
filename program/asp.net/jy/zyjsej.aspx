<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zyjsej.aspx.cs" Inherits="zyjsej" %>

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
    .MsoNormal
    {
        width: 577px;
    }
    .style1
    {
        width: 69px;
        height: 7px;
    }
    .style2
    {
        width: 146px;
        height: 7px;
    }
    .style3
    {
        height: 7px;
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
                    <asp:LinkButton ID="lbtn_PrintPreview" runat="server" Font-Bold="False" Font-Names="宋体"
                        Font-Size="12pt" ForeColor="Black" OnClick="lbtn_PrintPreview_Click" Width="74px">打印预览</asp:LinkButton>
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
                                              <asp:LinkButton ID="lbtn_5" runat="server" OnClick="lbtn_5_Click">第五页</asp:LinkButton>
                                              <asp:LinkButton ID="lbtn_6" runat="server" OnClick="lbtn_6_Click">第六页</asp:LinkButton>
                                              <asp:LinkButton ID="lbtn_7" runat="server" OnClick="lbtn_7_Click">第七页</asp:LinkButton></span></td>
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
                      <TD valign="top" style="height: 316px"><!-- page_index begin //-->
                          <table id="Table122" runat="server" align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                          <tbody>
                              <tr align="middle" bgcolor="#d5eaff">
                                  <td align="left" colspan="4" style="width: 472px; height: 19px">
                                      <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                              <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">专业技术二级岗位审核表</span></span></span></td>
                              </tr>
                              <tr>
                                  <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                      <div align="center" style="text-align: left">
                                          <div align="center" style="text-align: left"><table id="Table1" runat="server" 
                                                  align="center" border="1" bordercolor="#808080"
                              cellpadding="1" style="font-size: 10pt; font-family: 宋体; border-collapse: collapse"
                              width="100%">
                              <tbody>
                                  <tr>
                                      <td colspan="4" style="width: 486px; height: 227px" valign="top">
                                          <table id="Table20" border="0" cellpadding="0" cellspacing="2" style="height: 1px"
                                              width="700">
                                              <tr>
                                                  <td style="width: 69px; text-align: right;">
                                                      姓名：</td>
                                                  <td style="width: 146px">
                                                      <asp:TextBox ID="tbx_Name" runat="server" Width="160px"></asp:TextBox>
                                                  </td>
                                                  <td style="width: 75px; text-align: right">
                                                      出生年月：</td>
                                                  <td colspan="2">
                                                      <input id="txt_csny" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt; width: 160px;"
                                                          type="text" /></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 69px; height: 21px; text-align: right;">
                                                      性别：</td>
                                                  <td style="width: 146px; height: 21px">
                                                      <asp:DropDownList ID="ddl_xb" runat="server" Width="39px">
                                                          <asp:ListItem>男</asp:ListItem>
                                                          <asp:ListItem>女</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="width: 75px; height: 21px; text-align: right">
                                                      最高学历：</td>
                                                  <td colspan="2" style="height: 21px">
                                                      <asp:DropDownList ID="ddl_xl" runat="server" Width="160px">
                                                          <asp:ListItem>博士研究生</asp:ListItem>
                                                          <asp:ListItem>硕士研究生</asp:ListItem>
                                                          <asp:ListItem>大学本科</asp:ListItem>
                                                          <asp:ListItem>大学专科</asp:ListItem>
                                                          <asp:ListItem>大学普通班</asp:ListItem>
                                                      </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 69px; height: 22px; text-align: right;">
                                                      最高学位：</td>
                                                  <td style="height: 22px; width: 146px;">
                                                      <asp:DropDownList ID="ddl_xw" runat="server" Width="160px">
                                                          <asp:ListItem>博士学位</asp:ListItem>
                                                          <asp:ListItem>硕士学位</asp:ListItem>
                                                          <asp:ListItem>学士学位</asp:ListItem>
                                                          <asp:ListItem>无</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td style="height: 22px; width: 75px; text-align: right;">
                                                      现任岗位：</td>
                                                  <td style="height: 22px" width="141">
                                                      <asp:DropDownList ID="ddl_xrgw" runat="server" Width="160px">
                                                          <asp:ListItem Value="研究员">研究员</asp:ListItem>
                                                          <asp:ListItem Value="正研级高工">正研级高工</asp:ListItem>
                                                          <asp:ListItem>教授</asp:ListItem>
                                                      </asp:DropDownList></td>
                                                  <td rowspan="3" width="194">
                                                      <p align="center">
                                                          <img id="img_Photo" runat="server" height="180" name="film_pic" style="display: none"
                                                              width="140" />&nbsp;</p>
                                                  </td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 69px; text-align: right;">
                                                      资格时间：</td>
                                                  <td style="width: 146px">
                                                      <input id="txt_zgsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt;
                                                          width: 160px; height: 21px" type="text" /></td>
                                                  <td style="width: 75px; text-align: right">
                                                      聘任时间：</td>
                                                  <td width="141">
                                                      <input id="txt_prsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt;
                                                          width: 160px" type="text" /></td>
                                              </tr>
                                              <tr>
                                                  <td style="width: 69px; text-align: right;">
                                                              岗位系列：</td>
                                                  <td style="width: 146px">
                                                              <asp:DropDownList ID="ddl_gwxl" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                  Width="160px">
                                                                  <asp:ListItem>科研系列</asp:ListItem>
                                                                  <asp:ListItem>工程系列</asp:ListItem>
                                                              </asp:DropDownList></td>
                                                  <td style="width: 75px; text-align: right">
                                                              单位：</td>
                                                  <td width="141">
                                                              <asp:DropDownList ID="ddl_dw" runat="server" Font-Names="宋体"
                                                                  Font-Size="9pt" Width="160px">
                                                              </asp:DropDownList></td>
                                              </tr>
                                              <tr>
                                                  <td style="text-align: right; " class="style1">
                                                      学科方向：</td>
                                                  <td class="style2"><asp:DropDownList ID="ddl_xkfx" runat="server" AutoPostBack="True" Font-Names="宋体"
                                                                  Font-Size="9pt" Width="160px" OnSelectedIndexChanged="ddl_xkfx_SelectedIndexChanged">
                                                  </asp:DropDownList></td>
                                                  <td style="text-align: left; " colspan="2" class="style3">
                                                      <asp:TextBox ID="tbx_xkfx" runat="server" Width="235px"></asp:TextBox></td>
                                              </tr>
                                          </table>
                                          <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txt_prsj"
                                              ControlToValidate="txt_zgsj" ErrorMessage="聘任时间不应在资格时间之前" Operator="LessThanEqual"></asp:CompareValidator>
                                                                                                                <br />
                                                                                                                <span style="font-size:12.0pt;mso-bidi-font-size:10.0pt;
font-family:仿宋_GB2312;mso-hansi-font-family:&quot;Times New Roman&quot;;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">主要工作业绩<span style="font-size:12.0pt;mso-bidi-font-size:
10.0pt;font-family:仿宋_GB2312"><br />
                                                                                                                <asp:Label ID="Label2" runat="server" 
                                                                                                                    
                                              Text="（根据专业技术二级岗位任职条件，简述在科学研究或工程技术方面取得的主要学术成绩和重要贡献以及在人才培养、团队建设等方面的相关情况，限600字）"></asp:Label>
                                                                                                                </span></span>
                                                          <asp:TextBox ID="tbx_gzjj" runat="server" Font-Names="宋体" Font-Size="9pt" Height="71px"
                                                              TextMode="MultiLine" Width="584px"></asp:TextBox>
                                          <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                              text-align: left; mso-line-height-rule: exactly">
                                              &nbsp;</p>
                                                                                                            </td>
                                  </tr>
                              </tbody>
                          </table>
                                          </div>
                                      </div>
                                          <div align="center" style="text-align: left"><span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                              <table style="width: 715px">
                                                  <tr>
                                                      <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                          第1页                            </span>
                                          </p>
                                          
                                  </td>
                              </tr>
                          </tbody>
                      </table>
                          <table id="Table2" runat="server" align="center" border="1" bordercolor="#808080"
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
                                                      承担项目情况（最多填五项，任现职期间的排在前面）</span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  <asp:GridView ID="gv_cdxmqk" runat="server" AutoGenerateColumns="False" BackColor="White"
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
                                                          <asp:ButtonField CommandName="edit" DataTextField="xmmc" HeaderText="项目名称" Text="下载">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:ButtonField>
                                                          <asp:BoundField DataField="xmlb" HeaderText="项目类别">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="xmjf" HeaderText="项目经费">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="brjs" HeaderText="本人角色">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:HyperLinkField DataTextField="qzsj" HeaderText="起止时间">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:HyperLinkField>
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
                                          </div><div align="center" style="text-align: left">
                                              <table style="width: 591px; font-family: 宋体">
                                                  <tr>
                                                      <td style="width: 122px; height: 16px; text-align: right">
                                                          项目名称：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx2_xmmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 122px; text-align: right">
                                                          项目类别：</td>
                                                      <td>
                                                          <asp:DropDownList ID="ddl2_xmlb" runat="server" AutoPostBack="True" Width="440px" Visible="False">
                                                          </asp:DropDownList>
                                                          <asp:TextBox ID="tbx2_xmlb" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 122px; text-align: right">
                                                          项目经费（万元）：&nbsp;</td>
                                                      <td>
                                                          <asp:TextBox ID="tbx2_xmjf" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                              ID="RangeValidator2" runat="server" ControlToValidate="tbx2_xmjf" ErrorMessage="提示：应为数字，最大为100000"
                                                              Font-Names="宋体" Font-Size="9pt" MaximumValue="100000" MinimumValue="0" SetFocusOnError="True"
                                                              Type="Double"></asp:RangeValidator></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 122px; text-align: right">
                                                          本人角色：&nbsp;</td>
                                                      <td>
                                                          <asp:DropDownList ID="ddl2_brjs" runat="server" Width="132px">
                                                              <asp:ListItem>负责</asp:ListItem>
                                                              <asp:ListItem>参加</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 122px; text-align: right">
                                                          起止时间（年、月）：
                                                      </td>
                                                      <td>
                                                          <input id="txt2_1" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                              type="text" />～<input id="txt2_2" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                                  type="text" /><asp:TextBox ID="tbx2_qzsj" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                      Visible="False"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 122px">
                                                      </td>
                                                      <td>
                                                      </td>
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
                                      <td align="left" colspan="4" style="width: 472px; height: 19px">
                                          <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                              mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                              mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                                  <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                      <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                          mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                          mso-bidi-language: AR-SA">代表性论著情况（最多填五篇，任现职期间的排在前面）</span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  <asp:GridView ID="gv_dbxlz" runat="server" AutoGenerateColumns="False" BackColor="White"
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
                                                          <asp:ButtonField CommandName="edit" DataTextField="tm" HeaderText="题目" Text="下载">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:ButtonField>
                                                          <asp:BoundField DataField="fbsj" HeaderText="发表时间">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="kwmc" HeaderText="刊物/出版社名称">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="brpm" HeaderText="本人排名">
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
                                                      <td style="width: 109px; height: 16px; text-align: right">
                                                          题目：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx3_tm" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 109px; text-align: right">
                                                          发表时间：</td>
                                                      <td><input id="txt3" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                              type="text" /></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 109px; text-align: right">
                                                          刊物/出版社名称：&nbsp;</td>
                                                      <td>
                                                          <asp:TextBox ID="tbx3_kwmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="276px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 109px; text-align: right">
                                                          本人排名：&nbsp;</td>
                                                      <td>
                                                          <asp:TextBox ID="tbx3_brpm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                              ID="RangeValidator5" runat="server" ControlToValidate="tbx3_brpm" ErrorMessage="提示：应为数字"
                                                              Font-Names="宋体" Font-Size="9pt" MaximumValue="20" MinimumValue="0" Type="Double"></asp:RangeValidator></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 109px">
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
                                                              <span style="font-size: 12pt">
                                                                  <asp:Label ID="Label1" runat="server" Font-Names="宋体" Font-Size="12pt" Text="专利与成果转化情况（成果转化包括发明专利、软件著作权登记、技术标准和技术转移等）" Width="715px"></asp:Label></span><span><span style="font-size: 10pt"><span
                                                                  lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office" prefix="o" ?><o:p></o:p></span></span></span></p>
                                                          <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                              mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                              mso-bidi-language: AR-SA">（限五项，任现职期间的排在前面）</span></span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  <asp:GridView ID="gv_zl" runat="server" AutoGenerateColumns="False" BackColor="White"
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
                                                          <asp:ButtonField CommandName="edit" DataTextField="zlmc" HeaderText="专利名称" Text="下载">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:ButtonField>
                                                          <asp:BoundField DataField="zhjg" HeaderText="转化结果、意义及评价">
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
                                                      <td style="width: 135px; height: 16px; text-align: right">
                                                          专利名称：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx4_zlmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px; height: 36px; text-align: right">
                                                          转化结果、意义及评价：</td>
                                                      <td style="height: 36px">
                                                          <asp:TextBox ID="tbx4_zhjg" runat="server" Font-Names="宋体" Font-Size="9pt" Height="51px"
                                                              TextMode="MultiLine" Width="445px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 135px">
                                                      </td>
                                                      <td>
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
                          <table id="Table5" runat="server" align="center" border="1" bordercolor="#808080"
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
                                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">获奖情况（最多填五项，任现职期间的排在前面）</span></span><span
                                                                      style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                      mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                      mso-bidi-language: AR-SA"></span>
                                                      </span></span></span></span></td>
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
                                                          <asp:BoundField DataField="nd" HeaderText="年度">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="jlzl" HeaderText="奖励种类">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="hjcgmc" HeaderText="获奖成果名称">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="jldj" HeaderText="奖励等级">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="pm" HeaderText="排名">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
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
                                                          <asp:DropDownList ID="ddl5_nd" runat="server" Width="92px">
                                                          </asp:DropDownList>
                                                          <asp:TextBox ID="tbx5_nd" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px" Visible="False"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          奖励种类：</td>
                                                      <td style="height: 16px">
                                                          <asp:DropDownList ID="ddl5_jlzl" runat="server" Width="275px">
                                                              <asp:ListItem>国家级奖</asp:ListItem>
                                                              <asp:ListItem>省部级奖</asp:ListItem>
                                                              <asp:ListItem>中国地震局防震减灾优秀成果奖</asp:ListItem>
                                                          </asp:DropDownList></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          获奖成果名称：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx5_hjcgmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; text-align: right">
                                                          奖励等级：</td>
                                                      <td>
                                                          <asp:DropDownList ID="ddl5_jldj" runat="server" Width="89px">
                                                              <asp:ListItem>1</asp:ListItem>
                                                              <asp:ListItem>2</asp:ListItem>
                                                              <asp:ListItem>3</asp:ListItem>
                                                              <asp:ListItem>特等奖</asp:ListItem>
                                                          </asp:DropDownList>
                                                          <asp:TextBox ID="tbx5_jldj" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px" Visible="False"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; text-align: right">
                                                          排名：&nbsp;</td>
                                                      <td>
                                                          <asp:TextBox ID="tbx5_pm" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:RangeValidator
                                                              ID="RangeValidator1" runat="server" ControlToValidate="tbx5_pm" ErrorMessage="提示：应为数字"
                                                              Font-Names="宋体" Font-Size="9pt" MaximumValue="100" MinimumValue="0" Type="Double"></asp:RangeValidator></td>
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
                          <table id="Table6" runat="server" align="center" border="1" bordercolor="#808080"
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
                                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt;
                                                                      mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                      国内外学术任职情况（最多填五项，任现职期间的排在前面）</span></span></span>
                                                      </span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                          <div align="center" style="text-align: left">
                                              <div align="center" style="text-align: left">
                                                  <asp:GridView ID="gv_xsrzqk" runat="server" AutoGenerateColumns="False" BackColor="White"
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
                                                          <asp:BoundField DataField="rzzzmc" HeaderText="任职组织名称">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="drzw" HeaderText="担任职务">
                                                              <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                              <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                          </asp:BoundField>
                                                          <asp:BoundField DataField="rzqzsj" HeaderText="任职起止时间">
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
                                                          任职组织名称：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx6_rzzzmc" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; height: 16px; text-align: right">
                                                          担任职务：</td>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx6_drzw" runat="server" Font-Names="宋体" Font-Size="9pt" Width="277px"></asp:TextBox></td>
                                                  </tr>
                                                  <tr>
                                                      <td style="width: 85px; text-align: right">
                                                          任职起止时间：
                                                      </td>
                                                      <td>
                                                          <input id="txt6_1" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                              type="text" />～<input id="txt6_2" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                                                  type="text" /><asp:TextBox ID="tbx6_qzsj" runat="server" Font-Names="宋体" Font-Size="9pt"
                                                                      Visible="False"></asp:TextBox></td>
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
                                                              第6页</td>
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
                          <table id="Table7" runat="server" align="center" border="1" bordercolor="#808080"
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
                                                                  mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt;
                                                                      mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                      mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                      <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                          mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                          mso-bidi-language: AR-SA">其他需要说明的问题</span></span></span></span>
                                                      </span></span></span></span></td>
                                  </tr>
                                  <tr>
                                      <td colspan="4" style="width: 472px; text-align: left" valign="top">
                                          <div align="center" style="text-align: left">
                                              <table style="width: 591px">
                                                  <tr>
                                                      <td style="height: 16px">
                                                          <asp:TextBox ID="tbx7_qtwt" runat="server" Font-Names="宋体" Font-Size="9pt" Height="71px"
                                                              TextMode="MultiLine" Width="584px"></asp:TextBox></td>
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
                                                              第7页</td>
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
                          <!-- page_index end //-->
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

