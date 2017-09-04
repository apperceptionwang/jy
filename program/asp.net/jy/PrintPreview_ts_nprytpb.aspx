<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintPreview_ts_nprytpb.aspx.cs" Inherits="PrintPreview_ts_nprytpb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 479pt; border-collapse: collapse;  margin-left: 20px; margin-right: 20px;">
            <colgroup>
            </colgroup>
        </table>
                    <div style="text-align: center">
                        <span style="font-size: 16pt"><strong>
    <asp:Button ID="btn_SaveToWord" runat="server" OnClick="btn_SaveToWord_Click" Text="导出并打印"
        Width="110px" /> 
                        </strong></span></div>
                <table border="0" cellpadding="0" cellspacing="0" style="width: 479pt; border-collapse: collapse; height: 775px; margin-left: 20px; margin-right: 20px;">
                    <colgroup>
                <col style="width: 68pt; mso-width-source: userset; mso-width-alt: 2912" width="91" />
            </colgroup>
            <tr>
                <td class="xl69" colspan="5" height="27" 
                    style="width: 324pt; height: 20.25pt;
                    background-color: transparent; border-left-color: #f0f0f0; border-bottom-width: 0.5pt; border-bottom-color: windowtext; border-top-color: #f0f0f0; border-right-color: #f0f0f0;">
                    <div style="text-align: center">
                        <span style="font-size: 16pt"><strong>
                            <asp:Label ID="Label5" runat="server" Text="2012年政府特贴候选人推荐投票表" 
                            Width="630px"></asp:Label></strong></span></div>
                </td>
            </tr>
            <tr height="27" style="height: 20.25pt; mso-height-source: userset">
                <td class="xl69" colspan="5" style="border-right: #f0f0f0; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 324pt; border-bottom: windowtext 0.5pt solid; height: 20pt;
                    background-color: transparent">
                    <div style="text-align: center">
                        <span style="font-size: 16pt"><strong>
                            <br />
                        </strong></span></div>
                </td>
            </tr>
            <tr height="27" style="font-weight: bold; font-size: 16pt; height: 20.25pt">
                <td class="xl66" height="27" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext 0.5pt solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 20.25pt; background-color: transparent">
                    <div style="text-align: center">
                        序号</div>
                </td>
                <td class="xl68" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 500pt; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    <div style="text-align: center">
                        工作单位</div>
                </td>
                <td class="xl68" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 65pt; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    <div style="text-align: center">
                        姓名</div>
                </td>
                <td class="xl68" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 70pt; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    <div style="text-align: center">
                        <asp:Label ID="Label3" runat="server" Text="投票栏" Width="70px"></asp:Label></div>
                </td><td class="xl68" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 140px; border-bottom: black 1pt solid; background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="Label4" runat="server" Text="推荐顺序" Width="90px"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style=" font-size: 16pt; height: 13.5pt">
                <td style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0; text-align: center;">
                    <span style="font-size: 11pt">1</span></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0; border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid; height: 23px; background-color: transparent">
                    <div style="text-align: center">
                        <asp:Label ID="lbl1_1" runat="server" Font-Bold="False" Font-Italic="False" Font-Names="宋体"
                            Font-Size="11pt"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0; border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid; height: 23px; background-color: transparent">
                    <div style="text-align: center">
                        <asp:Label ID="lbl1_2" runat="server" Font-Names="宋体" Font-Size="11pt"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0; border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid; height: 23px; background-color: transparent">
                    <div style="text-align: center">
                        <asp:Label ID="lbl1_3" runat="server" Font-Names="宋体" Font-Size="11pt"></asp:Label></div>
                </td><td style="border-right: black 1pt solid; border-top: black 1pt solid; border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid; height: 23px; background-color: transparent">
                    <div style="text-align: center">
                        <asp:Label ID="lbl1_4" runat="server" Font-Names="宋体" Font-Size="11pt"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        2</div>
                </td>
                <td class="xl67" style="border-right: windowtext 0.5pt solid; width: 500pt; border-bottom: windowtext 0.5pt solid; height: 23px;
                    background-color: transparent; border-left-color: windowtext; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl2_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl67" style="border-right: windowtext 0.5pt solid; width: 65pt; border-bottom: windowtext 0.5pt solid; height: 23px;
                    background-color: transparent; border-left-color: windowtext; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl2_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl67" style="border-right: windowtext 0.5pt solid; width: 60pt; border-bottom: windowtext 0.5pt solid; height: 23px;
                    background-color: transparent; border-left-color: windowtext; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl2_3" runat="server"></asp:Label></div>
                </td><td class="xl67" style="border-right: black 1pt solid; width: 130px; border-bottom: black 1pt solid; height: 23px;
                    background-color: transparent; border-top: black 1pt solid; border-left: black 1pt solid;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl2_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        3</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl3_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl3_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl3_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl3_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        4</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl4_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl4_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl4_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl4_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        5</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl5_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl5_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl5_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl5_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        6</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl6_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl6_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl6_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl6_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        7</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl7_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl7_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl7_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl7_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        8</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl8_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl8_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl8_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl8_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        9</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl9_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl9_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl9_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl9_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        10</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl10_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl10_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl10_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl10_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        11</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl11_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl11_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl11_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl11_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        12</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl12_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl12_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl12_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl12_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        13</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl13_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl13_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl13_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl13_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        14</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl14_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl14_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl14_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl14_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        15</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl15_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl15_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl15_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl15_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        16</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl16_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl16_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl16_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl16_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        17</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl17_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl17_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl17_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl17_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        18</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl18_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl18_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl18_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl18_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        19</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl19_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl19_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl19_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl19_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        20</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl20_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl20_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl20_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl20_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        21</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl21_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl21_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl21_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl21_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        22</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl22_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl22_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl22_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl22_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        23</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl23_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl23_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl23_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl23_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        24</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl24_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl24_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl24_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl24_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        25</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl25_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl25_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl25_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl25_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        26</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl26_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl26_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl26_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl26_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        27</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl27_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl27_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl27_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl27_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        28</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl28_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl28_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl28_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl28_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        29</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl29_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl29_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl29_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl29_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        30</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl30_1" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl30_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl30_3" runat="server"></asp:Label></div>
                </td><td class="xl65" style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl30_4" runat="server"></asp:Label></div>
                </td>
            </tr>
                    <tr>
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        31</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center; height: 23px;">
                    <asp:Label ID="lbl31_1" runat="server"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl31_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl31_3" runat="server"></asp:Label></div>
                </td><td style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl31_4" runat="server"></asp:Label></div>
                </td>
                    </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt">
                <td height="18" style="border-right: windowtext 0.5pt solid;
                    border-left: windowtext 1px solid; width: 71pt; border-bottom: windowtext 0.5pt solid;
                    height: 23px; background-color: transparent; border-top-color: #f0f0f0;">
                    <div style="text-align: center">
                        32</div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 500pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center; height: 23px;">
                    <asp:Label ID="lbl32_1" runat="server"></asp:Label></td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 65pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl32_2" runat="server"></asp:Label></div>
                </td>
                <td class="xl65" style="border-right: windowtext 0.5pt solid; border-top: #f0f0f0;
                    border-left: windowtext; width: 60pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl32_3" runat="server"></asp:Label></div>
                </td><td style="border-right: black 1pt solid; border-top: black 1pt solid;
                    border-left: black 1pt solid; width: 130px; border-bottom: black 1pt solid;
                    background-color: transparent; height: 23px;">
                    <div style="text-align: center">
                        <asp:Label ID="lbl32_4" runat="server"></asp:Label></div>
                </td>
            </tr>
            <tr>
                <td class="xl71" style="border-right: #f0f0f0; border-top: windowtext 0.5pt solid;
                    border-left: #f0f0f0; width: 71pt; border-bottom: #f0f0f0; height: 21pt; background-color: transparent; text-align: right;">
                    <asp:Label ID="Label7" runat="server" Height="20px" Text="注："></asp:Label></td>
                    <td class="xl71" 
                    style="border-right: #f0f0f0; border-top: windowtext 0.5pt solid;
                    border-left: #f0f0f0; width: 71pt; border-bottom: #f0f0f0; height: 21pt; background-color: transparent; text-align: left;" 
                    colspan="4">
                        <asp:Label ID="Label1" runat="server" Height="20px" Text="１．请在“投票栏”中,同意画“Ｏ”，推荐人数不超过14人。"
                            Width="556px"></asp:Label></td>
            </tr>
            <tr>
                <td class="xl71" style="width: 71pt; height: 11pt; background-color: transparent; text-align: left; border-left-color: #f0f0f0; border-bottom-color: #f0f0f0; border-right-color: #f0f0f0;">
                    <br />
                </td>
                <td class="xl71" 
                    style="width: 71pt; height: 11pt; background-color: transparent; text-align: left; border-left-color: #f0f0f0; border-bottom-color: #f0f0f0; border-right-color: #f0f0f0;" 
                    colspan="4">
                    <asp:Label ID="Label9" runat="server" Height="20px" Text="２．对推荐的人选进行排序，并用数字形式填写在“推荐顺序”中。"
                        Width="556px"></asp:Label></td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt; mso-height-source: userset">
                <td class="xl71" colspan="5" 
                    style="width: 324pt; height: 9pt; background-color: transparent; text-align: left; border-top-width: 0.5pt; border-left-color: #f0f0f0; border-bottom-color: #f0f0f0; border-top-color: windowtext; border-right-color: #f0f0f0;">
                </td>
            </tr>
            <tr>
                <td class="xl70" colspan="4" style="border-right: #f0f0f0; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 324pt; border-bottom: #f0f0f0; height: 39pt; background-color: transparent;
                    text-align: right">
                    <span style="font-size: 11pt"><span></span> <span style="font-size: 14pt">
                        <asp:Label ID="Label2" runat="server" Text="专家签字：" Width="520px"></asp:Label></span></span></td>
                <td class="xl70" style="border-right: #f0f0f0; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 130px; border-bottom: #f0f0f0; height: 39pt; background-color: transparent;
                    text-align: right">
                    <span style="font-size: 11pt"><span></span> <span style="font-size: 14pt">
                        </span></span></td>
            </tr>
            <tr height="18" style="font-size: 11pt; height: 13.5pt; mso-height-source: userset">
                <td class="xl70" colspan="4" style="border-right: #f0f0f0; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 324pt; border-bottom: #f0f0f0; height: 14pt; background-color: transparent;
                    text-align: right">
                    <span> </span><span style="font-size: 14pt">
                        <asp:Label ID="Label6" runat="server" Text="日期：" Width="520px"></asp:Label></span></td>
                <td class="xl70" style="border-right: #f0f0f0; border-top: #f0f0f0;
                    border-left: #f0f0f0; width: 130px; border-bottom: #f0f0f0; height: 14pt; background-color: transparent;
                    text-align: right">
                    <span style="font-size: 14pt">
                        </span></td>
            </tr>
        </table>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    
    </div>
                    <div style="text-align: center">
                        <span style="font-size: 16pt"><strong>
    <asp:Button ID="btn_SaveToWord0" runat="server" OnClick="btn_SaveToWord_Click" Text="导出并打印"
        Width="110px" /> 
                        </strong></span></div>
    </form>
</body>
</html>
