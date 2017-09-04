<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renshi_jy_xg.aspx.cs" Inherits="Admin_renshi_jy_xg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>是否允许参评人员修改信息管理</title>
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
                            申报人员状态管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            &nbsp;</TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 400px; text-align: right;" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" 
                                OnPageIndexChanging="GridView1_PageIndexChanging" 
                                OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                                EnableModelValidation="True">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="排序" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:ButtonField CommandName="select" DataTextField="ktmc" HeaderText="课题名称" 
                                        Text="按钮" >
                                        <ItemStyle ForeColor="Navy" />
                                    </asp:ButtonField>
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zc" HeaderText="职称" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zw" HeaderText="职务" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="是否允许修改">
                                    <ItemTemplate>
                                        <asp:RadioButtonList ID="rbtnList_xg" runat="server" Height="20px" RepeatDirection="Horizontal"
                                            Width="110px">
                                            <asp:ListItem Value="True">允许</asp:ListItem>
                                            <asp:ListItem Value="False">不允许</asp:ListItem>
                                        </asp:RadioButtonList>
									</ItemTemplate>
                                        <ItemStyle Width="100px" />
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            &nbsp; &nbsp; &nbsp;
                        </td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px"><FONT face="宋体"><span style="background-color: #e4edf9">
                            <table id="table22" border="0" cellpadding="0" cellspacing="0" language="javascript"
                                onclick="return table22_onclick()" style="width: 682px; height: 18px">
                                <tr>
                                    <td style="font-size: 12px; width: 175px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif">
                                        <asp:Label ID="lbl_tongji" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                                    <td style="font-size: 12px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                        text-align: right">
                            <asp:LinkButton ID="lbtn_AllYes" runat="server" OnClick="lbtn_AllYes_Click" Visible="False">全部允许</asp:LinkButton>&nbsp;
                            &nbsp;
                                        <asp:LinkButton ID="lbtn_AllNo" runat="server" OnClick="lbtn_AllNo_Click" 
                                            Visible="False">全部不允许</asp:LinkButton>&nbsp;&nbsp;
                                        <asp:Button ID="btn_Save" runat="server" OnClick="btn_Save_Click" Text="保存" Width="51px" /></td>
                                </tr>
                            </table>
                        </span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;</td>
					</tr>
                    <tr visible = false>
                        <TD class="forumRowHighlight" style="height: 30px" id="TD1" runat="server" visible="false">
                            &nbsp;</td>
                    </tr>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>

