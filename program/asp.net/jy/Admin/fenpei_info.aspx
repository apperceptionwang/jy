<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fenpei_info.aspx.cs" Inherits="Admin_fenpei_info" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>分配信息查询</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body style="font-family: Times New Roman" >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0" runat="server" visible="true">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            参评人员管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" style="height: 30px">
                            </TD>
					</tr>
					 <tr>
                        <TD class="forumRowHighlight" style="height: 30px">
                            <FONT face="宋体"><span style="background-color: #e4edf9"></span>
                            </font>
                        </td>
                    </tr>
					<tr>
						<td bgColor="#ffffff" valign="top" id="TD1">
                            专家列表<asp:GridView ID="gv_zhuanjia" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                BorderWidth="0px" CellPadding="3" CellSpacing="1" Width="100%">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:ButtonField CommandName="select" DataTextField="UserName" HeaderText="用户名" Text="按钮" />
                                    <asp:BoundField DataField="xingbie" HeaderText="性别" />
                                    <asp:BoundField DataField="gzdw" HeaderText="工作单位" />
                                    <asp:BoundField DataField="zc" HeaderText="职称" />
                                    <asp:BoundField DataField="phone" HeaderText="联系电话" />
                                    <asp:BoundField DataField="fenlei" HeaderText="组群" Visible="False" />
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <PagerStyle HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                            </asp:GridView>
                        </td>
					</tr>
					<tr>
						<td bgColor="#ffffff" valign="top" id="TD2">
                            参评人员列表<asp:Label ID="lbl_zjid" runat="server"></asp:Label><br />
                            <asp:GridView ID="gv_chengyuan" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" >
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:ButtonField CommandName="select" DataTextField="yourname" HeaderText="姓名" Text="按钮" />
                                    <asp:BoundField DataField="xingbie" HeaderText="性别" />
                                    <asp:BoundField DataField="nianling" HeaderText="年龄" />
                                    <asp:BoundField DataField="xrzw" HeaderText="现任职务" />
                                    <asp:BoundField DataField="sbzw" HeaderText="申报职务" />
                                    <asp:TemplateField HeaderText="审核结果">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sh" runat="server" Text='<%#bind("sh_flag")%>'></asp:Label>&nbsp;
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="fenlei" HeaderText="组群" Visible="False" />
                                    <asp:TemplateField HeaderText="选择" Visible="False">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px; text-align: center;"><FONT face="宋体"><span style="background-color: #e4edf9">
                                </span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            </td>
					</tr>
                   
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>

