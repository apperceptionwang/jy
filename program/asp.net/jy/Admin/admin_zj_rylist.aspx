<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_zj_rylist.aspx.cs" Inherits="Admin_admin_zj_rylist" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>正高级 专家管理</title>
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
                            专家<asp:Label ID="lbl_zjname" runat="server" ForeColor="#C00000"></asp:Label>
                            可以查看的人员列表</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            </TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" AllowSorting="True" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server"  Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="yourName" HeaderText="姓名" />
                                    <asp:BoundField DataField="gzdw_mc" HeaderText="工作单位" />
                                    <asp:BoundField DataField="sfpj" HeaderText="是否评价" />
                                    <asp:BoundField DataField="fs_pjys_sum" HeaderText="得分" />
                                    <asp:CommandField HeaderText="简要评价" SelectText="查看" ShowSelectButton="True" />
                                    <asp:TemplateField HeaderText="操作" Visible="False">
                                    <ItemTemplate>
											
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit">修改</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">删除</asp:LinkButton>
									</ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择" Visible="False">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbx_select" runat="server" />
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
                        <TD class="forumRowHighlight" style="height: 30px">
                            <asp:Label ID="lbl_jypj" runat="server"></asp:Label></td>
                    </tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lbl_zj_sfzh" runat="server" Visible="False"></asp:Label></td>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>


