<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Login.aspx.cs" Inherits="admin_Login" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/loose.dtd">
<!-- saved from url=(0049)http://www.bjhbkj.com/secure/Login.aspx -->
<HTML xmlns="http://www.w3.org/1999/xhtml"><HEAD><TITLE>防灾科技学院 教研教改项目申请系统</TITLE>
<META content="text/html; charset=utf-8" http-equiv=Content-Type>
<STYLE type=text/css>.STYLE1 {
	COLOR: #e4e4e3
}
BODY {
	BACKGROUND-COLOR: #e4e4e3
}
</STYLE>
<script type="text/javascript">
    //点击切换验证码
    function f_refreshtype() {
        var Image1 = document.getElementById("img");
        if (Image1 != null) 
        {
            Image1.src = Image1.src + "?";
        }
    } 
    </script>
<LINK rel=stylesheet type=text/css href="../images/default.css">
<SCRIPT language=javascript src="../images/AjaxPopupList.js"></SCRIPT>

<META name=GENERATOR content="MSHTML 8.00.7600.16535"></HEAD>
<BODY>
<form id="Form1" method="post" runat="server">
<DIV>
    &nbsp;</DIV>
<DIV align=center>
<TABLE border=0 cellSpacing=0 cellPadding=0 width=760>
  <TBODY>
  <TR>
    <TD class=STYLE1><IMG src="../images/top.jpg" width=760 
      height=125></TD></TR>
  <TR>
    <TD background=images/middle_bg.gif align=middle style="background-image: url(../images/middle_bg.gif)"><BR>
      <TABLE border=0 cellSpacing=2 cellPadding=2>
        <TBODY>
        <TR>
          <TD vAlign=top>
              <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label><BR>
            <TABLE border=0 cellSpacing=0 cellPadding=0 width=421 height=250>
              <TBODY>
              <TR>
                <TD style="WIDTH: 421px; HEIGHT: 251px; background-image: url(../images/login_table_bg.gif);" 
                background=images/login_table_bg.gif 
                  align=middle><SPAN style="COLOR: dimgray" 
                  id=Label1>
                      <asp:Label ID="lbl_title" runat="server" Visible="False"></asp:Label></SPAN> 
                  <TABLE border=0 cellSpacing=4 cellPadding=4>
                    <TBODY>
                    <TR>
                      <TD align=right>用户类型:</TD>
                      <TD align=left colspan="2"><SPAN 
                        style="COLOR: blue; FONT-WEIGHT: bold" 
                        id=lbAccountType>
                          <asp:Label ID="lbl_UserType" runat="server"></asp:Label></SPAN></TD></TR>
                    <TR>
                      <TD align=right>
                          <asp:Label ID="lbl_Name" runat="server" Text="用户名:"></asp:Label></TD>
                      <TD align=left colspan="2">
                          <asp:TextBox ID="tbx_UserName" runat="server" Font-Names="宋体" Font-Size="9pt" Height="16px"
                              Width="150px"></asp:TextBox></TD></TR>
                    <TR>
                      <TD align=right>密码:</TD>
                      <TD align=left colspan="2">
                          <asp:TextBox ID="tbx_Pwd" runat="server" Font-Names="宋体" Font-Size="9pt" Height="16px"
                              TextMode="Password" Width="150px"></asp:TextBox></TD></TR>
                        <tr>
                      <TD align=right>验证码:</TD>
                      <TD align=left valign=top>
                          <asp:TextBox ID="tbx_yzm" runat="server" Font-Names="宋体" Font-Size="9pt" 
                              Height="16px" Width="80px" MaxLength="4"></asp:TextBox>
                          </TD>
                      <TD align=left valign=bottom><img id="img" onclick="f_refreshtype()" src="../验证码/png.aspx" />
                          &nbsp;</TD>
                        </tr>
                    <TR>
                      <TD><INPUT 
                        style="BORDER-RIGHT-WIDTH: 0px; WIDTH: 0px; BORDER-TOP-WIDTH: 0px; BORDER-BOTTOM-WIDTH: 0px; BORDER-LEFT-WIDTH: 0px" 
                        id=txtUserId name=txtUserId>&nbsp;</TD>
                      <TD align=left colspan="2">
                          <asp:ImageButton ID="ibtn_Login" runat="server" ImageUrl="../images/btn_login.gif" OnClick="ibtn_Login_Click" /></TD></TR></TBODY></TABLE><SPAN 
                  style="DISPLAY: none; COLOR: red" 
                  id=RequiredFieldValidator1></SPAN><SPAN 
                  style="DISPLAY: none; COLOR: red" 
                  id=RequiredFieldValidator2></SPAN>
                  <DIV style="DISPLAY: none; COLOR: red" 
                  id=ValidationSummary1></DIV><SPAN style="COLOR: red" 
                  id=Label2></SPAN></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE>
        <asp:Label ID="lbl_jzsj" runat="server" ForeColor="Red"></asp:Label>
        <BR><BR></TD></TR>
  <TR>
    <TD><IMG src="../images/bottom.gif" width=760 
  height=112></TD></TR></TBODY></TABLE></DIV>
</FORM></BODY></HTML>



