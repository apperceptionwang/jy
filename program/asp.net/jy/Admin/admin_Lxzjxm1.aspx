<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_Lxzjxm1.aspx.cs" Inherits="admin_Lxzjxm1" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>立项评审专家项目对应管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style2
            {
                font-family: 宋体, Arial, Helvetica, sans-serif;
                font-size: 9pt;
            }
            .style6
            {
                color: #CC0000;
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
                            建立立项专家与项目对应关系&nbsp;</th></tr>
					<tr>
						<TD id ="td_search0" runat=server class="forumRowHighlight" 
                            vAlign="middle" height="30">
                            按组群查找：<asp:DropDownList ID="ddlist_Group" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                            </asp:DropDownList>&nbsp;</TD>
					</tr>
					<tr>
						<TD id ="td_search" runat=server class="forumRowHighlight" 
                            vAlign="middle" height="30">
                            查找类别：<asp:DropDownList ID="ddlist_type" runat="server" Width="99px">
                                <asp:ListItem Value="all">（全部）</asp:ListItem>
                                <asp:ListItem Value="loginname">登录名</asp:ListItem>
                                <asp:ListItem Value="username">用户名</asp:ListItem>
                                <asp:ListItem Value="gzdw">工作单位</asp:ListItem>
                                <asp:ListItem Value="zc">职称</asp:ListItem>
                            </asp:DropDownList>&nbsp;
                            <asp:TextBox ID="tbx_search" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_search" runat="server" OnClick="btn_search_Click" Text="查找" 
                                CssClass="style2" />
                            <asp:Label ID="lbl_type" runat="server" Visible="False" Font-Size="9pt"></asp:Label></TD>
					</tr>
					<tr>
						<td bgColor="#ffffff"  valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                AllowSorting="True" 
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
                                    <asp:BoundField DataField="loginname" HeaderText="专家登录名" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="username" HeaderText="专家名" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="ktmc" HeaderText="项目名称" />
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="60px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="cGroup1" HeaderText="分组" >
                                    <ItemStyle Width="90px" />
                                    </asp:BoundField>
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
                            <FONT face="宋体">&nbsp;
                                <asp:Button ID="btn_create" runat="server" OnClick="btn_create_Click" Text="生成专家与项目对应关系" 
                                Width="143px" CssClass="style2" />
                                <span class="style6">（每次生成将把原有关系删除）</span></font>&nbsp;</td>
                    </tr>
                    </table>
			</div>
		</form>
		
	</body>
</HTML>

