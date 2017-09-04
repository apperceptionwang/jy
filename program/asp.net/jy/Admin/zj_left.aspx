<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zj_left.aspx.cs" Inherits="zj_left" %>

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
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/title_bg_quit.gif">
										<span><a href="zj_main.aspx" target="main"><b>管理首页</b></a> |
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="宋体"
                                                Font-Size="9pt" OnClick="LinkButton1_Click">退出</asp:LinkButton></span>
									</td>
								</tr>
							</table>
							&nbsp;
							<table cellpadding="0" cellspacing="0" width="158" align="center">
                                <tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td2" onClick="showsubmenu(2)">
										<span>基本功能</span>
									</td>
                                </tr>
                                <tr>
									<td id='submenu2'><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5" style="width: 150px"></td>
													</tr>
                                                    <tr>
                                                        <td height="20" style="width: 150px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                href="zj_xmList0.aspx" target="main">盲审项目列表</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="20" style="width: 150px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                href="zj_xmList1.aspx" target="main">立项项目列表</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="20" style="width: 150px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                href="zj_xmList2.aspx" target="main">中期项目列表</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="20" style="width: 150px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                href="zj_xmList3.aspx" target="main">验收项目列表</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td height="20" style="width: 150px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="./zhuanjia_info.aspx" target="main">修改密码</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px">
                                                            </td>
                                                    </tr>
                                                    <tr>
                                                        <td height="20">
                                                            </td>
                                                    </tr>
													<!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
													</TBODY>
											</table>
										</div><table cellpadding="0" cellspacing="0" align="center" width="150">
                                            <tr>
                                                        <td height="10">
                                                            </td>
                                            </tr>
                                        </table>
									</td>
                                </tr>
							</table>
							<table cellpadding="0" cellspacing="0" width="158" align="center">
                                <tr>
                                    <td id='submenu1' style="width: 159px">
                                    </td>
                                </tr>
                            </table>
			&nbsp;
			</td>
			</tr>
			</TBODY>
			</table>
		</form>
	</body>
</HTML>


