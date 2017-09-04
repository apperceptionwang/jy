<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Export_SQL.aspx.cs" Inherits="Admin_Export_SQL" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

	TD { FONT-SIZE: 12px }
	A { COLOR: #000000; TEXT-DECORATION: none }
	INPUT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	</style>
</head>
<body>
		<form id="Form2" runat="server">
<TABLE class="tableBorder" cellSpacing="1" cellPadding="3" align="center" border="0" height="238"
							width="917">
							<TBODY>
								<TR>
						<TH style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							width="100%" height="25">信息导出 
						</TH>
					</TR>			
								<TR align="left">
									<td  id="td_sql" runat="server">&nbsp;<FONT face="宋体">SQL语句:
                                        <asp:TextBox ID="tbx_sql" runat="server" Height="87px" Width="452px" 
                                            TextMode="MultiLine"></asp:TextBox>
                                        &nbsp;
											<asp:Button id="btn_exec" runat="server" Text="查询" Width="56px" 
                                            onclick="btn_exec_Click"></asp:Button></FONT></td>
								</TR>
								<TR>
									<TD class="forumRow" height="11">
                                        <asp:GridView ID="GridView1" runat="server" BackColor="#CCCCCC" 
                                            BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px" CellPadding="3" 
                                            CellSpacing="1" ForeColor="Black" Width="100%" 
                                            EnableModelValidation="True">
                                            <RowStyle BackColor="White" />
                                            <HeaderStyle BackColor="#E0E0E0" Font-Size="13px" ForeColor="Black" Height="23px" />
                                        </asp:GridView>
                                    </TD>
								</TR>
								<TR>
									<TD class="forumRow" align="center" height="23"><asp:label id="lbl_msg" runat="server"></asp:label>
										<asp:button id="btn_exp2excel" runat="server" Text="导出到excel" 
                                            onclick="btn_exp2excel_Click"></asp:button>
									</TD>
								</TR>
								<tr><td>&nbsp;&nbsp;</td></tr>
							</TBODY>
						</TABLE>
		</form>
</body>
</html>
