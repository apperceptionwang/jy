<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renshi_ej_yhgl.aspx.cs" Inherits="Admin_renshi_ej_yhgl" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>专业技术二级 用户管理</title>
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
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            用户管理&nbsp;</th></tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" OnPageIndexChanging="GridView1_PageIndexChanging">
                                <Columns>
                                    <asp:BoundField DataField="id" HeaderText="ID" />
                                    <asp:BoundField DataField="yourname" HeaderText="用户名" />
                                    <asp:BoundField DataField="xingbie" HeaderText="性别" />
                                    <asp:BoundField DataField="dw" HeaderText="工作单位" />
                                    <asp:BoundField DataField="xrgw" HeaderText="现任职务" />
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											<a href='Article_Add.aspx?ID=<%#Eval("ID")%>' >
												</a>
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit">修改</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">删除</asp:LinkButton>
									</ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择" Visible="False">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbx_select" runat="server" />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" /><PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            <table style="width: 645px">
                                <tr>
                                    <td style="width: 104px; height: 26px">
                                        <asp:button id="btn_Add" runat="server" Text="添加新用户" Width="75px" OnClick="btn_Add_Click" ></asp:button></td>
                                    <td style="height: 26px">
                                    </td>
                                    <td style="height: 26px">
                            <asp:Label ID="lbl_editflag" runat="server" Visible="False" /></td>
                                </tr>
                            </table>
                        </td>
					</tr>
                    <tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" style="text-align: center" >
                        <table style="width: 615px; height: 19px" cellpadding="0" cellspacing="0">
                        <tr>
                        <td style="width: 102px; text-align: right"><asp:Label ID="Label1" runat="server" Text="姓名：" Width="50px"></asp:Label></td><td><asp:TextBox
                            ID="tbx_username" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ControlToValidate="tbx_username" ErrorMessage="*"></asp:RequiredFieldValidator></td>
                        </tr>
                            <tr>
                                <td style="width: 102px; text-align: right">
                        
                        
                        <asp:Label ID="Label2" runat="server" Text="身份证号：" Width="100px"></asp:Label></td>
                                <td><asp:TextBox
                            ID="tbx_sfzh" runat="server"></asp:TextBox><asp:RegularExpressionValidator ID="RegularExpressionValidator1"
                                runat="server" ControlToValidate="tbx_sfzh" ErrorMessage="身份证号有误" ValidationExpression="\d{17}[\d|X]|\d{15}"></asp:RegularExpressionValidator>
                            <asp:CheckBox ID="cbx_InitPwd" runat="server" Text="是否使用统一初始密码" TextAlign="Left" AutoPostBack="True" OnCheckedChanged="cbx_InitPwd_CheckedChanged" /></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;" id="TD1" runat="server">
                        <asp:Label ID="Label7" runat="server" Text="初始密码：" Width="62px"></asp:Label>
                                </td>
                                <td style="height: 21px" id="TD2"><asp:TextBox
                            ID="tbx_csmm" runat="server" TextMode="Password" Width="130px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;" id="TD4" runat="server">
                        <asp:Label ID="Label5" runat="server" Text="确认密码：" Width="62px"></asp:Label></td>
                                <td style="height: 21px" id="TD3"><asp:TextBox
                            ID="tbx_qrmm" runat="server" TextMode="Password" Width="130px"></asp:TextBox><asp:CompareValidator
                                ID="CompareValidator1" runat="server" ControlToCompare="tbx_csmm" ControlToValidate="tbx_qrmm"
                                ErrorMessage="两次密码不一致"></asp:CompareValidator></td>
                            </tr>
                        </table>
                        &nbsp;<asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                        <asp:Button ID="btn_cancel1" runat="server" OnClick="btn_cancel_Click" Text="取消" Width="48px" /></td>
                    </tr>
                    <tr>
                        <td class="forumRowHighlight" style="height: 30px" id="TD5" runat="server" visible="false">
                            设置统一初始密码：<asp:TextBox ID="tbx_InitPwd" runat="server"></asp:TextBox><asp:Button ID="btn_InitPwd"
                                runat="server" OnClick="btn_InitPwd_Click" Text="保存初始密码" Width="86px" />
                            &nbsp;&nbsp;
                        </td>
                    </tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>
