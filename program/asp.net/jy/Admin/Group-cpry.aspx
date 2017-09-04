<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Group-cpry.aspx.cs" Inherits="Admin_Group_cpry" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>参评人员组群维护</title>
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
					cellPadding="3" border="0" runat="server">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            用户管理&nbsp;</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30" id="TD1" runat="server" visible="false">
                            查找类别：<asp:DropDownList ID="ddlist_type" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                                <asp:ListItem Value="loginname">登录名</asp:ListItem>
                                <asp:ListItem Value="username">用户名</asp:ListItem>
                                <asp:ListItem Value="gzdw">工作单位</asp:ListItem>
                                <asp:ListItem Value="zc">职称</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                            <asp:TextBox ID="tbx_search" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" /></TD>
					</tr>
					<tr>
						<td bgColor="#ffffff">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting">
                                <Columns>
                                    <asp:BoundField DataField="bm" HeaderText="ID" />
                                    <asp:BoundField DataField="Name" HeaderText="名称" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" HeaderText="操作" />
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;<asp:button id="btn_Add" runat="server" Text="添加新组群" Width="75px" OnClick="btn_Add_Click" ></asp:button></td>
					</tr>
					
					
					<TR>
						<TD class="forumRowHighlight" style="height: 30px" id="TD_Add" runat="server" visible="false">
                            <asp:Label ID="lbl_pwd" runat="server" Text="组群名称：" Width="122px"></asp:Label><asp:TextBox ID="tbx_name" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                            <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="取消" Width="48px" />
                            <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lbl_editflag" runat="server" Visible="False"></asp:Label></TD>
					</TR>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" style="text-align: center" >
                        &nbsp;
                    </td>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>
