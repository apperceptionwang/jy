<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renshi_ts_xg.aspx.cs" Inherits="Admin_renshi_ts_xg" %>

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
                            是否允许参评人员修改信息管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            点击 <span style="color: #cc0000">姓名</span> 可以查看修改参评人员信息 
                            改变<span style="color: #cc0000">是否允许修改</span>选项
                            ，然后点击每行后面相应的<span style="color: #cc0000">确定</span>按钮，可以修改相应信息</TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 342px; text-align: right;" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:ButtonField CommandName="select" DataTextField="yourname" HeaderText="姓名" Text="按钮" >
                                        <ItemStyle ForeColor="Navy" />
                                    </asp:ButtonField>
                                    <asp:BoundField DataField="xingbie" HeaderText="性别" />
                                    <asp:BoundField DataField="nianling" HeaderText="年龄" />
                                    <asp:BoundField DataField="jszc" HeaderText="技术职称" />
                                    <asp:BoundField DataField="xzzw" HeaderText="行政职务" />
                                    <asp:TemplateField HeaderText="是否允许修改">
                                    <ItemTemplate>
                                        <asp:RadioButtonList ID="rbtnList_xg" runat="server" Height="20px" RepeatDirection="Horizontal"
                                            Width="110px">
                                            <asp:ListItem Value="True">允许</asp:ListItem>
                                            <asp:ListItem Value="False">不允许</asp:ListItem>
                                        </asp:RadioButtonList>
									</ItemTemplate>
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
                            <asp:LinkButton ID="lbtn_AllYes" runat="server" OnClick="lbtn_AllYes_Click">全部允许</asp:LinkButton>&nbsp;
                            &nbsp;
                                        <asp:LinkButton ID="lbtn_AllNo" runat="server" OnClick="lbtn_AllNo_Click">全部不允许</asp:LinkButton>&nbsp;&nbsp;
                                        <asp:Button ID="btn_Save" runat="server" OnClick="btn_Save_Click" Text="保存" Width="51px" /></td>
                                </tr>
                            </table>
                        </span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            <table style="width: 416px; height: 11px" cellpadding="0" cellspacing="0"><tr><td style="width: 2px; height: 17px;"></td><td style="width: 3px; height: 17px;">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                    RepeatDirection="Horizontal" Width="282px">
                                    <asp:ListItem Value="all" Selected="True">全部</asp:ListItem>
                                    <asp:ListItem>推荐</asp:ListItem>
                                    <asp:ListItem>不推荐</asp:ListItem>
                                    <asp:ListItem>未审核</asp:ListItem>
                                </asp:RadioButtonList></td></tr></table>
                            </td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px" id="TD1" runat="server" visible="false">
                            <FONT face="宋体"><span style="background-color: #e4edf9">将选择的人员</span><span class="STYLE1">添加</span><span
                                style="background-color: #e4edf9">到&nbsp; </span>
                                <asp:dropdownlist id="Dropdownlist1" runat="server" Width="105px">
                                </asp:DropDownList>
                                <asp:Button ID="btn_confirm" runat="server" OnClick="btn_Ok_Click" Text="确定" Width="51px" />
                            </font>
                        </td>
                    </tr>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>
