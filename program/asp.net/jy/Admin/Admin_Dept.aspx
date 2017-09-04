<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin_Dept.aspx.cs" Inherits="Admin_Dept" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>人事部门管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style2
            {
                height: 28px;
            }
            .style5
            {
                width: 102px;
                height: 27px;
            }
            .style6
            {
                height: 27px;
            }
            .style7
            {
                width: 102px;
                height: 28px;
            }
            .style8
            {
                width: 102px;
                height: 30px;
            }
            .style9
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
                            部门维护&nbsp;</th></tr>
                    <tr>
                        <TD class="forumRowHighlight" vAlign="top" height="30" id="Td2" runat="server" visible="true">
                            <asp:RadioButtonList ID="rblist_type" runat="server" AutoPostBack="True" OnSelectedIndexChanged="rblist_type_SelectedIndexChanged"
                                RepeatColumns="4" Width="400px" Visible="False">
                                <asp:ListItem Selected="True">正高级</asp:ListItem>
                                <asp:ListItem>专业技术二级</asp:ListItem>
                                <asp:ListItem>特殊津贴</asp:ListItem>
                                <asp:ListItem>优秀硕博论文</asp:ListItem>
                            </asp:RadioButtonList></td>
                    </tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="top" height="30" id="TD1" runat="server" visible="false">
                            查找类别：<asp:DropDownList ID="ddlist_type" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                                <asp:ListItem Value="loginname">登录名</asp:ListItem>
                                <asp:ListItem Value="username">用户名</asp:ListItem>
                                <asp:ListItem Value="gzdw">工作单位</asp:ListItem>
                                <asp:ListItem Value="zc">职称</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                            <asp:TextBox ID="tbx_search" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" /></TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top">
                            <asp:GridView ID="gv_Dept" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" 
                                OnRowEditing="gv_Dept_RowEditing" OnRowDeleting="gv_Dept_RowDeleting" 
                                OnPageIndexChanging="gv_Dept_PageIndexChanging" EnableModelValidation="True" 
                                Font-Names="宋体" Font-Size="9pt" PageSize="50">
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <Columns>
                                    <asp:BoundField DataField="bm" HeaderText="ID" />
                                    <asp:BoundField DataField="url" HeaderText="编码" />
                                    <asp:BoundField DataField="Name" HeaderText="单位名称" />
                                    <asp:TemplateField HeaderText="是否提交状态">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("sftj") %>'></asp:TextBox>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("sftj") %>' 
                                                Font-Size="9pt"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="操作">
                                        <ItemTemplate>
                                            <a href='Article_Add.aspx?ID=<%#Eval("bm")%>' ></a>
                                            <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit">修改</asp:LinkButton>
                                            <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">删除</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <PagerStyle HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                            </asp:GridView>
                        </td>
					</tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;<asp:button id="btn_Add" runat="server" 
                                Text="添加新部门" Width="75px" OnClick="btn_Add_Click" ></asp:button>
                            <asp:Label ID="lbl_id" runat="server" Visible="False" Font-Size="9pt"></asp:Label>
                            <asp:Label ID="lbl_editflag" runat="server" Visible="False" Font-Size="9pt"></asp:Label></td>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" style="text-align: center" >
                        <table style="width: 615px; height: 19px" cellpadding="0" cellspacing="0">
                        <tr>
                        <td style="text-align: right" class="style7">编码：</td><td class="style2"><asp:TextBox
                            ID="tbx_bm" runat="server"></asp:TextBox></td>
                        </tr>
                            <tr>
                                <td style="text-align: right" class="style8">
                        
                        
                        <asp:Label ID="Label2" runat="server" Text="部门名称：" Width="62px" Font-Size="9pt"></asp:Label></td>
                                <td class="style9"><asp:TextBox
                            ID="tbx_dwmc" runat="server"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="text-align: right" class="style7">
                        <asp:Label ID="Label5" runat="server" Text="是否提交状态：" Width="90px" Font-Size="9pt"></asp:Label></td>
                                <td valign="middle" class="style2">
                                    <asp:RadioButtonList ID="rbtnlist_sftj" runat="server" Height="18px" RepeatColumns="2"
                                        RepeatDirection="Horizontal" Width="130px">
                                        <asp:ListItem Value="已提交">已提交</asp:ListItem>
                                        <asp:ListItem Value="未提交">未提交</asp:ListItem>
                                    </asp:RadioButtonList></td>
                            </tr>
                        <tr>
                        <td style="text-align: right" class="style5">
                        <asp:Label ID="Label7" runat="server" Text="初始密码：" Width="62px" Font-Size="9pt"></asp:Label></td>
                            <td class="style6"><asp:TextBox
                            ID="tbx_pwd_new" runat="server"></asp:TextBox>（密码留空则不修改）</td>
                        </tr>
                        </table>
                        &nbsp;<asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                        <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="取消" Width="48px" /></td>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>