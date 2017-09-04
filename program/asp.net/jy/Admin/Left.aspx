<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="VOD.Admin.Left" %>

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
		    .style1
            {
                height: 20px;
            }
		</STYLE>
		<SCRIPT language="javascript1.2">
            function showsubmenu(sid)
            {
                eval("submenu1.style.display=\"none\";");
                eval("submenu2.style.display=\"none\";");
                eval("submenu3.style.display=\"none\";");
                eval("submenu4.style.display=\"none\";");
                eval("submenu5.style.display=\"none\";");
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
										<span><a href="main.aspx" target="main"><b>管理首页</b></a> | 
                                            <asp:LinkButton ID="LinkButton1" runat="server" Font-Bold="True" Font-Names="宋体"
                                                Font-Size="9pt" OnClick="LinkButton1_Click">退出</asp:LinkButton></span></td>
								</tr>
							</table>
							&nbsp;
							<table cellpadding="0" cellspacing="0" width="158" align="center">
                                <tr>
									<td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td2" onClick="showsubmenu(1)">
										<span>基本信息</span>
									</td>
                                </tr>
                                <tr>
									<td id='submenu1' style="display = none"><div class="sec_menu" style="WIDTH:158px"><table cellpadding="0" cellspacing="0" align="center" width="150">
												<TBODY>
													<tr>
														<td height="5" style="width: 150px"></td>
													</tr>
                                                    <tr>
                                                        <td height="20" style="width: 150px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="./usermanagement.aspx" target="main">用户管理</a> | <a href="./PassWord.aspx?type=admin" target="main">
                                                                    密码修改</a></td>
                                                    </tr>
                                                    <tr>
                                                        <td style="height: 20px">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="./Article_Add.aspx?flag=新闻" target="main">添加新闻</a> | <a href="./Article_Edit.aspx?flag=新闻" target="main">管理</a></td>
                                                    </tr><tr>
                                                        <td height="20">
                                                            <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="./Admin_Dept.aspx" target="main">部门维护</a> | <a href="./SetUp.aspx" target="main">
                                                                    设置</a></td>
                                                    </tr>
                                                    <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Teacher_Management.aspx" target="main">教师信息维护</a></td>
                                                            </tr>
                                                    <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_zjInfo.aspx" target="main">专家信息维护</a></td>
                                                            </tr>
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="Change_user.aspx" target="main">切换用户</a></td>
                                                        </tr>
                                                    <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                </tbody>
                                    </table>
                                    </div>
                                        <table cellpadding="0" cellspacing="0" align="center" width="150">
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
                                    <td id='id5' style="width: 159px"><table cellpadding="0" cellspacing="0" width="158" align="center">
                                        <tr>
                                            <td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td3" onClick="showsubmenu(2)">
                                                <span>立项评审</span></td>
                                        </tr>
                                        <tr>
                                            <td id='submenu2' valign="top">
                                                <div class="sec_menu" style="WIDTH:158px">
                                                    <table cellpadding="0" cellspacing="0" align="center" width="150">
                                                        <TBODY>
                                                            <tr>
                                                                <td height="5" style="width: 150px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20">
                                                                    <table align="center" cellpadding="0" cellspacing="0" width="150">
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_LxJd.aspx" target="main">申报进度管理</a></td>
                                                                        </tr>
                                                                        <tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                              href="admin_LxGroup.aspx" target="main">组群维护</a></td>
												                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_LxzjGroup0.aspx" target="main">盲审专家分组</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_LxxmGroup0.aspx" target="main">盲审项目分组</a></td>
                                                                        </tr>
                                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Lxzjxm0.aspx" target="main">盲审专家与项目对应</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_LxResult0.aspx" target="main">盲审结果管理</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_LxTj.aspx" target="main">盲审推荐管理</a></td>
                                                                        </tr>
                                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_LxzjGroup1.aspx" target="main">专家分组</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_LxxmGroup1.aspx" target="main">项目分组</a></td>
                                                                        </tr>
                                                                        </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Lxzjxm1.aspx" target="main">专家与项目对应</a></td>
                                                                        </tr>
                                                            <tr>
                                                                <td height="20">
                                                                    <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                        href="admin_LxXmzt.aspx" target="main">项目提交状态管理</a> </td>
                                                            </tr>
                                                         <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_LxResult1.aspx" target="main">立项评审结果</a></td>
                                                        </tr>  
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_LxxmConfirm.aspx" target="main">项目立项确认</a></td>
                                                            </tr>
                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_LxxmBh.aspx" target="main">分配项目编号</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_LxZjyj.aspx" target="main">专家意见汇总</a></td>
                                                        </tr>
                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_LxCreateRws.aspx" target="main">生成任务书</a></td>
                                                        </tr>
                                                            <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <table cellpadding="0" cellspacing="0" align="center" width="150">
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
                                            <td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td6" onClick="showsubmenu(3)">
                                                <span>中期检查</span></td>
                                        </tr>
                                        <tr>
                                            <td id='submenu3' style="display=none" valign="top">
                                                <div class="sec_menu" style="WIDTH:158px">
                                                    <table cellpadding="0" cellspacing="0" align="center" width="150">
                                                        <TBODY>
                                                            <tr>
                                                                <td height="5" style="width: 150px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_Zqjc1.aspx" target="main">生成中期检查</a></td>
                                                                        </tr>
                                                            <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_ZqzjGroup.aspx" target="main">专家分组</a></td>
                                                                        </tr>
                                                            <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_ZqxmGroup.aspx" target="main">项目分组</a></td>
                                                                        </tr>
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Zqzjxm.aspx" target="main">对应关系</a></td>
                                                                        </tr>
                                                            <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_ZqResult.aspx" target="main">评审结果</a></td>
                                                                        </tr>
                                                            <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_ZqTj.aspx" target="main">中期项目推荐管理</a></td>
                                                                        </tr>
                                                            <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <table cellpadding="0" cellspacing="0" align="center" width="150">
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
                                            <td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td8" onClick="showsubmenu(5)">
                                                <span>结题验收</span></td>
                                        </tr>
                                        <tr>
                                            <td id='submenu5' style="display=none" valign="top">
                                                <div class="sec_menu" style="WIDTH:158px">
                                                    <table cellpadding="0" cellspacing="0" align="center" width="150">
                                                        <TBODY>
                                                            <tr>
                                                                <td height="5" style="width: 150px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20">
                                                                    <table align="center" cellpadding="0" cellspacing="0" width="150">
                                                                        <tr>
                                                            <td class="style1">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Jt1zjGroup.aspx" target="main">专家分组</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_Jt2xmGroup.aspx" target="main">项目分组</a></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Jt3zjxm.aspx" target="main">对应关系</a></td>
                                                                        </tr>
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Jt4Result.aspx" target="main">评审结果</a></td>
                                                            </tr>
                                                            <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_Jt5xmConfirm.aspx" target="main">结题确认</a></td>
                                                            </tr>
                                                            <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <table cellpadding="0" cellspacing="0" align="center" width="150">
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
                                            <td height="25" class="menu_title" onMouseOver="this.className='menu_title2';" onMouseOut="this.className='menu_title';"
										background="images/admin_left_5.gif" id="Td7" onClick="showsubmenu(4)">
                                                <span>综合管理</span></td>
                                        </tr>
                                        <tr>
                                            <td id='submenu4' style="display=none" valign="top">
                                                <div class="sec_menu" style="WIDTH:158px">
                                                    <table cellpadding="0" cellspacing="0" align="center" width="150">
                                                        <TBODY>
                                                            <tr>
                                                                <td height="5" style="width: 150px">
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20">
                                                                    <table align="center" cellpadding="0" cellspacing="0" width="150">
                                                                        <tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                              href="admin_glJf.aspx" target="main">经费管理</a></td>
												                        </tr>
                                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="admin_JtzjGroup.aspx" target="main">结题验收专家分组</a></td>
                                                                        </tr>
                                                                        <tr>
                                                                            <td height="20">
                                                                                <img align="absmiddle" border="0" height="20" src="images/bullet.gif" 
                                                                                    width="15" /><a href="admin_JtxmGroup.aspx" target="main">结题验收项目分组</a></td>
                                                                        </tr>
                                                                    </table>
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20">
                                                                    <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                        href="Admin_Teacher_List.aspx" target="main">结题提交状态管理</a> </td>
                                                            </tr>
                                                            <tr>
                                                                <td height="20">
                                                                    <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                        href="Admin_Commit_Status.aspx" target="main">项目信息</a>概述 </td>
                                                            </tr>
                                                        <tr>
                                                            <td height="20">
                                                                <img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a 
                                                                    href="zhuanjia_ry_list.aspx" target="main">专家评审对应信息</a></td>
                                                        </tr>
                                                            <!--<tr>
													  <td height="20"><img align="absmiddle"  height="20" src="images/bullet.gif" width="15" border="0"><a href="order.aspx" target="main">订单管理</a> | <a href="order_add.aspx" target="main">添加订单</a></td>
												  </tr>-->
                                                        </tbody>
                                                    </table>
                                                </div>
                                                <table cellpadding="0" cellspacing="0" align="center" width="150">
                                                    <tr>
                                                        <td height="10">
                                                        </td>
                                                    </tr>
                                                </table>
                                            </td>
                                        </tr>
                                    </table>
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
