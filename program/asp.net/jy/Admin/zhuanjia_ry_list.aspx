<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuanjia_ry_list.aspx.cs" Inherits="Admin_zhuanjia_ry_list" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>人员列表</title>
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
                            参评人员列表
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            点击 <span style="color: #cc0000">姓名</span> 可以查看修改参评人员信息</TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 342px" valign="top" align="center">
                            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" 
                                OnPageIndexChanging="GridView1_PageIndexChanging" 
                                OnSelectedIndexChanging="GridView1_SelectedIndexChanging" Visible="False" 
                                PageSize="40" EnableModelValidation="True">
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="单位推荐排序" />
                                    <asp:ButtonField CommandName="select" DataTextField="sqr" HeaderText="姓名" 
                                        Text="按钮" >
                                        <ItemStyle ForeColor="Navy" />
                                    </asp:ButtonField>
                                    <asp:BoundField DataField="sqbm" HeaderText="申请部门" />
                                    <asp:TemplateField HeaderText="投票">
                                        <ItemTemplate>
                                            &nbsp;<asp:CheckBox ID="cbx_1" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                            </asp:GridView>
                        </td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px; text-align: center;" id="TD1" runat="server" visible="true">
                            <FONT face="宋体"><span style="background-color: #e4edf9"></span>
                                <asp:Button ID="btn_vote" runat="server" OnClick="btn_vote_Click" Text="确定" Width="51px" Visible="False" />
                                &nbsp;&nbsp;
                                &nbsp; &nbsp;<asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="返回" Width="51px" />
                                &nbsp;&nbsp;
                                <asp:Button ID="btn_print" runat="server" Text="打印预览" Width="107px" OnClick="btn_print_Click" /></font></td>
                    </tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px; text-align: left;">
                            <FONT face="宋体"><span style="background-color: #e4edf9">
                            <span style="color: rgb(0, 0, 0); font-family: 微软雅黑; font-size: 18px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: 0px; text-transform: none; white-space: normal; widows: 2; word-spacing: 0px; -webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; display: inline !important; float: none; ">
                            <asp:Label ID="lbl_comment_tt" runat="server" Text="（共推荐14人并排序）" 
                                Visible="False"></asp:Label>
                            </span>
                            </span></font>
                        </td>
                    </tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px; text-align: left;">
                            <FONT face="宋体"><span style="background-color: #e4edf9">
                            <asp:Label ID="lbl_pingjia" runat="server" Visible="False"></asp:Label><br />
                            </span></font>
                        </td>
                    </tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px; text-align: left;" id="TD2" runat="server">
                            <FONT face="宋体"><span style="background-color: #e4edf9">
                            <span style="color: #cc0000">
                                <asp:Label ID="Label2" runat="server">注意：请您完成对以上全部人员的投票后再提交，一旦提交后则不能更改您的投票结果。</asp:Label><asp:Label
                                    ID="lbl_tongji" runat="server"></asp:Label>&nbsp;
                                <asp:Button ID="btn_commit" runat="server" OnClick="btn_commit_Click" Text="提交" Width="79px" Font-Size="16pt" Font-Bold="True" ForeColor="Red" /></span><br />
                            </span></font>
                        </td>
                    </tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px; text-align: right;"><FONT face="宋体"><span style="background-color: #e4edf9">
                                <br />
                        </span></FONT></TD>
					</TR>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>


