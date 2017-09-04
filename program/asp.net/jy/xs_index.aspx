<%@ Page Language="C#" AutoEventWireup="true" CodeFile="xs_index.aspx.cs" Inherits="xs_index" %>

<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html >
<head><title>
	防灾科技学院-教研教改项目申请系统
</title>
<META http-equiv=Content-Type content="text/html; charset=GBK"><LINK 
href="./img/text.css" type=text/css rel=stylesheet><LINK 
href="./img/style_1024.css" type=text/css rel=STYLESHEET>
<SCRIPT language=JavaScript src="./img/script.js"></SCRIPT>
<script language=javascript src="./img/calendar.js"></script>
<SCRIPT language=JavaScript src="./img/css_suit.js"></SCRIPT>

<STYLE type=text/css>.input_button_go {
	BORDER-RIGHT: #333333 2px solid; BORDER-TOP: #ebdb9a 2px solid; BORDER-LEFT: #ebdb9a 2px solid; WIDTH: 30px; BORDER-BOTTOM: #333333 2px solid; HEIGHT: 20px; BACKGROUND-COLOR: #ffffd9
}
.input_search3 {
	BORDER-RIGHT: #997c1e 1px solid; BORDER-TOP: #997c1e 1px solid; BORDER-LEFT: #997c1e 1px solid; WIDTH: 20px; BORDER-BOTTOM: #997c1e 1px solid; HEIGHT: 17px; BACKGROUND-COLOR: #ffffff
}
</STYLE>

