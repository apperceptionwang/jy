<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_tb.aspx.cs" Inherits="user" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html >
<head><title>防灾科技学院 教研教改项目申请系统</title>
<META http-equiv=Content-Type content="text/html; charset=GBK">
<LINK href="./img/text.css" type=text/css rel=stylesheet>
<LINK href="./img/style_1024.css" type=text/css rel=STYLESHEET>
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
        .style9
        {
            height: 18px;
            width: 387px;
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
                                                    <td align="center" colspan="2" style="width: 748px; height: 522px; text-align: center"
                                                        valign="top">
                                                        <table id="Table1" align="center" border="1" bordercolor="#808080" cellpadding="1"
                                                            style="border-collapse: collapse" width="100%">
                                                            <tr>
                                                                <td align="left" colspan="3" style="text-align: center" class="style9">
                                                                    <span style="font-size: 12pt"><asp:LinkButton ID="lbtn_1" runat="server" OnClick="lbtn_1_Click">第一页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_2" runat="server" OnClick="lbtn_2_Click">第二页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_3" runat="server" OnClick="lbtn_3_Click">第三页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_4" runat="server" OnClick="lbtn_4_Click">第四页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_5" runat="server" OnClick="lbtn_5_Click">第五页</asp:LinkButton>
                                                                        <asp:LinkButton ID="lbtn_6" runat="server" OnClick="lbtn_6_Click">第六页</asp:LinkButton>
                                                                    </span></td>
                                                                                    <td style="text-align: center"> 
                                                                        <asp:LinkButton ID="lbtn_PassWord" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="9pt"
                                                                            ForeColor="Black" Width="74px" onclick="lbtn_PassWord_Click">修改密码</asp:LinkButton> 
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
                                                                                                                                            &nbsp;</td>
                                                                                                                                        <td style="height: 23px" colspan="3">
                                                                                <asp:Label ID="lbl_cjxm" runat="server" ForeColor="Red"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style4">
                                                                                                                                            资助类别：</td>
                                                                                                                                        <td style="width: 146px; height: 23px">
                                                                                                                                            <asp:DropDownList ID="ddlist_zzlb" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>重点</asp:ListItem>
                                                                                                                                                <asp:ListItem>一般</asp:ListItem>
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 23px; text-align: right">
                                                                                                                                            项目类别：</td>
                                                                                                                                        <td style="height: 23px">
                                                                                                                                            <asp:DropDownList ID="ddlist_lb" runat="server" Width="285px" Height="23px">
                                                                                                                                                <asp:ListItem>一、人才培养模式创新与实践</asp:ListItem>
                                                                                                                                                <asp:ListItem>二、学科专业建设与课程体系改革</asp:ListItem>
                                                                                                                                                <asp:ListItem>三、教学方法改革与评价机制研究</asp:ListItem>
                                                                                                                                                <asp:ListItem>四、实践教学改革与大学生创新能力培养</asp:ListItem>
                                                                                                                                                <asp:ListItem>五、教学管理与教学质量保障体系研究</asp:ListItem>
                                                                                                                                                <asp:ListItem>六、教师教育素质提升研究与实践</asp:ListItem>
                                                                                                                                                <asp:ListItem>七、其他</asp:ListItem>
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style4">
                                                                                                                                            电子邮箱：</td>
                                                                                                                                        <td style="width: 146px; height: 23px">
                                                                                                                                            <asp:TextBox ID="tbx_dzyx" runat="server" Width="160px"></asp:TextBox>
                                                                                                                                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                                                                                                                                ControlToValidate="tbx_dzyx" ErrorMessage="电子邮箱格式错误" 
                                                                                                                                                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 23px; text-align: right">
                                                                                                                                            项目名称：</td>
                                                                                                                                        <td style="height: 23px">
                                                                                                                                            <asp:TextBox ID="tbx_xmmc" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td id="TD1" runat="server" style="text-align: right"
                                                                                                                                            visible="false" class="style4">
                                                                                                                                            项目负责人：</td>
                                                                                                                                        <td id="TD4" runat="server" style="width: 146px; height: 23px" visible="false">
                                                                                                                                            <asp:TextBox ID="tbx_xmfzr" runat="server" Width="160px" ReadOnly="True"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td id="TD2" runat="server" style="width: 75px; height: 23px; text-align: right"
                                                                                                                                            visible="false">
                                                                                                                                            所在系部：</td>
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
                                                                                                                                            填表日期：</td>
                                                                                                                                        <td>
                                                                                                                                            <input id="txt_sqrq" runat="server" name="s1" onfocus="calendar()" style="font-size: 9pt;
                                                                                                                                                width: 160px" type="text" /><asp:RegularExpressionValidator 
                                                                                                                                                ID="RegularExpressionValidator2" runat="server" ControlToValidate="txt_sqrq" 
                                                                                                                                                ErrorMessage="请输入正确的日期格式(yyyy-mm-dd)" SetFocusOnError="True" 
                                                                                                                                                
                                                                                                                                                ValidationExpression="(([0-9]{3}[1-9]|[0-9]{2}[1-9][0-9]{1}|[0-9]{1}[1-9][0-9]{2}|[1-9][0-9]{3})-(((0[13578]|1[02])-(0[1-9]|[12][0-9]|3[01]))|((0[469]|11)-(0[1-9]|[12][0-9]|30))|(02-(0[1-9]|[1][0-9]|2[0-8]))))|((([0-9]{2})(0[48]|[2468][048]|[13579][26])|((0[48]|[2468][048]|[3579][26])00))-02-29)"></asp:RegularExpressionValidator>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            申请部门：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_sqbm" runat="server" Width="160px">
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            所在部门：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_szbm" runat="server" Width="160px">
                                                                                                                                            </asp:DropDownList>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            专业技术职称：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_zclb" runat="server" Width="160px" 
                                                                                                                                                AutoPostBack="True" onselectedindexchanged="ddlist_zclb_SelectedIndexChanged">
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="height: 21px; text-align: left" colspan="2">
                                                                                                                                            <asp:DropDownList ID="ddlist_zc" runat="server" Width="160px">
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            行政职务：`</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_zw" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>无</asp:ListItem>
                                                                                                                                                <asp:ListItem>科员</asp:ListItem>
                                                                                                                                                <asp:ListItem>副科级</asp:ListItem>
<asp:ListItem>正科级</asp:ListItem>
                                                                                                                                                <asp:ListItem>副处级</asp:ListItem>
                                                                                                                                                <asp:ListItem>正处级</asp:ListItem>
                                                                                                                                                <asp:ListItem>副厅级</asp:ListItem>
                                                                                                                                                <asp:ListItem>正厅级</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
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
                                                                                                                                            最终学位：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:DropDownList ID="ddlist_xw" runat="server" Width="160px">
                                                                                                                                                <asp:ListItem>无</asp:ListItem>
                                                                                                                                                <asp:ListItem>学士</asp:ListItem>
                                                                                                                                                <asp:ListItem>硕士</asp:ListItem>
                                                                                                                                                <asp:ListItem>博士</asp:ListItem>
                                                                                                                                                <asp:ListItem>双学位</asp:ListItem>
                                                                                                                                                <asp:ListItem>其他</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: right">
                                                                                                                                            专业方向：</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_zyfx" runat="server" Width="285px"></asp:TextBox></td>
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
                                                                                                                                            <asp:TextBox ID="tbx_tsje" runat="server" Width="160px" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged" AutoPostBack="True">0</asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                                                                                                                                ControlToValidate="tbx_tsje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer" SetFocusOnError="True"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_tsyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            论文版面费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_bmje" runat="server" Width="160px" AutoPostBack="True" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged">0</asp:TextBox>
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
                                                                                                                                            调研费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_dyje" runat="server" Width="160px" AutoPostBack="True" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged">0</asp:TextBox>
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
                                                                                                                                            <asp:TextBox ID="tbx_wyje" runat="server" Width="160px" AutoPostBack="True" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged">0</asp:TextBox>
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
                                                                                                                                            会议费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_hyje" runat="server" Width="160px" AutoPostBack="True" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged">0</asp:TextBox>
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
                                                                                                                                            差旅费：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_clje" runat="server" Width="160px" AutoPostBack="True" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged">0</asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator7" runat="server" 
                                                                                                                                                ControlToValidate="tbx_clje" ErrorMessage="应为数字" MaximumValue="10000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_clyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            其他：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_qtje" runat="server" Width="160px" AutoPostBack="True" 
                                                                                                                                                ontextchanged="tbx_xmjf_TextChanged">0</asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            <asp:RangeValidator ID="RangeValidator6" runat="server" 
                                                                                                                                                ControlToValidate="tbx_qtje" ErrorMessage="应为数字" MaximumValue="30000" 
                                                                                                                                                MinimumValue="0" Type="Integer"></asp:RangeValidator>
                                                                                                                                        </td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            <asp:TextBox ID="tbx_qtyj" runat="server" Width="285px"></asp:TextBox>
                                                                                                                                        </td>
                                                                                                                                    </tr>
                                                                                                                                    <tr>
                                                                                                                                        <td style="text-align: right" class="style3">
                                                                                                                                            总计：</td>
                                                                                                                                        <td style="width: 146px; height: 21px">
                                                                                                                                            <asp:Label ID="lbl_xmjf" runat="server"></asp:Label>
                                                                                                                                        </td>
                                                                                                                                        <td style="width: 75px; height: 21px; text-align: left">
                                                                                                                                            &nbsp;</td>
                                                                                                                                        <td style="height: 21px">
                                                                                                                                            &nbsp;</td>
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
                                                                                                                        <td colspan="3" style="height: 16px; text-align: center">
                                                                                                                            第1页</td>
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
                                                                                                                            立项依据和目标</span></span></span></span></p>
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
bold">1、本项目研究意义及其理论依据、实际意义</span></o:p></span></p>
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
bold">2、国内外同类问题研究现状、存在问题及发展趋势分析</span></td>
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
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA">3、本项目的研究内容、目标和拟解决的关键问题</span></td>
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
bold">4、本项目预期的研究成果形式及使用范围</span></p>
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
                                                                                                                            <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold">5、完成本项目研究已具备的基本条件、工作基础以及其他有利条件</span></p>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: left">
                                                                                                                        <asp:TextBox ID="tbx2_5" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td>
                                                                                                                        &nbsp;</td>
                                                                                                                </tr>
                                                                                                            </table>
                                                                                                            <span></span><span lang="EN-US" style="mso-fareast-font-family: 黑体">
                                                                                                                <table style="width: 715px">
                                                                                                                    <tr>
                                                                                                                        <td colspan="3" style="height: 16px; text-align: center">
                                                                                                                            第2页</td>
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
                                                                                                                    <span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            主要教学改革和科学研究工作简历</span></span></span></span></span></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <div align="center" style="text-align: left">
                                                                                                               &nbsp;<asp:GridView 
                                                                                                                    ID="gv4" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True" style="font-size: 9pt" 
                                                                                                                    onrowcancelingedit="gv_RowCancelingEdit" onrowdatabound="gv_RowDataBound" 
                                                                                                                    onrowupdating="gv_RowUpdating">
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
                                                                                                                        <asp:BoundField DataField="qzsj" HeaderText="起止时间">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="xmmc" HeaderText="项目名称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="lxdw" HeaderText="立项单位">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="hjqk" HeaderText="获奖情况" />
                                                                                                                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                                            <EditItemTemplate>
                                                                                                                                <asp:LinkButton ID="LinkButton3" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                                                    Text="更新"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="LinkButton4" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                                                    Text="取消"></asp:LinkButton>
                                                                                                                            </EditItemTemplate>
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="120px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_up" runat="server" CausesValidation="False" 
                                                                                                                                    CommandName="update" Text="上移"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_down" runat="server" CausesValidation="False" 
                                                                                                                                    CommandName="cancel" Text="下移"></asp:LinkButton>
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
                                                                                                                </div>
                                                                                                        </div>
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px; font-family: 宋体">
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        起止时间：：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx4_qzsj" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        项目名称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx4_xmmc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        立项单位：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx4_lxdw" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="text-align: right" class="style7">
                                                                                                                        获奖情况：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx4_hjqk" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox>
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
                                                                                                                        <td colspan="3" style="height: 16px; text-align: center">
                                                                                                                            第4页</td>
                                                                                                                    </tr>
                                                                                                                    </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
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
                                                                                                                <asp:GridView ID="gv5" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                    onrowcancelingedit="gv_RowCancelingEdit" onrowdatabound="gv_RowDataBound" 
                                                                                                                    onrowupdating="gv_RowUpdating">
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
                                                                                                                        <asp:BoundField DataField="zc" HeaderText="职称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="xw" HeaderText="学位">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="zy" HeaderText="专业" />
                                                                                                                        <asp:BoundField DataField="fg" HeaderText="项目分工" />
                                                                                                                        <asp:TemplateField HeaderText="操作" ShowHeader="False">
                                                                                                                            <EditItemTemplate>
                                                                                                                                <asp:LinkButton ID="LinkButton1" runat="server" CausesValidation="True" CommandName="Update"
                                                                                                                                    Text="更新"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="LinkButton2" runat="server" CausesValidation="False" CommandName="Cancel"
                                                                                                                                    Text="取消"></asp:LinkButton>
                                                                                                                            </EditItemTemplate>
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_up" runat="server" CausesValidation="False" 
                                                                                                                                    CommandName="update" Text="上移"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_down" runat="server" CausesValidation="False" 
                                                                                                                                    CommandName="cancel" Text="下移"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_edit" runat="server" CausesValidation="False" CommandName="Edit"
                                                                                                                                    Text="编辑"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_del" runat="server" CausesValidation="False" CommandName="Delete"
                                                                                                                                    Text="删除"></asp:LinkButton>
                                                                                                                            </ItemTemplate>
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="120px" />
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
                                                                                                            <table style="width: 700px; font-family: 宋体">
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        教师号：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_jsh" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" AutoPostBack="True" ontextchanged="tbx5_jsh_TextChanged"></asp:TextBox>
                                                                                                                        输入教师号后回车即可</td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        姓名：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_xm" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px" AutoPostBack="True" ></asp:TextBox></td>
                                                                                                                            
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        职称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_zc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        学位：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                                            <asp:DropDownList ID="ddlist5_xw" runat="server" 
                                                                                                                            Width="160px">
                                                                                                                                                <asp:ListItem>无</asp:ListItem>
                                                                                                                                                <asp:ListItem>学士</asp:ListItem>
                                                                                                                                                <asp:ListItem>硕士</asp:ListItem>
                                                                                                                                                <asp:ListItem>博士</asp:ListItem>
                                                                                                                                                <asp:ListItem>双学位</asp:ListItem>
                                                                                                                                                <asp:ListItem>其他</asp:ListItem>
                                                                                                                                            </asp:DropDownList></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        专业：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx5_zy" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        项目分工：</td>
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
                                                                                                                        <td colspan="3" style="height: 16px; text-align: center">
                                                                                                                            第5页</td>
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
                                                                                                                            研究方法和进度</span><o:p></o:p></span></p>
                                                                                                        </span></span>
                                                                                                    </td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td style="width: 472px; text-align: left" valign="top">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <table style="width: 591px">
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold">1、拟采用的研究方法及可行性分析</span></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx6_1" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold">2、研究工作的总体安排及进度，包括实施方案、具体实施计划（含年度进展情况）</span></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx6_2" runat="server" Height="200px" TextMode="MultiLine" 
                                                                                                                            Width="660px"></asp:TextBox>
                                                                                                                    </td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="height: 16px; text-align: left">
                                                                                                                        &nbsp;</td>
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
                                                                                        <table id="Table3" runat="server" align="center" border="1" bordercolor="#808080"
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
                                                                                                                        <span style="font-size:10.5pt;font-family:宋体;
mso-bidi-font-family:&quot;Times New Roman&quot;;mso-font-kerning:1.0pt;mso-ansi-language:
EN-US;mso-fareast-language:ZH-CN;mso-bidi-language:AR-SA;mso-bidi-font-weight:
bold"><span style="font-family:黑体;mso-hansi-font-family:宋体">
                                                                                                                    <span style="mso-hansi-font-family: 'Times New Roman'; mso-font-kerning: 1.0pt;
                                                                                                                        mso-bidi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                                                                                                        mso-bidi-language: AR-SA" class="style6">
                                                                                                                            主要教学工作简历</span></span></span></span></span></span></span></td>
                                                                                                </tr>
                                                                                                <tr>
                                                                                                    <td colspan="4" style="width: 472px; height: 166px; text-align: left">
                                                                                                        <div align="center" style="text-align: left">
                                                                                                            <div align="center" style="text-align: left">
                                                                                                                <asp:GridView ID="gv3" runat="server" AutoGenerateColumns="False" BackColor="White"
                                                                                                                    BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal"
                                                                                                                    Height="1px" OnRowDeleting="gv_RowDeleting" OnRowEditing="gv_RowEditing" 
                                                                                                                    Width="713px" EnableModelValidation="True" 
                                                                                                                    onrowcancelingedit="gv_RowCancelingEdit" 
                                                                                                                    onrowdatabound="gv_RowDataBound" onrowupdating="gv_RowUpdating">
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
                                                                                                                        <asp:BoundField DataField="rksj" HeaderText="任课时间">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="kcmc" HeaderText="课程名称">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="skdx" HeaderText="授课对象">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="xs" HeaderText="学时">
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" HorizontalAlign="Left" />
                                                                                                                        </asp:BoundField>
                                                                                                                        <asp:BoundField DataField="szdw" HeaderText="所在单位">
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
                                                                                                                            <ItemStyle Font-Names="宋体" Font-Size="9pt" Width="120px" />
                                                                                                                            <HeaderStyle Font-Names="宋体" Font-Size="9pt" />
                                                                                                                            <ItemTemplate>
                                                                                                                                <asp:LinkButton ID="lbtn_up" runat="server" CausesValidation="False" 
                                                                                                                                    CommandName="update" Text="上移"></asp:LinkButton>
                                                                                                                                <asp:LinkButton ID="lbtn_down" runat="server" CausesValidation="False" 
                                                                                                                                    CommandName="cancel" Text="下移"></asp:LinkButton>
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
                                                                                                                        任课时间： 
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx3_rksj" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        课程名称：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx3_kcmc" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; height: 16px; text-align: right">
                                                                                                                        授课对象：</td>
                                                                                                                    <td style="height: 16px">
                                                                                                                        <asp:TextBox ID="tbx3_skdx" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; text-align: right">
                                                                                                                        学时：</td>
                                                                                                                    <td>
                                                                                                                        <asp:TextBox ID="tbx3_xs" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
                                                                                                                </tr>
                                                                                                                <tr>
                                                                                                                    <td style="width: 85px; text-align: right">
                                                                                                                        所在单位：</td>
                                                                                                                    <td>
                                                                                                                        <asp:TextBox ID="tbx3_szdw" runat="server" Font-Names="宋体" Font-Size="9pt" 
                                                                                                                            Width="277px"></asp:TextBox></td>
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
                                                                                                                        <td colspan="3" style="height: 16px; text-align: center">
                                                                                                                            第3页</td>
                                                                                                                    </tr>
                                                                                                                    </table>
                                                                                                            </span>
                                                                                                        </div>
                                                                                                    </td>
                                                                                                </tr>
                                                                                            </tbody>
                                                                                        </table>
                                                                                        
                                                                                        <!-- page_index end //-->
                                                                                        
                                                                                        
                                                                                        <asp:Label ID="lbl_id" runat="server" Visible="False"></asp:Label>
                                                                                        <asp:Label ID="lbl_type" runat="server" Visible="False"></asp:Label></td>
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
