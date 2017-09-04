<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxzjGroup0.aspx.cs" Inherits="admin_LxzjGroup0" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>立项盲审专家管理</title>
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
                            立项盲审专家信息管理&nbsp;</th></tr>
					<tr>
						<TD id ="td_search0" runat=server class="forumRowHighlight" 
                            vAlign="middle" height="30">
                            按组群查找：<asp:DropDownList ID="ddlist_Group" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                            </asp:DropDownList>&nbsp;<asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" 
                                CssClass="style2" />
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
                                CellPadding="4" Width="100%" OnRowDeleting="GridView1_RowDeleting" 
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
                                    <ItemStyle Width="90px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="是否提交">
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
                                        <ItemStyle Width="120px" />
                                    </asp:TemplateField>
                                    <asp:CommandField HeaderText="查看评审信息" SelectText="查看" ShowSelectButton="True" 
                                        Visible="False" />
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit" 
                                            Visible="False">修改</asp:LinkButton>
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">移除</asp:LinkButton>
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
                                </font>&nbsp;</td>
                    </tr>
					<tr>
						<td class="forumRowHighlight" style="height: 30px">
                            &nbsp;<asp:button id="btn_Add0" runat="server" 
                                Text="从专家库导入专家" OnClick="btn_Add0_Click" CssClass="style2" ></asp:button>
                            </td>
					</tr>
					</table>
			</div>
		</form>
		
	</body>
</HTML>

