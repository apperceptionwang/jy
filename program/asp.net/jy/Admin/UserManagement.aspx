<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UserManagement.aspx.cs" Inherits="Admin_UserManagement" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>用户管理</title>
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
                            用户管理&nbsp;</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            </TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="admin_name" HeaderText="登录名" />
                                    <asp:BoundField DataField="UserName" HeaderText="用户名" />
                                    <asp:BoundField DataField="Lnum" HeaderText="登陆次数" />
                                    <asp:BoundField DataField="LLoginIP" HeaderText="最后一次登陆IP" />
                                    <asp:BoundField DataField="LLoginTime" HeaderText="最后一次登录时间" />
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											<a href='Article_Add.aspx?ID=<%#Eval("ID")%>' >
												</a>
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit">修改密码</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">删除</asp:LinkButton>
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
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;<asp:button id="btn_Add" runat="server" Text="添加新用户" Width="75px" OnClick="btn_Add_Click" ></asp:button></td>
					</tr>
					
					
					<TR>
						<TD class="forumRowHighlight" style="height: 30px" id="TD_pwd" runat="server" visible="false">
                            <asp:Label ID="lbl_pwd" runat="server" Text="魏得军的密码重设为：" Width="122px"></asp:Label><asp:TextBox ID="tbx_pwd" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                            <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="取消" Width="48px" />
                            <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label></TD>
					</TR>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" style="text-align: left" >
                        <asp:Label ID="Label1" runat="server" Text="登录名：" Width="50px"></asp:Label><asp:TextBox
                            ID="tbx_admin_name" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label2" runat="server" Text="用户名：" Width="50px"></asp:Label><asp:TextBox
                            ID="tbx_user_name" runat="server"></asp:TextBox><br />
                        <asp:Label ID="Label3" runat="server" Text="密    码：" Width="50px"></asp:Label><asp:TextBox
                            ID="tbx_pwd_new" runat="server"></asp:TextBox>
                        <asp:Button ID="btn_confirm1" runat="server" OnClick="btn_confirm1_Click" Text="确定" Width="48px" />
                        <asp:Button ID="btn_cancel1" runat="server" OnClick="btn_cancel1_Click" Text="取消" Width="48px" /></td>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>

