<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_main.aspx.cs" Inherits="user_main" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>main</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<STYLE type="text/css">BODY { MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: #799ae1; FONT-SIZE: 12px; BACKGROUND: #cad7f7; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TD { FONT-SIZE: 12px }
	INPUT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	TEXTAREA { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	A { COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	A.highlight { COLOR: red; TEXT-DECORATION: none }
	A.highlight:hover { COLOR: red }
	A.thisclass { FONT-WEIGHT: bold; TEXT-DECORATION: none }
	A.thisclass:hover { FONT-WEIGHT: bold }
	A.navlink { COLOR: #000000; TEXT-DECORATION: none }
	A.navlink:hover { COLOR: #003399; TEXT-DECORATION: none }
	.twidth { WIDTH: 760px }
	.content { FONT-SIZE: 14px; MARGIN: 5px 20px; LINE-HEIGHT: 140%; FONT-FAMILY: Tahoma,宋体 }
	.aTitle { FONT-WEIGHT: bold; FONT-SIZE: 15px }
	TD.forumHeaderBackgroundAlternate { BACKGROUND-IMAGE: url(images/admin_top_bg.gif); COLOR: #000000; BACKGROUND-COLOR: #799ae1 }
	#TableTitleLink A:link { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:visited { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:active { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:hover { COLOR: #ffffff; TEXT-DECORATION: underline }
	TD.forumRow { padding: 3px;
                BACKGROUND: #f1f3f5;
                text-align: left;
            }
	TH { FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa }
	TD.bodytitle { BACKGROUND-IMAGE: url(images/admin_bg_2.gif) }
	TD.bodytitle1 { BACKGROUND-IMAGE: url(images/admin_bg_3.gif) }
	TD.tablebody1 { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #bebbdb; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TD.forumRowHighlight { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #e4edf9; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	.tableBorder1 { WIDTH: 98% }
	.helplink { FONT: 10px verdana,arial,helvetica,sans-serif; CURSOR: help; TEXT-DECORATION: none }
	.copyright { PADDING-RIGHT: 1px; BORDER-TOP: #6595d6 1px dashed; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; FONT: 11px verdana,arial,helvetica,sans-serif; COLOR: #4455aa; PADDING-TOP: 1px; TEXT-DECORATION: none }
	.menuskin { BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; BACKGROUND-IMAGE: url(../skins/default/dvmenubg3.gif); VISIBILITY: hidden; FONT: 12px Verdana; BORDER-LEFT: #666666 1px solid; BORDER-BOTTOM: #666666 1px solid; BACKGROUND-REPEAT: repeat-y; POSITION: absolute; BACKGROUND-COLOR: #efefef }
	.menuskin A { PADDING-RIGHT: 10px; PADDING-LEFT: 25px; BEHAVIOR: url(inc/noline.htc); COLOR: black; TEXT-DECORATION: none }
	#mouseoverstyle { BORDER-RIGHT: #597db5 1px solid; PADDING-RIGHT: 0px; BORDER-TOP: #597db5 1px solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 2px; BORDER-LEFT: #597db5 1px solid; PADDING-TOP: 0px; BORDER-BOTTOM: #597db5 1px solid; BACKGROUND-COLOR: #c9d5e7 }
	#mouseoverstyle A { COLOR: black }
	.menuitems { PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; MARGIN: 2px; WORD-BREAK: keep-all; PADDING-TOP: 1px }
	.sec_menu { BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid }
		    .style1
            {
                WIDTH: 17%
            }
		</STYLE>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div class="menuskin" id="popmenu" onMouseOver="clearhidemenu();" onMouseOut="dynamichide(event)"
				style="Z-INDEX:100"></div>
			<FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT>
			<table cellpadding="3" cellspacing="0" border="0" align="center" class="tableBorder1" style="WIDTH:100%">
				<tr>
					<td height="10"></td>
				</tr>
			</table>
			<table cellpadding="3" cellspacing="1" border="0" class="tableBorder" align="center">
				<tr>
					<th class="tableHeaderText" height="25">
						网站信息统计</th>
				<tr>
					<td class="bodytitle" height="23">
                        [欢迎信息]
                        <asp:Label ID="lbl_dwmc" runat="server"></asp:Label></td>
				</tr>
				<tr>
					<td class="forumRowHighlight" height="23">
						本系统授权给
						<asp:Literal id="Literal1" runat="server" Text="防灾科技学院 教师教学发展中心"></asp:Literal>
                        使用。</td>
				</tr>
			</table>
			<br>
			<table cellpadding="3" cellspacing="1" border="0" class="tableBorder" align="center">
				<tr>
					<th class="tableHeaderText" colspan="2" height="25">
                        联系方式</th>
				</tr>
				<tr>
					<td class="forumRow" height="23" align="right" style="text-align: right">联系方式&nbsp;&nbsp; </td>
					<td width="80%" class="forumRow" rowspan="1">
                        电话：010-61596247&nbsp; 联系人：冯燕茹</td>
				</tr>
				<tr>
					<td class="forumRow" height="23">&nbsp;</td>
					<td width="80%" class="forumRow">
                        &nbsp;</td>
				</tr>
			</table>
			<br>
			<table cellpadding="3" cellspacing="1" border="0" class="tableBorder" align="center">
				<tr>
					<th class="tableHeaderText" height="25">
                        项目列表</th>
				</tr>
				<tr>
					<td width="20%" class="forumRow" height="23" align="right">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" 
                                AllowSorting="True" PageSize="20" 
                                EnableModelValidation="True" onrowdatabound="GridView1_RowDataBound" 
                                BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" 
                                GridLines="Vertical" onrowediting="GridView1_RowEditing">
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
                                    <asp:BoundField DataField="tj" HeaderText="项目状态" >
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
                                    <asp:TemplateField HeaderText="操作">
                                    <ItemTemplate>
											<a href='Admin/Article_Add.aspx?ID=<%#Eval("ID")%>' >
												</a>
                                        <asp:LinkButton ID="lbtn_Edit" runat="server" CommandName="edit">选择</asp:LinkButton>
                                        <asp:LinkButton ID="lbtn_del" runat="server" CommandName="delete" Visible="False">删除</asp:LinkButton>
									</ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="选择" Visible="False">
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
			</table>
			<br />
			<br>
			
			
		</form>
		<script language='javascript'> function jumpto(url) { if (url != '') { window.open(url); } } </script>
	</body>
</HTML>
