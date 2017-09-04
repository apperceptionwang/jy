<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_zj_pingfen_list.aspx.cs" Inherits="Admin_admin_zj_pingfen_list" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>管理员查看专家评分列表</title>
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
                            专家对该人员的评分信息
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            </TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 342px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" ForeColor="Black" ShowFooter="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="ID">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField DataTextField="zjdm" HeaderText="专家代码" Text="按钮" />
                                    <asp:BoundField DataField="fs_sum" HeaderText="专家评分合计" >
                                        <FooterStyle ForeColor="Black" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sfpj" HeaderText="是否评价" />
                                    <asp:ButtonField CommandName="select" HeaderText="专家评价" Text="查看" />
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                                <FooterStyle ForeColor="Black" />
                            </asp:GridView>
                            <asp:Label ID="lbl_sum" runat="server"></asp:Label>
                            <br />
                            <asp:Label ID="lbl_pingjia" runat="server"></asp:Label></td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px"><FONT face="宋体"><span style="background-color: #e4edf9">
                            <asp:Label ID="lbl_tongji" runat="server"></asp:Label></span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px" id="TD5" runat="server" visible="false">
                            <table style="width: 416px; height: 11px" cellpadding="0" cellspacing="0"><tr><td style="width: 2px; height: 17px;" id="TD3" runat="server" visible="true"></td><td style="width: 3px; height: 17px;" id="TD4" runat="server" visible="true">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                    RepeatDirection="Horizontal" Width="282px">
                                    <asp:ListItem Selected="True" Value="all">全部</asp:ListItem>
                                    <asp:ListItem>通过</asp:ListItem>
                                    <asp:ListItem>未通过</asp:ListItem>
                                    <asp:ListItem>未审核</asp:ListItem>
                                </asp:RadioButtonList></td></tr></table>
                            <asp:Button ID="btn_ExpToExcel" runat="server" OnClick="btn_ExpToExcel_Click" Text="导出到EXCEL" /></td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px" id="TD2" runat="server" visible="false">
                            <FONT face="宋体"><span style="background-color: #e4edf9">将选择的人员</span><span class="STYLE1">添加</span><span
                                style="background-color: #e4edf9">到&nbsp; </span>
                                <asp:dropdownlist id="Dropdownlist1" runat="server" Width="105px">
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" OnClick="btn_Ok_Click" Text="确定" Width="51px" />
                            </font>
                        </td>
                    </tr>
                     <tr>
                        <TD class="forumRowHighlight" style="height: 30px" id="TD1" runat="server" visible="false">
                            <FONT face="宋体"><span style="background-color: #e4edf9"></span><span
                                style="background-color: #e4edf9"> </span>
                                <asp:TextBox ID="TextBox1" runat="server" Height="74px" TextMode="MultiLine" Width="573px"></asp:TextBox><asp:Button ID="btn_pingjia_save" runat="server" OnClick="btn_pingjia_save_Click" Text="保存" Width="51px" /></font></td>
                    </tr>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>


