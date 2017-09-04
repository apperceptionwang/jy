<%@ Page Language="C#" AutoEventWireup="true" CodeFile="film_class.aspx.cs" Inherits="VOD.Admin.film_class" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_class</title>
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
							影片分类管理 (说明:1.删除分类并没有删除影片 2.级别是限制指定的级别会员进入)</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">请慎重修改类别相关信息,如果没必要<span class="STYLE1">不要删除</span>类别(删除类别将删除电影数据),您可以选择将其进行<span class="STYLE1">关闭</span></TD>
					</tr>
					<tr>
						<td bgColor="#ffffff">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="Caption" HeaderText="类别" />
                                    <asp:BoundField DataField="ListImg" HeaderText="列表图片地址" />
                                    <asp:BoundField DataField="ListPageSize" HeaderText="显示条数" />
                                    <asp:BoundField DataField="ListSamePageSize" HeaderText="推荐条数" />
                                    <asp:TemplateField HeaderText="未登录是否进入">
                                    <ItemTemplate>
											<%#GetNotLoginIn(Eval("NotLoginIn").ToString())%>
									</ItemTemplate>
									</asp:TemplateField>
                                    <asp:BoundField DataField="Csort" HeaderText="排序" />
                                    <asp:TemplateField HeaderText="是否开启">
                                    <ItemTemplate>
											<%#GetClassIsOpen(Eval("CIsOpen").ToString())%>
									</ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="排序方式">
                                    <ItemTemplate>
											<%#GetListSortType(Eval("ListSortType").ToString())%>
									</ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											<a href='Film_ClassAddEdit.aspx?Action=Edit&ID=<%#Eval("ID")%>' >
												编辑</a>
											<asp:CheckBox ID="ckb_Sle" Runat="server" Text="选择"></asp:CheckBox>
									</ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                            </asp:GridView>
                        </td>
					</tr>
					<tr>
						<td class="forumRowHighlight" height="30">请选择相应的操作 :&nbsp;&nbsp;
							<asp:button id="btn_Delete" runat="server" Text="批量删除" OnClientClick="return confirm('注意！删除前请先把该类影片转到其它类别。否则会导致数据混乱');" OnClick="btn_Delete_Click"></asp:button>&nbsp; 将属于此分类的<span class="STYLE1">电影移动</span>到&nbsp;
							<asp:dropdownlist id="dw_class" runat="server"></asp:dropdownlist>
							<asp:button id="btn_Ok" runat="server" Text="确定" Width="51px" OnClick="btn_Ok_Click"></asp:button>
						</td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" height="30"><FONT face="宋体"></FONT></TD>
					</TR>
				</table>
			</div>
		</form>
		
	</body>
</HTML>
