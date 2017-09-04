<%@ Page Language="C#" AutoEventWireup="true" CodeFile="film.aspx.cs" Inherits="Admin_zj_LxPf" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<BODY>
		<script language="javascript">
/*
function tb()
{
	if (document.all("tb_body").style.display=="none")
	{
		document.all("tb_body").style.display="inline";
	}
	else
	{
		document.all("tb_body").style.display="none";
	}
}

function tourl(form1_url){
    location=form1_url;
    for(var i=0;i<document.form1.elements.length;i++){
        document.form1.elements[i].options[0].selected=true
    }
}
*/
		</script>
		<form id="Form1" method="post" runat="server">
			<table class="tableBorder" id="table2" height="127" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center"><A href="film.aspx">[所有影片]</A> 影片列表 <A href="javascript:tb();">[高级搜索]</A></p>
					</th>
				</tr>
				<tr id="tb_body">
					<td class="forumRowHighlight" height="12">
						<table cellSpacing="0" cellPadding="3" width="100%" border="0">
							<tr>
								<td width="11%">注意事项
								</td>
								<td style="LINE-HEIGHT: 20px" width="89%">
									
									①点删除按钮将删除所选定的电影，此操作是不可逆的；
                                    <br />
									
									②您可以批量移动电影到相应的类别<br />
									
										③点电影名进行相应的资料操作；
									
								</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr id="Tr1">
					<td class="forumRowHighlight" width="100%" height="12">
						<table id="table3" height="57" cellSpacing="0" cellPadding="0" width="100%" border="0">
							<tr>
								<td style="HEIGHT: 11px" width="35%">●列出类别为：
									<asp:dropdownlist id="dwclass" runat="server" AutoPostBack="True"></asp:dropdownlist>的影片</td>
								<td style="HEIGHT: 11px" width="35%">●列出产地为：
									<asp:dropdownlist id="dwfrom" runat="server" AutoPostBack="True">
										<asp:ListItem Selected="True" Value="0">-请选择-</asp:ListItem>
										<asp:ListItem Value="1">欧美地区</asp:ListItem>
										<asp:ListItem Value="2">港台地区</asp:ListItem>
										<asp:ListItem Value="3">大陆地区</asp:ListItem>
										<asp:ListItem Value="4">日韩地区</asp:ListItem>
										<asp:ListItem Value="5">其它地区</asp:ListItem>
									</asp:dropdownlist>的影片</td>								
								<td style="HEIGHT: 27px" width="30%">●
									<asp:hyperlink id="hylisseq" runat="server" NavigateUrl="Film.aspx?FilmIsSeq=1">列出所有连载电影</asp:hyperlink></td>
							</tr>
							<tr>
								<td>●点播次数小于
									<asp:dropdownlist id="dwseecount" runat="server" AutoPostBack="True">
										<asp:ListItem Selected="True" Value="0">--请选择--</asp:ListItem>
										<asp:ListItem Value="10">10次以下</asp:ListItem>
										<asp:ListItem Value="100">100次以下</asp:ListItem>
										<asp:ListItem Value="1000">1000次以下</asp:ListItem>
										<asp:ListItem Value="5000">5000次以下</asp:ListItem>
									</asp:dropdownlist></td>
									<td>●加入日期
									<asp:dropdownlist id="dw_jointime" runat="server" AutoPostBack="True">
										<asp:ListItem Selected="True" Value="0">--请选择--</asp:ListItem>
										<asp:ListItem Value="1">一个月内</asp:ListItem>
										<asp:ListItem Value="3">三个月内</asp:ListItem>
										<asp:ListItem Value="6">半年内</asp:ListItem>
										<asp:ListItem Value="12">一年内</asp:ListItem>
									</asp:dropdownlist></td>
								<td colspan="2">●<font face="Verdana">影片查找:&nbsp;
										<asp:textbox id="tbsearch" runat="server" Width="91px"></asp:textbox>&nbsp;&nbsp;&nbsp;&nbsp;
									</font>
									<asp:button id="btnsearch" runat="server" Text="查找" OnClick="btnsearch_Click"></asp:button></td>
							</tr>
							<tr>							
							<td  colspan="3" style="HEIGHT: 27px" width="50%">●列出服务器为：
									<asp:dropdownlist id="dw_ServerList" runat="server" AutoPostBack="True"/>的影片
							</td></tr>
						</table>
					</td>
				</tr>
				<tr>
					<td class="forumRowHighlight" style="height: 12px">&nbsp;
                        <asp:GridView ID="GridView1" runat="server" Width="100%"  DataKeyNames ="id" CellPadding ="4" AutoGenerateColumns="False" BackColor="#E7E7E7" BorderColor="#CCCCCC">
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="ID" >
                                    <ControlStyle Width="60px" />
                                </asp:BoundField>
                                <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="../film.aspx?filmid={0}"
                                    DataTextField="film_name" HeaderText="影片名称" Target="_blank" >
                                    <ControlStyle Width="200px" />
                                </asp:HyperLinkField>
                                <asp:BoundField DataField="film_class" HeaderText="所属类别" >
                                    <ControlStyle Width="80px" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="影片产地">
                                <ItemTemplate>
                                <%#GetQuyu(DataBinder.Eval(Container.DataItem,"film_from").ToString())%>
                                </ItemTemplate>
                                    <ControlStyle Width="80px" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="see_count" HeaderText="点播次数" >
                                    <ControlStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="down_count" HeaderText="下载次数" >
                                    <ControlStyle Width="50px" />
                                </asp:BoundField>
                                <asp:BoundField DataField="join_time" DataFormatString="{0:yyyy-mm-dd}" HeaderText="加入时间" >
                                    <ControlStyle Width="100px" />
                                </asp:BoundField>
                                <asp:TemplateField HeaderText="操作">
                                <ItemTemplate>
										<a href='Film_Edit.aspx?Action=Edit&ID=<%#DataBinder.Eval(Container.DataItem,"ID")%>' >
											编辑</a>
										<asp:CheckBox ID="sle" Runat="server" Text="选择"></asp:CheckBox>
								</ItemTemplate></asp:TemplateField>
                            </Columns>
                            <RowStyle HorizontalAlign="Center" BackColor="White" />
                            <HeaderStyle BackColor="#EFEFEF" Font-Size="13px" />
                         
                         
                        </asp:GridView>
                    </td></tr>
                    <tr><td style="height: 27px">
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" PageSize="10" PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                    </td></tr>
                    
				<%--<asp:panel id="Panel1" runat="server">--%>
					<TR>
						<TD class="forumRowHighlight" height="12">
							<asp:DropDownList id="dw_Operation" runat="server" >
								<asp:ListItem>请选择相应的操作</asp:ListItem>
								<asp:ListItem Value="0">删除</asp:ListItem>
								<asp:ListItem Value="1">转移至</asp:ListItem>
								<asp:ListItem Value="2">启动或关闭</asp:ListItem>
							</asp:DropDownList>
							<asp:DropDownList id="dw_NewClass" runat="server" Visible ="false"></asp:DropDownList>
							<asp:DropDownList id="dw_Open" runat="server" Visible="false">
								<asp:ListItem Value="1">打开</asp:ListItem>
								<asp:ListItem Value="0">关闭</asp:ListItem>
							</asp:DropDownList>
							<asp:Button id="btn_Ok" runat="server" Text="确定" Width="48px" OnClick="btn_Ok_Click"  OnClientClick="return confirm('确认要执行吗？');"></asp:Button>
							<asp:literal id="ltl_Msg" runat="server"></asp:literal><TR>
						<TD class="forumRowHighlight" align="center" width="70%" height="60">
                            &nbsp;<%--</asp:panel>--%></table>
		</form>
	</BODY>
</HTML>

