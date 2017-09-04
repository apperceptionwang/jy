<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renshi_zg_tj.aspx.cs" Inherits="Admin_renshi_zg_tj" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<HTML>
	<HEAD>
		<title>推荐管理</title>
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
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa; width: 692px;"
							align="left" height="25">
                            参评人员管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30" style="width: 692px">
                            点击 <span style="color: #cc0000">姓名</span> 可以查看修改参评人员信息 点击<span style="color: #cc0000">推荐结果</span>下的<span
                                style="color: #cc0000">保存</span>可以更改推荐结果</TD>
					</tr>

					<tr>
						<td bgColor="#ffffff" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnSelectedIndexChanging="GridView1_SelectedIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderText="排序ID">
                                        <ItemTemplate>
                                             <asp:TextBox ID="tbx_ID" runat="server" Width="32px" Text="<%#Container.DataItemIndex+1%>"></asp:TextBox>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    
                                    <asp:ButtonField CommandName="select" DataTextField="yourname" HeaderText="姓名" Text="按钮" >
                                        <ItemStyle ForeColor="Navy" />
                                    </asp:ButtonField>
                                    <asp:BoundField DataField="xingbie" HeaderText="性别" />
                                    <asp:BoundField DataField="nianling" HeaderText="年龄" />
                                    <asp:BoundField DataField="xrzw" HeaderText="现任职务" />
                                    <asp:BoundField DataField="sbzw" HeaderText="申报职务" />
                                    <asp:TemplateField HeaderText="推荐结果">
                                        <ItemTemplate>
                                            <asp:RadioButtonList 
                                                ID="rbtnList_tjjg" runat="server" Height="20px" RepeatDirection="Horizontal" 
                                                Width="110px" AutoPostBack="True">
                                                <asp:ListItem Value="推荐">推荐</asp:ListItem>
                                                <asp:ListItem>不推荐</asp:ListItem>
                                            </asp:RadioButtonList>
                                           </ItemTemplate>
                                        <ItemStyle ForeColor="Black" />
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
					</tr>
					<TR>
						<TD class="forumRowHighlight"><FONT face="宋体"><span style="background-color: #e4edf9">
                            <table id="table22" border="0" cellpadding="0" cellspacing="0" language="javascript"
                                onclick="return table22_onclick()" style="width: 684px; height: 18px">
                                <tr>
                                    <td style="font-size: 12px; width: 212px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; height: 20px;">
                            <asp:Label ID="lbl_tongji" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                                    <td style="font-size: 12px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                        text-align: right; height: 20px;">
                            <asp:LinkButton ID="lbtn_AllYes" runat="server" OnClick="lbtn_AllYes_Click" Visible="False">全部推荐</asp:LinkButton>&nbsp;
                                        &nbsp;<asp:LinkButton ID="lbtn_AllNo" runat="server" OnClick="lbtn_AllNo_Click" Visible="False">全部不推荐</asp:LinkButton>&nbsp;
                                        &nbsp;<asp:Button ID="btn_Save" runat="server" OnClick="btn_Save_Click" Text="保存" Width="51px" Visible="False" /></td>
                                </tr>
                            </table>
                        </span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px; width: 692px;">
                            <table style="width: 416px; height: 11px" cellpadding="0" cellspacing="0"><tr><td style="width: 2px; height: 17px;"></td><td style="width: 3px; height: 17px;">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                    RepeatDirection="Horizontal" Width="282px">
                                    <asp:ListItem Value="all" Selected="True">全部</asp:ListItem>
                                    <asp:ListItem>推荐</asp:ListItem>
                                    <asp:ListItem>不推荐</asp:ListItem>
                                    <asp:ListItem>未审核</asp:ListItem>
                                </asp:RadioButtonList></td></tr></table></td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px; width: 692px;" id="TD1" runat="server" visible="true">
                            <FONT face="宋体"><span style="background-color: #e4edf9">将本单位推荐的人员提交</span><span
                                style="background-color: #e4edf9">到中国地震局，<span style="color: #ff0000">注意：一旦提交后单位和个人不能再修改任何内容<br />
                                </span>
                                <asp:Button ID="btn_commit" runat="server" Text="提交" OnClick="btn_commit_Click" Width="51px" /><br />
                            </span>
                            </font>
                        </td>
                    </tr>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>


