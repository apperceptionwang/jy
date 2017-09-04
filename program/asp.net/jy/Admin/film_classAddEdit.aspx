<%@ Page Language="C#" AutoEventWireup="true" CodeFile="film_classAddEdit.aspx.cs" Inherits="VOD.Admin.film_classAddEdit" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_classAddEdit</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
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
							<asp:Literal id="ltl_Title" runat="server" Text="添加新电影分类"></asp:Literal></th>
					</tr>
					<tr>
						<TD height="32" colspan="2" vAlign="middle" class="forumRowHighlight">请慎重修改类别相关信息,如果没必要<span class="STYLE1">不要删除</span>类别(删除类别将删除电影数据),您可以选择将其进行<span class="STYLE1">关闭</span></TD>
					</tr>
					<tr>
						<TD width="20%" vAlign="middle" class="forumRow">&nbsp;<FONT face="宋体">电影类别名称:</FONT></TD>
						<TD width="80%" vAlign="middle" class="forumRow">
							<asp:TextBox id="tb_Caption" runat="server"></asp:TextBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator1" runat="server" ErrorMessage="请填写电影类别名称！" ControlToValidate="tb_Caption"
								Display="Dynamic"></asp:RequiredFieldValidator></TD>
					</tr>
					<tr>
						<TD vAlign="middle" class="forumRowHighlight">&nbsp;<FONT face="宋体">列表图片地址:</FONT></TD>
						<TD class="forumRowHighlight" vAlign="middle">
							<asp:TextBox id="tb_ListImg" runat="server" Width="377px"></asp:TextBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator2" runat="server" ErrorMessage="必填！" ControlToValidate="tb_ListImg"
								Display="Dynamic"></asp:RequiredFieldValidator></TD>
					</tr>
					<tr>
						<td class="forumRow">&nbsp;<FONT face="宋体">未登陆是否可进入:</FONT></td>
						<td class="forumRow">
							<asp:radiobuttonlist id="rbl_NotLogin" runat="server" Width="154px" RepeatDirection="Horizontal">
								<asp:ListItem Value="1" Selected="True">是</asp:ListItem>
								<asp:ListItem Value="0">否</asp:ListItem>
							</asp:radiobuttonlist></td>
					</tr>
					<tr>
						<td class="forumRowHighlight">&nbsp;<FONT face="宋体">列表每页记录数:</FONT></td>
						<td class="forumRowHighlight">
							<asp:TextBox id="tb_ListPageSize" runat="server" Width="27px"></asp:TextBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator3" runat="server" ErrorMessage="必填！" ControlToValidate="tb_ListPageSize"
								Display="Dynamic"></asp:RequiredFieldValidator></td>
					</tr>
					<tr>
						<td class="forumRow">&nbsp;<FONT face="宋体">同类电影显示记录数:</FONT></td>
						<td class="forumRow">
							<asp:TextBox id="tb_ListSamePageSize" runat="server" Width="27px"></asp:TextBox>
							<asp:RequiredFieldValidator id="RequiredFieldValidator4" runat="server" ErrorMessage="必填！" ControlToValidate="tb_ListSamePageSize"
								Display="Dynamic"></asp:RequiredFieldValidator></td>
					</tr>
					<tr>
						<td class="forumRowHighlight"><span class="forumRow">&nbsp;<FONT face="宋体">列表显示排序方式:</FONT></span></td>
						<td class="forumRowHighlight"><FONT face="宋体">
								<asp:radiobuttonlist id="rbl_ListSortType" runat="server" Width="255px" RepeatDirection="Horizontal">
									<asp:ListItem Value="1" Selected="True">按ID降序</asp:ListItem>
									<asp:ListItem Value="2">按加入时间</asp:ListItem>
									<asp:ListItem Value="3">按更新时间</asp:ListItem>
								</asp:radiobuttonlist></FONT></td>
					</tr>
					<tr>
						<td class="forumRow">&nbsp;<FONT face="宋体">类别状态:</FONT>
						</td>
						<td class="forumRow">
							<asp:radiobuttonlist id="rbl_CIsOpen" runat="server" Width="154px" RepeatDirection="Horizontal">
								<asp:ListItem Value="1" Selected="True">开启</asp:ListItem>
								<asp:ListItem Value="0">关闭</asp:ListItem>
							</asp:radiobuttonlist></td>
					</tr>
					<TR>
						<TD class="forumRow"><FONT face="宋体">&nbsp;类别标识：</FONT></TD>
						<TD class="forumRow"><FONT face="宋体">
								<asp:TextBox id="tb_Cidx" runat="server" Width="27px">1</asp:TextBox>
								<asp:RequiredFieldValidator id="RequiredFieldValidator5" runat="server" ErrorMessage="必填！" ControlToValidate="tb_Cidx"
									Display="Dynamic"></asp:RequiredFieldValidator></FONT>(0代表是免费区 1是代表收费类)</TD>
					</TR>
					<TR>
						<TD class="forumRow"><FONT face="宋体">&nbsp;排序：</FONT></TD>
						<TD class="forumRow"><FONT face="宋体">
								<asp:TextBox id="tb_CSort" runat="server" Width="27px"></asp:TextBox>
								<asp:RequiredFieldValidator id="RequiredFieldValidator6" runat="server" ErrorMessage="必填！" ControlToValidate="tb_CSort"
									Display="Dynamic"></asp:RequiredFieldValidator></FONT>(导航栏的排序)</TD>
					</TR>
					<%--<tr>
						<td class="forumRowHighlight">&nbsp;<FONT face="宋体">同类电影下方自定义:</FONT></td>
						<td class="forumRowHighlight"><asp:TextBox ID="TextBox6" runat="server" Width="490px" Height="144px" TextMode="MultiLine"></asp:TextBox></td>
					</tr>--%>
					<tr>
						<td class="forumRow">&nbsp;</td>
						<td class="forumRow"><asp:Button ID="btn_Ok" runat="server" Width="104px" Height="24px" Text="添加" OnClick="btn_Ok_Click"></asp:Button></td>
					</tr>
				</table>
			</div>
		</form>
	</body>
</HTML>
