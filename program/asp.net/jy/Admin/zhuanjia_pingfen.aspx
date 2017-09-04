<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zhuanjia_pingfen.aspx.cs" Inherits="Admin_zhuanjia_pingfen" %>
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
                            正高级专业技术职务同行专家网上评审<asp:Label ID="lbl_cpry_sfzh" runat="server"></asp:Label><span style="font-size: 16pt;
                                color: #000000; font-family: 黑体; mso-font-kerning: 1.0pt; mso-bidi-font-family: 'Times New Roman';
                                mso-hansi-font-family: 'Times New Roman'; mso-ansi-language: EN-US; mso-fareast-language: ZH-CN;
                                mso-bidi-language: AR-SA"></span></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30" style="width: 774px; text-align: left;">
                            申请人姓名：<asp:Label ID="lbl_xm" runat="server" Width="82px" ForeColor="Red"></asp:Label>
                            <table style="width: 625px; height: 19px; border-right: black 1px solid; border-top: black 1px solid; border-left: black 1px solid; border-bottom: black 1px solid; text-align: left;" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 102px; text-align: center; height: 21px;">
                                        <asp:Label ID="Label6" runat="server" Text="评价要素" Width="50px"></asp:Label></td>
                                    <td colspan="3" style="height: 21px; text-align: center;">
                                        <asp:Label ID="Label13" runat="server" Text="专家评价" Width="54px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="width: 67px; text-align: left; border-right: black 0px solid; border-top: black 0px solid; border-left: black 0px solid; border-bottom: black 0px solid; height: 41px;">
                                        <asp:Label ID="Label8" runat="server" Text="1.代表性成果的水平和价值" Width="160px"></asp:Label></td>
                                    <td style="width: 39px; text-align: center; border-right: black 0px solid; border-top: black 0px solid; border-left: black 0px solid; border-bottom: black 0px solid; height: 41px;">
                                        很低</td>
                                    <td style="border-right: black 0px solid; border-top: black 0px solid; border-left: black 0px solid; width: 347px; border-bottom: black 0px solid; height: 41px; text-align: left">
                                        <asp:RadioButtonList
                            ID="rbtnlist_1" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="346px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Selected="True">5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td style="width: 67px; text-align: left; border-right: black 0px solid; border-top: black 0px solid; border-left: black 0px solid; border-bottom: black 0px solid; height: 41px;">
                                        很高</td>
                                </tr>
                                <tr>
                                    <td style="width: 102px; text-align: left; height: 18px;">
                                        <asp:Label ID="Label9" runat="server" Text="2.所取得的科研和工作业绩" Width="154px"></asp:Label></td>
                                    <td style="width: 39px; height: 18px; text-align: center">
                                        一般</td>
                                    <td style="height: 18px; width: 347px;">
                                        <asp:RadioButtonList
                            ID="rbtnlist_2" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="346px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Selected="True">5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td style="width: 100px; height: 18px; text-align: left">
                                        突出</td>
                                </tr>
                                <tr>
                                    <td style="width: 102px; text-align: left; height: 21px;">
                                        <asp:Label ID="Label10" runat="server" Text="3.科研和工作能力与素质" Width="146px"></asp:Label></td>
                                    <td style="width: 39px; height: 21px; text-align: center">
                                        很弱</td>
                                    <td style="height: 21px; width: 347px;">
                                        <asp:RadioButtonList
                            ID="rbtnlist_3" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="346px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Selected="True">5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td style="width: 100px; height: 21px; text-align: left">
                                        很强</td>
                                </tr>
                                <tr>
                                    <td style="width: 102px; text-align: left">
                                        <asp:Label ID="Label11" runat="server" Text="4.在所从事领域中的地位" Width="132px"></asp:Label></td>
                                    <td style="width: 39px; text-align: center">
                                        较低</td>
                                    <td style="width: 347px">
                                        <asp:RadioButtonList
                            ID="rbtnlist_4" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="346px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Selected="True">5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td style="width: 100px; text-align: left">
                                        很高</td>
                                </tr>
                                <tr>
                                    <td style="width: 102px; text-align: left; height: 21px;">
                                        5.学风和工作作风</td>
                                    <td style="width: 39px; height: 21px; text-align: center">
                                        不好</td>
                                    <td style="height: 21px; width: 347px;">
                                        <asp:RadioButtonList
                            ID="rbtnlist_5" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="346px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Selected="True">5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td style="width: 100px; height: 21px; text-align: left">
                                        很好</td>
                                </tr>
                                <tr>
                                    <td style="width: 102px; text-align: left; height: 21px;">
                                        <asp:Label ID="Label15" runat="server" Text="6.学术组织和团队领导能力" Width="160px"></asp:Label></td>
                                    <td style="width: 39px; height: 21px; text-align: center">
                                        较弱</td>
                                    <td style="height: 21px; width: 347px;">
                                        <asp:RadioButtonList
                            ID="rbtnlist_6" runat="server" Height="18px" RepeatColumns="9" RepeatDirection="Horizontal" Width="346px" AutoPostBack="True" OnSelectedIndexChanged="rbtnlist_1_SelectedIndexChanged">
                                            <asp:ListItem>1</asp:ListItem>
                                            <asp:ListItem>2</asp:ListItem>
                                            <asp:ListItem>3</asp:ListItem>
                                            <asp:ListItem>4</asp:ListItem>
                                            <asp:ListItem Selected="True">5</asp:ListItem>
                                            <asp:ListItem>6</asp:ListItem>
                                            <asp:ListItem>7</asp:ListItem>
                                            <asp:ListItem>8</asp:ListItem>
                                            <asp:ListItem>9</asp:ListItem>
                                        </asp:RadioButtonList></td>
                                    <td style="width: 100px; height: 21px; text-align: left">
                                        很强</td>
                                </tr>
                                <tr>
                                    <td style="width: 102px; text-align: right; height: 21px;">
                                        <asp:Label ID="Label12" runat="server" Text="合计" Width="62px"></asp:Label></td>
                                    <td style="width: 39px; height: 21px; text-align: center">
                                        /</td>
                                    <td style="height: 21px; text-align: center; width: 347px;">
                                        <asp:Label ID="lbl_sum" runat="server" Width="70px"></asp:Label></td>
                                    <td style="width: 100px; height: 21px; text-align: left">
                                        &nbsp;&nbsp;
                                        /</td>
                                </tr>
                            </table>
                            <table style="width: 767px; height: 19px" cellpadding="0" cellspacing="0">
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
                                        </td>
                                </tr>
                            </table>
                            <table style="width: 767px; height: 19px" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td style="width: 102px; text-align: right; height: 21px;">
                                    </td>
                                    <td colspan="2" style="height: 21px; text-align: left">
                                        </td>
                                    <td style="width: 100px; height: 21px; text-align: center">
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="4" style="height: 21px; text-align: left">
                                        <asp:Label ID="Label20" runat="server" Text="请评审专家对申请人作出简要评价（限150字以内）：" Width="286px"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td style="text-align: left; height: 21px;" colspan="4">
                                        <ftb:freetextbox id="ftb_content" runat="server" autoconfigure="EnableAll" buttonpath="../images/ftb/officexp/"
                                            height="200px" helperfilespath="../HelperScripts/" imagegallerypath="upfiles"
                                            width="660px" ButtonSet="OfficeXP" EnableHtmlMode="False" EnableToolbars="False"></ftb:freetextbox>
                                    </td>
                                </tr>
                            </table>
                            &nbsp;&nbsp;
                            <asp:Button ID="btn_commit" runat="server" OnClick="btn_commit_Click" Text="保存" />&nbsp;
                            <asp:Button ID="btn_printpreview" runat="server" OnClick="btn_printpreview_Click"
                                Text="打印预览" />
                            &nbsp;<asp:Button ID="btn_back" runat="server" OnClick="btn_back_Click" Text="返回" /><br />
                            <br />
                        </TD>
					</tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>


