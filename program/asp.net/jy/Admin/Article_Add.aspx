<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Article_Add.aspx.cs" Inherits="Admin_Article_Add" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>文章添加</title>
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
			<br>
			<table class="tableBorder" id="table2" height="745" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center">
                            添加<asp:Label ID="lbl_title" runat="server"></asp:Label></p>
					</th>
				</tr>
				<tr>
					<td class="Forumrow" align="right"  height="715" valign =top>
					<table id="table5" height="413" cellSpacing="1" cellPadding="3" align="center" 
							bgColor="#e7e7e7" border="0" style="width: 681px">
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px; height: 50px;"
									align="center" bgColor="#f7f7f7">
									<table id="table20" height="30" cellSpacing="0" cellPadding="0" border="0" style="width: 662px" runat="server" visible="false">
										<tr>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px;"
												width="69">
                                                所属类别：</td>
											<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; height: 30px; width: 593px;" colspan="3"><asp:dropdownlist id="DwPath" runat="server" Width="131px">
                                                <asp:ListItem>正高级</asp:ListItem>
                                                <asp:ListItem>专业技术二级</asp:ListItem>
                                                <asp:ListItem>特殊津贴人员</asp:ListItem>
                                                <asp:ListItem>优秀论文</asp:ListItem>
                                            </asp:dropdownlist>
                                                &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                                                <asp:CheckBox ID="cbx_hot" runat="server" Text="是否为热点新闻" Visible="False" />
                                                <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label></td>
										</tr>
									</table>
								</td>
							</tr>
							<tr>
								<td style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px; height: 70px;"
									align="center" bgColor="#f7f7f7">
									<table border="0" cellPadding="0" cellSpacing="2" id="table19" style="width: 664px; height: 66px">
										<tr>
											<td style="WIDTH: 64px; height: 9px;">
                                                标题名称：</td>
											<td style="height: 9px;" colspan="4"><asp:textbox id="tbx_title" runat="server" Width="317px" ></asp:textbox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="tbx_title"
                                                    ErrorMessage="*"></asp:RequiredFieldValidator></td>
                                        </tr>
										<TR>
											<TD style="WIDTH: 64px; height: 6px;">
                                                </TD>
											<TD colSpan="3" style="height: 6px; width: 589px;">
                                                <table id="tb_body" style="DISPLAY: none" cellSpacing="0" cellPadding="0" width="99%" border="0">
													<tr>
														<td style="height: 21px">
                                                            </td>
													</tr>
												</table>
                                                <asp:Label ID="lbl_admin" runat="server" Width="257px"></asp:Label>
                                                            <asp:Label ID="lbl_time" runat="server" Width="254px"></asp:Label></TD>
										</TR>
									</table>
								</td>
							</tr>
							<TR>
								<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 47px; height: 147px; text-align: center;"
									align="center" bgColor="#f7f7f7">
									<TABLE id="table21" height="147" cellSpacing="0" cellPadding="0" border="0" style="width: 666px">
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 358px; height: 25px;">
                                                内容：</TD>
										</TR>
										<TR>
											<TD style="FONT-SIZE: 12px; COLOR: #000000; FONT-FAMILY: Verdana, Arial, Helvetica, sans-serif; width: 358px; height: 124px; text-align: justify;"
												vAlign="top"><FONT face="宋体">
                                                    
                                                        <FTB:FreeTextBox id="ftb_content" Focus="true" autoconfigure="EnableAll" buttonpath="../images/ftb/office2003/"
                                                        height="400px" helperfilespath="../HelperScripts/" 
                                                        width="660px" 
            SupportFolder="~/aspnet_client/FreeTextBox/"
            JavaScriptLocation="ExternalFile" 
            ButtonImagesLocation="ExternalFile"
            ToolbarImagesLocation="ExternalFile"
            ToolbarStyleConfiguration="officeXP"            
            toolbarlayout="ParagraphMenu,FontFacesMenu,FontSizesMenu,FontForeColorsMenu,FontForeColorPicker,FontBackColorsMenu,
FontBackColorPicker|Bold,Italic,Underline,Strikethrough,Superscript,Subscript,RemoveFormat|JustifyLeft,JustifyRight,JustifyCenter,
JustifyFull;BulletedList,NumberedList,Indent,Outdent;CreateLink,Unlink,InsertImage|Cut,Copy,Paste,Delete;Undo,Redo,Print,Save|
SymbolsMenu,StylesMenu,InsertHtmlMenu|InsertRule,InsertDate,InsertTime|InsertTable,EditTable;InsertTableRowAfter,
InsertTableRowBefore,DeleteTableRow;InsertTableColumnAfter,InsertTableColumnBefore,DeleteTableColumn|InsertForm,InsertTextBox,
InsertTextArea,InsertRadioButton,InsertCheckBox,InsertDropDownList,InsertButton|InsertDiv,EditStyle,InsertImageFromGallery,
Preview,SelectAll,WordClean,NetSpell"
            runat="Server"
            GutterBackColor="red"
            DesignModeCss="designmode.css" ButtonSet="Office2003" Language="zh-CN"         
            />
                                                </FONT></TD>
										</TR>
									</TABLE><table border="0" cellPadding="0" cellSpacing="2" id="Table3" style="width: 664px; height: 20px">
                                        <tr>
                                            <td style="WIDTH: 164px; height: 1px;">
                                            </td>
                                            <td style="width: 334px; height: 1px; text-align: left;" colspan="4">
                                            <asp:button id="btn_save" runat="server" Text="确认修改" OnClick="btn_save_Click" ></asp:button></td>
                                        </tr>
                                    </table>
								</TD>
							</TR>
						</table>
              
						<br>
					</td>
				</tr>
			</table>
			<br>
			<br>
		</form>
	</body>
</HTML>

