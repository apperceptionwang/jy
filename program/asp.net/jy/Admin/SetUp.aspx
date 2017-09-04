<%@ Page Language="C#" AutoEventWireup="true" CodeFile="SetUp.aspx.cs" Inherits="Admin_SetUp" %>

<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="ftb" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >



<HTML>
	<HEAD>
		<title>hy_edit</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<script language=javascript src="../img/calendar.js"></script>
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
		    .style1
            {
                width: 189px;
            }
            .style2
            {
                text-align: left;
            }
            </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<table class="tableBorder" id="table2" height="68" cellSpacing="1" cellPadding="3" align="center"
				border="0" style="width: 100%">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" colSpan="2" height="25">
                        基本设置</th></tr>
                <%--<TR>
					<TD class="Forumrow" align="center" width="132" height="30" style="WIDTH: 138px">
						<P align="left">推广会员：</P>
					</TD>
					<TD class="Forumrow" align="left" width="771" height="30">
						<asp:TextBox id="TextBox9" runat="server"></asp:TextBox>
					</TD>
				</TR>--%>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">
                            文件上传类型：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_filetype" runat="server" ></asp:TextBox><asp:Button ID="btn_filetype" runat="server" OnClick="btn_filetype_Click" Text="修改" />(不同类型文件用
                        <strong>|</strong> 分开）</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">
                            文件上传限制大小：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_filesize" runat="server"></asp:TextBox>(单位K)<asp:Button ID="btn_filesize" runat="server" OnClick="btn_filesize_Click"
                            Text="修改" /></td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">图片上传类型：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_PhotoType" runat="server" ></asp:TextBox><asp:Button ID="btn_PhotoType" runat="server" OnClick="btn_PhotoType_Click" Text="修改" />(不同类型文件用
                        <strong>|</strong> 分开）</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">图片上传限制大小：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_PhotoSize" runat="server"></asp:TextBox>(单位K)<asp:Button ID="btn_PhotoSize" runat="server" OnClick="btn_PhotoSize_Click"
                            Text="修改" /></td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">当前评审年度：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_year_now" runat="server"></asp:TextBox><asp:Button ID="btn_year_now" runat="server" OnClick="btn_year_now_Click"
                            Text="修改" /><asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="tbx_year_now"
                                ErrorMessage="提示：应为年度" MaximumValue="3000" MinimumValue="1900" Type="Integer"></asp:RangeValidator>（如果留空，则默认为系统当前年度）</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">默认显示条数：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_PageSize" runat="server" ></asp:TextBox>
                        <asp:Button ID="btn_PageSize" runat="server" OnClick="btn_PageSize_Click"
                            Text="更新" />（修改需重新登录系统）</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">更新数据库结构：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:TextBox ID="tbx_SQL" runat="server" ></asp:TextBox><asp:Button ID="btn_updateDB" runat="server" OnClick="btn_updateDB_Click"
                            Text="更新" /></td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">备份数据库：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:Button ID="btn_backupDB" runat="server" OnClick="btn_backupDB_Click"
                            Text="备份并下载" />&nbsp;
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">初始化数据库：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:Button ID="btn_initDB" runat="server" OnClick="btn_initDB_Click"
                            Text="清空数据库" />&nbsp;
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">同步教师信息：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:Button ID="btn_initDB0" runat="server" OnClick="btn_initDB0_Click"
                            Text="同步" Visible="False" />&nbsp;
                    </td>
                </tr>
                <tr>
                    <th id="Th1" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" colSpan="2" height="25">
                        起止时间设置</th>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" class="style2">
                            立项<span style="font-size: 9pt; font-family: 宋体">申报：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        &nbsp;</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">教师申报起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_lx11" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_lx12" runat="server" name="s4" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator2" runat="server" 
                            ControlToValidate="tbx_lx11" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator13" runat="server" 
                            ControlToValidate="tbx_lx12" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            部门推荐<span style="font-size: 9pt; font-family: 宋体">起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_lx21" runat="server" name="s5" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_lx22" runat="server" name="s6" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator5" runat="server" 
                            ControlToValidate="tbx_lx21" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator14" runat="server" 
                            ControlToValidate="tbx_lx22" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            专家<span style="font-size: 9pt; font-family: 宋体">评审起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_lx31" runat="server" name="s7" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_lx32" runat="server" name="s8" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator6" runat="server" 
                            ControlToValidate="tbx_lx31" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator15" runat="server" 
                            ControlToValidate="tbx_lx32" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">任务书填报起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_lx41" runat="server" name="s9" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_lx42" runat="server" name="s10" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator7" runat="server" 
                            ControlToValidate="tbx_lx41" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator16" runat="server" 
                            ControlToValidate="tbx_lx42" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" class="style2">
                            <span style="font-size: 9pt; font-family: 宋体">中期检查：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        &nbsp;</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">教师申请起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_zq11" runat="server" name="s11" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_zq12" runat="server" name="s12" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator8" runat="server" 
                            ControlToValidate="tbx_zq11" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator17" runat="server" 
                            ControlToValidate="tbx_zq12" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            专家<span style="font-size: 9pt; font-family: 宋体">评审起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_zq21" runat="server" name="s13" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_zq22" runat="server" name="s14" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator9" runat="server" 
                            ControlToValidate="tbx_zq21" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator18" runat="server" 
                            ControlToValidate="tbx_zq22" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" class="style2">
                            <span style="font-size: 9pt; font-family: 宋体">结题验收：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        &nbsp;</td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">教师申请起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_jt11" runat="server" name="s15" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_jt12" runat="server" name="s16" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator10" runat="server" 
                            ControlToValidate="tbx_jt11" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator19" runat="server" 
                            ControlToValidate="tbx_jt12" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">专家评审起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_jt21" runat="server" name="s17" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_jt22" runat="server" name="s18" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator11" runat="server" 
                            ControlToValidate="tbx_jt21" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator20" runat="server" 
                            ControlToValidate="tbx_jt22" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">结题报告起止日期：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <input id="tbx_jt31" runat="server" name="s19" onfocus="calendar()" style="font-size: 9pt"
                            type="text" />-<input id="tbx_jt32" runat="server" name="s20" 
                            onfocus="calendar()" style="font-size: 9pt"
                            type="text" />
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator12" runat="server" 
                            ControlToValidate="tbx_jt31" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                        <asp:RegularExpressionValidator 
                                                                                                                                                
                            ID="RegularExpressionValidator21" runat="server" 
                            ControlToValidate="tbx_jt32" 
                                                                                                                                                
                            ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" 
                            SetFocusOnError="True" 
                                                                                                                                                
                            
                            ValidationExpression="^((\d{2}(([02468][048])|([13579][26]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|([1-2][0-9])))))|(\d{2}(([02468][1235679])|([13579][01345789]))[\-\/\s]?((((0?[13578])|(1[02]))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\-\/\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\-\/\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\s(((0?[1-9])|(1[0-2]))\:([0-5][0-9])((\s)|(\:([0-5][0-9])\s))([AM|PM|am|pm]{2,2})))?$"></asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        &nbsp;</td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:Button ID="btn_qzsj_Save" runat="server" OnClick="btn_qzsj_Save_Click" 
                            Text="修改" />
                    </td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        &nbsp;</td>
                    <TD class="Forumrow" align="left" height="29">
                        &nbsp;</td>
                </tr>
                <tr>
                    <th id="Th2" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" colSpan="2" height="25">
                        高级设置</th>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">生成专家人员对应关系：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:FileUpload ID="FileUpload1" runat="server"  />&nbsp;<asp:Button
                            ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="确定" Width="39px" />
                        <asp:Label ID="lbl_result" runat="server" Visible="False" ></asp:Label></td>
                </tr>
                <tr>
                    <TD class="style1" align="center" height="29">
                        <P align="left" style="text-align: right">
                            <span style="font-size: 9pt; font-family: 宋体">计算分数：</span></p>
                    </td>
                    <TD class="Forumrow" align="left" height="29">
                        <asp:Button ID="btn_calc" runat="server" OnClick="btn_calc_Click"
                            Text="计算" /></td>
                </tr>
                </table>
			<br>
		</form>
	</body>
</HTML>

