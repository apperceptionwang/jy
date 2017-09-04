<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxTj.aspx.cs" Inherits="admin_LxTj" %>
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
            .style9
            {
                width: 1079px;
            }
            .style17
            {
                width: 13%;
            }
            .style18
            {
                width: 4%;
            }
            .style19
            {
                width: 138px;
            }
            .style20
            {
                width: 65%;
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
							align="left" height="20" class="style9">
                            项目立项推荐管理</th></tr>
					<tr>
						<td bgColor="#ffffff" style="height: 302px" valign="top" colspan=4>
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" PageSize="20" 
                                EnableModelValidation="True" 
                                onselectedindexchanging="GridView1_SelectedIndexChanging" 
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
                                    <asp:BoundField DataField="id" HeaderText="部门推荐顺序">
                                    <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="申报号" DataField="appNo" >
                                    <ItemStyle Width="70px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ktmc" HeaderText="课题名称" />
                                    <asp:BoundField DataField="sqbm" HeaderText="申请系部" >
                                    <ItemStyle Width="110px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField HeaderText="项目状态" DataField="xmzt" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="是否推荐">
                                    <ItemTemplate>
									        <asp:RadioButtonList ID="rbtnList_tjjg" runat="server" Height="20px" 
                                                RepeatDirection="Horizontal" Width="110px">
                                                <asp:ListItem Value="4">推荐</asp:ListItem>
                                                <asp:ListItem Value="3">不推荐</asp:ListItem>
                                            </asp:RadioButtonList>
									</ItemTemplate>
                                        <ItemStyle Width="100px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="推荐意见">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbtn_Select" runat="server" CommandName="select">查看</asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle Width="60px" />
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Size="13px" Font-Bold="True" 
                                    ForeColor="White" /><PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" 
                                    ForeColor="Black" />
                                <SelectedRowStyle BackColor="#ccddff" Font-Bold="false" ForeColor="White" />
                            </asp:GridView>
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        
                                CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" 
                                AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                                PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                        </td>
                        
					</tr>
					<tr>
						<td align="right">
                                        按条件导出到Excel文件：</td>
                        <td align="left" class="style20">
                                        <asp:Button ID="btn_exp2Excel"
                                runat="server" OnClick="btn_exp2Excel_Click" Text="导出" Width="48px" /></td>
                        <td class="style17"></td><td class="style18"></td>
					</tr>
					<tr>
						<td class="style19">
                            &nbsp;</td>
                        <td class="style20">
                            <FONT face="宋体"><span style="background-color: #e4edf9">
                            <asp:Button ID="btn_Save" runat="server" OnClick="btn_Save_Click" 
                                            Text="保存" Width="51px" />
                        </span></FONT></td><td class="style17">&nbsp;</td><td class="style18"></td>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false"  colspan=4
                            style="text-align: left; width: 884px;" >
                        您现在正在填写 
                        <asp:Label ID="lbl_jsm" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
&nbsp;的意见<asp:Label ID="lbl_appNo" runat="server" Font-Size="9pt" ForeColor="Black" Visible="False"></asp:Label>
                        <br />
                                    <asp:TextBox
                            ID="tbx_yj2" runat="server" Height="81px" TextMode="MultiLine" 
                            Width="100%"></asp:TextBox>&nbsp;<br />
&nbsp; <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                        &nbsp;
                        <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="取消" 
                            Width="48px" />
                        </td>
					</tr>
					</table>
			</div>
		</form>
		
	</body>
</HTML>
