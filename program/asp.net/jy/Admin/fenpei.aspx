<%@ Page Language="C#" AutoEventWireup="true" CodeFile="fenpei.aspx.cs" Inherits="Admin_fenpei" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>分配</title>
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
                            点击 <span style="color: #cc0000">姓名</span> 可以查看修改参评人员信息 点击<span style="color: #cc0000">审核结果</span>下的<span
                                style="color: #cc0000">修改</span>可以更改审核结果<br />
                            改变<span style="color: #cc0000">是否允许修改</span>选项
                            ，然后点击每行后面相应的<span style="color: #cc0000">确定</span>按钮，可以修改相应信息</TD>
					</tr>
					 <tr>
                        <TD class="forumRowHighlight" style="height: 30px">
                            <FONT face="宋体"><span style="background-color: #e4edf9"></span>
                            </font>
                        </td>
                    </tr>
                    <tr>
                        <td bgColor="#ffffff" valign="top" id="Td3" style="height: 27px">
                            &nbsp; &nbsp; &nbsp; &nbsp; 专家组群列表：<asp:DropDownList ID="ddlist_zj" runat="server"
                                Width="149px">
                            </asp:DropDownList></td>
                    </tr>
					<tr>
						<td bgColor="#ffffff" valign="top" id="TD1" style="height: 27px">
                            参评人员组群列表：<asp:DropDownList ID="ddlist_cpry" runat="server" Width="149px">
                            </asp:DropDownList>
                        </td>
					</tr>
					<tr>
						<td bgColor="#ffffff" valign="top" id="TD2">
                            组群对应列表<br />
                            <asp:GridView ID="gv_detail" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" OnRowDeleting="gv_detail_RowDeleting" OnSelectedIndexChanging="gv_detail_SelectedIndexChanging" >
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="zj" HeaderText="专家组群" />
                                    <asp:BoundField DataField="cpry" HeaderText="参评人员组群" />
                                    <asp:CommandField SelectText="查看" ShowSelectButton="True" />
                                    <asp:CommandField ShowDeleteButton="True" SelectText="查看" />
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px; text-align: center;"><FONT face="宋体"><span style="background-color: #e4edf9">
                                <asp:Button ID="btn_save" runat="server" OnClick="btn_Ok_Click" Text="保存" Width="51px" /></span></FONT></TD>
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
