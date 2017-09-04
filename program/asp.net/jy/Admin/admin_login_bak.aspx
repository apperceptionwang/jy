<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_login_bak.aspx.cs" Inherits="Admin_admin_login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>
<HEAD>
<TITLE>后台管理-登陆</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<script language="JavaScript" type="text/JavaScript" src="Include/SoftKeyBoard.js"></script>
<link href="Include/Admin_Style.CSS" rel="stylesheet" type="text/css">
<STYLE>
body {font-family: "宋体";font-size: 12px;text-decoration: none;}
td {font-size: 12px;color: #666666;text-decoration: none;line-height: 18px;font-family: "宋体";}
.S1{
font-family: "宋体"; 
font-weight: bold; 
color: #ffffff; 
font-size:16px;
text-decoration: none}
</STYLE>
</head>
<body bgcolor="#FFFFFF" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form id="Form1" method="post" runat="server">
<br>
<br>
<br>
<table width="646" height="425" border="0" align="center" cellpadding="0" cellspacing="0" id="__01">
	<tr>
		<td colspan="3">
			<img src="images/login_01.gif" width="646" height="114" alt="" id="IMG1" runat="server"></td>
	</tr>
	<tr>
		<td>
			<img src="images/login_02.gif" width="88" height="311" alt=""></td>
	  <td width="476" height="311" valign="top" background="images/login_03.gif" style="text-align: center">
          &nbsp;
          <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label><br>
		         
		      <table width="80%" border="0" align="center" cellpadding="0" cellspacing="0">
                  <tr>
                      <td width="87" height="30" align="right">
          <asp:Label ID="lbl_leixing" runat="server" Text="申报专业技术职务：" Width="115px" Visible="False"></asp:Label></td>
                      <td valign="middle" style="text-align: left">
          <asp:DropDownList ID="ddlist_leixing" runat="server" Width="155px" Visible="False">
              <asp:ListItem>研究员</asp:ListItem>
              <asp:ListItem>正研级高级工程师</asp:ListItem>
          </asp:DropDownList></td>
                  </tr>
          <tr>
            <td width="87" align="right" style="height: 30px; text-align: right;">登录名：</td>
            <td valign="middle" style="text-align: left; height: 30px;">                
                <asp:TextBox ID="tbx_UserName" runat="server" Height="16px" Width="150px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox><asp:Label
                    ID="lbl_shuoming" runat="server" Text="(登录名为身份证号)" Visible="False"></asp:Label></td>
            </tr>
          <tr>
            <td height="30" align="right">密　码：</td>
            <td style="text-align: left">
                <asp:TextBox ID="tbx_Pwd" runat="server" Height="16px" TextMode="Password" Width="150px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox></td>
          </tr>
		  
          <tr>
            <td height="50" colspan="2" align="center"><asp:ImageButton ID="imgbtn_zc" runat="server" ImageUrl="images/zc.gif" OnClick="ImageButton1_Click" Visible="False" />
                &nbsp;&nbsp;<asp:ImageButton ID="ibtn_Login" runat="server" ImageUrl="images/dl.gif" OnClick="ibtn_Login_Click" />
                &nbsp;&nbsp;
                <asp:ImageButton ID="ibtn_Return" runat="server" ImageUrl="images/fh.gif" OnClick="ibtn_Return_Click" /></td>
            </tr>
          <tr>
            <td colspan="2"></td>
          </tr>
        </table>
		<hr size=1 color='#efefef' width='80%' align='left'>Copyright &copy 2009 中国地震局 人才评价（评审）系统 Version 1.0
          <br />
          2009-7-18 21:45</td>
		<td>
			<img src="images/login_04.gif" width="82" height="311" alt=""></td>
	</tr>
</table></form>
</body>
</html>

