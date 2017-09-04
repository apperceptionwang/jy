<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_zjInfo.aspx.cs" Inherits="admin_zjInfo" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>专家信息管理</title>
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
							align="left" height="25" colspan="2">
                            专家信息管理&nbsp;</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            查找类别：<asp:DropDownList 
                                ID="ddlist_type" runat="server" Width="200px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                                <asp:ListItem Value="loginname">登录名</asp:ListItem>
                                <asp:ListItem Value="username">专家名</asp:ListItem>
                                <asp:ListItem Value="szbm">所在部门</asp:ListItem>
                                <asp:ListItem Value="zc">专业技术资格名称</asp:ListItem>
                                <asp:ListItem Value="jb">技术职务资格级别</asp:ListItem>
                                <asp:ListItem Value="zy">最高学位专业</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                            <asp:TextBox ID="tbx_search" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" />
                            <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label></TD>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            每页显示条数<asp:DropDownList 
                                ID="ddl_PageSize" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddl_PageSize_SelectedIndexChanged">
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem>20</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                        </TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" 
                                OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" 
                                AllowSorting="True" OnPageIndexChanging="GridView1_PageIndexChanging" 
                                OnRowUpdating="GridView1_RowUpdating" 
                                OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                                EnableModelValidation="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="序号">
                                        <ItemTemplate>
                                             <asp:Label ID="lbl_ID" runat="server" Width="32px" Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="40px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="loginname" HeaderText="登录名" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="username" HeaderText="专家名" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="szbm" HeaderText="所在部门" />
                                    <asp:BoundField DataField="zc" HeaderText="专业技术资格名称" />
                                    <asp:BoundField DataField="jb" HeaderText="技术职务资格级别">
                                    <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zy" HeaderText="最高学位专业">
                                    <ItemStyle Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="phone" HeaderText="联系电话" Visible="False" />
                                    <asp:BoundField DataField="fenlei" HeaderText="组群" Visible="False" />
                                    <asp:TemplateField HeaderText="是否提交" Visible="False">
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td style="width: 71px; height: 25px">
                                                        <asp:RadioButtonList ID="rbl_tj" runat="server" Height="20px" RepeatDirection="Horizontal"
                                                            Width="84px">
                                                            <asp:ListItem Value="True">是</asp:ListItem>
                                                            <asp:ListItem Value="False">否</asp:ListItem>
                                                        </asp:RadioButtonList></td>
                                                    <td style="width: 100px; height: 25px">
                                                        <asp:LinkButton ID="lbtn_tj_confirm" runat="server" CommandName="update">确定</asp:LinkButton></td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="查看评审信息" SelectText="查看" ShowSelectButton="True" 
                                        Visible="False" />
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit">修改</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">删除</asp:LinkButton>
									</ItemTemplate>
                                        <ItemStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择">
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:CheckBox ID="cbx_select" runat="server" />
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                        </td>
					</tr>
                    <tr>
                        <td class="forumRowHighlight" height="30" valign="middle" colspan="2">
                            批量导入专家数据：<asp:FileUpload ID="FileUpload1" runat="server" Width="300px" />
                            <asp:Button ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="导入" 
                                Width="50px" />
                            &nbsp;<asp:HyperLink ID="HyperLink1" runat="server" 
                                NavigateUrl="../templete/专家基本信息导入格式.xls">下载模板</asp:HyperLink>
                            <asp:Label ID="lbl_result" runat="server" Visible="False" Height="16px"></asp:Label>
                            <FONT face="宋体">
                                <asp:Button ID="btn_exp" runat="server" OnClick="btn_exp_Click" Text="导出" /></font></td>
                    </tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px" colspan="2">
                            &nbsp;<asp:button id="btn_Add" runat="server" Text="添加新用户" Width="75px" OnClick="btn_Add_Click" ></asp:button>
                            <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
                            <asp:Label ID="lbl_editflag" runat="server" Visible="False"></asp:Label></td>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" 
                            style="text-align: center" colspan="2" >
                        <table style="width: 615px; height: 19px" cellpadding="0" cellspacing="0">
                        <tr>
                        <td style="width: 102px; text-align: right">
                            <asp:Label ID="Label1" runat="server" 
                                Text="登录名：" Width="120px" Font-Size="9pt"></asp:Label></td><td height="27">
                                <asp:TextBox
                            ID="tbx_LoginName" runat="server" Width="200px"></asp:TextBox></td>
                        </tr>
                            <tr>
                                <td style="width: 102px; text-align: right">
                        
                        
                        <asp:Label ID="Label2" runat="server" Text="专家名：" Width="120px" Font-Size="9pt"></asp:Label></td>
                                <td height="27">
                                    <asp:TextBox
                            ID="tbx_UserName" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right">
                                    <asp:Label ID="Label6" runat="server" Text="所在部门：" Width="120px" 
                                        Font-Size="9pt"></asp:Label></td>
                                <td height="27">
                                    <asp:TextBox
                            ID="tbx_szbm" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;">
                        <asp:Label ID="Label3" runat="server" Text="专业技术资格名称：" Width="120px" Font-Size="9pt"></asp:Label></td>
                                <td height="27">
                                    <asp:TextBox
                            ID="tbx_zc" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right; height: 21px;">
                                    <asp:Label ID="Label4" 
                                        runat="server" Text="技术职务资格级别：" Width="120px" Font-Size="9pt"></asp:Label></td>
                                <td style="height: 21px" height="27">
                                    <asp:TextBox
                            ID="tbx_jb" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="width: 102px; text-align: right">
                        <asp:Label ID="Label5" runat="server" Text="最高学位专业：" Width="120px" Font-Size="9pt"></asp:Label></td>
                                <td height="27">
                                    <asp:TextBox
                            ID="tbx_zy" runat="server" Width="200px"></asp:TextBox></td>
                            </tr>
                        <tr>
                        <td style="width: 102px; text-align: right">
                        <asp:Label ID="Label7" runat="server" Text="初始密码：" Width="120px" Font-Size="9pt"></asp:Label></td>
                            <td height="27">
                                <asp:TextBox
                            ID="tbx_pwd" runat="server" Width="200px"></asp:TextBox>（密码留空则不修改）</td>
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

