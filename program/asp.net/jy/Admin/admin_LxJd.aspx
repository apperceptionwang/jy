<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxJd.aspx.cs" Inherits="admin_LxJd" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>立项评审项目进度管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                width: 150px;
                text-align: right;
            }
            .style2
            {
                width: 283px;
                text-align: left;
            }
            .style3
            {
                height: 30px;
                width: 1079px;
            }
            .style5
            {
                height: 21px;
                width: 467px;
                text-align: left;
            }
            .style6
            {
                width: 467px;
                text-align: left;
            }
            .style7
            {
                width: 102px;
            }
            .style8
            {
                height: 21px;
                width: 102px;
            }
            .style9
            {
                width: 1079px;
            }
            .style11
            {
                width: 283px;
                text-align: left;
                height: 20px;
            }
            .style12
            {
                width: 372px;
                height: 20px;
            }
            </style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th colspan=4 id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25" class="style9">
                            申报项目状态查询（可修改教师提交状态、项目状态）</th></tr>
                    <tr>
                        <td class="style3" colspan=4>
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按申请部门查询：</td>
                                    <td class="style11">
                                    <asp:DropDownList ID="ddlist_sqbm" runat="server" Width="131px">
                                        <asp:ListItem>全部</asp:ListItem>
                                    </asp:DropDownList></td>
                                    <td valign="middle" class="style12">
                                        </td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
                    <tr>
                        <td class="style3" colspan=4>
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按提交状态查询：</td>
                                    <td class="style2">
                                    <asp:DropDownList ID="ddlist_tjzt0" runat="server" Width="131px">
                                        <asp:ListItem>全部</asp:ListItem>
                                        <asp:ListItem Value="2">已提交</asp:ListItem>
                                        <asp:ListItem Value="1">未提交</asp:ListItem>
                                    </asp:DropDownList>
                                    </td>
                                    <td style="width: 372px" valign="middle">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
                    <tr>
                        <td class="style3" colspan=4>
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按姓名（教师号）查询：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="tbx_spm" runat="server"></asp:TextBox>
                                        <asp:Button ID="btn_find"
                                runat="server" OnClick="btn_find_Click" Text="查找" Width="48px" />&nbsp;</td>
                                    <td style="width: 372px" valign="middle">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
					<tr>
                        <td class="style3" colspan=4>
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按条件导出到Excel文件：</td>
                                    <td class="style2">
                                        <asp:Button ID="btn_exp2Excel"
                                runat="server" OnClick="btn_exp2Excel_Click" Text="导出" Width="48px" />&nbsp;</td>
                                    <td style="width: 372px" valign="middle">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top" colspan=4>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                OnRowEditing="GridView1_RowEditing" PageSize="20" 
                                EnableModelValidation="True" 
                                onselectedindexchanging="GridView1_SelectedIndexChanging" 
                                onrowdatabound="GridView1_RowDataBound" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                <asp:TemplateField HeaderText="序号">
                                        <ItemTemplate>
                                             <asp:Label ID="lbl_ID" runat="server" Width="32px" ></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField HeaderText="申报号" DataField="appNo" >
                                    <ItemStyle Width="70px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ktmc" HeaderText="课题名称" />
                                    <asp:BoundField DataField="sqbm" HeaderText="申请系部" >
                                    <ItemStyle Width="110px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="项目状态" DataField="xmzt" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="资助类别" DataField="zzlb" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
										<asp:LinkButton ID="lbtn_Edit" runat="server" CommandName="edit">修改</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_Select" runat="server" CommandName="select">查看</asp:LinkButton>
									</ItemTemplate>
                                        <ItemStyle Width="100px" />
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
                                <EditRowStyle BackColor="BurlyWood" />
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Size="13px" Font-Bold="True" 
                                    ForeColor="White" /><PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" 
                                    ForeColor="Black" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        
                                CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" 
                                AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                                PageSize="20" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                        </td>
                        
					</tr>
					<tr>
						<td>
                            &nbsp;</td>
                        <td>
                            &nbsp;</td><td></td><td></td>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false"  colspan=4
                            style="text-align: center; width: 884px;" >
                        <table style="width: 283px; height: 19px; font-family: 宋体; font-size: 9px;" 
                            cellpadding="0" cellspacing="0">
                            <tr>
                                <td style="text-align: right" class="style7">
                        
                        
                        <asp:Label ID="Label2" runat="server" Text="申报号：" Width="100px" Font-Names="宋体" 
                                        Font-Size="9pt"></asp:Label></td>
                                <td class="style6">
                                    <asp:TextBox
                            ID="tbx_appNo" runat="server" ReadOnly="True"></asp:TextBox></td>
                            </tr>
                            <tr>
                        <td style="text-align: right; " class="style8"><asp:Label ID="Label1" 
                                runat="server" Text="姓名：" Width="50px" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                                <td class="style5">
                                    <asp:TextBox
                            ID="tbx_username" runat="server" ReadOnly="True"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1"
                                runat="server" ControlToValidate="tbx_username" ErrorMessage="*" Font-Names="宋体" 
                                        Font-Size="9pt"></asp:RequiredFieldValidator></td>
                            </tr>
                            <tr>
                                <td style="text-align: right" class="style7">
                                    <asp:Label ID="Label3" runat="server" Text="所在系部：" Width="100px" 
                                        Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                                <td class="style6">
                                    <asp:DropDownList ID="ddlist_dept" runat="server" Width="131px">
                                    </asp:DropDownList></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; " id="TD4" runat="server" class="style8">
                                    项目状态：</td>
                                <td id="TD3" class="style5">
                                    <asp:DropDownList ID="ddlist_Status" runat="server" Width="131px">
                                        <asp:ListItem Value="2">已提交</asp:ListItem>
                                        <asp:ListItem Value="1">未提交</asp:ListItem>
                                    </asp:DropDownList>
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
