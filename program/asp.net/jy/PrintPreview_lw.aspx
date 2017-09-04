<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PrintPreview_lw.aspx.cs" Inherits="PrintPreview_lw" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>优秀学位论文-信息查看</title>
</head>
<body style="text-align: left">
    <form id="form1" runat="server">
        <span style="font-size: 10pt"><strong><span style="font-size: 22pt; font-family: 华文中宋">
            中国地震局优秀学位论文推荐表<br />
        </span></strong>
            <br />
                            参评类别：</span><asp:Label ID="lbl_cplb" runat="server"
                                Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label><table border="1" cellpadding="0" cellspacing="0" class="MsoNormalTable" style="border-right: medium none;
            border-top: medium none; margin: auto auto auto 0.95pt; border-left: medium none;
            width: 481pt; border-bottom: medium none; border-collapse: collapse; mso-table-layout-alt: fixed;
            mso-border-alt: solid windowtext 1.5pt; mso-padding-alt: 0cm 1.4pt 0cm 1.4pt;
            mso-border-insideh: .75pt solid windowtext; mso-border-insidev: .75pt solid windowtext">
            <tr style="height: 7.3pt; mso-yfti-irow: 0; mso-yfti-firstrow: yes; page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; padding-bottom: 0cm;
                    border-left: windowtext 1.5pt solid; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 6pt; background-color: transparent; mso-border-top-alt: 1.5pt; mso-border-left-alt: 1.5pt;
                    mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid; text-align: center;">
                    <span style="font-size: 10pt">作者姓名</span></td>
                <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                    text-align: center; mso-line-height-rule: exactly">
                    <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                        mso-ascii-font-family: 'Times New Roman'"></span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <span style="font-size: 10pt">
                            </span></span><td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 6pt; background-color: transparent; text-align: center; mso-border-top-alt: 1.5pt;
                    mso-border-left-alt: .5pt; mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .75pt;
                    mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                            <asp:Label ID="lbl_xm" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                <td colspan="2" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    font-family: Times New Roman; height: 6pt; background-color: transparent; mso-border-top-alt: 1.5pt;
                    mso-border-left-alt: .75pt; mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .75pt;
                    mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">性别</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 20pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 6pt; background-color: transparent; mso-border-top-alt: 1.5pt; mso-border-left-alt: .75pt;
                    mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid">
                    <asp:Label ID="lbl_xb" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    font-family: Times New Roman; height: 6pt; background-color: transparent; mso-border-top-alt: 1.5pt;
                    mso-border-left-alt: .75pt; mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .75pt;
                    mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">出生年月</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 6pt; background-color: transparent; mso-border-top-alt: 1.5pt; mso-border-left-alt: .75pt;
                    mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid">
                    <asp:Label ID="lbl_csny" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                <td colspan="6" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 40pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    font-family: Times New Roman; height: 6pt; background-color: transparent; mso-border-top-alt: 1.5pt;
                    mso-border-left-alt: .75pt; mso-border-bottom-alt: 1.0pt; mso-border-right-alt: .75pt;
                    mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="width: 20px; font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">民族</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1.5pt solid; padding-left: 1.4pt; font-size: 10pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 40pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 6pt; background-color: transparent; mso-border-left-alt: solid windowtext .75pt">
                    <asp:Label ID="lbl_mz" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
            </p>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 1;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-top-alt: 1.0pt; mso-border-left-alt: 1.5pt; mso-border-bottom-alt: .5pt;
                    mso-border-right-alt: .5pt; mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">推荐单位</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="24" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; text-align: left; mso-border-top-alt: 1.0pt;
                    mso-border-left-alt: .5pt; mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt;
                    mso-border-color-alt: windowtext; mso-border-style-alt: solid">
                    <asp:Label ID="lbl_tjdw" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 2;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                    mso-border-left-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 18pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">入学年月</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt">
                    <asp:Label ID="lbl_rxny" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                <td colspan="5" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 18pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">论文答辩日期</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt">
                    <asp:Label ID="lbl_lwdbrq" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
                <td colspan="5" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 18pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">获学位日期</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="7" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt">
                    <asp:Label ID="lbl_hxwrq" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 3;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                    mso-border-left-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">一级学科代码</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_yjxkdm" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">一级<span style="font-family: Times New Roman">学</span>科<span
                                style="font-family: Times New Roman">名</span>称</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="16" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 18pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_yjxkmc" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label><span
                                style="font-family: 宋体"> </span></span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: 宋体; height: 7.3pt; mso-yfti-irow: 3; page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                    mso-border-left-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">二级学科代码</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_ejxkdm" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">二级学科名称</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="16" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 18pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">&nbsp;<asp:Label ID="lbl_ejxkmc"
                            runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr>
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt;
                    mso-border-left-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'"><span style="font-size: 9pt">是否自设学科专业</span></span></p>
                </td>
                <td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_sfzsxkzy" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="21" nowrap="nowrap" style="border-right: black 2px solid; padding-right: 1.4pt; padding-left: 1.4pt; padding-bottom: 0cm;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt; border-left-color: #f0f0f0; border-top-color: #f0f0f0;">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: left; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_zsxkzy" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 5;
                page-break-inside: avoid">
                <td colspan="7" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1pt solid; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext 1.5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">论文中文题目</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="21" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1pt solid; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_ctitle" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 6;
                page-break-inside: avoid">
                <td colspan="7" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">论文英文题目</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="21" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_etitle" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 7;
                page-break-inside: avoid">
                <td colspan="7" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt; background-color: transparent;
                    mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="185">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">论文涉及的研究方向</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="21" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 343.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt" width="457">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_yjfx" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 8;
                page-break-inside: avoid">
                <td colspan="5" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 85.55pt; padding-top: 0cm; border-bottom: #f0f0f0; height: 7.3pt; background-color: transparent;
                    mso-border-top-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext 1.5pt;
                    mso-border-right-alt: solid windowtext .75pt" width="114">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">攻读学位方式</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: #f0f0f0; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="528">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 10.5pt; line-height: 18pt;
                        text-align: left; mso-line-height-rule: exactly; mso-char-indent-count: 1.0">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl_gdxwfs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 9;
                page-break-inside: avoid">
                <td nowrap="nowrap" rowspan="6" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1pt solid; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 31.85pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext 1.5pt"
                    width="42">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">本科至攻读学位期间履历</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1pt solid; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 53.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext .5pt" width="72">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">起止时间</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: windowtext 1pt solid; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="528">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">主</span><span style="mso-bidi-font-size: 10.5pt">
                            </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                mso-ascii-font-family: 'Times New Roman'">要</span><span style="mso-bidi-font-size: 10.5pt">
                                </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                    mso-ascii-font-family: 'Times New Roman'">学</span><span style="mso-bidi-font-size: 10.5pt">
                                    </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                        mso-ascii-font-family: 'Times New Roman'">习</span><span style="mso-bidi-font-size: 10.5pt">
                                        </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                            mso-ascii-font-family: 'Times New Roman'">或</span><span style="mso-bidi-font-size: 10.5pt">
                                            </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                                mso-ascii-font-family: 'Times New Roman'">工</span><span style="mso-bidi-font-size: 10.5pt">
                                                </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                                    mso-ascii-font-family: 'Times New Roman'">作</span><span style="mso-bidi-font-size: 10.5pt">
                                                    </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                                        mso-ascii-font-family: 'Times New Roman'">经</span><span style="mso-bidi-font-size: 10.5pt">
                                                        </span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                                                            mso-ascii-font-family: 'Times New Roman'">历</span><span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span></p>
                </td>
            </tr>
            <tr style="font-size: 10pt; height: 7.3pt; mso-yfti-irow: 10; page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 53.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt"
                    width="72">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="font-family: Times New Roman; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_11" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 7.3pt; background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="528">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_12" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 11;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 53.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt"
                    width="72">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_21" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="528">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_22" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 12;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 53.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt"
                    width="72">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_31" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="528">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_32" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 13;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 53.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt"
                    width="72">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_41" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="528">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_42" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 7.3pt; mso-yfti-irow: 14;
                page-break-inside: avoid">
                <td colspan="4" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 53.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext .5pt"
                    width="72">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_51" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
                <td colspan="23" nowrap="nowrap" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 7.3pt;
                    background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: .5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="528">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt; text-align: left;
                        mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl2_52" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 10pt; font-family: Times New Roman; height: 110.6pt; mso-yfti-irow: 15;
                page-break-inside: avoid">
                <td colspan="2" nowrap="nowrap" rowspan="2" style="border-right: windowtext 1pt solid;
                    padding-right: 5.4pt; border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm;
                    border-left: windowtext 1.5pt solid; width: 30pt; padding-top: 0cm; border-bottom: windowtext 1.5pt solid;
                    height: 110.6pt; background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: 1.5pt;
                    mso-border-bottom-alt: 1.5pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">论<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">中<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">英<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">摘<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">要<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 110.6pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            中文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            摘要<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="23" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 110.6pt;
                    background-color: transparent; text-align: left; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt" valign="top" width="528">
                    <asp:Label ID="lbl3_Cabstract" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
            </tr>
            <tr style="font-size: 10pt; height: 114.65pt; mso-yfti-irow: 16; page-break-inside: avoid">
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 45pt; padding-top: 0cm; border-bottom: windowtext 1.5pt solid; height: 115pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-bottom-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            英文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            摘要<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="23" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 395.9pt; padding-top: 0cm; border-bottom: windowtext 1.5pt solid; height: 115pt;
                    background-color: transparent; text-align: left; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" valign="top" width="528">
                    <asp:Label ID="lbl3_Eabstract" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="3" nowrap="nowrap" style="border-right: windowtext 1pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 45.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 11cm;
                    background-color: transparent; mso-border-top-alt: 1.5pt; mso-border-left-alt: 1.5pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="60">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">&nbsp; &nbsp;
                            &nbsp; </span>
                    </p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">学<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">位<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">论<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">的<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">主<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">要<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">创<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">新<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">点<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="font-family: Times New Roman; mso-bidi-font-size: 10.5pt">
                            &nbsp; &nbsp; &nbsp; </span>
                    </p>
                </td>
                <td colspan="25" style="border-right: windowtext 1.5pt solid; padding-right: 1.4pt;
                    border-top: #f0f0f0; padding-left: 1.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 436.4pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                    height: 11cm; background-color: transparent; mso-border-top-alt: 1.5pt; mso-border-left-alt: .75pt;
                    mso-border-bottom-alt: .75pt; mso-border-right-alt: 1.5pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" valign="top" width="582">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: left; mso-line-height-rule: exactly">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl3_cxd" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label><span
                                style="font-family: 宋体"> </span></span>
                    </p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="3" rowspan="14" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 45.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="60">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">攻博<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">（硕）<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">期间<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">及获<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">得博<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">（硕）<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">士学<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">位后<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">一年<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">内获<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">得与<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">学位<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">论文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">有关<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 11pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">的成果<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="3" rowspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 12pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">发表<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 12pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">学术<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 12pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">论文<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">（限填<span lang="EN-US">5</span>篇）<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 91.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="122">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">题目<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 55.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="73">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">刊物名称<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 57pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">刊物期号<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">发表时间<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">排名<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="2" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 46pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.25pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">收录情况<span lang="EN-US"></span></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 91.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="122">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_11" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label>
                        </span>
                    </p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 55.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 15.1pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="73">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_12" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 57pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 15.1pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_13" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 58.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 15.1pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_14" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 58.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 15.1pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_15" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="2" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 46pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 15.1pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_16" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 91.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="122">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_21" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 55.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="73">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_22" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 57pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_23" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_24" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_25" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="2" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 46pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_26" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 91.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="122">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_31" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 55.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="73">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_32" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 57pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_33" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_34" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_35" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="2" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 46pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_36" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 91.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="122">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_41" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 55.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="73">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_42" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 57pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_43" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_44" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_45" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="2" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 46pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_46" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 91.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="122">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt"></span>
                        <asp:Label ID="lbl4_51" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 55.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="73">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_52" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 57pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_53" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.75pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_54" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 58.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="78">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_55" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="2" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 46pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 15.1pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl4_56" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="3" rowspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 12pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">出版<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 12pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">专著<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">（限填<span lang="EN-US">3</span>项）<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 117.25pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="156">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">专著名称<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">出版社<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">出版时间<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 92.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="123">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">排名<span lang="EN-US"></span></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 117.25pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="156">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_11" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_12" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_13" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 92.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="123">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_14" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 117.25pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="156">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_21" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_22" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_23" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 92.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="123">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_24" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 117.25pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="156">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_31" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_32" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 88.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="117">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_33" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 92.05pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="123">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl5_34" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="3" rowspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        line-height: 12pt; text-align: center; mso-line-height-rule: exactly">
                        <span style="mso-bidi-font-size: 10.5pt">获奖<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">成果<span lang="EN-US"><span style="mso-spacerun: yes">&nbsp;
                        </span></span>（限填<span lang="EN-US">3</span>项）<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 90pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="120">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">成果名称<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 80.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="107">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">奖励名称<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.5pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">获奖等级<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">获奖时间<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 72pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.8pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="mso-bidi-font-size: 10.5pt">排名<span lang="EN-US"></span></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 90pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="120">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_11" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 80.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="107">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_12" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.5pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_13" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_14" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 72pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_15" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 90pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="120">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_21" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 80.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="107">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_22" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.5pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_23" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_24" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 72pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_25" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt; font-family: 宋体">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 90pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="120">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_31" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 80.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="107">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_32" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.5pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_33" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 70.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="94">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_34" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="3" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 72pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 22.65pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl6_35" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
      <tr>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 76.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="102">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            指导教师姓名</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 82.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="110">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_xm" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">出生年月<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_csny" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">性别<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 83.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt" width="111">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_xb" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 76.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="102">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            最终学历</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 82.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="110">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_zzxl" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            最高学位</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_zgxw" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            是否院士</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 83.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt" width="111">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_sfys" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 76.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="102">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            首任博导年月</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 82.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="110">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_srbdny" runat="server" Font-Bold="False" Font-Names="宋体"
                                Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            首任硕导年月</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <asp:Label ID="lbl7_zdjs_srsdny" runat="server" Font-Bold="False" Font-Names="宋体"
                        Font-Size="10pt"></asp:Label></td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            研究方向</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 83.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt" width="111">
                    <asp:Label ID="lbl7_zdjs_yjfx" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 76.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="102">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            导师电话</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 82.7pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="110">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_dsdh" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            导师邮箱</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_dsyx" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; letter-spacing: -0.1pt; mso-bidi-font-size: 10.5pt;
                            mso-hansi-font-family: 'Times New Roman'">协助指导的教师人数</span><span lang="EN-US" style="font-family: 宋体;
                                mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; font-size: 12pt; padding-bottom: 0cm;
                    border-left: #f0f0f0; width: 83.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid;
                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .75pt;
                    mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt;
                    mso-border-right-alt: solid windowtext 1.5pt" width="111">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_xzrs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="8" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 159.15pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="212">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman';
                            mso-ascii-font-family: 'Times New Roman'">培养在读</span><span style="font-family: 宋体;
                                mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">研究生数（含在职）</span><span
                                    lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            在读硕士</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 79.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_zdss" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            在读博士</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 83.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="111">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_zdbs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="8" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 159.15pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="212">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            培养已毕业研究生数</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            毕业硕士</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="5" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 79.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_byss" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
                <td colspan="6" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 79.6pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt" width="106">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            毕业</span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'"></span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">博士</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="4" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 83.55pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="111">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_zdjs_bybs" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="8" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 159.15pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="212">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char;
                        text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            兼职博导工作单位名称<span lang="EN-US"></span></span></p>
                </td>
                <td colspan="20" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 322.3pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    width="430">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char; text-align: left">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_jzbd_gzdw" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 76.45pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 3cm;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext 1.5pt" width="102">
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; line-height: 18pt;
                        text-align: center; mso-line-height-rule: exactly">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            现任职务<span lang="EN-US"></span></span></p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt; mso-hansi-font-family: 'Times New Roman'">
                            （含学术团体）</span><span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span></p>
                </td>
                <td colspan="24" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 405pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 3cm;
                    background-color: transparent; mso-border-alt: solid windowtext .75pt; mso-border-top-alt: solid windowtext .75pt;
                    mso-border-left-alt: solid windowtext .75pt; mso-border-right-alt: solid windowtext 1.5pt"
                    valign="middle" width="540">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; layout-grid-mode: char; text-align: left">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_xrzw" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span></p>
                </td>
            </tr>
            <tr style="font-size: 12pt">
                <td colspan="4" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1.5pt solid;
                    width: 76.45pt; padding-top: 0cm; border-bottom: windowtext 1.5pt solid; height: 11cm;
                    background-color: transparent; mso-border-top-alt: .75pt; mso-border-left-alt: 1.5pt;
                    mso-border-bottom-alt: 1.5pt; mso-border-right-alt: .75pt; mso-border-color-alt: windowtext;
                    mso-border-style-alt: solid" width="102">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">&nbsp; &nbsp;
                            &nbsp; </span>
                    </p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">单<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">位<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">推<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">荐<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">意<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">见<span lang="EN-US"></span></span></p>
                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"><span style="mso-spacerun: yes">
                            &nbsp;</span></span>&nbsp;</p>
                </td>
                <td colspan="24" style="border-right: windowtext 1.5pt solid; padding-right: 5.4pt;
                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0;
                    width: 405pt; padding-top: 0cm; border-bottom: windowtext 1.5pt solid; height: 11cm;
                    background-color: transparent; mso-border-top-alt: solid windowtext .75pt; mso-border-left-alt: solid windowtext .75pt"
                    valign="top" width="540">
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span>&nbsp;</p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"></span>&nbsp;</p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: left">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                            <asp:Label ID="lbl7_dwtjyj" runat="server" Font-Bold="False" Font-Names="宋体" Font-Size="10pt"></asp:Label></span>&nbsp;</p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"><span style="mso-spacerun: yes">
                        </span></span>&nbsp;</p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                    </p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"><span style="mso-spacerun: yes">
                            &nbsp; &nbsp; </span></span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                                学位评定委员会主席：<span lang="EN-US"><span style="mso-spacerun: yes"> &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; </span></span>
                                单位公章：<span lang="EN-US"></span></span></p>
                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 21pt">
                        <span lang="EN-US" style="font-family: 宋体; mso-bidi-font-size: 10.5pt"><span style="mso-spacerun: yes">
                            &nbsp;&nbsp; </span></span><span style="font-family: 宋体; mso-bidi-font-size: 10.5pt">
                                （签章）<span lang="EN-US"><span style="mso-spacerun: yes"> &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; </span></span>年<span lang="EN-US"><span style="mso-spacerun: yes">
                                        &nbsp; </span></span>月<span lang="EN-US"><span style="mso-spacerun: yes"> &nbsp; </span>
                                        </span>日<span lang="EN-US"></span></span></p>
                </td>
            </tr>
        </table>
        <br />
        <asp:Button ID="btn_SaveToWord" runat="server" OnClick="btn_SaveToWord_Click" Text="保存为Word文档"
            Width="110px" />
        
    
    </form>
</body>
</html>
