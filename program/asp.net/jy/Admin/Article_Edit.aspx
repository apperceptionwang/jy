<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Article_Edit.aspx.cs" Inherits="Admin_Article_Edit" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>新闻列表</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            文章编辑管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            点击 编辑 可以编辑修改该篇文章 点击多个 选择 ，然后点击 批量删除，可以删除多篇文章</TD>
					</tr>
					<tr>
						<td bgColor="#ffffff">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnRowEditing="GridView1_RowEditing" OnPageIndexChanging="GridView1_PageIndexChanging">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="lx" HeaderText="类别" />
                                    <asp:BoundField DataField="title" HeaderText="文章标题" />
                                    <asp:BoundField DataField="admin" HeaderText="录入" />
                                    <asp:BoundField DataField="hits" HeaderText="点击" />
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											<a href='Article_Add.aspx?ID=<%#Eval("ID")%>' >
												编辑</a>
											<asp:CheckBox ID="ckb_Sle" Runat="server" Text="选择"></asp:CheckBox>
									</ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">请选择相应的操作 :&nbsp;&nbsp;
							<asp:button id="btn_Delete" runat="server" Text="批量删除" OnClientClick="return confirm('注意！删除多篇文章，请确认！');" OnClick="btn_Delete_Click"></asp:button>&nbsp; 将选择的文章<span class="STYLE1">移动</span>到&nbsp;
							<asp:dropdownlist id="dw_class" runat="server" Width="105px"></asp:dropdownlist>
							<asp:button id="btn_Ok" runat="server" Text="确定" Width="51px" OnClick="btn_Ok_Click" ></asp:button>
						</td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px"><FONT face="宋体"></FONT></TD>
					</TR>
				</table>
			</div>
		</form>
		
	</body>
</HTML>
