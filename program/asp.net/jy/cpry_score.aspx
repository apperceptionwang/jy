<%@ Page Language="C#" AutoEventWireup="true" CodeFile="cpry_score.aspx.cs" Inherits="Admin_cpry_score" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns:o="urn:schemas-microsoft-com:office:office"
xmlns:x="urn:schemas-microsoft-com:office:excel"
xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta http-equiv=Content-Type content="text/html; charset=gb2312">
<meta name=ProgId content=Excel.Sheet>
<meta name=Generator content="Microsoft Excel 11">

<link rel=File-List href=filelist.xml>
<link rel=Edit-Time-Data href=editdata.mso>
<link rel=Stylesheet href=stylesheet.css>
<style>
<!--table
	{mso-displayed-decimal-separator:"\.";
	mso-displayed-thousand-separator:"\,";}
@page
	{margin:.98in .75in .79in .75in;
	mso-header-margin:.51in;
	mso-footer-margin:.51in;}
ruby
	{ruby-align:left;}
rt
	{color:windowtext;
	font-size:9.0pt;
	font-weight:400;
	font-style:normal;
	text-decoration:none;
	font-family:宋体;
	mso-generic-font-family:auto;
	mso-font-charset:134;
	mso-char-type:none;
	display:none;}
-->
</style>
<![if !supportTabStrip]><script language="JavaScript">
<!--
function fnUpdateTabs()
 {
  if (parent.window.g_iIEVer>=4) {
   if (parent.document.readyState=="complete"
    && parent.frames['frTabs'].document.readyState=="complete")
   parent.fnSetActiveSheet(0);
  else
   window.setTimeout("fnUpdateTabs();",150);
 }
}


 fnUpdateTabs();
//-->
</script>
<![endif]><!--[if gte mso 9]><xml>
 <x:WorksheetOptions>
  <x:DefaultRowHeight>240</x:DefaultRowHeight>
  <x:Print>
   <x:ValidPrinterInfo/>
   <x:PaperSizeIndex>9</x:PaperSizeIndex>
   <x:HorizontalResolution>600</x:HorizontalResolution>
   <x:VerticalResolution>600</x:VerticalResolution>
  </x:Print>
  <x:Selected/>
  <x:TopRowVisible>21</x:TopRowVisible>
  <x:Panes>
   <x:Pane>
    <x:Number>3</x:Number>
    <x:RangeSelection>$A$1:$G$35</x:RangeSelection>
   </x:Pane>
  </x:Panes>
  <x:ProtectContents>False</x:ProtectContents>
  <x:ProtectObjects>False</x:ProtectObjects>
  <x:ProtectScenarios>False</x:ProtectScenarios>
 </x:WorksheetOptions>
</xml><![endif]-->
</head>

