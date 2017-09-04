<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxxmBh.aspx.cs" Inherits="Admin_admin_LxxmBh" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>评审项目分组</title>
    <style type="text/css">

	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	TD.forumRowHighlight { padding: 3px;
	BACKGROUND: #e4edf9; text-align: left;
            }
	TD { FONT-SIZE: 12px }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	    .style2
        {
            font-family: 宋体, Arial, Helvetica, sans-serif;
            font-size: 9pt;
        }
	INPUT { border-width: 1px;
FONT-SIZE: 9pt; }
	SPAN { FONT-SIZE: 12pt; 
POSITION: static;
    text-align: left;
}
	A { COLOR: #000000; TEXT-DECORATION: none }
		.STYLE1 {
	color: #FF0000;
	font-weight: bold;
}
        .style3
        {
            width: 152px;
        }
        .style4
        {
            width: 92%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="20" colspan="2">
                            分配项目编号</th></tr>
                    <tr>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20" style="text-align: left; " colspan="2">
                            查找条件<asp:Label ID="lbl_type" runat="server" Visible="False" Font-Size="9pt"></asp:Label></TD>
					</tr>
					<tr>
						<TD class="style3" 
                            vAlign="middle" height="20" style="text-align: right">
                            &nbsp;分组：</TD>
						<TD class="style4" 
                            vAlign="middle" height="20" align="left">
                            <asp:DropDownList ID="ddlist_Group" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                            </asp:DropDownList></TD>
					</tr>
					<tr>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20" style="text-align: right; width: 152px;">
                            类别： </TD>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20" style="width: 92%">
                            <asp:DropDownList ID="ddlist_type" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                                <asp:ListItem Value="ktmc">课题名称</asp:ListItem>
                                <asp:ListItem Value="sqbm">申请部门</asp:ListItem>
                                <asp:ListItem Value="sqr">负责人</asp:ListItem>
                            </asp:DropDownList>
                            <asp:TextBox ID="tbx_search" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" 
                                CssClass="style2" />
                            </TD>
					</tr>
					<tr>
						<TD class="style3" 
                            vAlign="middle" height="20" style="text-align: right">
                            &nbsp;排序：</TD>
						<TD class="style4" 
                            vAlign="middle" height="20" align="left">
                            <asp:RadioButtonList ID="rbl_order" runat="server" AutoPostBack="True" 
                                RepeatColumns="2" RepeatDirection="Horizontal" 
                                onselectedindexchanged="rbl_order_SelectedIndexChanged">
                                <asp:ListItem>按分组排名</asp:ListItem>
                                <asp:ListItem Selected="True">按默认排序</asp:ListItem>
                            </asp:RadioButtonList>
                        </TD>
					</tr>
					<tr>
						<td bgColor="#ffffff"  valign="top" height="400" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                AllowSorting="True" PageSize="20" 
                                EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound" 
                                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" 
                                GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="序号">
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="xmbh" HeaderText="项目编号" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ktmc" HeaderText="课题名称" />
                                    <asp:BoundField DataField="jsh" HeaderText="教工编号">
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="xmzt" HeaderText="项目状态" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="申报编号" Visible="False" />
                                    <asp:BoundField DataField="zzlb" HeaderText="类型" >
                                    <ItemStyle Width="50px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="是否提交" Visible="False">
                                        <ItemTemplate>
                                            <table>
                                                <tr>
                                                    <td style="width: 71px; height: 25px">
                                                        <asp:RadioButtonList ID="rbl_tj" runat="server" Height="20px" RepeatDirection="Horizontal"
                                                            Width="77px">
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
                                    <asp:TemplateField HeaderText="操作" Visible="False">
                                    <ItemTemplate>
											<a href='Article_Add.aspx?ID=<%#Eval("ID")%>' >
												</a>
                                        <asp:LinkButton ID="lbtn_EditPwd" runat="server" CommandName="edit">修改</asp:LinkButton>&nbsp;
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete">删除</asp:LinkButton>
									</ItemTemplate>
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
                            <br />
                        </td>
					</tr>
					<tr>
						<TD id ="td_search2" runat=server visible=True class="forumRowHighlight" 
                            vAlign="middle" height="20" colspan="2" align = right >
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
						<TD id ="td_search1" runat=server visible=True class="forumRowHighlight" 
                            vAlign="middle" height="20" colspan="2" >
                            导出到Excel：&nbsp;
                            <asp:Button ID="Exp2Excel" runat="server" OnClick="Exp2Excel_Click" Text="导出" 
                                CssClass="style2" />
                            </TD>
					</tr>
					<tr>
                        <TD class="forumRowHighlight" style="height: 30px" colspan="2">
                            <FONT face="宋体"><span style="background-color: #e4edf9; font-size: 12px;">对选择的课题进行操作&nbsp; </span>
                                <asp:Button ID="btn_ok" runat="server" OnClick="btn_Ok_Click" Text="生成项目编号" 
                                Width="101px" CssClass="style2" />
                                &nbsp;&nbsp;(项目编号生成后，申报教师即可查看已立项项目)
                                </font></td>
                    </tr>
                    </table>
			</div>
		</form>
</body>
</html>
