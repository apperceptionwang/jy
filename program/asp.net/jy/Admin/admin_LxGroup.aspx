<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxGroup.aspx.cs" Inherits="admin_LxGroup" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>立项评审组群维护</title>
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
                            立项评审组群维护</th></tr>
					<tr>
						<td bgColor="#ffffff">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" 
                                EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound" 
                                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" 
                                GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField HeaderText="序号" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="Name" HeaderText="名称" />
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                                        HeaderText="操作" >
                                    <ItemStyle Width="80px" />
                                    </asp:CommandField>
                                </Columns>
                                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Size="13px" Font-Bold="True" 
                                    ForeColor="White" />
                                <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
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
