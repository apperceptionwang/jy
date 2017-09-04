<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zj_Pf3.aspx.cs" Inherits="zj_Pf" %>
<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="ftb" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title></title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style9
            {
                font-size: 16pt;
            }
            .style22
            {
                width: 350px;
            }
            .style23
            {
                width: 868px;
            }
            .style24
            {}
            .style25
            {
                width: 341px;
            }
            .style27
            {
                font-size: large;
            }
            .style28
            {
                width: 341px;
                font-size: medium;
            }
            .style29
            {
                width: 350px;
                font-size: medium;
            }
            .style30
            {
                width: 105px;
                font-size: medium;
            }
            .style31
            {
                font-size: medium;
            }
            .style32
            {
                color: #CC0000;
                font-size: small;
            }
        </style>
	</HEAD>
	<BODY>
		<script language="javascript">
/*
function tb()
{
	if (document.all("tb_body").style.display=="none")
	{
		document.all("tb_body").style.display="inline";
	}
	else
	{
		document.all("tb_body").style.display="none";
	}
}

function tourl(form1_url){
    location=form1_url;
    for(var i=0;i<document.form1.elements.length;i++){
        document.form1.elements[i].options[0].selected=true
    }
}
*/
		</script>
		<form id="Form1" method="post" runat="server">
			<table class="tableBorder" id="table2" height="127" cellSpacing="1" cellPadding="3" align="center"
				border="0">
				<tr>
					<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
						align="left" height="25">
						<p align="center" class="style9">防灾科技学院教研项目立项评审参照标准</p>
					</th>
				</tr>
				<tr id="tb_body">
					<td class="forumRowHighlight" height="12">
						<table cellSpacing="0" cellPadding="3" border="0" class="style23">
							<tr>
								<td class="style27" colspan="2" align="center" 
                                    style="border: 1px solid #0000FF; text-align: right;">课题名称：</td>
								<td style="border: 1px solid #0000FF; text-align: left;" class="style27" colspan="5" 
                                    align="center">
									
									<asp:Label ID="lbl_ktmc" runat="server" ForeColor="Red"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style27" colspan="2" align="center" 
                                    style="border: 1px solid #0000FF; text-align: right;">负责人：</td>
								<td style="border: 1px solid #0000FF; text-align: left;" class="style27" colspan="5" 
                                    align="center">
									
									<asp:Label ID="lbl_sqr" runat="server" ForeColor="Red"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style27" colspan="2" rowspan="2" align="center" 
                                    style="border: 1px solid #0000FF;"><strong>评价内容</strong></td>
								<td style="border: 1px solid #0000FF;" class="style27" colspan="5" 
                                    align="center">
									
									<strong>评定标准与等级</strong></td>
							</tr>
							<tr>
								<td style="border: 1px solid #0000FF;" class="style28" align="center" 
                                    colspan="4">
									
									<strong>A等</strong></td>
								<td style="border: 1px solid #0000FF;" class="style29" align="center">
									
									<strong>C等</strong></td>
							</tr>
							<tr>
								<td class="style24" rowspan="4" align="center" 
                                    style="border: 1px solid #0000FF;"><strong><span class="style27">课<br />
                                    题<br />
                                    内<br />
                                    容</span></strong></td>
								<td style="border: 1px solid #0000FF;" class="style30" align="center">
									
									<strong>选题意义（20分）</strong></td>
								<td style="border: 1px solid #0000FF;" class="style25" colspan="4">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．选题方向符合研究实际，体现教学改革精神；<br />
                                        </span><span lang="EN-US">2</span><span>．有鲜明特色和重大创新； </span><span lang="EN-US">
                                        <br />
                                        3</span><span>．研究价值高；<br />
                                        </span><span lang="EN-US">4</span><span>．对提高教学质量和管理水平实用价值高。</span></p>
									
								</td>
								<td style="border: 1px solid #0000FF;" class="style22">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．选题方向基本符合研究实际，一定程度上体现教学改革精神；</span><span 
                                            lang="EN-US"><br />
                                        2</span><span>．有一定特色和创新；</span><span lang="EN-US"><br />
                                        3</span><span>．有一定研究价值；<br />
                                        </span><span lang="EN-US">4</span><span>．对提高教学质量和管理水平有一定实用价值。</span></p>
									
								</td>
							</tr>
							<tr>
								<td style="border: 1px solid #0000FF;" class="style30" align="center">
									
									<strong>研究条件（20分）</strong></td>
								<td style="border: 1px solid #0000FF;" class="style25" colspan="4">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．项目组熟悉国内外研究现状，所列参考文献具有代表性；<br />
                                        <span lang="EN-US">2</span>．队伍结构合理，分工科学；<span lang="EN-US"><o:p></o:p></span><br />
                                        <span lang="EN-US">3</span>．负责人和主要成员研究经历丰富，研究能力强；<span 
                                            lang="EN-US"><o:p></o:p></span><br />
                                        </span><span 
                                            lang="EN-US"><o:p>4<span>．资料设备齐全，研究手段先进。</span></o:p></span></p>
                                </td>
								<td style="border: 1px solid #0000FF;" class="style22">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．项目组对研究现状有所了解，所列参考文献有一定代表性；</span><span 
                                            lang="EN-US"><o:p><br />
                                        2<span>．队伍结构及人员分工基本合理；</span><br />
                                        3<span>．负责人和主要成员有一定研究经历和一定的研究水平；</span><o:p></o:p><br />
                                        4<span>．资料设备基本齐全，研究手段一般。</span></o:p></span></p>
                                    </td>
							</tr>
							<tr>
								<td style="border: 1px solid #0000FF;" class="style30" align="center">
									
									<strong>目标任务（30分）</strong></td>
								<td style="border: 1px solid #0000FF;" class="style25" colspan="4">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．项目研究目标明确；<br />
                                        <span lang="EN-US">2</span>．内容详实，论证充分；<span lang="EN-US"><o:p></o:p></span><br />
                                        </span><span lang="EN-US"><o:p>3<span>．研究的重点突出，拟解决的关键问题阐述明确，有科学可行的解决方案；<br />
                                        4．预期研究成果明确，形式丰富，预期目标清晰；<o:p><br />
                                        5．经费预算合理。</o:p></span></o:p></span></p>
                                </td>
								<td style="border: 1px solid #0000FF;" class="style22">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．项目研究目标基本明确；</span><span lang="EN-US"><o:p><br />
                                        2<span>．内容基本详实，论证基本充分；</span><o:p></o:p><br />
                                        3<span>．重点基本突出，拟解决的关键问题阐述较明确，有比较可行的解决方案；</span><o:p></o:p><br />
                                        4<span>．预期研究成果基本明确，形式较丰富，预期目标较清晰；</span><o:p></o:p><br />
                                        5<span>．经费预算基本合理。</span></o:p></span></p>
                                    </td>
							</tr>
							<tr>
								<td style="border: 1px solid #0000FF;" class="style30" align="center">
									
									<strong>思路方法（20分）</strong></td>
								<td style="border: 1px solid #0000FF;" class="style25" colspan="4">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．研究方法科学、可行；</span><span lang="EN-US"><o:p><br />
                                        2<span>．研究思路清晰；</span><o:p></o:p><br />
                                        3<span>．研究工作的总体安排及进度清晰合理。</span></o:p></span></p>
                                    </td>
								<td style="border: 1px solid #0000FF;" class="style22">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．研究方法基本适合；</span><span lang="EN-US"><o:p><br />
                                        2<span>．研究思路基本清晰；</span><o:p><br />
                                        3<span>．研究工作的总体安排及进度比较合理 。</span></o:p></o:p></span></p>
                                    </td>
							</tr>
							<tr>
								<td class="style31" colspan="2" align="center" 
                                    style="border: 1px solid #0000FF;"><strong>汇报答辩（10分）</strong></td>
								<td style="border: 1px solid #0000FF;" class="style25" colspan="4">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．内容全面、正确；</span><span lang="EN-US"><o:p><br />
                                        2<span>．表述清楚；</span><o:p><br />
                                        3<span>．重点突出；</span><o:p><br />
                                        4<span>．回答问题简洁明了。</span></o:p></o:p></o:p></span></p>
									
								</td>
								<td style="border: 1px solid #0000FF;" class="style22">
									
									<p class="MsoNormal">
                                        <span lang="EN-US">1</span><span>．内容基本全面、正确；</span><span lang="EN-US"><o:p><br />
                                        2<span>．表述基本清楚；</span><o:p></o:p><br />
                                        3<span>．重点比较突出；</span><o:p></o:p><br />
                                        4<span>．回答问题基本切题。</span></o:p></span></p>
                                    </td>
							</tr>
							<tr>
								<td class="style31" align="right" colspan="6" 
                                    style="border: 1px solid #0000FF;">
									
									<strong>总分：</strong></td>
								<td style="border: 1px solid #0000FF;" class="style22">
									
									<asp:TextBox ID="tbx_Score" runat="server"></asp:TextBox>
									
								    <asp:RangeValidator ID="RangeValidator1" runat="server" 
                                        ControlToValidate="tbx_Score" ErrorMessage="总分应在0-100之间" MaximumValue="100" 
                                        MinimumValue="0" Type="Integer"></asp:RangeValidator>
									
								</td>
							</tr>
							<tr>
								<td class="style31" align="right" colspan="6" 
                                    style="border: 1px solid #0000FF;">
									
									<strong>是否同意立项：</strong></td>
								<td style="border: 1px solid #0000FF;" class="style22" align="left">
									
									<asp:RadioButtonList ID="rbl_tj" runat="server" RepeatDirection="Horizontal" 
                                        TextAlign="Left" Width="117px">
                                        <asp:ListItem Selected="True" Value="True">是</asp:ListItem>
                                        <asp:ListItem Value="False">否</asp:ListItem>
                                    </asp:RadioButtonList>
									
								</td>
							</tr>
							<tr>
								<td class="style24" colspan="7">
                                    <p align="left" class="MsoNormal">
                                        <b style="mso-bidi-font-weight:
