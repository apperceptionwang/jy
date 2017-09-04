<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_lw_Result.aspx.cs" Inherits="Admin_admin_lw_Result" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>优秀论文结果导出</title>
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
                            优秀论文结果导出</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            </TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowSorting="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="序号">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server"  Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="tjdw_mc" HeaderText="推荐单位" />
                                    <asp:BoundField DataField="yourname" HeaderText="作者姓名" />
                                    <asp:BoundField DataField="ejxk_mc" HeaderText="二级学科名称" />
                                    <asp:CommandField HeaderText="简要评价" SelectText="查看" ShowSelectButton="True" Visible="False" />
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
                                    <asp:BoundField DataField="lw_ctitle" HeaderText="论文题目" />
                                    <asp:BoundField DataField="zdjs_xm" HeaderText="指导教师姓名" />
                                    <asp:BoundField DataField="cplb" HeaderText="参评类别" />
                                    <asp:BoundField HeaderText="分组" DataField="ry_group" />
                                    <asp:BoundField DataField="score" HeaderText="得分" />
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px">
                            参评人员平均得分：<asp:Label ID="lbl_avgScore" runat="server"></asp:Label></td>
                    </tr>
					<tr>
                        <TD class="forumRowHighlight" style="height: 30px">
                            <asp:Label ID="lbl_jypj" runat="server"></asp:Label></td>
                    </tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lbl_cpry_sfzh" runat="server" Visible="False"></asp:Label></td>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>
