<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PassWord.aspx.cs" Inherits="PassWord" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>密码修改</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<style type="text/css">BODY { MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: #799ae1; FONT-SIZE: 12px; BACKGROUND: #cad7f7; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TD { FONT-SIZE: 12px }
	INPUT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	TEXTAREA { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	A { COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	A.highlight { COLOR: red; TEXT-DECORATION: none }
	A.highlight:hover { COLOR: red }
	A.thisclass { FONT-WEIGHT: bold; TEXT-DECORATION: none }
	A.thisclass:hover { FONT-WEIGHT: bold }
	A.navlink { COLOR: #000000; TEXT-DECORATION: none }
	A.navlink:hover { COLOR: #003399; TEXT-DECORATION: none }
	.twidth { WIDTH: 760px }
	.content { FONT-SIZE: 14px; MARGIN: 5px 20px; LINE-HEIGHT: 140%; FONT-FAMILY: Tahoma,宋体 }
	.aTitle { FONT-WEIGHT: bold; FONT-SIZE: 15px }
	TD.forumHeaderBackgroundAlternate { BACKGROUND-IMAGE: url(images/admin_top_bg.gif); COLOR: #000000; BACKGROUND-COLOR: #799ae1 }
	#TableTitleLink A:link { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:visited { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:active { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:hover { COLOR: #ffffff; TEXT-DECORATION: underline }
	TD.forumRow { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #f1f3f5; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TH { FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa }
	TD.bodytitle { BACKGROUND-IMAGE: url(images/admin_bg_2.gif) }
	TD.bodytitle1 { BACKGROUND-IMAGE: url(images/admin_bg_3.gif) }
	TD.tablebody1 { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #bebbdb; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TD.forumRowHighlight { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #e4edf9; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	.tableBorder1 { WIDTH: 98% }
	.helplink { FONT: 10px verdana,arial,helvetica,sans-serif; CURSOR: help; TEXT-DECORATION: none }
	.copyright { PADDING-RIGHT: 1px; BORDER-TOP: #6595d6 1px dashed; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; FONT: 11px verdana,arial,helvetica,sans-serif; COLOR: #4455aa; PADDING-TOP: 1px; TEXT-DECORATION: none }
	.menuskin { BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; BACKGROUND-IMAGE: url(../skins/default/dvmenubg3.gif); VISIBILITY: hidden; FONT: 12px Verdana; BORDER-LEFT: #666666 1px solid; BORDER-BOTTOM: #666666 1px solid; BACKGROUND-REPEAT: repeat-y; POSITION: absolute; BACKGROUND-COLOR: #efefef }
	.menuskin A { PADDING-RIGHT: 10px; PADDING-LEFT: 25px; BEHAVIOR: url(inc/noline.htc); COLOR: black; TEXT-DECORATION: none }
	#mouseoverstyle { BORDER-RIGHT: #597db5 1px solid; PADDING-RIGHT: 0px; BORDER-TOP: #597db5 1px solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 2px; BORDER-LEFT: #597db5 1px solid; PADDING-TOP: 0px; BORDER-BOTTOM: #597db5 1px solid; BACKGROUND-COLOR: #c9d5e7 }
	#mouseoverstyle A { COLOR: black }
	.menuitems { PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; MARGIN: 2px; WORD-BREAK: keep-all; PADDING-TOP: 1px }
		</style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form2" method="post" runat="server">
			<table class="tableBorder" id="table2" height="68" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" colSpan="2" height="25">
                        用户密码修改</th></tr>
				<TR>
					<TD class="Forumrow" align="center" width="132" height="29" style="WIDTH: 138px">
						<P align="left">
                            用户帐号：</P>
					</TD>
					<TD class="Forumrow" align="left" width="771" height="29">
						<asp:Label id="lbl_ID" runat="server" ForeColor="Red"></asp:Label>
                        <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label></TD>
				</TR>
                <tr>
                    <TD class="Forumrow" align="center" width="132" height="29" style="WIDTH: 138px">
                        <P align="left">
                            用户名称：</p>
                    </td>
                    <TD class="Forumrow" align="left" width="771" height="29">
                        <asp:Label ID="lbl_UserName" runat="server" ForeColor="Red"></asp:Label></td>
                </tr>
				<TR>
					<TD class="Forumrow" align="center" width="132" height="29" style="WIDTH: 138px">
						<P align="left">
                            原密码：</P>
					</TD>
					<TD class="Forumrow" align="left" width="771" height="29">
						<asp:TextBox id="tb_UserPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_UserPwd" runat="server" ControlToValidate="tb_UserPwd"
                            ErrorMessage="原始密码不能为空"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD class="Forumrow" align="center" width="132" height="29" style="WIDTH: 138px">
						<P align="left">
                            新密码：</P>
					</TD>
					<TD class="Forumrow" align="left" width="771" height="29">
						<asp:TextBox id="tb_NewPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_NewPwd" runat="server" ControlToValidate="tb_NewPwd"
                            ErrorMessage="新密码不能为空"></asp:RequiredFieldValidator></TD>
				</TR>
				<TR>
					<TD class="Forumrow" align="center" width="132" style="WIDTH: 138px; height: 29px;">
						<P align="left">
                            确认密码：</P>
					</TD>
					<TD class="Forumrow" align="left" width="771" style="height: 29px">
						<asp:TextBox id="tb_ConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfv_ConfirmPwd" runat="server" ControlToValidate="tb_ConfirmPwd"
                            ErrorMessage="确认密码不能为空"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="cv_Pwd" runat="server" ControlToCompare="tb_NewPwd" ControlToValidate="tb_ConfirmPwd" ErrorMessage="两次输入的密码不一致"></asp:CompareValidator></TD>
				</TR>
                <%--<TR>
					<TD class="Forumrow" align="center" width="132" height="30" style="WIDTH: 138px">
						<P align="left">推广会员：</P>
					</TD>
					<TD class="Forumrow" align="left" width="771" height="30">
						<asp:TextBox id="TextBox9" runat="server"></asp:TextBox>
					</TD>
				</TR>--%>
				<TR>
					<TD class="forumRowHighlight" align="center" height="44">&nbsp;</TD>
					<TD class="forumRowHighlight" height="44"><asp:Button ID="btn_Ok" runat="server" Text="确认修改" OnClick="btn_Ok_Click"></asp:Button>
                        &nbsp;
                        <asp:HyperLink ID="hlnk_back" runat="server" 
                            NavigateUrl="javascript:history.back()" Visible="False" Width="34px">返回</asp:HyperLink></TD>
				</TR>
			</table>
			<br>
		</form>
	</body>
</HTML>
