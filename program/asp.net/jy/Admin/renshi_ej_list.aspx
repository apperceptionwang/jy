<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renshi_ej_list.aspx.cs" Inherits="Admin_renshi_ej_list" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 704pt; border-collapse: collapse"
            width="938">
            <colgroup>
                <col style="width: 36pt; mso-width-source: userset; mso-width-alt: 1536" width="48" />
                <col style="width: 124pt; mso-width-source: userset; mso-width-alt: 5280" width="165" />
                <col style="width: 68pt; mso-width-source: userset; mso-width-alt: 2912" width="91" />
                <col style="width: 36pt; mso-width-source: userset; mso-width-alt: 1536" width="48" />
                <col style="width: 63pt; mso-width-source: userset; mso-width-alt: 2688" width="84" />
                <col style="width: 130pt; mso-width-source: userset; mso-width-alt: 5536" width="173" />
                <col style="width: 104pt; mso-width-source: userset; mso-width-alt: 4448" width="139" />
                <col style="width: 89pt; mso-width-source: userset; mso-width-alt: 3776" width="118" />
                <col style="width: 54pt" width="72" />
            </colgroup>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl64" height="38" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 36pt; border-bottom: #f0f0f0; height: 28.5pt; background-color: transparent"
                    width="48">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 124pt; border-bottom: #f0f0f0; background-color: transparent" width="165">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 68pt; border-bottom: #f0f0f0; background-color: transparent" width="91">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 36pt; border-bottom: #f0f0f0; background-color: transparent" width="48">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 63pt; border-bottom: #f0f0f0; background-color: transparent" width="84">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 130pt; border-bottom: #f0f0f0; background-color: transparent" width="173">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 104pt; border-bottom: #f0f0f0; background-color: transparent" width="139">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    width: 89pt; border-bottom: #f0f0f0; background-color: transparent" width="118">
                </td>
                <td style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0; width: 54pt;
                    border-bottom: #f0f0f0; background-color: transparent" width="72">
                </td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl66" colspan="9" height="38" style="border-right: #f0f0f0; border-top: #f0f0f0;
                    border-left: #f0f0f0; border-bottom: #f0f0f0; height: 28.5pt; background-color: transparent;
                    text-align: center">
                    <strong><span style="font-size: 16pt">中国地震局专业技术二级岗位拟聘人员汇总简表</span></strong></td>
            </tr>
            <tr height="38" style="font-weight: bold; font-size: 16pt; height: 28.5pt; mso-height-source: userset">
                <td class="xl64" colspan="2" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                    单位：</td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                    （盖章）</td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                </td>
                <td class="xl64" style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0;
                    border-bottom: #f0f0f0; background-color: transparent">
                </td>
                <td style="border-right: #f0f0f0; border-top: #f0f0f0; border-left: #f0f0f0; border-bottom: #f0f0f0;
                    background-color: transparent">
                </td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    序号</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    单位</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    姓名</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    性别</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    出生年月</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    学科方向</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    正高资格时间</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    聘任时间</td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    备注</td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">1</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl1_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">2</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl2_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">3</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl3_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">4</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl4_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">5</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl5_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">6</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl6_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">7</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl7_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">8</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl8_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">9</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl9_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="38" style="height: 28.5pt; mso-height-source: userset">
                <td class="xl63" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 28.5pt;
                    background-color: transparent; text-align: center">
                    <span style="font-size: 9pt">10</span></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_2" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_3" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_4" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_5" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_6" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl63" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_7" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="lbl10_8" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
            </tr>
            <tr height="30" style="height: 22.5pt; mso-height-source: userset">
                <td class="xl67" colspan="9" height="30" style="border-right: #f0f0f0; border-top: windowtext 0.5pt solid;
                    border-left: #f0f0f0; border-bottom: #f0f0f0; height: 22.5pt; background-color: transparent">
                    注：上报人员如果超过1名，应对上报人员进行排序</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
