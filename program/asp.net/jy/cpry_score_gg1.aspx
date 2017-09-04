<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cpry_score_gg.aspx.cs" Inherits="cpry_score_gg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body style="color: #000000">
    <form id="form1" runat="server">
        <table border="0" cellpadding="0" cellspacing="0" style="width: 553pt; border-collapse: collapse"
            width="734" x:str="">
            <colgroup>
                <col style="width: 29pt; mso-width-source: userset; mso-width-alt: 1216" width="38" />
                <col style="width: 125pt; mso-width-source: userset; mso-width-alt: 5312" width="166" />
                <col style="width: 139pt; mso-width-source: userset; mso-width-alt: 5920" width="185" />
                <col style="width: 61pt; mso-width-source: userset; mso-width-alt: 2592" width="81" />
                <col style="width: 59pt; mso-width-source: userset; mso-width-alt: 2496" width="78" />
                <col style="width: 74pt; mso-width-source: userset; mso-width-alt: 3136" width="98" />
                <col style="width: 66pt; mso-width-source: userset; mso-width-alt: 2816" width="88" />
            </colgroup>
            <tr height="30" style="height: 22.5pt; mso-height-source: userset">
                <td class="xl46" colspan="7" style="border-right: #dcd9a6; border-top: #dcd9a6;
                    border-left: #dcd9a6; width: 553pt; border-bottom: windowtext 0.5pt solid; height: 23pt;
                    background-color: transparent; text-align: center" width="734">
                    <span style="font-size: 9pt; font-family: 宋体">正研级高工职称评审量化评分标准</span></td>
            </tr>
            <tr height="19" style="font-size: 9pt; font-family: 宋体; height: 14.25pt; mso-height-source: userset">
                <td class="xl30" height="460" rowspan="18" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                    height: 345pt; background-color: transparent" width="38">
                    项目任务</td>
                <td class="xl34" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: #dcd9a6; background-color: transparent;
                    text-align: center" width="166">
                    内容</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    成绩优秀者</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    称职者</td>
                <td class="xl34" rowspan="4" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: black 0.5pt solid;
                    background-color: transparent" width="98">
                    此条可按年或次累加计分，最高不超过1.5分</td>
                <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <span style="font-size: 10pt">计分</span></td>
            </tr>
            <tr height="30" style="font-size: 10pt; font-family: 宋体; height: 22.5pt">
                <td class="xl45" height="121" rowspan="3" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext 0.5pt solid; border-left: windowtext 0.5pt solid; width: 125pt;
                    border-bottom: windowtext 0.5pt solid; height: 90.75pt; background-color: transparent"
                    width="166">
                    <span style="font-size: 9pt">1.负责某方面技术工作</span></td>
                <td class="xl45" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="185">
                    主持省局级以上单位综合震情监测和分析预报工作</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent">
                    0.3/年</td>
                <td class="xl48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="78">
                    0.2/年</td>
                <td class="xl27" rowspan="3" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext 0.5pt solid; border-bottom: black 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label1" runat="server"></asp:Label></td>
            </tr>
            <tr height="30" style="font-size: 10pt; font-family: 宋体; height: 22.5pt">
                <td class="xl45" height="30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    height: 22.5pt; background-color: transparent" width="185">
                    <span style="font-size: 9pt">
                    负责本学科方法震情监测和分析预报工作</span></td>
                <td class="xl48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 61pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="81">
                    0.2/年</td>
                <td class="xl48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="78">
                    0.1/年</td>
            </tr>
            <tr height="61" style="font-size: 9pt; font-family: 宋体; height: 45.75pt; mso-height-source: userset">
                <td class="xl43" colspan="3" height="61" style="border-right: black 0.5pt solid;
                    border-top: windowtext 0.5pt solid; border-left: windowtext; width: 259pt; border-bottom: windowtext 0.5pt solid;
                    height: 45.75pt; background-color: transparent" width="344">
                    主持破坏性地震的考察、监测预报、震害评估、安全鉴定、救援、通讯保障等现场工作一次，并提交相应报告，负责人得0.5分，主要承担者得0.2分，参加国际救援现场工作增加0.1分</td>
            </tr>
            <tr height="18" style="font-size: 9pt; font-family: 宋体; height: 13.5pt; mso-height-source: userset">
                <td class="xl31" height="90" rowspan="5" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: black 0.5pt solid;
                    height: 67.5pt; background-color: transparent" width="166">
                    2.国家级科技项目(国家自然科学基金、科技部4类科技计划、发改委和财政部的科技专项等)</td>
                <td class="xl32" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    </td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    负责人</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    主要参加者</td>
                <td class="xl34" rowspan="13" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: black 0.5pt solid;
                    background-color: transparent" width="98">
                    以每个项目为单位单独计分</td>
                <td class="xl27" rowspan="13" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: black 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <span style="font-size: 10pt">
                        <asp:Label ID="Label2" runat="server"></asp:Label></span></td>
            </tr>
            <tr height="18" style="font-size: 10pt; font-family: 宋体; height: 13.5pt; mso-height-source: userset">
                <td class="xl33" height="18" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 13.5pt;
                    background-color: transparent">
                    <span style="font-size: 9pt">
                    重大项目</span></td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="2.5">
                    2.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="0.5">
                    0.3
                </td>
            </tr>
            <tr height="19" style="font-size: 9pt; font-family: 宋体; height: 14.25pt; mso-height-source: userset">
                <td class="xl33" height="19" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 14.25pt;
                    background-color: transparent">
                    一级课题（重点项目）</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1.5">
                    1.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.5">
                    0.3
                </td>
            </tr>
            <tr height="19" style="font-size: 9pt; font-family: 宋体; height: 14.25pt; mso-height-source: userset">
                <td class="xl33" height="19" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 14.25pt;
                    background-color: transparent">
                    二级课题（面上项目）</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1">
                    1.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.5">
                    0.3
                </td>
            </tr>
            <tr height="16" style="font-size: 9pt; font-family: 宋体; height: 12pt">
                <td class="xl33" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                    background-color: transparent">
                    三级课题</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.8">
                    0.8
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.5">
                    0.3
                </td>
            </tr>
            <tr height="21" style="font-size: 9pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl39" height="63" rowspan="3" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: #dcd9a6;
                    height: 47.25pt; background-color: transparent" width="166">
                    3.省部级科技项目（地震行业科研专项、中国地震局及其他部委、各省、直辖市设立的项目）</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    重点项目</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1">
                    1.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.2">
                    0.2
                </td>
            </tr>
            <tr height="21" style="font-size: 9pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl33" height="21" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 15.75pt;
                    background-color: transparent">
                    一级课题（面上项目）</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.8">
                    0.8
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.2">
                    0.2
                </td>
            </tr>
            <tr height="21" style="font-size: 9pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl33" height="21" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 15.75pt;
                    background-color: transparent">
                    二级课题</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.5">
                    0.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.2">
                    0.2
                </td>
            </tr>
            <tr height="23" style="font-size: 9pt; font-family: 宋体; height: 17.25pt; mso-height-source: userset">
                <td class="xl41" height="43" rowspan="2" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext 0.5pt solid; border-left: windowtext 0.5pt solid; width: 125pt;
                    border-bottom: windowtext 0.5pt solid; height: 32.25pt; background-color: transparent"
                    width="166">
                    4.所（省局）级重点科技项目</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    重点项目</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.3">
                    0.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    0.1</td>
            </tr>
            <tr height="20" style="font-size: 9pt; font-family: 宋体; height: 15pt; mso-height-source: userset">
                <td class="xl33" height="20" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 15pt;
                    background-color: transparent">
                    一面上项目</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.2">
                    0.3
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    0.1</td>
            </tr>
            <tr height="20" style="font-size: 9pt; font-family: 宋体; height: 15pt; mso-height-source: userset">
                <td class="xl31" height="90" rowspan="3" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: black 0.5pt solid;
                    height: 67.5pt; background-color: transparent" width="166">
                    5.承担的工程项目</td>
                <td class="xl45" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="185">
                </td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 61pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="81">
                    技术负责人</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="78">
                    分项负责人</td>
            </tr>
            <tr height="36" style="font-size: 9pt; font-family: 宋体; height: 27pt; mso-height-source: userset">
                <td class="xl45" height="36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    height: 27pt; background-color: transparent" width="185">
                    通过国家地震安全性评定委员会会议评审项目</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 61pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="81" x:num="">
                    0.5</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="78" x:num="">
                    0.2</td>
            </tr>
            <tr height="34" style="font-size: 9pt; font-family: 宋体; height: 25.5pt; mso-height-source: userset">
                <td class="xl45" height="34" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    height: 25.5pt; background-color: transparent" width="185">
                    通过省局（所）级会议评审科技服务项目</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 61pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="81" x:num="">
                    0.2</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="78">
                </td>
            </tr>
            <tr height="34" style="font-size: 9pt; font-family: 宋体; height: 25.5pt; mso-height-source: userset">
                <td class="xl41" height="34" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 25.5pt; background-color: transparent" width="166">
                    6.研究生培养</td>
                <td class="xl43" colspan="3" style="border-right: #dcd9a6; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 259pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="344">
                    培养硕士研究生或协助培养博士研究生1名（已毕业）以上，得1.0分</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="98">
                    不累加计分</td>
                <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 66pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="88">
                    <span style="font-size: 10pt">
                        <asp:Label ID="Label3" runat="server"></asp:Label></span></td>
            </tr>
            <tr height="38" style="font-size: 10pt; font-family: 宋体; height: 28.5pt; mso-height-source: userset">
                <td class="xl30" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                    height: 28.5pt; background-color: transparent" width="38">
                    <span style="font-size: 9pt">计分<br />
                        方法</span></td>
                <td class="xl43" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    font-size: 9pt; border-left: windowtext; width: 458pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="608">
                    最后取第1条至第5条中最高的5项得分之和为“承担项目和任务”的得分</td>
                <td class="xl52" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext; width: 66pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="88">
                    <strong>
                        <asp:Label ID="Label4" runat="server"></asp:Label></strong></td>
            </tr>
            <tr height="17" style="font-weight: bold; font-size: 10pt; font-family: 宋体; height: 12.75pt;
                mso-height-source: userset">
                <td class="xl30" height="242" rowspan="8" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                    height: 181.5pt; background-color: transparent" width="38">
                    <span style="font-size: 9pt">
                    论著报告</span></td>
                <td class="xl41" rowspan="5" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="166">
                    1.论文在期刊上发表（不便发表的工程技术报告按一般期刊发表的论文评分）</td>
                <td class="xl32" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent">
                </td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    第一作者</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    非第一作者</td>
                <td class="xl30" rowspan="8" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="98">
                    以每篇论文、报告和每部著作为单位单独计分</td>
                <td class="xl27" rowspan="8" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext 0.5pt solid; border-bottom: black 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label5" runat="server"></asp:Label></td>
            </tr>
            <tr height="17" style="font-size: 10pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                <td class="xl33" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                    background-color: transparent">
                    <span style="font-size: 9pt">
                    SCI收录期刊</span></td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="1">
                    1.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="0.1">
                    0.1
                </td>
            </tr>
            <tr height="17" style="font-size: 9pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                <td class="xl33" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                    background-color: transparent">
                    EI收录期刊</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.7">
                    0.7
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.1">
                    0.1
                </td>
            </tr>
            <tr height="17" style="font-size: 9pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                <td class="xl33" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                    background-color: transparent">
                    核心期刊</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.5">
                    0.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.1">
                    0.1
                </td>
            </tr>
            <tr height="17" style="font-size: 9pt; font-family: 宋体; height: 12.75pt; mso-height-source: userset">
                <td class="xl33" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                    background-color: transparent">
                    一般期刊</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.2">
                    0.2
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.1">
                    0.1
                </td>
            </tr>
            <tr height="52" style="font-size: 9pt; font-family: 宋体; height: 39pt; mso-height-source: userset">
                <td class="xl41" height="52" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 39pt; background-color: transparent" width="166" x:str="   ">
                    <span style="mso-spacerun: yes">&nbsp; &nbsp;</span></td>
                <td class="xl45" colspan="3" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 259pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="344">
                    第1作者得0.2分，其中被ISTP收录加0.3,非第１作者得0.1分。在国际学术机构组织的会议上宣读的特邀或主题报告第１作者得0.7分。</td>
            </tr>
            <tr height="35" style="font-size: 9pt; font-family: 宋体; height: 26.25pt; mso-height-source: userset">
                <td class="xl41" height="35" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 26.25pt; background-color: transparent" width="166">
                    3.撰写出版20万字以上专著</td>
                <td class="xl45" colspan="3" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 259pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="344">
                    第1作者得0.8分，主要合作者得0.4分（各类论文集、资料汇编、志述等不按专著对待）</td>
            </tr>
            <tr height="70" style="font-size: 9pt; font-family: 宋体; height: 52.5pt; mso-height-source: userset">
                <td class="xl45" height="70" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 52.5pt; background-color: transparent" width="166">
                    4.完成有关报告</td>
                <td class="xl45" colspan="3" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 259pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="344">
                    完成国家级或省、部级重点科研、工程和开发项目的结题验收报告（或工作总结报告）,或完成地震监测预报、震害防御与地震应急等工作中的研究报告，报告的执笔人得0.3分，主要撰写人得0.1分</td>
            </tr>
            <tr height="31" style="font-size: 9pt; font-family: 宋体; height: 23.25pt; mso-height-source: userset">
                <td class="xl30" height="31" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                    height: 23.25pt; background-color: transparent" width="38">
                    计分<br />
                    方法</td>
                <td class="xl43" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 458pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="608">
                    取第1条至第4条中最高的5项得分之和为“论著报告”的得分</td>
                <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <span style="font-size: 10pt">
                        <asp:Label ID="Label6" runat="server"></asp:Label></span></td>
            </tr>
            <tr height="44" style="font-size: 10pt; font-family: 宋体; height: 33pt; mso-height-source: userset">
                <td class="xl30" height="488" rowspan="14" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                    height: 366pt; background-color: transparent" width="38">
                    <span style="font-size: 9pt">
                    业绩成果</span></td>
                <td class="xl41" rowspan="4" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="166">
                    1.获得国家级科技奖</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    奖励等级</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    第一完成人</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="78">
                    前三分之一<br />
                    完成人</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 74pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="98">
                    其他<br />
                    主要完成人</td>
                <td class="xl27" rowspan="8" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext 0.5pt solid; border-bottom: black 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label7" runat="server"></asp:Label></td>
            </tr>
            <tr height="21" style="font-size: 10pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl33" height="21" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 15.75pt;
                    background-color: transparent">
                    <span style="font-size: 9pt">一等奖</span></td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="5">
                    5.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="3">
                    3.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" x:num="2">
                    2.0
                </td>
            </tr>
            <tr height="21" style="font-size: 9pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl33" height="21" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 15.75pt;
                    background-color: transparent">
                    二等奖</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="3">
                    3.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1.5">
                    1.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1">
                    1.0
                </td>
            </tr>
            <tr height="21" style="font-size: 9pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl30" height="21" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    height: 15.75pt; background-color: transparent" width="185">
                    三等奖</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="2">
                    2.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1">
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.6">
                    0.6
                </td>
            </tr>
            <tr height="21" style="font-size: 9pt; font-family: 宋体; height: 15.75pt; mso-height-source: userset">
                <td class="xl41" height="59" rowspan="3" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 44.25pt; background-color: transparent" width="166">
                    2.获得省、部级科技奖(含中国地震局防震减灾优秀成果奖)</td>
                <td class="xl33" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                    一等奖</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="2">
                    2.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1.2">
                    1.2
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.8">
                    0.8
                </td>
            </tr>
            <tr height="22" style="font-size: 9pt; font-family: 宋体; height: 16.5pt; mso-height-source: userset">
                <td class="xl33" height="22" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 16.5pt;
                    background-color: transparent">
                    二等奖</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1.5">
                    1.5
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.8">
                    0.8
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.5">
                    0.5
                </td>
            </tr>
            <tr height="16" style="font-size: 9pt; font-family: 宋体; height: 12pt">
                <td class="xl30" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    height: 12pt; background-color: transparent" width="185">
                    三等奖</td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="1">
                    1.0
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.6">
                </td>
                <td class="xl36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                    x:num="0.3">
                    0.3
                </td>
            </tr>
            <tr height="37" style="font-size: 9pt; font-family: 宋体; height: 27.75pt; mso-height-source: userset">
                <td class="xl41" height="37" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 27.75pt; background-color: transparent" width="166">
                    3.获得其他奖励</td>
                <td class="xl43" colspan="4" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 333pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="442">
                    国家级个人科技奖获得者可得1.5分，国家一级学会优秀论文奖第1作者可得0.8分</td>
            </tr>
            <tr height="32" style="font-size: 9pt; font-family: 宋体; height: 24pt; mso-height-source: userset">
                <td class="xl45" height="103" rowspan="2" style="border-right: windowtext 0.5pt solid;
                    border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 77.25pt; background-color: transparent" width="166">
                    4.在地震预报工作方面</td>
                <td class="xl45" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="185">
                </td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 61pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="81">
                    5－5.9级<br />
                    地震</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="78">
                    6－6.9级<br />
                    地震</td>
                <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 74pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center" width="98">
                    7级以上<br />
                    地震</td>
                <td class="xl27" rowspan="2" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: black 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <span style="font-size: 10pt">
                        <asp:Label ID="Label8" runat="server"></asp:Label></span></td>
            </tr>
            <tr height="71" style="font-size: 10pt; font-family: 宋体; height: 53.25pt; mso-height-source: userset">
                <td class="xl45" height="71" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 139pt; border-bottom: windowtext 0.5pt solid;
                    height: 53.25pt; background-color: transparent" width="185">
                    <span style="font-size: 9pt">
                    提出的可以证明的短临预报意见取得显著的减灾实效，或获得中国地震局短临预报实现奖励的主要技术负责人</span></td>
                <td class="xl48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 61pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="81" x:num="1">
                    1.0
                </td>
                <td class="xl48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 59pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="78" x:num="1.5">
                    1.5
                </td>
                <td class="xl48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 9pt; border-left: windowtext; width: 74pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="98" x:num="2">
                    2.0
                </td>
            </tr>
            <tr height="48" style="font-size: 9pt; font-family: 宋体; height: 36pt; mso-height-source: userset">
                <td class="xl45" height="48" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 36pt; background-color: transparent" width="166">
                    5.监测预报评比及获得先进个人情况</td>
                <td class="xl43" colspan="4" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; width: 333pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="442">
                    在全国各类监测预报工作评比中获第一名的负责人每次得0.4分，主要参加人员（排名2－4者）每次得0.2分；荣获中国地震局地震监测预报、地震现场工作先进个人称号者每次得0.6分</td>
                <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <span style="font-size: 10pt">
                        <asp:Label ID="Label9" runat="server"></asp:Label></span></td>
            </tr>
            <tr height="16" style="font-size: 10pt; font-family: 宋体; height: 12pt">
                <td class="xl41" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 12pt; background-color: transparent" width="166">
                    <span style="font-size: 9pt">
                    6.获得国家专利</span></td>
                <td class="xl49" colspan="4" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    font-size: 9pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent">
                    作为第一申请人获得国家发明专利1.0分，实用新型专利0.5分。</td>
                <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label10" runat="server"></asp:Label></td>
            </tr>
            <tr height="36" style="font-size: 10pt; font-family: 宋体; height: 27pt; mso-height-source: userset">
                <td class="xl32" height="36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 27pt;
                    background-color: transparent">
                    <span style="font-size: 9pt">
                    7.论著引用情况</span></td>
                <td class="xl43" colspan="4" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    font-size: 9pt; border-left: windowtext; width: 333pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="442">
                    以第1作者（含通讯作者）发表的论著被他人引用5次，得0.5分，多引用一次加0.1分，最高可得1.5分。</td>
                <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label11" runat="server"></asp:Label></td>
            </tr>
            <tr height="82" style="font-size: 10pt; font-family: 宋体; height: 61.5pt; mso-height-source: userset">
                <td class="xl41" height="82" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                    height: 61.5pt; background-color: transparent" width="166">
                    <span style="font-size: 9pt">8.研发仪器、软件或完成地震安平项目</span></td>
                <td class="xl43" colspan="4" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    font-size: 9pt; border-left: windowtext; width: 333pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="442">
                    主持开发、研制的仪器、软件等经省、部级验收或鉴定，并在全国地震系统或国家重点工程建设中得到广泛推广应用者每项得0.6分，最多不超过1.8分；作为技术负责人完成的重大工程地震安全性评价等项目，经国家地震安全性评定委员会会议评审通过并在工程中得以应用，每项得0.4分，最多不超过1.2分</td>
                <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label12" runat="server"></asp:Label></td>
            </tr>
            <tr height="35" style="font-size: 10pt; font-family: 宋体; height: 26.25pt; mso-height-source: userset">
                <td class="xl30" height="35" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                    height: 26.25pt; background-color: transparent" width="38">
                    <span style="font-size: 9pt">计分<br />
                        方法</span></td>
                <td class="xl43" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    font-size: 9pt; border-left: windowtext; width: 458pt; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent" width="608">
                    以上第1条至第6条每项（次）单独计分，同一项目获奖不得重复计分。最后取第1条至第8条中最高的5项得分之和为“业绩成果”的得分</td>
                <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                    background-color: transparent; text-align: center">
                    <asp:Label ID="Label13" runat="server"></asp:Label></td>
            </tr>
            <tr height="16" style="font-size: 10pt; font-family: 宋体; height: 12pt">
                <td class="xl25" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid; height: 12pt;
                    background-color: transparent; text-align: left">
                    <span style="font-size: 9pt">总计</span></td>
                <td class="xl53" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                </td>
                <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                    border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent;
                    text-align: center">
                    <asp:Label ID="Label14" runat="server"></asp:Label></td>
            </tr>
        </table>
        <table border="0" cellpadding="0" cellspacing="0" style="width: 553pt; border-collapse: collapse" x:str="">
            <tr>
                <td class="xl31" colspan="7" style="border-right: windowtext 0.5pt solid; border-left: windowtext 0.5pt solid;
                    border-top-color: windowtext; border-bottom: windowtext 0.5pt solid; height: 26pt;
                    background-color: transparent">
                    <strong></strong><span style="font-size: 9pt">如果您对以上评分有异议，请在下面文本框中填入理由并保存；如无异议，请返回并上报提交！</span> &nbsp;
                </td>
            </tr>
            <tr>
                <td class="xl31" colspan="7" style="border-right: windowtext 0.5pt solid; border-left: windowtext 0.5pt solid;
                    border-top-color: windowtext; border-bottom: windowtext 0.5pt solid; height: 26pt;
                    background-color: transparent">
                    <strong></strong>
                    <asp:TextBox ID="tbx_Reason" runat="server" Font-Names="宋体" Font-Size="9pt" Height="130px"
                        TextMode="MultiLine" Width="615px"></asp:TextBox>
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td class="xl31" style="border-left-width: 0.5pt; border-left-color: windowtext;
                    border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 29pt; border-top-style: none;
                    border-top-color: windowtext; height: 26pt; background-color: transparent; border-right-width: 0.5pt;
                    border-right-color: windowtext" width="38">
                    <strong></strong>
                </td>
                <td class="xl35" colspan="5" style="border-left-width: 0.5pt; border-left-color: windowtext;
                    border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 444pt; border-top-style: none;
                    border-top-color: windowtext; height: 26pt; background-color: transparent; border-right-width: 0.5pt;
                    border-right-color: windowtext">
                    <asp:Button ID="btn_Save" runat="server" Font-Names="宋体" Font-Size="9pt" Height="24px"
                        OnClick="btn_Save_Click" Text="保存" Width="72px" /></td>
                <td class="xl25" style="border-left-width: 0.5pt; border-left-color: windowtext;
                    border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 29pt; border-top-style: none;
                    border-top-color: windowtext; height: 26pt; background-color: transparent; border-right-width: 0.5pt;
                    border-right-color: windowtext" valign="middle">
                    <input id="btnClose" class="Noprint" name="btnClose" onclick="javascript:window.history.go(-1);"
                        style="font-size: 9pt; width: 70px; font-family: 宋体; height: 24px" type="button"
                        value="返回" /></td>
            </tr>
            <tr>
                <td class="xl31" style="border-left-width: 0.5pt; border-left-color: windowtext;
                    border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 29pt; border-top-style: none;
                    border-top-color: windowtext; height: 26pt; background-color: transparent; border-right-width: 0.5pt;
                    border-right-color: windowtext" width="38">
                    <strong></strong>
                </td>
                <td class="xl35" colspan="5" style="border-left-width: 0.5pt; border-left-color: windowtext;
                    border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 444pt; border-top-style: none;
                    border-top-color: windowtext; height: 26pt; background-color: transparent; border-right-width: 0.5pt;
                    border-right-color: windowtext">
                </td>
                <td class="xl25" style="border-left-width: 0.5pt; border-left-color: windowtext;
                    border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 29pt; border-top-style: none;
                    border-top-color: windowtext; height: 26pt; background-color: transparent; border-right-width: 0.5pt;
                    border-right-color: windowtext">
                    &nbsp;&nbsp;
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
