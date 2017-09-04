<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_left.aspx.cs" Inherits="user_left" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>left</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta name="vs_targetSchema" content="http://schemas.microsoft.com/intellisense/ie5">
		<STYLE type="text/css">BODY { SCROLLBAR-FACE-COLOR: #799ae1; BACKGROUND: #799ae1; MARGIN: 0px; FONT: 12px 宋体; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TABLE { BORDER-RIGHT: 0px; BORDER-TOP: 0px; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px }
	TD { FONT: 12px 宋体 }
	IMG { BORDER-RIGHT: 0px; BORDER-TOP: 0px; VERTICAL-ALIGN: bottom; BORDER-LEFT: 0px; BORDER-BOTTOM: 0px }
	A { FONT: 12px 宋体; COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	.sec_menu { BORDER-RIGHT: white 1px solid; BACKGROUND: #d6dff7; OVERFLOW: hidden; BORDER-LEFT: white 1px solid; BORDER-BOTTOM: white 1px solid }
	.menu_title { }
	.menu_title SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #215dc6; POSITION: relative; TOP: 2px }
	.menu_title2 { }
	.menu_title2 SPAN { FONT-WEIGHT: bold; LEFT: 8px; COLOR: #428eff; POSITION: relative; TOP: 2px }
		</STYLE>
		<SCRIPT language="javascript1.2">
function showsubmenu(sid)
{
whichEl = eval("submenu" + sid);
if (whichEl.style.display == "none")
{
eval("submenu" + sid + ".style.display=\"\";");
}
else
{
eval("submenu" + sid + ".style.display=\"none\";");
}
}
		</SCRIPT>
	
<script language="javascript" type="text/javascript">
// <!CDATA[



// ]]>
</script>
</HEAD>
	<body leftMargin="0" topMargin="0" style="font-size: 12px" >
		<form id="Form1" method="post" runat="server">
			<table width="100%" cellpadding="0" cellspacing="0" border="0" align="left">
				<TBODY>
					<tr>
						<td valign="top">
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td height="42" valign="bottom">
										<img align="absmiddle" src="images/title.gif" width="158" height="38">
									</td>
								</tr>
							</table>
							<table cellpadding="0" cellspacing="0" width="158" align="center">
								<tr>
									<td class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/title_bg_quit.gif" style="height: 25px" valign="middle">
										<span><a href="main.aspx" target="main"><b></b></a>
                                        <asp:HyperLink ID="HyperLink1"
                                            runat="server" Font-Bold="True" NavigateUrl="user_main.aspx" Target="main">管理首页</asp:HyperLink>
                                            |&nbsp;</span>
                                        <asp:LinkButton ID="lbtn_Quit" runat="server" Font-Bold="True" Font-Names="宋体"
                                            Font-Size="9pt" OnClick="lbtn_Quit_Click">退出</asp:LinkButton></td>
								</tr>
							</table>
							&nbsp;
							<table cellpadding="0" cellspacing="0" width="158" align="center">
                                <tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" onClick="showsubmenu(1)">
										<span>基本信息</span>
									</td>
                                </tr>
                                <tr>
									<td id='submenu1'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" style="width: 168px">
												<TBODY>
                                                    <tr>
                                                        <td style="width: 150px;">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="./renshi_zg_yhgl.aspx" target="main"></a><a 
                                                                href="admin/PassWord.aspx?type=user" target="main">密码修改</a></td>
                                                    </tr>
                                                    <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                </tbody>
                                    </table>
                                    </div>
                                    </td>
                                </tr>
							</table>
							<table 
                                            cellpadding="0" cellspacing="0" align="center" width="150" id="Table_jy" 
                                            runat="server" visible="true">
                                            <tr>
                                                <td class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" onClick="showsubmenu(2)" style="height: 25px">
                                                    <span>管理功能</span></td>
                                            </tr>
                                            <tr>
                                                <td id='submenu2' style="width: 159px;">
                                                    <div class="sec_menu" style="WIDTH:158px;">
                                                        <table cellpadding="0" cellspacing="0" align="center" style="width: 156px;">
                                                            <TBODY>
                                                                <tr>
                                                                    <td height="5" style="width: 150px">
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td runat=server id="td12" style="width: 150px; height: 20px; color: #000066;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><asp:HyperLink ID="hl_0" 
                                                                            runat="server" NavigateUrl="user_main.aspx" Target="main" ForeColor="Blue">项目列表</asp:HyperLink>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td runat=server id="td1" style="width: 150px; height: 20px; color: #000066;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><asp:HyperLink ID="hl_1" 
                                                                            runat="server" NavigateUrl="user_tb.aspx" Target="main" ForeColor="Blue">本年项目申报</asp:HyperLink>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td runat=server id="td2" runat=server style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><asp:HyperLink ID="hl_2" 
                                                                            runat="server" NavigateUrl="user_Fkyj.aspx?type=0" Target="main" ForeColor="Blue">盲审反馈意见</asp:HyperLink></td>
                                                                </tr>
                                                                <tr>
                                                                    <td runat=server id="td3" runat=server style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_Fkyj.aspx?type=1" target="main" style="color: #0000FF">立项反馈意见</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td runat=server id="td4" style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><asp:HyperLink ID="hl_4" 
                                                                            runat="server" NavigateUrl="user_LxRws.aspx" Target="main" 
                                                                            ForeColor="Blue">上报任务书</asp:HyperLink></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_Zqsq.aspx" target="main" style="color: #008000">申请中期检查</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_xmChange.aspx" target="main" style="color: #008000">项目变更申请</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td id="Td10" runat=server style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_Fkyj.aspx?type=2" target="main" style="color: #008000">中期反馈意见</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_XmDelay.aspx" target="main" style="color: #800080">项目延期申请</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_Jtbg.aspx" target="main" style="color: #800080">上传结题报告</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td id="Td11" runat=server style="height: 20px; width: 150px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_Fkyj.aspx?type=3" target="main" style="color: #800080">结题反馈意见</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td style="width: 150px; height: 20px;">
                                                                        <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                            href="user_XmMgt.aspx" target="main">历史项目管理</a></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>
                                                                        &nbsp;</td>
                                                                </tr>
                                                                <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td style="height: 10px">
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>

		</form>
	</body>
</HTML>

