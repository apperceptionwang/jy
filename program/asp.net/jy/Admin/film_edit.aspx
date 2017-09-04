<%@ Page Language="C#" AutoEventWireup="true" MaintainScrollPositionOnPostback="true" CodeFile="film_edit.aspx.cs" Inherits="VOD.Admin.film_edit" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_edit</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<style type="text/css">BODY { MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: #799ae1; FONT-SIZE: 12px; BACKGROUND: #cad7f7; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
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
	TD.forumRow { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #f1f3f5; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
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
	.style1 { COLOR: #ff0000 }
		</style>
		<script language="javascript">
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
		</script>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT>
			<br>
			<table class="tableBorder" id="table2" height="745" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center">修改影片</p>
					</th>
				</tr>
				<tr>
					<td class="Forumrow" align="right"  height="715">
					<table id="table5" height="413" cellSpacing="1" cellPadding="3" align="center" 
							bgColor="#e7e7e7" border="0" style="width: 681px">
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px; height: 50px;"
									align="center" bgColor="#f7f7f7">
									<table id="table20" height="30" cellSpacing="0" cellPadding="0" border="0" style="width: 662px">
										<tr>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="69">影片路径：</td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="194"><asp:dropdownlist id="DwPath" runat="server"></asp:dropdownlist></td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="71">第二线路：</td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 125px; height: 30px;">请在影片服务器路径页面中设置</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px; height: 221px;"
									align="center" bgColor="#f7f7f7">
									<table border="0" cellPadding="0" cellSpacing="2" id="table19" style="width: 664px; height: 220px">
										<tr>
											<td style="WIDTH: 64px">影片名称：</td>
											<td style="width: 109px"><asp:textbox id="TbFilmname" runat="server" Width="160px" ></asp:textbox>
                                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TbFilmname"
                                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
											<td style="width: 94px">影片别名：</td>
											<td colSpan="2"><asp:textbox id="TbOthername" runat="server" Width="160px"></asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 64px">影片导演：</td>
											<td style="width: 109px"><asp:textbox id="TbDirector" runat="server" Width="160px"></asp:textbox></td>
											<td style="width: 94px">主要演员：</td>
											<td colSpan="2"><asp:textbox id="TbPlayer" runat="server" Width="160px"></asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 64px; height: 21px;">影片类别：</td>
											<td style="width: 109px; height: 21px;"><asp:dropdownlist id="DwClass" runat="server"></asp:dropdownlist></td>
											<td style="height: 21px; width: 94px;">影片产地：</td>
											<td style="width: 148px; height: 21px;"><asp:dropdownlist id="DwFrom" runat="server">
													<asp:ListItem Value="1" Selected="True">-欧美地区-</asp:ListItem>
													<asp:ListItem Value="2">-港台地区-</asp:ListItem>
													<asp:ListItem Value="3">-大陆地区-</asp:ListItem>
													<asp:ListItem Value="4">-日韩地区-</asp:ListItem>
													<asp:ListItem Value="5">-其它地区-</asp:ListItem>
												</asp:dropdownlist></td>
											<td rowSpan="7" style="width: 26px">
												<p align="center">
                                                    &nbsp;<img id="img_pic" runat="server" border="0" height="180" src="" width="140" /></p>
											</td>
										</tr>
										<tr>
											<td style="WIDTH: 64px">推荐级别：</td>
											<td style="width: 109px"><asp:dropdownlist id="DwLevel" runat="server">
													<asp:ListItem Value="1">★</asp:ListItem>
													<asp:ListItem Value="2">★★</asp:ListItem>
													<asp:ListItem Value="3" Selected="True">★★★</asp:ListItem>
													<asp:ListItem Value="4">★★★★</asp:ListItem>
													<asp:ListItem Value="5">★★★★★</asp:ListItem>
												</asp:dropdownlist></td>
											<td style="width: 94px">清晰程度：</td>
											<td style="width: 148px"><asp:dropdownlist id="DwClear" runat="server">
													<asp:ListItem Value="1">☆</asp:ListItem>
													<asp:ListItem Value="2">☆☆</asp:ListItem>
													<asp:ListItem Value="3">☆☆☆</asp:ListItem>
													<asp:ListItem Value="4" Selected="True">☆☆☆☆</asp:ListItem>
													<asp:ListItem Value="5">☆☆☆☆☆</asp:ListItem>
												</asp:dropdownlist></td>
										</tr>
										<tr>
											<td style="WIDTH: 64px">推荐位置：</td>
											<td style="width: 109px">
												<asp:CheckBoxList id="CkbBest" runat="server" Width="200px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1">首页推荐</asp:ListItem>
													<asp:ListItem Value="1">本类首页推荐</asp:ListItem>
												</asp:CheckBoxList></td>
											<td style="width: 94px"><span class="style1">需要影币</span>：</td>
											<td style="width: 148px"><asp:textbox id="TbMoney" runat="server" Width="85px"></asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 64px">
                                                影片类型：</td>
											<td style="width: 109px">
												<asp:RadioButtonList id="Rbfilmtype" runat="server" Width="160px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1" Selected="True">Real</asp:ListItem>
													<asp:ListItem Value="0">Ms media</asp:ListItem>
												</asp:RadioButtonList></td>
											<td style="width: 94px">是否连载：</td>
											<td style="width: 148px">
												<asp:RadioButtonList id="RbIsReq" runat="server" Width="112px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1" Selected="True">是</asp:ListItem>
													<asp:ListItem Value="0" Selected="True">否</asp:ListItem>
												</asp:RadioButtonList></td>
										</tr>
										<tr>
											<td style="WIDTH: 90px">
                                                点播显示方式：</td>
											<td width="217">
												<asp:RadioButtonList id="Rb_Showtype" runat="server" Width="194px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1" Selected="True">按集数顺序</asp:ListItem>
													<asp:ListItem Value="2">按文件名称</asp:ListItem>
												</asp:RadioButtonList></td>
											<td style="width: 94px">
                                                允许下载：</td>
											<td style="width: 148px">
												<asp:RadioButtonList id="Rb_AllowDown" runat="server" Width="112px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1" Selected="True">是</asp:ListItem>
													<asp:ListItem Value="0" Selected="True">否</asp:ListItem>
												</asp:RadioButtonList></td>
										</tr>
										<TR>
											<TD style="WIDTH: 90px">搜索关键字：</TD>
											<TD colSpan="3">
                                                <asp:TextBox ID="Tb_SearchKey" runat="server" Width="253px"></asp:TextBox> &nbsp;允许多个，用|隔开</TD>
										</TR>
										<TR>
											<TD style="WIDTH: 64px; height: 21px;">海报路径：</TD>
											<TD colSpan="3" style="height: 21px">
                                                <asp:TextBox ID="TbPicUrl" runat="server" Width="253px"></asp:TextBox><A href="javascript:tb();">[重新/取消上传]</A>
                                                <table id="tb_body" style="DISPLAY: none" cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td><INPUT id="myfile" 
																type="file" size="45" name="myfile" runat="server"></td>
													</tr>
												</table></TD>
										</TR>
									</table>
								</td>
							</tr>
							<TR>
								<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px;"
									align="center" bgColor="#f7f7f7" height="147">
									<TABLE id="table21" height="147" cellSpacing="0" cellPadding="0" border="0" style="width: 666px">
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 506px; height: 25px;">剧情简介：</TD>
										</TR>
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 506px;"
												vAlign="top" height="122"><FONT face="宋体">&nbsp;<asp:TextBox ID="TbGut" runat="server" Height="119px" TextMode="MultiLine"
                                                    Width="661px"></asp:TextBox></FONT></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 38px; width: 47px;"
									align="center" bgColor="#f7f7f7">
									<TABLE id="table3" height="25" cellSpacing="0" cellPadding="0" border="0" language="javascript" onclick="return table22_onclick()" style="width: 662px">
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 681px; height: 21px;">
                                                物理地址：
											
                                                &nbsp; &nbsp; &nbsp;<asp:TextBox ID="TbFilmPhyPath" runat="server" Width="242px"></asp:TextBox>&nbsp;
                                                影片文件夹：<INPUT class="input1" runat ="server" id="uppath" type="text" size="40" name="uppath" ></TD>
										</TR>
										<TR>
											
											<TD  align="center" style="width: 681px">
                                                <asp:Button ID="BtnModify" runat="server" Text="确认修改" Width="120px" OnClick="BtnAuto_Click" /></TD>
										</TR>
										<TR>
											<TD id="upid" colSpan="2" runat ="server"><FONT face="宋体"></FONT></TD>
										</TR>
										<tr>
										<td colSpan="2" >
                                            &nbsp;
                                        </td>
										</tr>
									</TABLE>
                                    
                            </TR>
						</table>
              
						<br>
						<table id="table22" style="WIDTH: 681px; HEIGHT: 238px" height="238" cellSpacing="1" cellPadding="0"
							width="681" align="center" bgColor="#e7e7e7" border="0">
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 39px; width: 680px;"
									align="center" bgColor="#e4edf9">影片地址管理<a name="Layer2"></a></td>
							</tr>
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 680px;"
									align="center" bgColor="#f7f7f7" height="27">
									<p align="left">&nbsp;添加影片地址：
										<asp:textbox id="TbAdd" runat="server" Width="376px"></asp:textbox>&nbsp;
										<asp:button id="Button2" runat="server" Text="添加影片" OnClick="Button2_Click"></asp:button></p>
								</td>
							</tr>
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 680px;"
									align="center" bgColor="#f7f7f7" height="78">
									<table id="table25" height="27" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td style="WIDTH: 28px" width="28" bgColor="#efefef">
												<p align="center">集数</p>
											</td>
											<td width="290" bgColor="#efefef">
												<p align="center">影片地址</p>
											</td>
										</tr>
									</table>
									<asp:label id="Label2" runat="server"></asp:label>
									<%--<table id="table26" height="27" cellSpacing="1" cellPadding="0" width="100%" border="0">
										<tr>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"
												align="center" bgColor="#e4edf9" height="27">
												<p align="left">影片下载路径(注:如果你要单独提供,请填写!否则请留空!)</p>
											</td>
										</tr>
									</table>
									<table id="table27" height="27" cellSpacing="0" cellPadding="0" width="100%" border="0">
										<tr>
											<td width="49" bgColor="#efefef">
												<p align="center">集数</p>
											</td>
											<td width="516" bgColor="#efefef">
												<p align="center">下载地址</p>
											</td>
										</tr>
									</table>--%>
									<asp:label id="Label3" runat="server"></asp:label></td>
							</tr>
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 680px;"
									align="center" bgColor="#f7f7f7" height="28"><asp:button id="Button3" runat="server" Text="确认修改" OnClick="Button3_Click"></asp:button></td>
							</tr>
						</table>
					</td>
				</tr>
			</table>
			<br>
			<br>
		</form>
	</body>
</HTML>
