<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tt_tjb_preview.aspx.cs" Inherits="tt_tjb_preview" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_classAddEdit</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="admin/Admin.css" type="text/css" rel="stylesheet">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<style type="text/css">
	body,td,th {
	font-size: 14px;
}
    a:link {
	text-decoration: none;
	color: #000000;
}
A:link {
	FONT-SIZE: 9pt; COLOR: #000000; TEXT-DECORATION: none
}
A:link {
	FONT-SIZE: 12px; COLOR: #333333; TEXT-DECORATION: none
}
        </style>
	</HEAD>
<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div align="center">
<table class="tableBorder" id="table2" style="WIDTH: 100%" height="318" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th height="25" colspan="4" align="center" id="tabletitlelink" 
                            style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa">
							<asp:Literal id="ltl_Title" runat="server" Text="专家情况登记表"></asp:Literal></th>
					</tr>
					<tr>
						<TD height="32" colspan="4" vAlign="middle" class="forumRowHighlight">
                            <asp:Button ID="btn_return" runat="server" onclick="btn_return_Click" 
                                Text="返回参评人员列表" />
                        </TD>
					</tr>
					<tr>
						<TD width="29%" align="right" vAlign="middle" class="forumRow" 
                            style="font-size: 14px">姓名</TD>
						<TD width="18%" vAlign="middle" class="forumRow"><asp:Label
                                            ID="lbl_xm" runat="server" 
                                Font-Size="14px"></asp:Label></TD>
						<TD width="8%" align="right" vAlign="middle" class="forumRow">性别</TD>
						<TD width="45%" vAlign="middle" class="forumRow">
					        <span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_xb" runat="server" Font-Names="宋体" Font-Size="14px" ></asp:Label>
			          </span></span></span></span></span></TD>
					</tr>
					<tr>
						<TD vAlign="middle" class="forumRowHighlight" align="right" 
                            style="font-size: 14px">出生日期</TD>
						<TD class="forumRowHighlight" vAlign="middle"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt">
				    <asp:Label ID="lbl1_csrq" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
            </span></span></span></TD>
						<TD align="right" vAlign="middle" class="forumRowHighlight">出生地</TD>
						<TD class="forumRowHighlight" vAlign="middle">
						    <span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_csd" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
				      </span></span></span></span></span></TD>
					</tr>
					<tr>
						<td class="forumRow" align="right" style="font-size: 14px">政治面目</td>
						<td class="forumRow"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt">
				    <asp:Label ID="lbl1_zzmm" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
            </span></span></span></td>
						<td align="right" class="forumRow">民族</td>
						<td class="forumRow">
                            <span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_mz" runat="server" Font-Names="宋体" Font-Size="14px" ></asp:Label>
                      </span></span></span></span></span></td>
					</tr>
					<tr>
						<td class="forumRowHighlight" align="right" style="font-size: 14px">文化程度</td>
						<td class="forumRowHighlight"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_whcd" runat="server" Font-Names="宋体" Font-Size="14px" 
                                Width="132px"></asp:Label>
	          </span></span></span></span></span></td>
						<td align="right" class="forumRowHighlight">学位</td>
						<td class="forumRowHighlight">
                            <span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_xw" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
                      </span></span></span></span></span></td>
					</tr>
					<tr>
						<td class="forumRow" align="right">毕业时间</td>
						<td class="forumRow"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_bysj" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
            </span></span></span></span></span></td>
						<td align="right" class="forumRow">毕业学校</td>
						<td class="forumRow"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_byxx" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
					  </span></span></span></span></span></td>
					</tr>
					<tr>
						<td class="forumRowHighlight" align="right">所学专业</td>
						<td class="forumRowHighlight"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_sxzy" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
            </span></span></span></span></span></td>
						<td align="right" class="forumRowHighlight">从事专业</td>
						<td class="forumRowHighlight"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_cszy" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
					  </span></span></span></span></span></td>
					</tr>
					<tr>
						<td class="forumRow" align="right">技术职称</td>
						<td class="forumRow"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_jszc" runat="server" Font-Names="宋体" Font-Size="14px" 
                                Width="220px"></asp:Label>
            </span></span></span></span></span></td>
						<td align="right" class="forumRow">工作单位</td>
						<td class="forumRow"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_gzdw" runat="server" Font-Names="宋体" Font-Size="14px"></asp:Label>
					  </span></span></span></span></span></td>
					</tr>
					<tr>
						<td class="forumRowHighlight" align="right">工作时间</td>
						<td class="forumRowHighlight"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                        <asp:Label ID="lbl1_gzsj" runat="server" Font-Names="宋体" Font-Size="14px" ></asp:Label>
            </span></span></span></span></span></td>
						<td align="right" class="forumRowHighlight">博导年份</td>
						<td class="forumRowHighlight"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                      <asp:Label ID="lbl1_bdnf" runat="server" Font-Names="宋体" Font-Size="14px" 
                              Font-Bold="False"></asp:Label>
					  </span></span></span></span></span></td>
					</tr>
					<TR>
						<TD class="forumRow" align="right">进博站年</TD>
						<TD class="forumRow"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> 
                      <asp:Label ID="lbl1_jbzn" runat="server" Font-Names="宋体" Font-Size="14px" 
                              Width="100px" Font-Bold="False"></asp:Label>
            </span></span></span></span></span></TD>
						<TD align="right" class="forumRow">&nbsp;</TD>
						<TD class="forumRow">&nbsp;</TD>
					</TR>
                    <%--<tr>
						<td class="forumRowHighlight">&nbsp;<FONT face="宋体">同类电影下方自定义:</FONT></td>
						<td class="forumRowHighlight"><asp:TextBox ID="TextBox6" runat="server" Width="490px" Height="144px" TextMode="MultiLine"></asp:TextBox></td>
					</tr>--%>
					<tr>
					  <td align="left" class="forumRowHighlight">&nbsp;</td>
					  <td align="left" class="forumRowHighlight"><asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Strikeout="False" 
                              Text="主要专业工作经历"></asp:Label>
                          </td>
					  <td align="right" class="forumRowHighlight">&nbsp;</td>
					  <td class="forumRowHighlight"><span style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 16pt; font-family: 仿宋_GB2312"><span style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"><strong>
					    <asp:Label ID="lbl1_gzjl" runat="server" Font-Names="宋体" Font-Size="16px" 
                              Font-Bold="False"  Visible="False"></asp:Label>
					  </strong></span></span></span></span></span></td>
				  </tr>
					<TR align="left">
					  <TD colspan="4" class="forumRow" align="center"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"><span lang="EN-US" style="font-size: 22pt; font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> <span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"> <span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"> <strong>
                      <ftb:freetextbox ID="ftb2_1" runat="server" AutoConfigure="EnableAll" BackColor="White"
                                                        ButtonPath="../images/ftb/office2003/" 
                              EnableHtmlMode="False" EnableToolbars="False"
                                                        GutterBackColor="White" Height="300px" 
                              HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                        ReadOnly="True" Width="800px" > </ftb:freetextbox>
                      </strong> </span></span></span> </span></span></span></span></TD>
				  </TR>
					<tr>
					  <td class="forumRowHighlight" align="right">&nbsp;<td align="right" class="forumRowHighlight">
                        <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Strikeout="False" 
                              Text="获奖情况"></asp:Label>
                        </td>
					  <td class="forumRowHighlight" colspan="2">&nbsp;</td>
				  </tr>
					<TR align="left">
					  <TD colspan="4" class="forumRow" align="center">
                                                                                                                <asp:GridView ID="gv_hjqk" runat="server" AutoGenerateColumns="False" 
                              BackColor="White"
                                                                                                                    
                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                              GridLines="Horizontal"
                                                                                                                    
                              Height="1px" Width="713px" EnableModelValidation="True" Font-Size="14px">
                                                                                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                                                    <Columns>
                                                                                                                        <asp:TemplateField HeaderText="序号">
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                                                <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                                                                                            </ItemTemplate>
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="14px" Width="40px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="14px" />
                                                                                                                        </asp:TemplateField>
                                                                                                                        <asp:BoundField DataField="jlzl" HeaderText="奖励种类">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="14px" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="14px" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="hjxm" HeaderText="获奖项目">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="14px" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="14px" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="jldj" HeaderText="奖励等级">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="14px" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="pm" HeaderText="排名">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="14px" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="nd" HeaderText="年度">
                                                                                                                            <HeaderStyle Font-Names="宋体" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" />
                                                                                                                        </asp:BoundField>
                                                                                                                    </Columns>
                                                                                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" 
                                                                                                                        Font-Size="14px" />
                                                                                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                                                </asp:GridView>
                                                                                                                </TD>
				  </TR>
					<tr>
					  <td class="forumRowHighlight" align="right">&nbsp;</td>
					  <td class="forumRowHighlight">
                        <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Strikeout="False" 
                              Text="主要突出贡献事迹"></asp:Label>
                        </td>
					  <span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"> <span style="mso-spacerun: yes"><span
                    style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"> <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-size: 22pt;
                                        font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> <span lang="EN-US" style="font-size: 14pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 10.0pt">
                      <asp:Label id="lbl3_1" runat="server" Font-Names="宋体" Font-Size="16px" 
                              Visible="False"></asp:Label>
                      </span></span></b></span></span></span></span>
					  <td class="forumRowHighlight" colspan="2">&nbsp;</td>
				  </tr>
					<TR align="left">
					  <TD colspan="4" class="forumRow" align="center"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"> <span style="mso-spacerun: yes"><span
                    style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"> <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-size: 22pt;
                                        font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> <span lang="EN-US" style="font-size: 14pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 10.0pt">
				      <ftb:freetextbox ID="ftb4_1" runat="server" AutoConfigure="EnableAll" BackColor="White"
                                                                    
                              ButtonPath="../images/ftb/office2003/" EnableHtmlMode="False" EnableToolbars="False"
                                                                    Height="" 
                              HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                    ReadOnly="True" Width="800px"> </ftb:freetextbox>
				      </span></span></b></span></span></span></span></TD>
				  </TR>
					<tr>
					  <td class="forumRowHighlight" align="right">&nbsp;</td>
					  <td class="forumRowHighlight">
                        <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Strikeout="False" 
                              Text="代表论文和著作"></asp:Label>
                        </td>
					  <td align="right" class="forumRowHighlight">&nbsp;</td>
					  <td class="forumRowHighlight"><span style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 16pt; font-family: 仿宋_GB2312"><b style="mso-bidi-font-weight: normal"><span style="font-size: 22pt;
                                        font-family: 华文中宋; mso-bidi-font-size: 10.0pt"><span style="font-size: 14pt; mso-bidi-font-size: 10.0pt">
					    <asp:Label ID="lbl3_2" runat="server" Font-Bold="False" Font-Names="宋体" 
                              Font-Size="16px" Visible="False"></asp:Label>
					  </span></span></b></span></span></span></span></td>
				  </tr>
					<TR align="left">
					  <TD colspan="4" class="forumRow" align="center"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"> <span style="mso-spacerun: yes"><span
                    style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"> <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-size: 22pt;
                                        font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> <span lang="EN-US" style="font-size: 14pt; mso-bidi-font-size: 10.0pt">
				      <ftb:freetextbox ID="ftb4_2" runat="server" AutoConfigure="EnableAll" BackColor="White"
                                                                    
                              ButtonPath="../images/ftb/office2003/" EnableHtmlMode="False" EnableToolbars="False"
                                                                    Height="" 
                              HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                    ReadOnly="True" Width="800px"> </ftb:freetextbox>
				      </span></span></b></span></span></span></span></TD>
				  </TR>
					<tr>
					  <td class="forumRowHighlight" align="right">&nbsp;</td>
					  <td class="forumRowHighlight">
                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Strikeout="False" 
                              Text="最新成果"></asp:Label>
                        </td>
					  <td align="right" class="forumRowHighlight">&nbsp;</td>
					  <td class="forumRowHighlight"><span style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"><span style="mso-spacerun: yes"><span style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 16pt; font-family: 仿宋_GB2312"><b style="mso-bidi-font-weight: normal"><span style="font-size: 22pt;
                                        font-family: 华文中宋; mso-bidi-font-size: 10.0pt"><span style="font-size: 14pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 10.0pt">
					    <asp:Label ID="lbl3_3" runat="server" Font-Names="宋体" Font-Size="16px" 
                              Visible="False"></asp:Label>
					  </span></span></b></span></span></span></span></td>
				  </tr>
					<TR align="left">
					  <TD class="forumRow" colspan="4" align="center"><span lang="EN-US" style="font-size: 14pt; font-family: 宋体; mso-bidi-font-size: 12.0pt"> <span style="mso-spacerun: yes"><span
                    style="font-size: 18pt; font-family: 宋体; letter-spacing: 2pt; mso-bidi-font-size: 12.0pt;
                    mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                    mso-hansi-font-family: 'Times New Roman'; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA;
                    mso-ascii-font-family: 'Times New Roman'"><span lang="EN-US" style="font-size: 16pt; font-family: 仿宋_GB2312"> <b style="mso-bidi-font-weight: normal"><span lang="EN-US" style="font-size: 22pt;
                                        font-family: 华文中宋; mso-bidi-font-size: 10.0pt"> <span lang="EN-US" style="font-size: 14pt; font-family: 仿宋_GB2312; mso-bidi-font-size: 10.0pt">
                      <ftb:freetextbox ID="ftb4_3" runat="server" AutoConfigure="EnableAll" BackColor="White"
                                                                    
                              ButtonPath="../images/ftb/office2003/" EnableHtmlMode="False" EnableToolbars="False"
                                                                    Height="" 
                              HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles"
                                                                    ReadOnly="True" Width="800px"> </ftb:freetextbox>
                      </span></span></b></span></span></span></span></TD>
				  </TR>
					<tr>
					  <td class="forumRowHighlight" align="right">&nbsp;</td>
					  <td class="forumRowHighlight">
                        <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Strikeout="False" 
                              Text="考核情况"></asp:Label>
                        </td>
					  <td align="right" class="forumRowHighlight">&nbsp;</td>
					  <td class="forumRowHighlight">&nbsp;</td>
				  </tr>
					<TR>
					  <TD class="forumRow" align="center" colspan="4">
                                                                                                                <asp:GridView ID="gv_khqk" runat="server" AutoGenerateColumns="False" 
                              BackColor="White"
                                                                                                                    
                              BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
                              GridLines="Horizontal"
                                                                                                                    
                              Height="1px" Width="713px" EnableModelValidation="True" Font-Size="14px">
                                                                                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                                                    <Columns>
                                                                                                                        <asp:TemplateField HeaderText="序号">
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:Image ID="Image2" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                                                <asp:Literal ID="lit0" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                                                                                            </ItemTemplate>
                                                                                                                            <HeaderStyle Font-Names="宋体" />
                                                                                                                            <ItemStyle Font-Names="宋体" Width="40px" />
                                                                                                                        </asp:TemplateField>
                                                                                                                        <asp:BoundField DataField="khnd" HeaderText="考核年度">
                                                                                                                            <HeaderStyle Font-Names="宋体" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="khnr" HeaderText="考核内容">
                                                                                                                            <HeaderStyle Font-Names="宋体" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="khjl" HeaderText="考核结论">
                                                                                                                            <HeaderStyle Font-Names="宋体" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                    </Columns>
                                                                                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                                                </asp:GridView>
                                                                                                                </TD>
				  </TR>
					</table>
			</div>
		    <p align="center">
                <asp:Button ID="btn_return0" runat="server" onclick="btn_return_Click" 
                    Text="返回参评人员列表" />
            </p>
		</form>
	</body>
</HTML>
