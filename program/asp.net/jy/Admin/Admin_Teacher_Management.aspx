<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_Teacher_Management.aspx.cs" Inherits="Admin_Admin_Teacher_Management" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>用户管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                width: 193px;
                text-align: right;
            }
            .style2
            {
                width: 283px;
            }
            .style3
            {
                height: 30px;
            }
        </style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            教师信息查询（可修改教师密码）</th></tr>
                    <tr>
                        <td class="style3">
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                            使用首拼码（姓名、教师号）查询：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="tbx_spm" runat="server"></asp:TextBox>
                                        <asp:Button ID="btn_spm_find"
                                runat="server" OnClick="btn_spm_find_Click" Text="查找" Width="48px" />&nbsp;</td>
                                    <td style="width: 372px" valign="middle">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" AllowPaging="True" 
                                OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" 
                                OnPageIndexChanging="GridView1_PageIndexChanging" PageSize="20" 
                                EnableModelValidation="True" BackColor="White" BorderColor="#DEDFDE" 
                                BorderStyle="None" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:BoundField DataField="jsh" HeaderText="教师号" />
                                    <asp:BoundField DataField="dept" HeaderText="所在系部" />
                                    <asp:BoundField DataField="jsm" HeaderText="教师名" />
                                    <asp:BoundField HeaderText="期中申报状态" Visible="False" />
                                    <asp:BoundField HeaderText="期末申报状态" Visible="False" />
                                    <asp:BoundField HeaderText="期末核对状态" Visible="False" />
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											<a href='Article_Add.aspx?ID=<%#Eval("jsh")%>' >
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
                                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Size="13px" Font-Bold="True" 
                                    ForeColor="White" /><PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" 
                                    ForeColor="Black" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                        </td>
					</tr>
                    <tr>
                        <td class="forumRowHighlight" style="height: 30px">
                            <asp:Label ID="Label8" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                Text="初始化教师提交状态：" Visible="False"></asp:Label>
                            &nbsp;
                            <asp:Button ID="btn_init" runat="server"
                            Text="初始化" OnClick="btn_init_Click" Visible="False" /></td>
                    </tr>
                    <tr>
                        <td class="forumRowHighlight" style="height: 30px">
                            设置统一初始密码：<asp:TextBox ID="tbx_InitPwd" runat="server"></asp:TextBox><asp:Button ID="btn_InitPwd"
                                runat="server" OnClick="btn_InitPwd_Click" Text="确定" Width="48px" />
                            &nbsp;
                            <asp:CheckBox ID="cbx_InitPwd" runat="server" Text="是否使用统一初始密码" TextAlign="Left" AutoPostBack="True" OnCheckedChanged="cbx_InitPwd_CheckedChanged" /></td>
                    </tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            <table style="width: 645px">
                                <tr>
                                    <td style="width: 104px; height: 26px">
                                        <asp:button id="btn_Add" runat="server" Text="添加新教师" Width="75px" 
                                            OnClick="btn_Add_Click" ></asp:button></td>
                                    <td style="height: 26px">
                                    </td>
                                    <td style="height: 26px">
                            <asp:Label ID="lbl_editflag" runat="server" Visible="False" Font-Names="宋体" 
                                            Font-Size="9pt" /></td>
                                </tr>
                            </table>
                        </td>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" style="text-align: center" >
                        <table style="width: 615px; height: 19px; font-family: 宋体; font-size: 9px;" 
                            cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="width: 102px; text-align: right">
                        
                        
                        <asp:Label ID="Label2" runat="server" Text="教师号：" Width="100px" Font-Names="宋体" 
                                        Font-Size="9pt"></asp:Label></td>
                                <td><asp:TextBox
                            ID="tbx_sfzh" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                        <td style="width: 102px; text-align: right; height: 21px;"><asp:Label ID="Label1" 
                                runat="server" Text="姓名：" Width="50px" Font-Names="宋体" Font-Size="9pt"></asp:Label></td><td style="height: 21px"><asp:TextBox
                            ID="tbx_username" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ControlToValidate="tbx_username" ErrorMessage="*" Font-Names="宋体" 
                                        Font-Size="9pt"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right">
                                    <asp:Label ID="Label3" runat="server" Text="所在系部：" Width="100px" 
                                        Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                                <td>
                                    <asp:DropDownList ID="ddlist_dept" runat="server" Width="131px">
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;" id="TD1" runat="server">
                        <asp:Label ID="Label7" runat="server" Text="初始密码：" Width="62px" Font-Names="宋体" 
                                        Font-Size="9pt"></asp:Label>
                                </td>
                                <td style="height: 21px" id="TD2"><asp:TextBox
                            ID="tbx_csmm" runat="server" TextMode="Password" Width="130px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;" id="TD4" runat="server">
                        <asp:Label ID="Label5" runat="server" Text="确认密码：" Width="62px" Font-Names="宋体" 
                                        Font-Size="9pt"></asp:Label></td>
                                <td style="height: 21px" id="TD3"><asp:TextBox
                            ID="tbx_qrmm" runat="server" TextMode="Password" Width="130px"></asp:TextBox>
                                    <asp:CompareValidator
                                ID="CompareValidator1" runat="server" ControlToCompare="tbx_csmm" ControlToValidate="tbx_qrmm"
                                ErrorMessage="两次密码不一致" Font-Names="宋体" Font-Size="9pt"></asp:CompareValidator></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;" id="TD5" runat="server">
                                    提交状态：</td>
                                <td style="height: 21px" id="TD3">
                                        <asp:RadioButtonList ID="rbl_tj" runat="server" 
                                            RepeatDirection="Horizontal">
                                            <asp:ListItem Value="False">已提交</asp:ListItem>
                                            <asp:ListItem Value="True" Selected="True">未提交</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                            </tr>
                            </table>
                        &nbsp;<asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                        <asp:Button ID="btn_cancel1" runat="server" OnClick="btn_cancel_Click" Text="取消" Width="48px" />
                        </td>
					</tr>
					</table>
			</div>
		</form>
		
	</body>
</HTML>