normal"><span class="style32">注：本评审标准分为A、B、C、D四级，权重分别为1, 0.8, 
                                        0.6和0.4。评定标准给出A、C两级，介于A、C两之间的为B级，低于C级的为D级。可根据评定等级按项给出分数，也可直接给出总分，并给出是否同意立项的意见。 
                                        </span></b>
                                    </p>
                                </td>
							</tr>
							<tr>
								<td class="style24" colspan="7">
                                        <asp:Label ID="Label20" runat="server" Text="请专家对该项目作出简要评价：" Width="286px"></asp:Label></td>
							</tr>
							<tr>
								<td class="style24" colspan="7">
                                        <ftb:freetextbox id="ftb_content" runat="server" autoconfigure="EnableAll" buttonpath="../images/ftb/officexp/"
                                            height="200px" helperfilespath="../HelperScripts/" imagegallerypath="upfiles"
                                            width="100%" ButtonSet="OfficeXP" EnableHtmlMode="False" 
                                        EnableToolbars="False"></ftb:freetextbox>
                                    </td>
							</tr>
							<tr>
								<td class="style24">&nbsp;</td>
								<td class="style24">
                                    <asp:Label ID="lbl_appNo" runat="server" Visible="False"></asp:Label>
                                </td>
								<td>
							<asp:Button id="btn_Ok" runat="server" Text="确定" Width="75px" OnClick="btn_Ok_Click"></asp:Button>
							    &nbsp;
							<asp:Button id="btn_OkReturn" runat="server" Text="确定并返回" Width="75px" 
                                        OnClick="btn_OkReturn_Click"></asp:Button>
							    &nbsp;
							<asp:Button id="btn_Cancel" runat="server" Text="返回" Width="48px" 
                                        OnClick="btn_Cancel_Click"></asp:Button>
							    </td>
								<td>
							        &nbsp;</td>
								<td>
							        &nbsp;</td>
								<td>
                                    <br />
                                </td>
								<td class="style24">
							<asp:literal id="ltl_Msg" runat="server"></asp:literal></td>
							</tr>
						</table>
					</td>
				</tr>
				            </table>
		</form>
	</BODY>
</HTML>