<body link=blue vlink=purple class=xl24>
 <![if supportMisalignedColumns]>
 <tr height=0 style='display:none'>
  <td width=38 style='width:29pt'></td>
  <td width=166 style='width:125pt'></td>
  <td width=136 style='width:102pt'></td>
  <td width=108 style='width:81pt'></td>
  <td width=95 style='width:71pt'></td>
  <td width=98 style='width:74pt'></td>
  <td width=88 style='width:66pt'></td>
  <td width=70 style='width:53pt'></td>
 </tr>
 <![endif]><form id="Form1" method="post" runat="server">
 <table border="0" cellpadding="0" cellspacing="0" style="width: 548pt;
        border-collapse: collapse" width="729" x:str="">
        <col style="width: 29pt; mso-width-source: userset; mso-width-alt: 1216" width="38" />
        <col style="width: 125pt; mso-width-source: userset; mso-width-alt: 5312" width="166" />
        <col style="width: 102pt; mso-width-source: userset; mso-width-alt: 4352" width="136" />
        <col style="width: 81pt; mso-width-source: userset; mso-width-alt: 3456" width="108" />
        <col style="width: 71pt; mso-width-source: userset; mso-width-alt: 3040" width="95" />
        <col style="width: 74pt; mso-width-source: userset; mso-width-alt: 3136" width="98" />
        <col style="width: 66pt; mso-width-source: userset; mso-width-alt: 2816" width="88" />
        <tr height="30" style="height: 22.5pt; mso-height-source: userset">
            <td class="xl40" colspan="6" height="30" style="border-right: #dcd9a6; border-top: #dcd9a6;
                border-left: #dcd9a6; width: 482pt; border-bottom: windowtext 0.5pt solid; height: 22.5pt;
                background-color: transparent" width="641">
                <strong><span style="font-size: 18pt">研究员职称评审量化评分标准</span></strong></td>
            <td class="xl32" style="border-right: #dcd9a6; border-top: #dcd9a6; font-weight: bold;
                font-size: 18pt; border-left: #dcd9a6; width: 66pt; border-bottom: #dcd9a6; background-color: transparent"
                width="88">
            </td>
        </tr>
        <tr height="19" style="font-weight: bold; font-size: 18pt; height: 14.25pt; mso-height-source: userset">
            <td class="xl24" height="396" rowspan="14" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 297pt; background-color: transparent" width="38">
                <span style="font-size: 10pt">项目任务</span></td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;">
                内容</td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent">
            </td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;">
                负责人</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;">
                主要参加者</td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent">
            </td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                font-size: 10pt; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;">
                计分</td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl45" height="64" rowspan="4" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: black 0.5pt solid;
                height: 48pt; background-color: transparent" width="166">
                1.国家级科技项目(国家自然科学基金、科技部4类科技计划、发改委和财政部的科技专项等)</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent; height: 12pt;">
                重大项目</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent; height: 12pt;"
                x:num="2.5">
                2.5 
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent; height: 12pt;"
                x:num="0.5">
                0.3
            </td>
            <td class="xl41" rowspan="9" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: black 0.5pt solid;
                background-color: transparent" width="98">
                以每个项目为单位单独计分</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent" align="center" rowspan="9">
                <asp:Label ID="lbl1_1" runat="server"></asp:Label></td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl26" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                background-color: transparent">
                一级课题（重点项目）</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1.5">
                1.5
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.5">
                0.3
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl26" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                background-color: transparent">
                二级课题（面上项目）</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1">
                1.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.5">
                0.3
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl26" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                background-color: transparent">
                三级课题</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.8">
                0.8
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.5">
                0.3
            </td>
        </tr>
        <tr height="23" style="font-size: 10pt; height: 17.25pt; mso-height-source: userset">
            <td class="xl45" height="69" rowspan="3" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: #dcd9a6;
                height: 51.75pt; background-color: transparent" width="166">
                2.省部级科技项目（地震行业科研专项、中国地震局及其他部委、各省、直辖市设立的项目）</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                重点项目</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1">
                1.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.2">
                0.2
            </td>
        </tr>
        <tr height="23" style="font-size: 10pt; height: 17.25pt; mso-height-source: userset">
            <td class="xl26" height="23" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 17.25pt;
                background-color: transparent">
                一级课题（面上项目）</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.8">
                0.8
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.2">
                0.2
            </td>
        </tr>
        <tr height="23" style="font-size: 10pt; height: 17.25pt; mso-height-source: userset">
            <td class="xl26" height="23" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 17.25pt;
                background-color: transparent">
                二级课题</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.5">
                0.5
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.2">
                0.2
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl27" height="32" rowspan="2" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext 0.5pt solid; border-left: windowtext 0.5pt solid; width: 125pt;
                border-bottom: windowtext 0.5pt solid; height: 24pt; background-color: transparent"
                width="166">
                3.所（省局）级重点科技项目</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                重点项目</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.3">
                0.5
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                0.1</td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl26" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                background-color: transparent">
                面上项目</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.2">
                0.3
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                0.1</td>
        </tr>
        <tr height="66" style="font-size: 10pt; height: 49.5pt; mso-height-source: userset">
            <td class="xl48" height="174" rowspan="3" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: black 0.5pt solid;
                height: 130.5pt; background-color: transparent" width="166">
                4.负责某方面技术工作</td>
            <td class="xl28" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 102pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="136">
                全面主持强破坏性地震现场的考察、监测预报、震害评估、应急救援等工作</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.8">
                0.8
            </td>
            <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 71pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="95">
            </td>
            <td class="xl42" rowspan="3" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; border-bottom: black 0.5pt solid; background-color: transparent">
                不累加计分</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent; text-align: center;" rowspan="3">
                <asp:Label ID="lbl1_2" runat="server"></asp:Label></td>
        </tr>
        <tr height="55" style="font-size: 10pt; height: 41.25pt; mso-height-source: userset">
            <td class="xl28" height="55" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 102pt; border-bottom: windowtext 0.5pt solid;
                height: 41.25pt; background-color: transparent" width="136">
                主持所（省局）级综合震情监测和分析预报工作</td>
            <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 81pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="108" x:num="0.5">
                0.5
            </td>
            <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 71pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="95">
            </td>
        </tr>
        <tr height="53" style="font-size: 10pt; height: 39.75pt; mso-height-source: userset">
            <td class="xl28" height="53" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 102pt; border-bottom: windowtext 0.5pt solid;
                height: 39.75pt; background-color: transparent" width="136">
                负责所（省局）级学科方法震情监测和分析预报工作</td>
            <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 81pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="108" x:num="0.3">
                0.3
            </td>
            <td class="xl30" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 71pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="95">
            </td>
        </tr>
        <tr height="38" style="font-size: 10pt; height: 28.5pt; mso-height-source: userset">
            <td class="xl27" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                height: 28.5pt; background-color: transparent" width="166">
                5.研究生培养</td>
            <td class="xl38" colspan="3" style="border-right: #dcd9a6; border-top: windowtext 0.5pt solid;
                border-left: windowtext; width: 254pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="339">
                培养硕士研究生或协助培养博士研究生1名（已毕业）以上，得1.0分</td>
            <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="98">
                不累加计分</td>
            <td class="xl27" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 66pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;" width="88">
                <asp:Label ID="lbl1_3" runat="server"></asp:Label></td>
        </tr>
        <tr height="38" style="font-size: 10pt; height: 28.5pt; mso-height-source: userset">
            <td class="xl31" height="38" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 28.5pt; background-color: transparent" width="38">
                <strong>计分<br />
                    方法</strong></td>
            <td class="xl35" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                font-weight: bold; border-left: windowtext; width: 453pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="603">
                最后取第1条至第5条中最高的5项得分之和为“承担项目和任务”的得分</td>
            <td class="xl52" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-weight: bold; border-left: windowtext; width: 66pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;" width="88">
                <asp:Label ID="lbl1_total" runat="server"></asp:Label></td>
        </tr>
        <tr height="17" style="font-weight: bold; font-size: 10pt; height: 12.75pt; mso-height-source: userset">
            <td class="xl24" height="171" rowspan="7" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 128.25pt; background-color: transparent" width="38">
                论著报告</td>
            <td class="xl27" rowspan="5" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="166">
                1.论文在期刊上发表</td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
            </td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                第一作者</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                非第一作者</td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
            </td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
            </td>
        </tr>
        <tr height="17" style="font-size: 10pt; height: 12.75pt; mso-height-source: userset">
            <td class="xl26" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                background-color: transparent">
                SCI收录期刊</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1">
                1.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.1">
                0.1
            </td>
            <td class="xl41" rowspan="6" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 74pt; border-bottom: black 0.5pt solid;
                background-color: transparent" width="98">
                以每篇论文、每部著作为单位单独计分</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent" align="center" rowspan="6">
                <asp:Label ID="lbl2_1" runat="server"></asp:Label></td>
        </tr>
        <tr height="17" style="font-size: 10pt; height: 12.75pt; mso-height-source: userset">
            <td class="xl26" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                background-color: transparent">
                EI收录期刊</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.7">
                0.7 
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.1">
                0.1
            </td>
        </tr>
        <tr height="17" style="font-size: 10pt; height: 12.75pt; mso-height-source: userset">
            <td class="xl26" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                background-color: transparent">
                核心期刊</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.5">
                0.5
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.1">
                0.1
            </td>
        </tr>
        <tr height="17" style="font-size: 10pt; height: 12.75pt; mso-height-source: userset">
            <td class="xl26" height="17" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12.75pt;
                background-color: transparent">
                一般期刊</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.2">
                0.2
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.1">
                0.1
            </td>
        </tr>
        <tr height="51" style="font-size: 10pt; height: 38.25pt; mso-height-source: userset">
            <td class="xl27" height="51" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                height: 38.25pt; background-color: transparent" width="166">
                2.论文在国际学术会议文集上发表</td>
            <td class="xl38" colspan="3" style="border-right: #dcd9a6; border-top: windowtext 0.5pt solid;
                border-left: windowtext; width: 254pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="339">
                第１作者得0.2分，其中被ISTP收录加0.3,非第１作者得0.1分。在国际学术机构组织的会议上宣读的特邀或主题报告第１作者得0.7分。</td>
        </tr>
        <tr height="35" style="font-size: 10pt; height: 26.25pt; mso-height-source: userset">
            <td class="xl27" height="35" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                height: 26.25pt; background-color: transparent" width="166">
                3.撰写出版20万字以上专著</td>
            <td class="xl38" colspan="3" style="border-right: #dcd9a6; border-top: windowtext 0.5pt solid;
                border-left: windowtext; width: 254pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="339">
                第1作者得0.8分，主要合作者得0.4分（各类论文集、工程报告、资料汇编、志述等不按专著对待）</td>
        </tr>
        <tr height="35" style="font-size: 10pt; height: 26.25pt; mso-height-source: userset">
            <td class="xl31" height="35" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 26.25pt; background-color: transparent" width="38">
                <strong>计分<br />
                    方法</strong></td>
            <td class="xl35" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                font-weight: bold; border-left: windowtext; width: 453pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="603">
                取第1条至第3条中最高的5项得分之和为“论著报告”的得分</td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-weight: bold; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; text-align: center;">
                <asp:Label ID="lbl2_total" runat="server"></asp:Label></td>
        </tr>
        <tr height="32" style="font-size: 10pt; height: 24pt">
            <td class="xl24" height="220" rowspan="10" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 165pt; background-color: transparent" width="38">
                业绩成果</td>
            <td class="xl27" rowspan="4" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="166">
                1.获得国家级科技奖</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                奖励等级</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                第一完成人</td>
            <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 71pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="95">
                前三分之一<br />
    完成人</td>
            <td class="xl24" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 74pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="98">
                其他<br />
    主要完成人</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent; text-align: center;" rowspan="9">
                <asp:Label ID="lbl3_1" runat="server"></asp:Label></td>
        </tr>
        <tr height="19" style="font-size: 10pt; height: 14.25pt; mso-height-source: userset">
            <td class="xl26" height="19" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 14.25pt;
                background-color: transparent">
                一等奖</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="5">
                5.0 
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="3">
                3.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="2">
                2.0
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl26" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                background-color: transparent">
                二等奖</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="3">
                3.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1.5">
                1.5
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1">
                1.0
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl24" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 102pt; border-bottom: windowtext 0.5pt solid;
                height: 12pt; background-color: transparent" width="136">
                三等奖</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="2">
                2.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1">
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.6">
                0.6
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl27" height="48" rowspan="3" style="border-right: windowtext 0.5pt solid;
                border-top: windowtext; border-left: windowtext 0.5pt solid; width: 125pt; border-bottom: windowtext 0.5pt solid;
                height: 36pt; background-color: transparent" width="166">
                2.获得省、部级科技奖(含中国地震局防震减灾优秀成果奖)</td>
            <td class="xl26" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                一等奖</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="2">
                2.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1.2">
                1.2 
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.8">
                0.8
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl26" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 12pt;
                background-color: transparent">
                二等奖</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1.5">
                1.5
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.8">
                0.8
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.5">
                0.5
            </td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl24" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 102pt; border-bottom: windowtext 0.5pt solid;
                height: 12pt; background-color: transparent" width="136">
                三等奖</td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="1">
                1.0
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.6">
            </td>
            <td class="xl29" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent"
                x:num="0.3">
                0.3
            </td>
        </tr>
        <tr height="37" style="font-size: 10pt; height: 27.75pt; mso-height-source: userset">
            <td class="xl27" height="37" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                height: 27.75pt; background-color: transparent" width="166">
                3.获得其他奖励</td>
            <td class="xl28" colspan="4" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                border-left: windowtext; width: 328pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="437">
                国家级个人科技奖获得者可得1.5分，国家一级学会优秀论文奖第1作者可得0.8分</td>
        </tr>
        <tr height="16" style="font-size: 10pt; height: 12pt">
            <td class="xl27" height="16" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; width: 125pt; border-bottom: windowtext 0.5pt solid;
                height: 12pt; background-color: transparent" width="166">
                4.获得国家专利</td>
            <td class="xl51" colspan="4" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent">
                作为第一申请人获得国家发明专利1.0分，实用新型专利0.5分。</td>
        </tr>
        <tr height="36" style="font-size: 10pt; height: 27pt; mso-height-source: userset">
            <td class="xl25" height="36" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; height: 27pt;
                background-color: transparent">
                5.引用情况</td>
            <td class="xl28" colspan="4" style="border-right: windowtext 0.5pt solid; border-top: windowtext 0.5pt solid;
                border-left: windowtext; width: 328pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent" width="437">
                以第1作者（含通讯作者）发表的论著被他人引用5次，得0.5分，多引用一次加0.1分，最高可得1.5分。</td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext; border-bottom: windowtext 0.5pt solid; background-color: transparent; text-align: center;">
                <asp:Label ID="lbl3_2" runat="server"></asp:Label></td>
        </tr>
     <tr>
         <td class="xl31" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 26pt; background-color: transparent" width="38">
             <strong><span style="font-size: 9pt">计分<br />
                 方法</span></strong></td>
         <td class="xl35" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                font-weight: bold; border-left: windowtext; width: 453pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; height: 26pt;" width="603">
             <span style="font-size: 9pt">以上第1条至第4条每项（次）单独计分，同一项目获奖不得重复计分。最后取第1条至第5条中最高的5项得分之和为“业绩成果”的得分</span></td>
         <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-weight: bold; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; height: 26pt; text-align: center;">
             <asp:Label ID="lbl3_total" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
     </tr>
        <tr height="35" style="font-size: 10pt; height: 26.25pt; mso-height-source: userset">
            <td class="xl31" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; width: 29pt; border-bottom: windowtext 0.5pt solid;
                height: 26pt; background-color: transparent" width="38">
                <strong>总计</strong></td>
            <td class="xl35" colspan="5" style="border-right: black 0.5pt solid; border-top: windowtext 0.5pt solid;
                font-weight: bold; border-left: windowtext; width: 453pt; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; height: 26pt;" width="603">
                </td>
            <td class="xl25" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                font-weight: bold; border-left: windowtext; border-bottom: windowtext 0.5pt solid;
                background-color: transparent; height: 26pt; text-align: center;">
                <asp:Label ID="lbl_sum" runat="server"></asp:Label></td>
        </tr>
    </table><table border="0" cellpadding="0" cellspacing="0" style="width: 548pt;
        border-collapse: collapse" width="729" x:str="">
        <tr>
            <td class="xl31" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid;
                height: 26pt; background-color: transparent" colspan="7">
                <strong></strong><span style="font-size: 9pt">如果您对以上评分有异议，请在下面文本框中填入理由！</span> &nbsp;
            </td>
        </tr>
        <tr>
            <td class="xl31" style="border-right: windowtext 0.5pt solid; border-top: windowtext;
                border-left: windowtext 0.5pt solid; border-bottom: windowtext 0.5pt solid;
                height: 26pt; background-color: transparent" colspan="7">
                <strong></strong>
                <asp:TextBox ID="tbx_Reason" runat="server" Height="130px" TextMode="MultiLine" Width="615px" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td class="xl31" style="width: 29pt;
                height: 26pt; background-color: transparent; border-left-width: 0.5pt; border-left-color: windowtext; border-bottom-width: 0.5pt; border-bottom-color: windowtext; border-top-style: none; border-top-color: windowtext; border-right-width: 0.5pt; border-right-color: windowtext;" width="38">
                <strong></strong>
            </td>
            <td class="xl35" colspan="5" style="width: 444pt;
                background-color: transparent; height: 26pt; border-left-width: 0.5pt; border-left-color: windowtext; border-bottom-width: 0.5pt; border-bottom-color: windowtext; border-top-style: none; border-top-color: windowtext; border-right-width: 0.5pt; border-right-color: windowtext;">
                <asp:Button ID="btn_Save" runat="server" Font-Names="宋体" Font-Size="9pt" Text="确定"
                    Width="72px" Height="24px" OnClick="btn_Save_Click" /></td>
            <td class="xl25" style="background-color: transparent; height: 26pt; border-left-width: 0.5pt; border-left-color: windowtext; border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 29pt; border-top-style: none; border-top-color: windowtext; border-right-width: 0.5pt; border-right-color: windowtext;" valign="middle">
                <input id="btnClose" class="Noprint" name="btnClose" onclick="javascript:window.history.go(-1);"
                    style="font-size: 9pt; width: 70px; font-family: 宋体; height: 24px" type="button"
                    value="返回" /></td>
        </tr>
        <tr>
            <td class="xl31" style="width: 29pt;
                height: 26pt; background-color: transparent; border-left-width: 0.5pt; border-left-color: windowtext; border-bottom-width: 0.5pt; border-bottom-color: windowtext; border-top-style: none; border-top-color: windowtext; border-right-width: 0.5pt; border-right-color: windowtext;" width="38">
                <strong></strong>
            </td>
            <td class="xl35" colspan="5" style="width: 444pt;
                background-color: transparent; height: 26pt; border-left-width: 0.5pt; border-left-color: windowtext; border-bottom-width: 0.5pt; border-bottom-color: windowtext; border-top-style: none; border-top-color: windowtext; border-right-width: 0.5pt; border-right-color: windowtext;">
            </td>
            <td class="xl25" style="background-color: transparent; height: 26pt; border-left-width: 0.5pt; border-left-color: windowtext; border-bottom-width: 0.5pt; border-bottom-color: windowtext; width: 29pt; border-top-style: none; border-top-color: windowtext; border-right-width: 0.5pt; border-right-color: windowtext;">
                &nbsp;&nbsp;
            </td>
        </tr>
    </table>
</form>
</body>

</html>

