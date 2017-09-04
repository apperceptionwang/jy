<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuanjia_pingfen_bslw.aspx.cs" Inherits="Admin_zhuanjia_pingfen_bslw" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>用户管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa; width: 774px;"
							align="left" height="25">
                            优秀学位论文专家网上评审<asp:Label ID="lbl_cpry_sfzh" runat="server"></asp:Label><span style="font-size: 16pt;
                                color: #000000; font-family: 黑体; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                mso-hansi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                mso-bidi-language: AR-SA"></span></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30" style="width: 774px; text-align: left;">
                            申请人姓名：<asp:Label ID="lbl_xm" runat="server" Width="82px" ForeColor="Red"></asp:Label>
                            <table style="width: 767px; height: 19px" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="text-align: center; height: 21px;" colspan="5">
                                        <span style="font-size: 16pt; font-family: 黑体">中国地震局优秀博士学位论文专家评审评价表</span></td>
                                </tr>
                                <tr>
                                    <td style="width: 47px; text-align: left; height: 21px;">
                                        <span style="font-size: 10pt"></span></td>
                                    <td colspan="2" style="height: 21px; text-align: left; width: 133px;">
                                            论文题目：</td>
                                    <td style="width: 100px; height: 21px; text-align: left">
                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                        作者姓名：</span></td>
                                    <td style="width: 100px; height: 21px; text-align: left">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="5" style="height: 21px; text-align: left">
                                        &nbsp;
                                        <table border="1" cellpadding="0" cellspacing="0" class="MsoTableGrid" style="border-right: medium none;
                                            border-top: medium none; margin: auto auto auto 5.4pt; border-left: medium none;
                                            width: 702pt; border-bottom: medium none; border-collapse: collapse; mso-border-alt: solid windowtext .5pt;
                                            mso-yfti-tbllook: 480; mso-padding-alt: 0cm 5.4pt 0cm 5.4pt; mso-border-insideh: .5pt solid windowtext;
                                            mso-border-insidev: .5pt solid windowtext" width="936">
                                            <tr style="mso-yfti-irow: 0; mso-yfti-firstrow: yes">
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                    width: 101.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt" valign="top" width="135">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 黑体; mso-hansi-font-family: 'Times New Roman'"><span style="font-size: 10pt">
                                                            一级指标<span lang="EN-US"><?xml namespace="" ns="urn:schemas-microsoft-com:office:office"
                                                                prefix="o" ?></span></span></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                    padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm; border-left: #f0f0f0;
                                                    width: 177.9pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt"
                                                    valign="top" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 黑体; mso-hansi-font-family: 'Times New Roman'">二级指标<span
                                                            lang="EN-US"></span></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                    padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm; border-left: #f0f0f0;
                                                    width: 360pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt"
                                                    valign="top" width="480">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 黑体; mso-hansi-font-family: 'Times New Roman'">评价要素<span
                                                            lang="EN-US"></span></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: windowtext 1pt solid;
                                                    padding-left: 5.4pt; font-size: 10pt; padding-bottom: 0cm; border-left: #f0f0f0;
                                                    width: 63pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt"
                                                    width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 黑体; mso-hansi-font-family: 'Times New Roman'">评判分数<span
                                                            lang="EN-US"></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; mso-yfti-irow: 1">
                                                <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                    width: 101.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="135">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            选题与综述</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US" style="font-family: Times New Roman">20</span><span
                                                                style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">分）</span><span
                                                                    lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文选题的理论意义或实用价值</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US" style="font-family: Times New Roman">12</span><span
                                                                style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">分）</span><span
                                                                    lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            选题为本学科前沿，具有开创性，有重要的理论意义或现实意义</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <a name="zb1"></a>
                                                        <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                            Rows="1">
                                                            <asp:ListItem>0</asp:ListItem>
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
                                                            <asp:ListItem>11</asp:ListItem>
                                                            <asp:ListItem>12</asp:ListItem>
                                                        </asp:ListBox><span lang="EN-US"><span style="font-family: Times New Roman; mso-spacerun: yes"></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; mso-yfti-irow: 2">
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            对本学科及相关领域的综述与总结（满分</span><span lang="EN-US">8</span><span style="font-family: 宋体;
                                                                mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">分）</span><span
                                                                    lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            比较综合、全面地反映该学科及相关领域的发展和新成果，归纳总结正确</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <a name="zb2"></a>
                                                        <asp:ListBox ID="ListBox2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                            Rows="1" Width="42px">
                                                            <asp:ListItem>0</asp:ListItem>
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                            <asp:ListItem>6</asp:ListItem>
                                                            <asp:ListItem>7</asp:ListItem>
                                                            <asp:ListItem>8</asp:ListItem>
                                                        </asp:ListBox><span lang="EN-US"><span style="mso-spacerun: yes"></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; height: 31pt; mso-yfti-irow: 3">
                                                <td rowspan="2" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                    width: 101.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt;
                                                    background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="135">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文成果的创新性</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-indent: 10.5pt;
                                                        text-align: center; mso-char-indent-count: 1.0">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US">60</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文在理论或方法上的创新性</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US">36</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            理论或方法有创新，对该学科的科学研究有重要作用</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                    mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <a name="zb3"></a>
                                                        <asp:ListBox ID="ListBox3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                            Rows="1">
                                                            <asp:ListItem>0</asp:ListItem>
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
                                                            <asp:ListItem>11</asp:ListItem>
                                                            <asp:ListItem>12</asp:ListItem>
                                                            <asp:ListItem>13</asp:ListItem>
                                                            <asp:ListItem>14</asp:ListItem>
                                                            <asp:ListItem>15</asp:ListItem>
                                                            <asp:ListItem>16</asp:ListItem>
                                                            <asp:ListItem>17</asp:ListItem>
                                                            <asp:ListItem>18</asp:ListItem>
                                                            <asp:ListItem>19</asp:ListItem>
                                                            <asp:ListItem>20</asp:ListItem>
                                                            <asp:ListItem>21</asp:ListItem>
                                                            <asp:ListItem>22</asp:ListItem>
                                                            <asp:ListItem>23</asp:ListItem>
                                                            <asp:ListItem>24</asp:ListItem>
                                                            <asp:ListItem>25</asp:ListItem>
                                                            <asp:ListItem>26</asp:ListItem>
                                                            <asp:ListItem>27</asp:ListItem>
                                                            <asp:ListItem>28</asp:ListItem>
                                                            <asp:ListItem>29</asp:ListItem>
                                                            <asp:ListItem>30</asp:ListItem>
                                                            <asp:ListItem>31</asp:ListItem>
                                                            <asp:ListItem>32</asp:ListItem>
                                                            <asp:ListItem>33</asp:ListItem>
                                                            <asp:ListItem>34</asp:ListItem>
                                                            <asp:ListItem>35</asp:ListItem>
                                                            <asp:ListItem>36</asp:ListItem>
                                                        </asp:ListBox><span lang="EN-US"><span style="mso-spacerun: yes"></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; height: 31pt; mso-yfti-irow: 4">
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文成果（满分</span><span lang="EN-US">24</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 31pt; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            取得突破性成果，达到国际同类学科的先进水平，具有较好的社会效益或应用前景</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    height: 31pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                    mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span lang="EN-US">
                                                            </span>
                                                        <asp:ListBox ID="ListBox4" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                            Rows="1">
                                                            <asp:ListItem>0</asp:ListItem>
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
                                                            <asp:ListItem>11</asp:ListItem>
                                                            <asp:ListItem>12</asp:ListItem>
                                                            <asp:ListItem>13</asp:ListItem>
                                                            <asp:ListItem>14</asp:ListItem>
                                                            <asp:ListItem>15</asp:ListItem>
                                                            <asp:ListItem>16</asp:ListItem>
                                                            <asp:ListItem>17</asp:ListItem>
                                                            <asp:ListItem>18</asp:ListItem>
                                                            <asp:ListItem>19</asp:ListItem>
                                                            <asp:ListItem>20</asp:ListItem>
                                                            <asp:ListItem>21</asp:ListItem>
                                                            <asp:ListItem>22</asp:ListItem>
                                                            <asp:ListItem>23</asp:ListItem>
                                                            <asp:ListItem>24</asp:ListItem>
                                                        </asp:ListBox>&nbsp;</p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; mso-yfti-irow: 5">
                                                <td rowspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                    width: 101.1pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="135">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文体现的理论基础、专门知识及科研能力</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US">20</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文体现的理论基础与专门知识</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US">8</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文体现本学科及相关领域坚实宽广的理论基础与系统深入的专门知识</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <a name="zb4"></a>
                                                        <asp:ListBox ID="ListBox5" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                            Rows="1">
                                                            <asp:ListItem>0</asp:ListItem>
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                            <asp:ListItem>6</asp:ListItem>
                                                            <asp:ListItem>7</asp:ListItem>
                                                            <asp:ListItem>8</asp:ListItem>
                                                        </asp:ListBox><span lang="EN-US"><span style="mso-spacerun: yes"></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; mso-yfti-irow: 6">
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            论文体现作者独立从事科学研究的能力</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US">8</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            具有很强的独立从事科学研究工作的能力</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <a name="zb5"></a>
                                                        <asp:ListBox ID="ListBox6" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                            Rows="1">
                                                            <asp:ListItem>0</asp:ListItem>
                                                            <asp:ListItem>1</asp:ListItem>
                                                            <asp:ListItem>2</asp:ListItem>
                                                            <asp:ListItem>3</asp:ListItem>
                                                            <asp:ListItem>4</asp:ListItem>
                                                            <asp:ListItem>5</asp:ListItem>
                                                            <asp:ListItem>6</asp:ListItem>
                                                            <asp:ListItem>7</asp:ListItem>
                                                            <asp:ListItem>8</asp:ListItem>
                                                        </asp:ListBox><span lang="EN-US"><span style="mso-spacerun: yes"></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; mso-yfti-irow: 7">
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 177.9pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="237">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            写作与总结提炼能力</span><span lang="EN-US"></span></p>
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            （满分</span><span lang="EN-US">4</span><span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                                mso-ascii-font-family: 'Times New Roman'">分）</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 360pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; background-color: transparent;
                                                    mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="480">
                                                    <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            材料详实，推理严密，文字表达准确，学风严谨</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-left-alt: solid windowtext .5pt;
                                                    mso-border-top-alt: solid windowtext .5pt" width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span lang="EN-US"><span style="mso-spacerun: yes">
                                                            <asp:ListBox ID="ListBox7" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ListBox1_SelectedIndexChanged"
                                                                Rows="1">
                                                                <asp:ListItem>0</asp:ListItem>
                                                                <asp:ListItem>1</asp:ListItem>
                                                                <asp:ListItem>2</asp:ListItem>
                                                                <asp:ListItem>3</asp:ListItem>
                                                                <asp:ListItem>4</asp:ListItem>
                                                            </asp:ListBox></span></span></p>
                                                </td>
                                            </tr>
                                            <tr style="font-size: 10pt; font-family: Times New Roman; height: 34.15pt; mso-yfti-irow: 8;
                                                mso-yfti-lastrow: yes">
                                                <td colspan="3" style="border-right: windowtext 1pt solid; padding-right: 5.4pt;
                                                    border-top: #f0f0f0; padding-left: 5.4pt; padding-bottom: 0cm; border-left: windowtext 1pt solid;
                                                    width: 639pt; padding-top: 0cm; border-bottom: windowtext 1pt solid; height: 34.15pt;
                                                    background-color: transparent; mso-border-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="852">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <span style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                            分数合计</span><span lang="EN-US"></span></p>
                                                </td>
                                                <td style="border-right: windowtext 1pt solid; padding-right: 5.4pt; border-top: #f0f0f0;
                                                    padding-left: 5.4pt; padding-bottom: 0cm; border-left: #f0f0f0; width: 63pt;
                                                    padding-top: 0cm; border-bottom: windowtext 1pt solid; font-family: Times New Roman;
                                                    height: 34.15pt; background-color: transparent; mso-border-alt: solid windowtext .5pt;
                                                    mso-border-left-alt: solid windowtext .5pt; mso-border-top-alt: solid windowtext .5pt"
                                                    width="84">
                                                    <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                                        <a name="total"></a>
                                                        <asp:Label ID="lbl_sum" runat="server"></asp:Label><span lang="EN-US"><span style="mso-spacerun: yes"></span></span></p>
                                                </td>
                                            </tr>
                                        </table>
                                    </td>
                                </tr>
                            </table>
                            <br /><table style="width: 767px; height: 19px" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td colspan="4" style="height: 21px; text-align: center">
                                        <span style="font-size: 18pt; font-family: 黑体"></span></td>
                                </tr>
                                <tr style="font-family: 宋体">
                                    <td colspan="5" style="text-align: left">
                                        <span style="font-size: 18pt; font-family: 黑体"><span style="font-size: 10pt">
                                            <br />
                                            请您对该论文的选题、创新性及水平作出综合评价并指出主要不足之处。（限定200字）</span></span></td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height: 21px; text-align: left">
                                        </td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; height: 21px;" colspan="4">
                                        <ftb:freetextbox id="ftb_content" runat="server" autoconfigure="EnableAll" buttonpath="../images/ftb/officexp/"
                                            height="200px" helperfilespath="../HelperScripts/" imagegallerypath="upfiles"
                                            width="660px" ButtonSet="OfficeXP" EnableHtmlMode="False" EnableToolbars="False"></ftb:freetextbox>
                                    </td>
                                </tr>
                            </table>
                            <table style="width: 767px; height: 19px" cellpadding="0" cellspacing="0" id="TABLE1" runat="server" visible="false">
                                <tr>
                                    <td style="width: 102px; text-align: left; height: 21px;">
                                        <asp:Label ID="Label14" runat="server" Text="推荐意见：" Width="62px" Visible="False"></asp:Label></td>
                                    <td style="width: 67px; height: 21px; text-align: center">
                                        <asp:Label ID="Label22" runat="server" Text="1.是否推荐申请人参加地震正高级专业技术职务任职资格下一轮的评审" Width="638px" Visible="False"></asp:Label></td>
                                    <td style="height: 21px; text-align: center">
                                    </td>
                                    <td style="width: 100px; height: 21px; text-align: center">
                                        <asp:RadioButtonList
                            ID="rbtnlist_tuijian" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="194px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged" Visible="False">
                                            <asp:ListItem Selected="True">同意推荐</asp:ListItem>
                                            <asp:ListItem>不同意推荐</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; height: 21px;" colspan="4">
                                        <p align="center" class="MsoNormal" style="margin: 0cm 0cm 0pt; text-align: center">
                                            <span style="font-size: 16pt; font-family: 黑体; mso-hansi-font-family: 'Times New Roman'">
                                                <span lang="EN-US">
                                                    
                                                </span></span>
                                        </p>
                                        <p class="MsoNormal" style="margin: 0cm 0cm 0pt">
                                            <span style="font-size: 10pt; font-family: 宋体; mso-hansi-font-family: 'Times New Roman';
                                                mso-ascii-font-family: 'Times New Roman'"></span><span style="font-size: 10pt"><span
                                                    style="font-family: 宋体; mso-hansi-font-family: 'Times New Roman'; mso-ascii-font-family: 'Times New Roman'">
                                                </span></span><a name="lwtm"></a><span lang="EN-US"><span style="font-size: 10pt;
                                                    font-family: Times New Roman; mso-spacerun: yes">&nbsp;</span></span><span style="font-size: 14pt"><span
                                                        lang="EN-US" style="mso-bidi-font-size: 12.0pt"><span style="font-family: Times New Roman">
                                                            
                                                        </span></span></span>
                                        </p>
                                        </td>
                                </tr>
                            </table>
                        </TD>
					</tr>
				</table>
			</div>
                            <asp:Button ID="btn_commit" runat="server" OnClick="btn_commit_Click" Text="保存" />&nbsp;
                            <asp:Button ID="btn_printpreview" runat="server" OnClick="btn_printpreview_Click"
                                Text="打印预览" />
                            &nbsp;<asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="返回" /><br />
		</form>
		
	</body>
</HTML>