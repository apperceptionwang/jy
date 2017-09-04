<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zj_Pf0.aspx.cs" Inherits="zj_Pf" %>
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
            .style23
            {
                width: 868px;
            }
            .style24
            {}
            .style27
            {
                font-size: large;
            }
            .style32
            {}
            .style33
            {
                width: 173px;
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
						<p align="center" class="style9">防灾科技学院教研项目立项盲审参照标准</p>
					</th>
				</tr>
				<tr id="tb_body">
					<td class="forumRowHighlight" height="12">
						<table cellSpacing="0" cellPadding="3" border="0" class="style23">
							<tr>
								<td class="style27" colspan="2" align="center" 
                                    style="border: 1px solid #0000FF; text-align: right;">课题名称：</td>
								<td style="border: 1px solid #0000FF; text-align: left;" class="style27" colspan="4" 
                                    align="center">
									
									<asp:Label ID="lbl_ktmc" runat="server" ForeColor="Red"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style27" colspan="2" align="center" 
                                    style="border: 1px solid #0000FF; text-align: right;">负责人：</td>
								<td style="border: 1px solid #0000FF; text-align: left;" class="style27" colspan="4" 
                                    align="center">
									
									<asp:Label ID="lbl_sqr" runat="server" ForeColor="Red"></asp:Label>
                                </td>
							</tr>
							<tr>
								<td class="style27" colspan="2" align="center" 
                                    style="border: 1px solid #0000FF; text-align: right;">是否同意立项：</td>
								<td style="border: 1px solid #0000FF; text-align: left;" class="style27" colspan="4" 
                                    align="center">
									
									<asp:RadioButtonList ID="rbl_tj" runat="server" RepeatDirection="Horizontal" 
                                        TextAlign="Left" Width="117px">
                                        <asp:ListItem Selected="True" Value="True">是</asp:ListItem>
                                        <asp:ListItem Value="False">否</asp:ListItem>
                                    </asp:RadioButtonList>
									
                                </td>
							</tr>
							<tr>
								<td class="style24" colspan="6">
                                        <asp:Label ID="Label20" runat="server" Text="请专家对该项目作出简要评价：" Width="341px"></asp:Label></td>
							</tr>
							<tr>
								<td class="style24" colspan="6">
                                        <ftb:freetextbox id="ftb_content" runat="server" autoconfigure="EnableAll" buttonpath="../images/ftb/officexp/"
                                            height="200px" helperfilespath="../HelperScripts/" imagegallerypath="upfiles"
                                            width="100%" ButtonSet="OfficeXP" EnableHtmlMode="False" 
                                        EnableToolbars="False"></ftb:freetextbox>
                                    </td>
							</tr>
							<tr>
								<td class="style24">&nbsp;</td>
								<td class="style33">
                                    <asp:Label ID="lbl_appNo" runat="server" Visible="False"></asp:Label>
                                </td>
								<td class="style32">
							<asp:Button id="btn_Ok" runat="server" Text="确定" Width="75px" OnClick="btn_Ok_Click"></asp:Button>
							    &nbsp;
							<asp:Button id="btn_OkReturn" runat="server" Text="确定并返回" Width="75px" 
                                        OnClick="btn_OkReturn_Click"></asp:Button>
							    &nbsp;
							<asp:Button id="btn_Return" runat="server" Text="返回" Width="48px" 
                                        OnClick="btn_Return_Click"></asp:Button>
							    </td>
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

