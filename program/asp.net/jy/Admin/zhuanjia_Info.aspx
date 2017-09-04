<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuanjia_Info.aspx.cs" Inherits="Admin_zhuanjia_Info" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_classAddEdit</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<script language="javascript" src="../img/calendar.js"></script>
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="318" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th height="25" colspan="2" align="left" id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa">
							<asp:Literal id="ltl_Title" runat="server" Text="个人基本信息"></asp:Literal></th>
					</tr>
					<tr>
						<TD height="32" colspan="2" vAlign="middle" class="forumRow">
                            <span style="color: #ff0000">
                                <asp:Label ID="Label1" runat="server" Text="首次登陆请完善个人基本信息，首次登陆用身份证号，以后用登录名登陆。" Visible="False"></asp:Label></span></TD>
					</tr>
                    <tr style="color: #000000">
                        <TD vAlign="middle" class="forumRowHighlight" style="text-align: right; height: 15px;" id="TD24" runat="server" >
                            <FONT face="宋体">姓名:</font></td>
                        <TD class="forumRowHighlight" vAlign="middle" style="height: 15px" id="TD23" 
                            runat="server" visible="True">
							<asp:TextBox id="tb_Username" runat="server" Width="200px" Enabled="False"></asp:TextBox></TD>
                    </tr>
					<tr style="color: #000000">
						<TD vAlign="middle" class="forumRow" style="text-align: right; height: 15px;" id="TD29" runat="server" visible="true">&nbsp;登录名<FONT face="宋体">:</FONT></TD>
						<TD width="80%" vAlign="middle" class="forumRow" style="height: 15px" id="TD30" runat="server" visible="true">
                            <asp:TextBox ID="tb_LoginName" runat="server" Width="200px" Enabled="False"></asp:TextBox><asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="请填写登陆名！" ControlToValidate="tb_LoginName"
								Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator><span style="font-size: 9pt; font-family: 宋体; mso-bidi-font-size: 11.0pt; mso-ascii-font-family: Calibri;
                                    mso-ascii-theme-font: minor-latin; mso-fareast-theme-font: minor-fareast; mso-hansi-font-family: Calibri;
                                    mso-hansi-theme-font: minor-latin; mso-bidi-font-family: 'Times New Roman'; mso-bidi-theme-font: minor-bidi;
                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><asp:Label
                                        ID="Label2" runat="server" Text="此信息将作为以后登陆的唯一登陆名" Visible="False"></asp:Label></span></TD>
					</tr>
                    <tr style="color: #000000">
                        <td class="forumRowHighlight" style="text-align: right; height: 15px;" id="Td25" runat="server" visible="true">
                            新密码<FONT face="宋体">:</FONT></td>
                        <td class="forumRowHighlight" id="Td26" runat="server" visible="true" style="height: 15px">
                            <FONT face="宋体">
                                <asp:TextBox ID="tb_NewPwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox></font></td>
                    </tr>
                    <tr style="color: #000000">
                        <td class="forumRow" style="text-align: right; height: 15px;" id="Td27" runat="server" visible="true">
                            &nbsp;确认密码<FONT face="宋体">:</font></td>
                        <td class="forumRow" id="Td28" runat="server" visible="true" style="height: 15px">
                            <asp:TextBox ID="tb_ConfirmPwd" runat="server" TextMode="Password" Width="200px"></asp:TextBox><asp:CompareValidator
                                ID="cv_Pwd" runat="server" ControlToCompare="tb_NewPwd" ControlToValidate="tb_ConfirmPwd"
                                ErrorMessage="两次输入的密码不一致"></asp:CompareValidator></td>
                    </tr>
					<tr>
                        <td class="forumRowHighlight" style="text-align: right; height: 15px;" 
                            id="Td31" runat="server" visible="False">
                            <FONT face="宋体">性别:</FONT></td>
                        <td class="forumRowHighlight" id="Td32" runat="server" visible="False" 
                            style="height: 15px">
							<asp:radiobuttonlist id="rbl_Sex" runat="server" Width="154px" RepeatDirection="Horizontal">
								<asp:ListItem Value="男" Selected="True">男</asp:ListItem>
								<asp:ListItem Value="男">女</asp:ListItem>
							</asp:radiobuttonlist></td>
                    </tr>
                    <tr>
                        <td class="forumRow" style="text-align: right; height: 15px;" id="Td33" 
                            runat="server" visible="False">
                            &nbsp;出生日期<FONT face="宋体">:</font></td>
                        <td class="forumRow" id="Td34" runat="server" visible="False" 
                            style="height: 15px">
                            <input id="txt_csrq" runat="server" name="s2" onfocus="calendar()" style="font-size: 9pt"
                                type="text" size="20" /></td>
                    </tr>
					<tr style="color: #000000">
						<td class="forumRowHighlight" style="width: 133px; text-align: right" id="TD6" runat="server" visible="false">&nbsp;<span style="font-family: 宋体">出生日期</span><FONT face="宋体">:</FONT></td>
						<td class="forumRowHighlight" id="TD5" runat="server" visible="false">
                            &nbsp;</td>
					</tr>
					<tr style="color: #000000">
						<td class="forumRow" style="width: 133px; text-align: right" id="TD8" runat="server" visible="false">&nbsp;<FONT face="宋体">学历:</FONT></td>
						<td class="forumRow" id="TD7" runat="server" visible="false">
                            <asp:DropDownList ID="ddl_xl" runat="server" Width="130px">
                                <asp:ListItem>博士研究生</asp:ListItem>
                                <asp:ListItem>硕士研究生</asp:ListItem>
                                <asp:ListItem>大学本科</asp:ListItem>
                                <asp:ListItem>大学专科</asp:ListItem>
                                <asp:ListItem>大学普通班</asp:ListItem>
                            </asp:DropDownList></td>
					</tr>
					<tr style="color: #000000">
						<td class="forumRowHighlight" style="width: 133px; text-align: right" id="TD10" runat="server" visible="false"><span class="forumRow">&nbsp;<FONT face="宋体">单位:</FONT></span></td>
						<td class="forumRowHighlight" id="TD9" runat="server" visible="false"><FONT face="宋体">
								</FONT>
                            <asp:TextBox ID="tb_dw" runat="server" Width="200px"></asp:TextBox></td>
					</tr>
					<tr style="color: #000000">
						<td class="forumRow" style="width: 133px; text-align: right" id="TD11" runat="server" visible="false">&nbsp;<FONT face="宋体">毕业学校及单位:</FONT>
						</td>
						<td class="forumRow" id="TD12" runat="server" visible="false">
                            <asp:TextBox ID="tb_byxx" runat="server" Width="200px"></asp:TextBox></td>
					</tr>
                    <tr style="color: #000000">
                        <td class="forumRowHighlight" style="width: 133px; text-align: right" id="TD13" runat="server" visible="false">
                            <span class="forumRow">&nbsp;<FONT face="宋体">所学专业:</font></span></td>
                        <td class="forumRowHighlight" id="TD14" runat="server" visible="false">
                            <FONT face="宋体">
                                </font>
                            <asp:TextBox ID="tb_zy" runat="server" Width="200px"></asp:TextBox></td>
                    </tr>
					<TR style="color: #000000">
						<TD class="forumRow" style="width: 133px; text-align: right;" id="TD18" runat="server" visible="false"><FONT face="宋体">&nbsp;专业技术资格名称：</FONT></TD>
						<TD class="forumRow" id="TD15" runat="server" visible="false"><FONT face="宋体">
                            <asp:TextBox ID="tb_zyjs" runat="server" Width="200px"></asp:TextBox></FONT></TD>
					</TR>
                    <tr style="color: #000000">
                        <td class="forumRowHighlight" style="width: 133px; text-align: right" id="TD21" runat="server" visible="false">
                            <span class="forumRow">&nbsp;<FONT face="宋体">取得资格时间:</font></span></td>
                        <td class="forumRowHighlight" id="TD20" runat="server" visible="false">
                            <FONT face="宋体">
                                </font>
                            <input id="txt_qdsj" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                                type="text" /></td>
                    </tr>
					<TR style="color: #000000">
						<TD class="forumRow" style="width: 133px; text-align: right" id="TD16" runat="server" visible="false"><FONT face="宋体">&nbsp;现从事的专业领域：</FONT></TD>
						<TD class="forumRow" id="TD17" runat="server" visible="false">
                            <asp:TextBox ID="tb_csly" runat="server" Width="200px"></asp:TextBox></TD>
					</TR>
					<%--<tr>
						<td class="forumRowHighlight">&nbsp;<FONT face="宋体">同类电影下方自定义:</FONT></td>
						<td class="forumRowHighlight"><asp:TextBox ID="TextBox6" runat="server" Width="490px" Height="144px" TextMode="MultiLine"></asp:TextBox></td>
					</tr>--%>
                    <tr style="color: #000000">
                        <td class="forumRowHighlight" style="width: 133px; text-align: right" id="TD19" runat="server" visible="false">
                            <span class="forumRow">&nbsp;<FONT face="宋体">熟悉的专业领域:</font></span></td>
                        <td class="forumRowHighlight" id="TD22" runat="server" visible="false">
                            <FONT face="宋体">
                                <asp:TextBox ID="tb_sxly" runat="server" Width="200px"></asp:TextBox></font></td>
                    </tr>
					<tr style="color: #000000">
						<td class="forumRow" style="width: 133px; height: 26px;">&nbsp;</td>
						<td class="forumRow" style="height: 26px"><asp:Button ID="btn_Save" runat="server" Width="104px" Height="24px" Text="保存" OnClick="btn_Save_Click"></asp:Button></td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</HTML>