<META content="MSHTML 6.00.6000.16850" name=GENERATOR>
    <style type="text/css">
    a:link {
	text-decoration: none;
	color: #000000;
}
a:visited {
	text-decoration: none;
	color: #000000;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
        .style1
        {
            height: 23px;
            width: 77px;
        }
        .style2
        {
            width: 89px;
        }
        .style3
        {
            height: 21px;
        }
        .style4
        {
            height: 23px;
            width: 89px;
        }
        .style6
        {
            font-size: medium;
        }
        .style7
        {
            height: 16px;
            width: 128px;
        }
        .style8
        {
            width: 128px;
        }
    </style>
</head>
<body>
    <form id="Form1" method="post" runat="server"><SCRIPT language=JavaScript type=text/JavaScript>
<!--
                                                      function MM_swapImgRestore() { //v3.0
                                                          var i, x, a = document.MM_sr; for (i = 0; a && i < a.length && (x = a[i]) && x.oSrc; i++) x.src = x.oSrc;
                                                      }

                                                      function MM_preloadImages() { //v3.0
                                                          var d = document; if (d.images) {
                                                              if (!d.MM_p) d.MM_p = new Array();
                                                              var i, j = d.MM_p.length, a = MM_preloadImages.arguments; for (i = 0; i < a.length; i++)
                                                                  if (a[i].indexOf("#") != 0) { d.MM_p[j] = new Image; d.MM_p[j++].src = a[i]; } 
                                                          }
                                                      }

                                                      function MM_findObj(n, d) { //v4.01
                                                          var p, i, x; if (!d) d = document; if ((p = n.indexOf("?")) > 0 && parent.frames.length) {
                                                              d = parent.frames[n.substring(p + 1)].document; n = n.substring(0, p);
                                                          }
                                                          if (!(x = d[n]) && d.all) x = d.all[n]; for (i = 0; !x && i < d.forms.length; i++) x = d.forms[i][n];
                                                          for (i = 0; !x && d.layers && i < d.layers.length; i++) x = MM_findObj(n, d.layers[i].document);
                                                          if (!x && d.getElementById) x = d.getElementById(n); return x;
                                                      }

                                                      function MM_swapImage() { //v3.0
                                                          var i, j = 0, x, a = MM_swapImage.arguments; document.MM_sr = new Array; for (i = 0; i < (a.length - 2); i += 3)
                                                              if ((x = MM_findObj(a[i])) != null) { document.MM_sr[j++] = x; if (!x.oSrc) x.oSrc = x.src; x.src = a[i + 2]; }
                                                      }
//-->
</SCRIPT>

<SCRIPT language=JavaScript type=text/JavaScript>
<!--
    function MM_reloadPage(init) {  //reloads the window if Nav4 resized
        if (init == true) with (navigator) {
            if ((appName == "Netscape") && (parseInt(appVersion) == 4)) {
                document.MM_pgW = innerWidth; document.MM_pgH = innerHeight; onresize = MM_reloadPage;
            } 
        }
        else if (innerWidth != document.MM_pgW || innerHeight != document.MM_pgH) location.reload();
    }
    MM_reloadPage(true);

    function MM_showHideLayers() { //v6.0
        var i, p, v, obj, args = MM_showHideLayers.arguments;
        for (i = 0; i < (args.length - 2); i += 3) if ((obj = MM_findObj(args[i])) != null) {
            v = args[i + 2];
            if (obj.style) { obj = obj.style; v = (v == 'show') ? 'visible' : (v == 'hide') ? 'hidden' : v; }
            obj.visibility = v;
        }
    }
//-->
</SCRIPT>
<div>
    &nbsp;</div>

        <div align="center">
            <div align="center">
                <table width="760" border="0" cellpadding="0" cellspacing="0">
                    <tr>
                        <td class="STYLE1">
                            <img src="./images/top.jpg" width="760" height="125" /></td>
                    </tr>
                    <tr>
                        <td align="center" background="./images/middle_bg.gif">
                            <table cellpadding="0" cellspacing="0" height="400" width="100%">
                                <tr>
                                    <td align="center" valign="middle" style="text-align: center">
                                        <a href="admin/Admin_Login.aspx?type=ejcpry">
                                            </a>
                                        <table align="center" border="0" cellpadding="2" cellspacing="2" width="100%">
                                            <tbody>
                                                <tr>
                                                    <td align="left" colspan="2" style="width: 748px; height: 522px; text-align: center"
                                                        valign="top">
                                                        <table id="Table1" align="center" border="1" bordercolor="#808080" cellpadding="1"
                                                            style="border-collapse: collapse" width="100%">
                                                            <tr>
                                                                <td align="left" colspan="4" style="width: 461px; height: 18px; text-align: center">
                                                                    <span style="font-size: 12pt"><asp:LinkButton ID="lbtn_1" runat="server" OnClick="lbtn_1_Click">第一页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_2" runat="server" OnClick="lbtn_2_Click">第二页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_3" runat="server" OnClick="lbtn_3_Click">第三页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_4" runat="server" OnClick="lbtn_4_Click">第四页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_5" runat="server" OnClick="lbtn_5_Click">第五页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_6" runat="server" OnClick="lbtn_6_Click">第六页</asp:LinkButton></span></td>
                                                                                    <td style="text-align: left"> 
                                                                        <asp:LinkButton ID="lbtn_dyyl" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="9pt"
                                                                            ForeColor="Black" Width="74px" onclick="lbtn_dyyl_Click">打印预览</asp:LinkButton><asp:LinkButton
                                                                                ID="lbtn_commit" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="9pt"
                                                                                ForeColor="Black" OnClick="lbtn_commit_Click" Width="71px">上报提交</asp:LinkButton><asp:LinkButton
                                                                                    ID="lbtn_quit" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="9pt"
                                                                                    ForeColor="Black" OnClick="lbtn_quit_Click" Width="72px">安全退出</asp:LinkButton> </td>
                                                            </tr>
                                                        </table>
                                                        <table align="center" bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0"
                                                            width="98%">
                                                            <tbody>
                                                                <tr>
                                                                    <td>
                                                                        <table bgcolor="#ffffff" border="0" cellpadding="2" cellspacing="1" width="100%">
                                                                            <tbody>
                                                                            <tr><td>&nbsp;&nbsp;&nbsp;
                                                                                <asp:Label ID="lbl_jsm" runat="server" ForeColor="Red"></asp:Label>
                                                                                </td></tr>
                                                                                <tr>
                                                                                    <td style="height: 316px" valign="top">
                                                                                        <!-- page_index begin //-->
                                                                                        <table id="Table1" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                            cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                                                                                            width="100%">
                                                                                            <tbody>
                                                                                                <tr align="middle" bgcolor="#d5eaff">
                                                                                                    <td align="left" colspan="4" style="width: 472px; height: 19px">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            
                                                                                                                            课题研究人员基本情况</span></span></span></span></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <div align="center" style="text-align: left">
                                                                                                                <table id="Table21" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                                                    cellpadding="1" style="font-size: 10pt; font-family: 宋体; border-collapse: collapse"
                                                                                                                    width="100%">
                                                                                                                    <tbody>
                                                                                                                        <tr>
                                                                                                                            <td colspan="4" style="width: 486px; height: 227px" valign="top">
                                                                                                                                <table id="Table20" border="0" cellpadding="0" cellspacing="2" style="height: 1px"
                                                                                                                                    width="700">
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style4">
                                                                                                                                            申报状态：</td>
                                                                                                                                        <td style="width: 146px; height: 23px">
                                                                                                                                            <asp:DropDownList ID="ddlist_sfsb" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem Value="True">申报</asp:ListItem>
                                                                                                                                                <asp:ListItem Value="False">不申报</asp:ListItem>
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 23px; " align="left" colspan="2">
                                                                                <asp:Label ID="lbl_cjxm" runat="server" ForeColor="Red"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style4">
                                                                                                                                            项目类别：</td>
                                                                                                                                        <td style="width: 146px; height: 23px">
                                                                                                                                            <asp:DropDownList ID="ddlist_lb" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>重点</asp:ListItem>
                                                                                                                                                <asp:ListItem>一般</asp:ListItem>
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 23px; text-align: right">
                                                                                                                                            课题名称：</td>
                                                                                                                                        <td style="height: 23px">
                                                                                                                                            <asp:TextBox ID="tbx_xmmc" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td id="TD1" runat="server" style="text-align: right"
                                                                                                                                            visible="false" class="style4">
                                                                                                                                            申请人：</td>
                                                                                                                                        <td id="TD4" runat="server" style="width: 146px; height: 23px" visible="false">
                                                                                                                                            <asp:TextBox ID="tbx_xmfzr" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td id="TD2" runat="server" style="width: 75px; height: 23px; text-align: right"
                                                                                                                                            visible="false">
                                                                                                                                            所在单位：</td>
                                                                                                                                        <td id="TD3" runat="server" style="height: 23px" visible="false">
                                                                                                                                            <asp:TextBox ID="tbx_szbm" runat="server" Enabled="False" ReadOnly="True" 
                                                                                                                                                Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style2">
                                                                                                                                            联系电话：</td>
                                                                                                                                        <td style="width: 146px">
                                                                                                                                            <asp:TextBox ID="tbx_lxdh" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; text-align: right">
                                                                                                                                            申请日期：</td>
                                                                                                                                        <td>
                                                                                                                                            <input id="txt_sqrq" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt;
                                                                                                                                                width: 160px" type="text" /></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            申请部门：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_sqbm" runat="server" Width="160px">
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            出生年月：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <input id="txt_csny" runat="server" name="s3" onfocus="calendar()" style="font-size: 9pt;
                                                                                                                                                width: 160px" type="text" /></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            <span>性别：</span></td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_xb" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>男</asp:ListItem>
                                                                                                                                                <asp:ListItem>女</asp:ListItem>
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            <span>民族：</span></td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_mz" runat="server" Width="160px">
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            技术职称：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_zc" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>助教(实习研究员等)</asp:ListItem>
                                                                                                                                                <asp:ListItem>讲师(助理研究员等)</asp:ListItem>
                                                                                                                                                <asp:ListItem>副教授(副研究员、高级教师等)</asp:ListItem>
                                                                                                                                                <asp:ListItem>教授(研究员、特级教师等)</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            行政级别：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_zw" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>科员</asp:ListItem>
                                                                                                                                                <asp:ListItem>副科级</asp:ListItem>
<asp:ListItem>正科级</asp:ListItem>
                                                                                                                                                <asp:ListItem>副处级</asp:ListItem>
                                                                                                                                                <asp:ListItem>正处级</asp:ListItem>
                                                                                                                                                <asp:ListItem>副厅级</asp:ListItem>
                                                                                                                                                <asp:ListItem>正厅级</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            工作年限：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_gznx" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>见习期</asp:ListItem>
                                                                                                                                                <asp:ListItem>满两年</asp:ListItem>
                                                                                                                                                <asp:ListItem>满三年</asp:ListItem>
                                                                                                                                                <asp:ListItem>满五年</asp:ListItem>
                                                                                                                                                <asp:ListItem>五年以上</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            研究专长：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_yjzc" runat="server" Width="285px"></asp:TextBox></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            最终学历：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_xl" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>大专以下</asp:ListItem>
                                                                                                                                                <asp:ListItem>大专</asp:ListItem>
                                                                                                                                                <asp:ListItem>研究生</asp:ListItem>
                                                                                                                                                <asp:ListItem>本科</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            最终学位：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_xw" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>无</asp:ListItem>
                                                                                                                                                <asp:ListItem>学士</asp:ListItem>
                                                                                                                                                <asp:ListItem>硕士</asp:ListItem>
                                                                                                                                                <asp:ListItem>博士</asp:ListItem>
                                                                                                                                                <asp:ListItem>双学位</asp:ListItem>
                                                                                                                                                <asp:ListItem>其他</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            E-Mail：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_email" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                                                                                                ControlToValidate="tbx_email" ErrorMessage="邮件地址不正确" 
                                                                                                                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            研究年限：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_yjnx" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem Value="1">一年</asp:ListItem>
                                                                                                                                                <asp:ListItem Value="2">二年</asp:ListItem>
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            &nbsp;</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            &nbsp;</td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            &nbsp;</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            &nbsp;</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                    <td align="left" colspan="4" style="width: 472px; height: 19px">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            
                                                                                                                            项目经费预算</span></span></span></span></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            支出项目</td>
                                                                                                                                        <td style="width: 146px; height: 21px; text-align: center;">
                                                                                                                                            金额（元）</td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            &nbsp;</td>
                                                                                                                                        <td style="height: 21px; text-align: center;">
                                                                                                                                            依据及理由</td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            图书资料费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_tsje" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                                                                                                                ControlToValidate="tbx_tsje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_tsyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            调研费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_dyje" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator2" runat="server" 
                                                                                                                                                ControlToValidate="tbx_dyje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_dyyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            文印费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_wyje" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator3" runat="server" 
                                                                                                                                                ControlToValidate="tbx_wyje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_wyyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            小型会议费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_hyje" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator4" runat="server" 
                                                                                                                                                ControlToValidate="tbx_hyje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_hyyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            版面费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_bmje" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator5" runat="server" 
                                                                                                                                                ControlToValidate="tbx_bmje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_bmyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            其他：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_qtje" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator6" runat="server" 
                                                                                                                                                ControlToValidate="tbx_qtje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_qtyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    </table>
                                                                                                                            </td>
                                                                                                                        </tr>
                                                                                                                    </tbody>
                                                                                                                </table>
                                                                                                            </div>
                                                                                                        </div>
                                                                                                        <p align="left" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 23pt;
                                                                                                            text-align: left; mso-line-height-rule: exactly">
                                                                                                            <span style="font-size: 14pt; font-family: 黑体; mso-ascii-font-family: 'Times New Roman';
                                                                                                                mso-bidi-font-size: 12.0pt"></span>
                                                                                                        </p>
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                                                                                            第1页</td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <table id="Table2" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                            cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                                                                                            width="100%">
                                                                                            <tbody>
                                                                                                <tr align="middle" bgcolor="#d5eaff">
                                                                                                    <td align="left" colspan="4" style="width: 472px; height: 19px; text-align: left">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                        <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                                                                                            text-align: left; mso-line-height-rule: exactly">
                                                                                                        </span>
                                                                                                                            <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                            <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                            <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                            <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            课题研究论证报告</span><span lang="EN-US"><o:p></o:p></span></span></span></span></p>
                                                                                                        </span></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; text-align: left" valign="top">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px">
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                                        <p class="MsoNormal">
                                                                                                                            <span lang="EN-US" 
                                                                                                                                style="font-size: 12.0pt; mso-bidi-font-size: 10.0pt; font-family: 仿宋_GB2312">
                                                                                                                            <o:p>
                                                                                                                            <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold">（一）</span><span style="font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">选题：本课题国内外研究现状述评。（限1500字）</span></o:p></span></p>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx2_1" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                                        <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold">（二）</span><span style="font-size:10.5pt;font-family:宋体;mso-bidi-font-family:
&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:EN-US;mso-fareast-language:
ZH-CN;mso-bidi-language:AR-SA">内容：本课题研究的主要观点、基本思路和研究方法。（限<span lang="EN-US">1500</span>字）</span></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: left">
                                                                                                                        <asp:TextBox ID="tbx2_2" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                                        <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">（三）预期价值：本课题理论创新程度或实际应用价值。（限<span lang="EN-US">800</span>字）</span></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: left">
                                                                                                                        <asp:TextBox ID="tbx2_3" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                                        <p class="MsoNormal">
                                                                                                                            <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold">（四）预期研究成果（含中期成果及最终成果）及阶段安排。</span></p>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: left">
                                                                                                                        <asp:TextBox ID="tbx2_4" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                                        <p class="MsoNormal">
                                                                                                                            &nbsp;</p>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: left">
                                                                                                                        &nbsp;</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td>
                                                                                                                        &nbsp;</td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                                                                                            第2页</td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <table id="Table3" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                            cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                                                                                            width="100%">
                                                                                            <tbody>
                                                                                                <tr align="middle" bgcolor="#d5eaff">
                                                                                                    <td align="left" colspan="4" style="width: 472px; height: 19px; text-align: left">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA"><span style="font-size: 12pt">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA">
                                                                                                                        <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                                                                                            text-align: left; mso-line-height-rule: exactly">
                                                                                                                        </p>
                                                                                                                        <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold"><span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            申请人主持或参与课题情况</span></span></span></span></span></span></span></span></span></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <div align="center" style="text-align: left">
                                                                                                                <asp:GridView ID="gv_ktqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True">
                                                                                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                                                    <Columns>
                                                                                                                        <asp:TemplateField HeaderText="序号">
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                                                <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                                                                                            </ItemTemplate>
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:TemplateField>
                                                                                                                        <asp:BoundField DataField="xmmc" HeaderText="项目名称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="xmbh" HeaderText="项目编号">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="xmjb" HeaderText="项目级别">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="sfjt" HeaderText="是否结题">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="zccy" HeaderText="主持/参与">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                                            <EditItemTemplate>
                                                                                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                                                    Text="更新"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                                                    Text="取消"></asp:LinkButton>
                                                                                                                            </EditItemTemplate>
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_edit" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                                                    Text="编辑"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_del" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                                                    Text="删除"></asp:LinkButton>
                                                                                                                            </ItemTemplate>
                                                                                                                        </asp:TemplateField>
                                                                                                                    </Columns>
                                                                                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                                                </asp:GridView>
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px; font-family: 宋体">
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        项目名称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx3_xmmc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        项目编号：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx3_xmbh" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        项目级别：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx3_xmjb" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; text-align: right">
                                                                                                                        是否结题：</td>
                                                                                                                    <td>
                                                                                                                        <asp:DropDownList ID="ddlist3_sfjt" runat="server" Width="53px">
                                                                                                                            <asp:ListItem>是</asp:ListItem>
                                                                                                                            <asp:ListItem>否</asp:ListItem>
                                                                                                                        </asp:DropDownList></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; text-align: right">
                                                                                                                        主持/参与：</td>
                                                                                                                    <td>
                                                                                                                        <asp:DropDownList ID="ddlist3_zccy" runat="server" Width="92px">
                                                                                                                            <asp:ListItem>主持</asp:ListItem>
                                                                                                                            <asp:ListItem>参与</asp:ListItem>
                                                                                                                        </asp:DropDownList></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px">
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                                                                                            第3页</td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <table id="Table4" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                            cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                                                                                            width="100%">
                                                                                            <tbody>
                                                                                                <tr align="middle" bgcolor="#d5eaff">
                                                                                                    <td align="left" colspan="4" style="width: 472px; height: 19px">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                        <span style="font-size: 12pt">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            申请人相关科研成果</span></span></span></span></span></span></span></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <div align="center" style="text-align: left">
                                                                                                                &nbsp;<asp:GridView ID="gv_kycg" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True">
                                                                                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                                                    <Columns>
                                                                                                                        <asp:TemplateField HeaderText="序号">
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:Image ID="Image2" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                                                <asp:Literal ID="lit0" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                                                                                            </ItemTemplate>
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:TemplateField>
                                                                                                                        <asp:BoundField DataField="lwmc" HeaderText="论文或论著名称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="fbbk" HeaderText="发表报刊或出版部门">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="brpm" HeaderText="本人排名">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                                            <EditItemTemplate>
                                                                                                                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                                                    Text="更新"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                                                    Text="取消"></asp:LinkButton>
                                                                                                                            </EditItemTemplate>
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_edit0" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                                                    Text="编辑"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_del0" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                                                    Text="删除"></asp:LinkButton>
                                                                                                                            </ItemTemplate>
                                                                                                                        </asp:TemplateField>
                                                                                                                    </Columns>
                                                                                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                                                </asp:GridView>
                                                                                                                </div>
                                                                                                        </div>
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px; font-family: 宋体">
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        论文或论著名称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx4_lwmc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        发表报刊或出版部门：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx4_fbbk" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        本人排名：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:DropDownList ID="ddlist4_brpm" runat="server" Width="92px">
                                                                                                                            <asp:ListItem>1</asp:ListItem>
                                                                                                                            <asp:ListItem>2</asp:ListItem>
                                                                                                                            <asp:ListItem>3</asp:ListItem>
                                                                                                                            <asp:ListItem>4</asp:ListItem>
                                                                                                                            <asp:ListItem>5</asp:ListItem>
                                                                                                                            <asp:ListItem>6</asp:ListItem>
                                                                                                                            <asp:ListItem>7</asp:ListItem>
                                                                                                                            <asp:ListItem>8</asp:ListItem>
                                                                                                                            <asp:ListItem>9</asp:ListItem>
                                                                                                                            <asp:ListItem>10</asp:ListItem>
                                                                                                                        </asp:DropDownList></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        总人数：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:DropDownList ID="ddlist4_zrs" runat="server" Width="92px">
                                                                                                                            <asp:ListItem>1</asp:ListItem>
                                                                                                                            <asp:ListItem>2</asp:ListItem>
                                                                                                                            <asp:ListItem>3</asp:ListItem>
                                                                                                                            <asp:ListItem>4</asp:ListItem>
                                                                                                                            <asp:ListItem>5</asp:ListItem>
                                                                                                                            <asp:ListItem>6</asp:ListItem>
                                                                                                                            <asp:ListItem>7</asp:ListItem>
                                                                                                                            <asp:ListItem>8</asp:ListItem>
                                                                                                                            <asp:ListItem>9</asp:ListItem>
                                                                                                                            <asp:ListItem>10</asp:ListItem>
                                                                                                                        </asp:DropDownList>
                                                                                                                        <asp:CompareValidator ID="CompareValidator1" runat="server" 
                                                                                                                            ControlToCompare="ddlist4_brpm" ControlToValidate="ddlist4_zrs" 
                                                                                                                            ErrorMessage="本人排名应小于等于总人数！" Operator="GreaterThanEqual"></asp:CompareValidator>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td class="style8">
                                                                                                                    </td>
                                                                                                                    <td>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                                                                                            第4页</td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <!-- page_index end //-->
                                                                                        <table id="Table5" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                            cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                                                                                            width="100%">
                                                                                            <tbody>
                                                                                                <tr align="middle" bgcolor="#d5eaff">
                                                                                                    <td align="left" colspan="4" style="width: 472px; height: 19px; text-align: left">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                        <span style="font-size: 12pt">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA">
                                                                                                                        <span style="font-size: 12pt; mso-hansi-font-family: 'Times New Roman';
                                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            课题组成员情况</span></span></span></span></span></span></span></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <div align="center" style="text-align: left">
                                                                                                                <asp:GridView ID="gv_cyqk" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True" Font-Names="宋体" Font-Size="9pt">
                                                                                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                                                    <Columns>
                                                                                                                        <asp:TemplateField HeaderText="序号">
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                                                <asp:Literal ID="lit" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                                                                                            </ItemTemplate>
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                                                                        </asp:TemplateField>
                                                                                                                        <asp:BoundField DataField="xm" HeaderText="姓名">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="zc" HeaderText="专业技术职称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="szbm" HeaderText="所在部门">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="yjzc" HeaderText="研究专长" />
                                                                                                                        <asp:BoundField DataField="fg" HeaderText="在项目中分工" />
                                                                                                                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                                            <EditItemTemplate>
                                                                                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                                                    Text="更新"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                                                    Text="取消"></asp:LinkButton>
                                                                                                                            </EditItemTemplate>
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_edit" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                                                    Text="编辑"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_del" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                                                    Text="删除"></asp:LinkButton>
                                                                                                                            </ItemTemplate>
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                                                                        </asp:TemplateField>
                                                                                                                    </Columns>
                                                                                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                                                </asp:GridView>
                                                                                                                &nbsp;</div>
                                                                                                        </div>
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px; font-family: 宋体">
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        姓名：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_xm" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" AutoPostBack="True" ontextchanged="tbx5_xm_TextChanged"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        专业技术职称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_zc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" ReadOnly="True"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        所在部门：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:DropDownList ID="ddlist5_szbm" runat="server" Width="179px" 
                                                                                                                            Enabled="False">
                                                                                                                        </asp:DropDownList></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        研究专长：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_yjzc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" ReadOnly="True"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        在项目中分工：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_fg" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; text-align: right;">
                                                                                                                        &nbsp;</td>
                                                                                                                    <td>
                                                                                                                        &nbsp;</td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td colspan="3" rowspan="3" style="height: 16px; text-align: center">
                                                                                                                            第5页</td>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                    <tr>
                                                                                                                    </tr>
                                                                                                                </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <table id="Table6" runat="server" align="center" border="1" bordercolor="#808080"
                                                                                            cellpadding="1" style="font-size: 9pt; font-family: 宋体; border-collapse: collapse"
                                                                                            width="100%">
                                                                                            <tbody>
                                                                                                <tr align="middle" bgcolor="#d5eaff">
                                                                                                    <td align="left" style="width: 472px; height: 19px; text-align: left">
                                                                                                        <span style="mso-ascii-font-family: 'Times New Roman'; mso-hansi-font-family: 'Times New Roman';
                                                                                                            mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US;
                                                                                                            mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                                                                                                    mso-ansi-language: EN-US; mso-fareast-language: ZH-CN; mso-bidi-language: AR-SA">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                        <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                                                                                            text-align: left; mso-line-height-rule: exactly">
                                                                                                        </span>
                                                                                                                            <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                            <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            推荐人意见</span><o:p></o:p></span></p>
                                                                                                        <p align="center" class="MsoNormal" 
                                                                                                            style="margin: 0cm 0cm 0pt; line-height: 16pt;
                                                                                                                            text-align: left; mso-line-height-rule: exactly; width: 720px;">
                                                                                                            <o:p>
                                                                                                            <asp:Label ID="Label1" runat="server" 
                                                                                                                Text="&amp;nbsp;&amp;nbsp;不具有中级专业技术职务或硕士学位的课题主持人，须由两名具有高级专业技术职务的专家填写推荐意见。推荐意见主要从课题主持人的“专业水平”、“科研能力”、“组织能力”等方面陈述。"></asp:Label>
                                                                                                            </o:p>
                                                                                                        </p>
                                                                                                        </span></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 472px; text-align: left" valign="top">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px">
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px">
                                                                                                                <asp:GridView ID="gv_tjyj" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True" Font-Names="宋体" Font-Size="9pt">
                                                                                                                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                                                                                                                    <Columns>
                                                                                                                        <asp:TemplateField HeaderText="序号">
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:Image ID="Image3" runat="server" ImageUrl="img/index/mht10F.gif" />
                                                                                                                                <asp:Literal ID="lit1" runat="server" Text="<%#Container.DataItemIndex+1%>"></asp:Literal>
                                                                                                                            </ItemTemplate>
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="40px" />
                                                                                                                        </asp:TemplateField>
                                                                                                                        <asp:BoundField DataField="xm" HeaderText="姓名">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="zc" HeaderText="专业技术职称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="szbm" HeaderText="所在部门">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="tjyj" HeaderText="推荐意见" />
                                                                                                                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                                            <EditItemTemplate>
                                                                                                                                <asp:LinkButton ID="LinkButton5" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                                                    Text="更新"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="LinkButton6" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                                                    Text="取消"></asp:LinkButton>
                                                                                                                            </EditItemTemplate>
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_edit1" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                                                    Text="编辑"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_del1" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                                                    Text="删除"></asp:LinkButton>
                                                                                                                            </ItemTemplate>
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="60px" />
                                                                                                                        </asp:TemplateField>
                                                                                                                    </Columns>
                                                                                                                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                                                                                                                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                                                                                                                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                                                                                                                    <AlternatingRowStyle BackColor="#F7F7F7" />
                                                                                                                </asp:GridView>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                            <table style="width: 710px; font-family: 宋体">
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        推荐人姓名：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx6_xm" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" AutoPostBack="True" ontextchanged="tbx6_xm_TextChanged"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        专业技术职称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx6_zc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" ReadOnly="True"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        所在部门：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:DropDownList ID="ddlist6_szbm" runat="server" Width="179px" 
                                                                                                                            Enabled="False">
                                                                                                                        </asp:DropDownList></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        推荐意见：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx6_tjyj" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="611px" Height="155px" TextMode="MultiLine"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                </table>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                </table>
                                                                                                            <span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td style="height: 16px; text-align: center">
                                                                                                                            第6页</td>
                                                                                                                    </tr>
                                                                                                                    </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label></td>
                                                                                </tr>
                                                                            </tbody>
                                                                        </table>
                                                                    </td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                        <asp:ImageButton ID="imgbtn_save" runat="server" ImageUrl="./img/add.gif" OnClick="imgbtn_save_Click" />&nbsp;
                                                        &nbsp;<asp:ImageButton ID="imgbtn_SaveNext" runat="server" ImageUrl="./img/savenext.gif"
                                                            OnClick="imgbtn_SaveNext_Click" />
                                                        &nbsp;&nbsp;
                                                        <asp:ImageButton ID="imgbtn_quit" runat="server" ImageUrl="./img/quit.gif" OnClick="imgbtn_quit_Click"
                                                            Visible="False" /></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                        &nbsp; &nbsp;
                                         &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;</td>
                                </tr>
                                <tr>
                                    <td align="center" valign="middle">
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img src="./images/bottom.gif" width="760" height="112" /></td>
                    </tr>
                </table>
            </div>
        </div>
    </form>
</body>
</html>
