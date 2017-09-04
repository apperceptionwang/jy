<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_Jt4Result.aspx.cs" Inherits="admin_Jt4Result" %>

<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>结题评审项目进度管理</title>
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
            .style13
            {
                color: #FF0000;
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
							align="left" height="25" class="style9">
                            结题评审结果</th></tr>
                    <tr>
                        <td class="style3" visible="False">
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按年度查询：</td>
                                    <td class="style2">
                                        <asp:TextBox ID="tbx_year" runat="server" Visible="False"></asp:TextBox>
                                    <asp:DropDownList ID="ddlist_year" runat="server" Width="131px">
                                        <asp:ListItem>全部</asp:ListItem>
                                    </asp:DropDownList>&nbsp;<span class="style13">如对该条件无限制请留空</span></td>
                                    <td style="width: 372px" valign="middle">
                                        &nbsp;</td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
                    <tr>
                        <td class="style3" visible="False">
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按项目状态查询：</td>
                                    <td class="style11">
                                    <asp:DropDownList ID="ddlist_xmzt0" runat="server" Width="131px">
                                        <asp:ListItem>全部</asp:ListItem>
                                        <asp:ListItem>申报</asp:ListItem>
                                        <asp:ListItem>在研</asp:ListItem>
                                        <asp:ListItem>延期</asp:ListItem>
                                        <asp:ListItem>结题</asp:ListItem>
                                    </asp:DropDownList></td>
                                    <td valign="middle" class="style12">
                                        </td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
                    <tr>
                        <td class="style3">
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        按分组查询：</td>
                                    <td class="style11">
                                    <asp:DropDownList ID="ddlist_cGroup" runat="server" Width="131px">
                                        <asp:ListItem>全部</asp:ListItem>
                                    </asp:DropDownList></td>
                                    <td valign="middle" class="style12">
                                        </td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
                    <tr>
                        <td class="style3">
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
						<td bgColor="#ffffff" style="height: 302px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                EnableModelValidation="True" PageSize="20" 
                                onrowdatabound="GridView1_RowDataBound" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                <asp:TemplateField HeaderText="序号">
                                        <ItemTemplate>
                                             <asp:Label ID="lbl_ID" runat="server" Width="32px" Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ktmc" HeaderText="课题名称" />
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="评委1" DataField="zjpf1" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zjpf2" HeaderText="评委2" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="评委3" DataField="zjpf3" >
                                    <ItemStyle Width="50px" />
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="评委4" DataField="zjpf4" >
                                    <ItemStyle Width="50px" />
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zjpf5" HeaderText="评委5">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zjpf6" HeaderText="评委6">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zjpf7" HeaderText="评委7">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zf" HeaderText="总分">
                                    <ItemStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="pjf" HeaderText="平均分">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="pm" HeaderText="排名">
                                    <ItemStyle Width="40px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ps" HeaderText="同意立项票数">
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="操作" Visible="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit" Visible="False">修改</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_Select" runat="server" CommandName="select">查看</asp:LinkButton>
									</ItemTemplate>
                                        <ItemStyle Width="80px" />
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
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        
                                CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" 
                                AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                                PageSize="20" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
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
                        <td class="style3">
                            <table style="width: 934px">
                                <tr>
                                    <td class="style1">
                                        导出评审结果：</td>
                                    <td class="style2">
                                        <asp:Button ID="btn_exp2Excel"
                                runat="server" OnClick="btn_exp2Excel_Click" Text="导出" Width="48px" /></td>
                                    <td style="width: 372px" valign="middle">
                            <asp:Label ID="lbl_editflag" runat="server" Font-Names="宋体" 
                                            Font-Size="9pt" Visible="False" /></td>
                                </tr>
                            </table>
                        </td>
                                
                    </tr>
					</table>
			</div>
		</form>
		
	</body>
</HTML>
