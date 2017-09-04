<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxCreateRws.aspx.cs" Inherits="admin_LxCreateRws" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>生成任务书</title>
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
            height: 18px;
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
        .style4
        {
            color: #FF0000;FONT-SIZE: 12px; 
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
                            生成任务书&nbsp;</th></tr>
					<tr>
						<TD class="forumRow" 
                            vAlign="middle" height="20" align="left" colspan="2">
                            查找条件<asp:Label ID="lbl_type" runat="server" Visible="False" Font-Size="9pt"></asp:Label></TD>
					</tr>
                    <tr>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20" style="text-align: right">
                            项目状态：</TD>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20">
                                    <asp:DropDownList ID="ddlist_xmzt" runat="server" Width="131px">
                                        <asp:ListItem>全部</asp:ListItem>
                                        <asp:ListItem>申报</asp:ListItem>
                                        <asp:ListItem>在研</asp:ListItem>
                                        <asp:ListItem>延期</asp:ListItem>
                                        <asp:ListItem>结题</asp:ListItem>
                                    </asp:DropDownList></TD>
					</tr>
					<tr>
						<TD class="forumRow" 
                            vAlign="middle" height="20" style="text-align: right">
                            &nbsp;组群：</TD>
						<TD class="forumRow" 
                            vAlign="middle" height="20" align="left">
                            <asp:DropDownList ID="ddlist_Group" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                            </asp:DropDownList></TD>
					</tr>
					<tr>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20" style="text-align: right">
                            类别： </TD>
						<TD class="forumRowHighlight" 
                            vAlign="middle" height="20">
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
						<td bgColor="#ffffff"  valign="top" height="400" colspan="2">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="0" CellSpacing="1" Width="100%" 
                                AllowSorting="True" PageSize="20" 
                                EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound">
                                <Columns>
                                    <asp:TemplateField HeaderText="序号">
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ktmc" HeaderText="课题名称" />
                                    <asp:BoundField DataField="jsh" HeaderText="教工编号">
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="申报编号" Visible="False" />
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
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        
                                CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" 
                                AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                                PageSize="20" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                            <br />
                        </td>
					</tr>
					<tr>
						<TD id ="td_search2" runat=server visible=True class="forumRowHighlight" 
                            vAlign="middle" height="20" colspan="2">
                            生成任务书：&nbsp; 
                            <asp:Button ID="btn_CreateRws" runat="server" OnClick="btn_CreateRws_Click" Text="生成" 
                                CssClass="style2" />
                            <span class="style4">注意：重新生成将会删除原有任务书</span></TD>
					</tr>
					<tr>
						<TD id ="td_search1" runat=server visible=True class="forumRowHighlight" 
                            vAlign="middle" height="20" colspan="2">
                            生成PDF版任务书：&nbsp;
                            <span class="style4"> 
                            <asp:Button ID="btn_CreatePDF" runat="server" OnClick="btn_CreatePDF_Click" Text="生成" 
                                CssClass="style2" />
                            </span></TD>
					</tr>
					</table>
			</div>
		</form>
</body>
</html>
