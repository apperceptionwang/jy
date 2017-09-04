<%@ Page Language="C#" AutoEventWireup="true" CodeFile="film_Path.aspx.cs" Inherits="VOD.Admin.film_Path" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_from</title>
		<meta name="GENERATOR" Content="Microsoft Visual Studio .NET 7.1">
		<meta name="CODE_LANGUAGE" Content="C#">
		<meta name="vs_defaultClientScript" content="JavaScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<link href="Admin.css" rel="stylesheet" type="text/css">
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" height="151" cellSpacing="1" cellPadding="3" border="0"
					style="WIDTH: 100%; HEIGHT: 129px">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" colSpan="7" height="25">
							影片服务器管理[<a href="Film_Path.aspx">添加</a>]</th>
					</tr>
					<tr>
						<TD class="forumRowHighlight" colSpan="7" height="30" valign="middle">请慎重修改服务器相关信息,如果没必要<span class="STYLE1">不要删除</span>服务器</TD>
					</tr>
					<tr>
						<TD class="forumRowHighlight" colSpan="7" height="17" valign="middle"><table border="0" width="100%" id="table5" cellspacing="3" cellpadding="0">
								<tr>
									<TD width="14%"  style="HEIGHT: 26px">
										<asp:Literal id="Literal1" runat="server" Text="<font color=red><b>添加新的服务器</b></font>"></asp:Literal>:
									</TD>
									<TD width="86%" style="HEIGHT: 26px">&nbsp;</TD>
								</tr>
								<tr>
									<TD style="height: 21px">
                                        播放路径1：
									</TD>
									<TD style="height: 21px"><asp:TextBox ID="Tb_PlayPath" runat="server" Width="317px"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Tb_PlayPath"
                                            ErrorMessage="不能为空" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                        </TD>
								</tr>
								<tr>
									<TD style="height: 21px">
                                        播放路径2：
									</TD>
									<TD style="height: 21px"><asp:TextBox ID="tb_PlayPath2" runat="server" Width="317px"></asp:TextBox>&nbsp; 为空将不显示第二播放路径</TD>
								</tr>
								<tr>
									<TD style="height: 21px">
                                        下载路径：</TD>
									<TD style="height: 21px"><asp:TextBox ID="Tb_DownPath" runat="server" Width="317px" MaxLength="255"></asp:TextBox>&nbsp;
                                        （如：d:\film）</TD>
								</tr>
								<tr>
									<TD >服务器描述:
									</TD>
									<TD ><asp:TextBox ID="Tb_Caption" runat="server" Width="317px" MaxLength="255"></asp:TextBox>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Tb_Caption"
                                            ErrorMessage="不能为空"></asp:RequiredFieldValidator>
                                        （显示在影片添加或修改页面上）</TD>
								</tr>
								
								<tr>
									<TD>&nbsp;</TD>
									<TD><asp:Button ID="BtnAdd" runat="server" Text="添加" Width="44px" Height="23px" OnClick="BtnAdd_Click"></asp:Button></TD>
								</tr>
							</table>
						</TD>
					</tr>
					<TR>
						<TD class="Forumrow" align="center" width="5" style="height: 25px"><STRONG>ID</STRONG></TD>
						<TD width="20%" align="center" class="Forumrow" style="height: 25px"><STRONG>播放地址1</STRONG></TD>
						<TD width="20%" align="center" class="Forumrow" style="height: 25px"><STRONG>播放地址2</STRONG></TD>
						<TD width="20%" align="center" class="Forumrow" style="height: 25px"><STRONG>下载地址</STRONG></TD>
						<TD class="Forumrow" align="center" width="20%" style="height: 25px"><STRONG>服务器描述</STRONG></TD>
						<TD class="Forumrow" align="center" width="7%" style="height: 25px"><STRONG>修改</STRONG></TD>
						<TD class="Forumrow" align="center" width="7%" style="height: 25px"><STRONG>删除</STRONG></TD>
					</TR>
					<asp:Repeater id="Repeater1" runat="server">
						<ItemTemplate>
							<tr>
								<td  width="5%" height="25" align="center"><%#DataBinder.Eval(Container.DataItem,"ID")%></td>
								<td height="20" align="center"><%#DataBinder.Eval(Container.DataItem,"PlayPath")%></td>
								<td height="20" align="center"><%#DataBinder.Eval(Container.DataItem,"PlayPath2")%></td>
								<td height="20" align="center"><%#DataBinder.Eval(Container.DataItem,"DownPath")%></td>
								<td  width="20%" height="25"><%#DataBinder.Eval(Container.DataItem,"Caption")%></td>
								<td  width="7%" height="25" align="center"><a href='film_Path.aspx?Action=Edit&ID=<%#DataBinder.Eval(Container.DataItem,"id")%>'>修改</a></td>
								<td width="7%" height="25" align="center"><a onclick="return confirm('警告！删除后无法恢复，建议先把本路径下影片全部删除后再进行本操作！\n您确定吗？');" href='film_Path.aspx?Action=Delete&ID=<%#DataBinder.Eval(Container.DataItem,"id")%>'><font color="#ff0000">删除</font></a></td>
							</tr>
						</ItemTemplate>
					</asp:Repeater>
				</table>
			</div>
		</form>
	</body>
</HTML>
