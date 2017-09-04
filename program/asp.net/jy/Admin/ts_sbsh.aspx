<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ts_sbsh.aspx.cs" Inherits="Admin_ts_sbsh" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>申报审核</title>
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
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            点击 <span style="color: #cc0000">姓名</span> 可以查看修改参评人员信息 点击<span style="color: #cc0000">审核结果</span>下的<span
                                style="color: #cc0000">修改</span>可以更改审核结果<br />
                            选择一行或多行数据后，选择相应组群，点击确定按钮，可以把人员移动到该组</TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 342px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnRowEditing="GridView1_RowEditing" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging" OnRowUpdating="GridView1_RowUpdating">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:ButtonField CommandName="select" DataTextField="yourname" HeaderText="姓名" Text="按钮" />
                                    <asp:BoundField DataField="gzdw_mc" HeaderText="工作单位" />
                                    <asp:BoundField DataField="xingbie" HeaderText="性别" />
                                    <asp:BoundField DataField="nianling" HeaderText="年龄" />
                                    <asp:TemplateField HeaderText="审核结果">
                                        <ItemTemplate>
                                            <asp:Label ID="lbl_sh" runat="server" Text='<%#bind("sh_flag")%>'></asp:Label>
                                            <asp:LinkButton ID="lbtn_sh" runat="server" CommandName="update">修改</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="是否允许修改" Visible="False">
                                    <ItemTemplate>
                                        &nbsp;<asp:CheckBox ID="ckb_Sle" Runat="server"></asp:CheckBox>
                                        <asp:LinkButton ID="lbtn_ok" runat="server" CommandName="edit" Text="确定"></asp:LinkButton>
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
                                    <asp:TemplateField HeaderText="查看得分" Visible="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit">查看得分</asp:LinkButton>
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
						<TD class="forumRowHighlight" style="height: 30px"><FONT face="宋体"><span style="background-color: #e4edf9">
                            <asp:Label ID="lbl_tongji" runat="server" Visible="False"></asp:Label></span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            <table style="width: 416px; height: 11px" cellpadding="0" cellspacing="0"><tr><td style="width: 2px; height: 17px;"></td><td style="width: 3px; height: 17px;">
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
                        <TD class="forumRowHighlight" style="height: 30px" id="TD1" runat="server" visible="false">
                            <FONT face="宋体" id="FONT1" visible="false"><span style="background-color: #e4edf9">将选择的人员</span><span class="STYLE1">添加</span><span
                                style="background-color: #e4edf9">到&nbsp; </span>
                                <asp:dropdownlist id="Dropdownlist1" runat="server" Width="105px">
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" OnClick="btn_Ok_Click" Text="确定" Width="51px" />
                            </font>
                        </td>
                    </tr>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>