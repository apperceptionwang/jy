<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_Jt1zjGroup.aspx.cs" Inherits="admin_Jt1zjGroup" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>结题评审专家管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                font-family: 宋体, Arial, Helvetica, sans-serif;
                
            }
            .style2
            {
                font-family: 宋体, Arial, Helvetica, sans-serif;
                font-size: 9pt;
            }
            .style3
            {
                font-size: 9pt;
            }
            .style4
            {
                text-align: left;
            }
            .style5
            {
                width: 133px;text-align: right;
            }
            .style6
            {
                height: 25px;
                width: 136px;
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
                            结题专家基本信息管理&nbsp;</th></tr>
					<tr>
						<TD id ="td_search0" runat=server class="forumRowHighlight" 
                            vAlign="middle" height="30">
                            按组群查找：<asp:DropDownList ID="ddlist_Group" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                            </asp:DropDownList>&nbsp;<asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" 
                                CssClass="style2" />
                            <asp:CheckBox ID="cbx_SelectAll" runat="server" AutoPostBack="True" 
                                oncheckedchanged="cbx_SelectAll_CheckedChanged" Text="全选" 
                                 />
                            </TD>
					</tr>
					<tr>
						<TD id ="td_search" runat=server visible=false class="forumRowHighlight" vAlign="middle" height="30">
                            查找类别：<asp:DropDownList ID="ddlist_type" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                                <asp:ListItem Value="loginname">登录名</asp:ListItem>
                                <asp:ListItem Value="username">用户名</asp:ListItem>
                                <asp:ListItem Value="gzdw">工作单位</asp:ListItem>
                                <asp:ListItem Value="zc">职称</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                            <asp:TextBox ID="tbx_search" runat="server"></asp:TextBox>
                            <asp:Label ID="lbl_type" runat="server" Visible="False" Font-Size="9pt"></asp:Label></TD>
					</tr>
					<tr>
						<td bgColor="#ffffff"  valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                OnRowEditing="GridView1_RowEditing" OnRowDeleting="GridView1_RowDeleting" 
                                AllowSorting="True" 
                                OnRowUpdating="GridView1_RowUpdating" 
                                EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound" 
                                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" 
                                GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="序号">
                                        <ItemTemplate>
                                             <asp:Label ID="lbl_ID0" runat="server" Width="32px" 
                                                 Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="40px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="loginname" HeaderText="登录名" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="username" HeaderText="专家名" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="szbm" HeaderText="所在部门" Visible="False" />
                                    <asp:BoundField DataField="zc" HeaderText="专业技术资格名称" />
                                    <asp:BoundField DataField="jb" HeaderText="技术职务资格级别">
                                    <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zy" HeaderText="最高学位专业">
                                    <ItemStyle Width="200px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="联系电话" Visible="False" />
                                    <asp:BoundField DataField="cGroup" HeaderText="分组" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="是否提交">
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td style="width: 71px; height: 25px">
                                                        <asp:RadioButtonList ID="rbl_tj" runat="server" Height="20px" RepeatDirection="Horizontal"
                                                            Width="84px" Visible="False" >
                                                            <asp:ListItem Value="True">是</asp:ListItem>
                                                            <asp:ListItem Value="False">否</asp:ListItem>
                                                        </asp:RadioButtonList></td>
                                                    <td class="style6">
                                                        <asp:CheckBox ID="cbx_HandOn" runat="server" Text="提交" Visible="False" />
                                                        <asp:LinkButton ID="lbtn_tj_confirm" runat="server" CommandName="update" 
                                                            Visible="False">确定</asp:LinkButton>
                                                        <asp:Label ID="lbl_Flag" runat="server" ></asp:Label>
                                                    </td>
                                                </tr>
                                            </table>
                                        </ItemTemplate>
                                        <ItemStyle Width="80px" />
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="查看评审信息" SelectText="查看" ShowSelectButton="True" 
                                        Visible="False" />
                                    <asp:TemplateField HeaderText="操作" Visible="False">
                                    <ItemTemplate>
											
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit" 
                                            Visible="False">修改</asp:LinkButton>
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete" 
                                            Visible="False">移除</asp:LinkButton>
									</ItemTemplate>
                                        <ItemStyle Width="50px" />
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
                                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Size="13px" Font-Bold="True" 
                                    ForeColor="White" />
                                <PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" ForeColor="Black" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        
                                CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" 
                                AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                                PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                        </td>
					</tr>
					<tr>
						<TD id ="td_search2" runat=server visible=True class="forumRowHighlight" 
                            vAlign="middle" height="20" align = right >
                            每页显示条数<asp:DropDownList 
                                ID="ddl_PageSize" runat="server" AutoPostBack="True" 
                                onselectedindexchanged="ddl_PageSize_SelectedIndexChanged">
                                <asp:ListItem>10</asp:ListItem>
                                <asp:ListItem Selected="True">20</asp:ListItem>
                                <asp:ListItem>50</asp:ListItem>
                                <asp:ListItem>100</asp:ListItem>
                            </asp:DropDownList>
                            </TD>
						</tr>
					<tr>
                        <TD class="forumRowHighlight" style="height: 30px">
                            <FONT face="宋体"><span style="background-color: #e4edf9; font-size: 12px;">将选择的</span>专家<span 
                                class="STYLE1" style="font-size: 12px">添加</span><span
                                style="background-color: #e4edf9; font-size: 12px;">到&nbsp; </span>
                                <asp:dropdownlist id="dw_group" runat="server" Width="105px">
                                </asp:DropDownList>
                                <asp:Button ID="btn_ok" runat="server" OnClick="btn_Ok_Click" Text="确定" 
                                Width="51px" CssClass="style2" />
                                &nbsp;
                                <asp:Button ID="btn_drop" runat="server" OnClick="btn_drop_Click" Text="移除所选专家的分组" 
                                Width="143px" CssClass="style2" />
                                </font>&nbsp;<asp:Button ID="btn_Return" runat="server" 
                                onclick="btn_Return_Click" Text="移回专家库" />
                            <asp:Button ID="btn_Hand" runat="server" onclick="btn_Hand_Click" Text="提交所选项" 
                                Width="68px" />
                            <asp:Button ID="btn_ReturnHand" runat="server" onclick="btn_ReturnHand_Click" 
                                Text="撤回所选提交项" Width="94px" />
                        </td>
                    </tr>
                    <tr>
                        <TD id="id_Change" runat=server visible=false class="forumRowHighlight" style="height: 30px" v>
                            <FONT face="宋体"><span style="background-color: #e4edf9; font-size: 12px;">选择的两个专家角色互换：</span>
                                <asp:Button ID="btn_Change" runat="server" OnClick="btn_Change_Click" 
                                Text="确定" Width="51px" CssClass="style2" /></font></td>
                    </tr>
                    <tr>
                        <td id="id_ExpData" runat=server visible=false  class="forumRowHighlight" height="30" valign="middle">
                            批量导入专家数据：<asp:FileUpload ID="FileUpload1" runat="server" Width="462px" 
                                CssClass="style2" /><asp:Button ID="btn_upload" runat="server" 
                                OnClick="btn_upload_Click" Text="上传" Width="50px" CssClass="style2" />
                            <asp:CheckBox ID="cbx_upload" runat="server" Text="使用已上传文件" />
                            <asp:Label ID="lbl_result" runat="server" Visible="False" Width="734px" 
                                Font-Size="9pt"></asp:Label></td>
                    </tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;<asp:button id="btn_Add0" runat="server" 
                                Text="从专家库导入专家" OnClick="btn_Add0_Click" CssClass="style2" ></asp:button>
                            </td>
					</tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;<asp:button id="btn_Add" runat="server" 
                                Text="新增" Width="75px" OnClick="btn_Add_Click" CssClass="style2" 
                                Visible="False" ></asp:button>
                            <asp:Label ID="lbl_id" runat="server" Visible="False" Font-Size="9pt"></asp:Label>
                            <asp:Label ID="lbl_editflag" runat="server" Visible="False" Font-Size="9pt"></asp:Label></td>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false" style="text-align: center" >
                        <table style="width: 615px; height: 19px" cellpadding="0" cellspacing="0">
                        <tr>
                        <td class="style5" dir="ltr">
                            登录名：</td>
                            <td align="left" class="style4">
                                    <asp:TextBox ID="tbx_sfzh" runat="server" CssClass="style3"></asp:TextBox></td>
                        </tr>
                            <tr>
                                <td style="text-align: right" class="style5">
                        
                        
                                    姓名：</td>
                                <td class="style4"><asp:TextBox
                            ID="tbx_user_name" runat="server" CssClass="style3"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="text-align: right" class="style5">
                                    </td>
                                <td class="style4">
                                    <asp:TextBox
                            ID="tbx_admin_name" runat="server" CssClass="style3" Visible="False"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; " class="style5">
                                    性别：</td>
                                <td class="style4"><asp:RadioButtonList
                            ID="rbtnlist_xb" runat="server" Height="18px" RepeatColumns="2" 
                                        RepeatDirection="Horizontal" Width="100px">
                                    <asp:ListItem Selected="True">男</asp:ListItem>
                                    <asp:ListItem>女</asp:ListItem>
                        </asp:RadioButtonList></td>
                            </tr>
                            <tr>
                                <td style="text-align: right; " class="style5">工作单位：</td>
                                <td class="style4">
                                    <asp:TextBox
                            ID="tbx_gzdw" runat="server" CssClass="style3"></asp:TextBox></td>
                            </tr>
                            <tr>
                                <td style="text-align: right" class="style5">
                                    职称：</td>
                                <td class="style4"><asp:TextBox
                            ID="tbx_zc" runat="server" CssClass="style3"></asp:TextBox></td>
                            </tr>
                        <tr>
                        <td style="text-align: right" class="style5">
                            密码：</td>
                            <td class="style4">
                                <asp:TextBox
                            ID="tbx_pwd_new" runat="server" CssClass="style3"></asp:TextBox>（密码留空则不修改）</td>
                        </tr>
                        </table>
                        &nbsp;<asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" 
                            Text="确定" Width="48px" CssClass="style2" />
                        <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="取消" 
                            Width="48px" CssClass="style2" /></td>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>

