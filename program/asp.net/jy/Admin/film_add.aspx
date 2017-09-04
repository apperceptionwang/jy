<%@ Page Language="C#" AutoEventWireup="true" CodeFile="film_add.aspx.cs" Inherits="VOD.Admin.film_add" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_add</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
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
function setid()
{
str='';
if(!window.Form1.upjs.value)
window.Form1.upjs.value=1;

for(i=1;i<=window.Form1.upjs.value;i++)
{
if(window.Form1.upjs.value<2)
{
str+='全集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/0'+i+''+window.Form1.no3.value+'"><BR>';
}  

else if(window.Form1.upjs.value<10)
{
str+='第'+i+'集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/0'+i+''+window.Form1.no3.value+'"><BR>';
}  
else if(window.Form1.upjs.value<100)
{
	if(i<10)
	{
	str+='第0'+i+'集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/0'+i+''+window.Form1.no3.value+'"><BR>';
	}
	else
	{
	str+='第'+i+'集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/'+i+''+window.Form1.no3.value+'"><BR>';
	}
} 
else if(window.Form1.upjs.value<1000)
{
	if(i<10)
	{
	str+='第'+i+'集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/'+'00'+i+''+window.Form1.no3.value+'"><BR>';
 	} 
else if(i<100)
	{
	str+='第'+i+'集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/'+'0'+i+''+window.Form1.no3.value+'"><BR>';
 	}
	else
	{
	str+='第'+i+'集：<input type="text" name="urla'+i+'" size="60" class="input1" value="'+window.Form1.uppath.value+'/'+i+''+window.Form1.no3.value+'"><BR>';
	}
}
}
window.upid.innerHTML=str+'<br>';
} 
function table22_onclick() {

}

		</script>
	</HEAD>
	<body>
		<form id="Form1" name="Form1" method="post" runat="server">
			<FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体"></FONT><FONT face="宋体">
			</FONT><FONT face="宋体"></FONT>
			<br>
			<table class="tableBorder" id="table2" height="288" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa; width: 730px;"
						align="left" height="25">
						<p align="center">增加新影片</p>
					</th>
				</tr>
				<tr>
					<td class="Forumrow" align="right" height="259" style="width: 730px"><table id="table5" height="413" cellSpacing="1" cellPadding="3" width="720" align="center"
							bgColor="#e7e7e7" border="0">
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"
									align="center" bgColor="#f7f7f7">
									<table id="table20" height="30" cellSpacing="0" cellPadding="0" width="700" border="0">
										<tr>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="69">第一线路：</td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px; width: 194px;"><asp:dropdownlist id="DwPath" runat="server"></asp:dropdownlist></td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="71">第二线路：</td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="199">
                                                请在服务器路径页面中设置</td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"
									align="center" bgColor="#f7f7f7">
									<table width="700" border="0" cellPadding="0" cellSpacing="2" id="table19">
										<tr>
											<td style="WIDTH: 90px">影片名称：</td>
											<td width="217"><asp:textbox id="TbFilmname" runat="server" Width="160px" ></asp:textbox>
                                                </td>
											<td width="69">影片别名：</td>
											<td colSpan="2"><asp:textbox id="TbOthername" runat="server" Width="160px"></asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 90px">影片导演：</td>
											<td width="217"><asp:textbox id="TbDirector" runat="server" Width="160px"></asp:textbox></td>
											<td width="69">主要演员：</td>
											<td colSpan="2"><asp:textbox id="TbPlayer" runat="server" Width="160px"></asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 90px">影片类别：</td>
											<td width="217"><asp:dropdownlist id="DwClass" runat="server"></asp:dropdownlist></td>
											<td width="69">影片产地：</td>
											<td width="141"><asp:dropdownlist id="DwFrom" runat="server">
													<asp:ListItem Value="1" Selected="True">-欧美地区-</asp:ListItem>
													<asp:ListItem Value="2">-港台地区-</asp:ListItem>
													<asp:ListItem Value="3">-大陆地区-</asp:ListItem>
													<asp:ListItem Value="4">-日韩地区-</asp:ListItem>
													<asp:ListItem Value="5">-其它地区-</asp:ListItem>
												</asp:dropdownlist></td>
											<td width="194" rowSpan="7">
												<p align="center">
                                                    <img id="img_Photo"  name= "film_pic" runat = "server" width="140" height="180" style="DISPLAY:none"></p>
											</td>
										</tr>
										<tr>
											<td style="WIDTH: 90px">推荐级别：</td>
											<td width="217"><asp:dropdownlist id="DwLevel" runat="server">
													<asp:ListItem Value="1">★</asp:ListItem>
													<asp:ListItem Value="2">★★</asp:ListItem>
													<asp:ListItem Value="3" Selected="True">★★★</asp:ListItem>
													<asp:ListItem Value="4">★★★★</asp:ListItem>
													<asp:ListItem Value="5">★★★★★</asp:ListItem>
												</asp:dropdownlist></td>
											<td width="69">清晰程度：</td>
											<td width="141"><asp:dropdownlist id="DwClear" runat="server">
													<asp:ListItem Value="1">☆</asp:ListItem>
													<asp:ListItem Value="2">☆☆</asp:ListItem>
													<asp:ListItem Value="3">☆☆☆</asp:ListItem>
													<asp:ListItem Value="4" Selected="True">☆☆☆☆</asp:ListItem>
													<asp:ListItem Value="5">☆☆☆☆☆</asp:ListItem>
												</asp:dropdownlist></td>
										</tr>
										<tr>
											<td style="WIDTH: 90px">推荐位置：</td>
											<td width="217">
												<asp:CheckBoxList id="CkbBest" runat="server" Width="200px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1">首页推荐</asp:ListItem>
													<asp:ListItem Value="1">本类首页推荐</asp:ListItem>
												</asp:CheckBoxList></td>
											<td width="69"><span class="style1">需要影币</span>：</td>
											<td width="141"><asp:textbox id="TbMoney" runat="server" Width="85px">20</asp:textbox></td>
										</tr>
										<tr>
											<td style="WIDTH: 90px">
                                                影片类型：</td>
											<td width="217">
												<asp:RadioButtonList id="Rbfilmtype" runat="server" Width="160px" RepeatDirection="Horizontal">
													<asp:ListItem Value="1" Selected="True">Real</asp:ListItem>
													<asp:ListItem Value="2">Ms media</asp:ListItem>
												</asp:RadioButtonList></td>
											<td width="69">是否连载：</td>
											<td width="141">
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
											<td width="69">
                                                允许下载：</td>
											<td width="141">
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
											<TD style="WIDTH: 90px">海报路径：</TD>
											<TD colSpan="3">
                                                <asp:FileUpload ID="FileUpload1" runat="server"  Width="293px" />
                                                &nbsp; &nbsp;&nbsp; 优先保存<br />
                                                <asp:TextBox ID="Tb_FilmPic" runat="server"  Width="288px"></asp:TextBox>
                                                &nbsp; &nbsp; &nbsp;
                                                其次.</TD>
										</TR>
									</table>
								</td>
							</tr>
							<TR>
								<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"
									align="center" bgColor="#f7f7f7" height="147">
									<TABLE id="table21" height="147" cellSpacing="0" cellPadding="0" width="700" border="0">
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"
												height="25">剧情简介：</TD>
										</TR>
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"
												vAlign="top" height="122"><FONT face="宋体">&nbsp;<asp:TextBox ID="TbGut" runat="server" Height="119px" TextMode="MultiLine"
                                                    Width="687px"></asp:TextBox></FONT></TD>
										</TR>
									</TABLE>
								</TD>
							</TR>
							<TR>
								<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 38px;"
									align="center" bgColor="#f7f7f7">
									<TABLE id="table22" height="25" cellSpacing="0" cellPadding="0" width="700" border="0" language="javascript" onclick="return table22_onclick()">
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 114px; height: 21px;">
                                                物理地址：</TD>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 21px;">
                                                <asp:TextBox ID="TbFilmPhyPath" runat="server" Width="294px"></asp:TextBox>
                                                <asp:Button ID="BtnAuto" runat="server" Text="自动生成影片内容" Width="120px" OnClick="BtnAuto_Click" />
                                                <asp:Label ID="LblRead" runat="server" Text="Label" Visible="False"></asp:Label></TD>
										</TR>
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 114px;">
                                                相对路径：</TD>
											<TD  style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif"><INPUT class="input1" runat ="server" id="uppath" type="text" size="40" name="uppath" >
												集数 <INPUT class="input1" runat ="server" id="upjs" type="text" size="3" value="1"  /> 格式 <INPUT class="input1" id="no3" type="text" size="6" value=".rm" name="no3">&nbsp;&nbsp;
												<INPUT class="button1" onclick="setid()" type="button" value="增加" name="Button">
											</TD>
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
                        </td>
				</tr>
			</table>
			<BR>
			<TABLE id="table1" cellSpacing="1" cellPadding="3" align="center" border="0">
				<TR>
					<TD align="center" style="width: 114px">
						<asp:button id="BtnAdd" runat="server" Text="添加" OnClick="Button1_Click" Width="54px" ></asp:button></TD>
				
				<td style="width: 130px"><input type="button"  onclick ="javacript:window.location.href='main.aspx';" value="取消" /></td></tr>
			</TABLE>
            <BR>
		</form>
	</body>
</HTML>
