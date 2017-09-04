<%@ Page Language="C#" AutoEventWireup="true" CodeFile="renshi_jy_tj.aspx.cs" Inherits="Admin_renshi_jy_tj" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >

<HTML>
	<HEAD>
		<title>推荐管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                color: #CC0000;
                font-size: 9pt;
            }
            .style2
            {
                font-size: 9pt;
            }
        </style>
	</HEAD>
	
	<body style="font-family: Times New Roman" >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0" runat="server" visible="true">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa; width: 692px;"
							align="left" height="25">
                            审核推荐管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30" style="width: 692px">
                            在<span class="style1">排序</span>下的文本框内填写推荐顺序<br />
                            对申报项目选择不同的<span style="color: #cc0000" class="style2">推荐结果</span></TD>
					</tr>

					<tr>
						<td bgColor="#ffffff" valign="top" height="400px">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" 
                                OnPageIndexChanging="GridView1_PageIndexChanging" 
                                OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                                EnableModelValidation="True" PageSize="30">
                                <Columns>
                                    <asp:TemplateField HeaderText="排序">
                                        <ItemTemplate>
                                             <asp:TextBox ID="tbx_ID" runat="server" Width="32px" Text="<%#Container.DataItemIndex+1%>"></asp:TextBox>
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    
                                    <asp:ButtonField CommandName="select" DataTextField="ktmc" HeaderText="课题名称" 
                                        Text="按钮" >
                                        <ItemStyle ForeColor="Navy" />
                                    </asp:ButtonField>
                                    
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zc" HeaderText="职称" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="zw" HeaderText="职务" >
                                    <ItemStyle Width="100px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="推荐结果">
                                        <ItemTemplate>
                                            <asp:RadioButtonList 
                                                ID="rbtnList_tjjg" runat="server" Height="20px" RepeatDirection="Horizontal" 
                                                Width="110px" AutoPostBack="True">
                                                <asp:ListItem Value="3">推荐</asp:ListItem>
                                                <asp:ListItem Value="2">不推荐</asp:ListItem>
                                            </asp:RadioButtonList>
                                           </ItemTemplate>
                                        <ItemStyle ForeColor="Black" Width="100px" />
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" />
                            </asp:GridView>
                            &nbsp; &nbsp; &nbsp;&nbsp;
                        </td>
					</tr>
					<TR>
						<TD class="forumRowHighlight"><FONT face="宋体"><span style="background-color: #e4edf9">
                            <table id="table22" border="0" cellpadding="0" cellspacing="0" language="javascript"
                                onclick="return table22_onclick()" style="width: 684px; height: 18px">
                                <tr>
                                    <td style="font-size: 12px; width: 212px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif; height: 20px;">
                            <asp:Label ID="lbl_tongji" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:Label></td>
                                    <td style="font-size: 12px; color: #000000; font-family: Verdana, Arial, Helvetica, sans-serif;
                                        text-align: right; height: 20px;">
                            <asp:LinkButton ID="lbtn_AllYes" runat="server" OnClick="lbtn_AllYes_Click" Visible="False">全部推荐</asp:LinkButton>&nbsp;
                                        &nbsp;<asp:LinkButton ID="lbtn_AllNo" runat="server" OnClick="lbtn_AllNo_Click" 
                                            Visible="False">全部不推荐</asp:LinkButton>&nbsp;
                                        &nbsp;<asp:Button ID="btn_Save" runat="server" OnClick="btn_Save_Click" 
                                            Text="保存" Width="51px" /></td>
                                </tr>
                            </table>
                        </span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px; width: 692px;">
                            &nbsp;</td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px; width: 692px;" id="TD1" runat="server" visible="true">
                            <FONT face="宋体"><span style="background-color: #e4edf9">将本部门推荐的人员提交</span><span
                                style="background-color: #e4edf9">到教师教学发展中心，<span style="color: #ff0000">注意：一旦提交后部门和个人不能再修改任何内容<br />
                                </span>
                                <asp:Button ID="btn_commit" runat="server" Text="提交" OnClick="btn_commit_Click" Width="51px" /><br />
                            <asp:Label ID="lbl_type" runat="server"></asp:Label>
                            </span>
                            </font>
                        </td>
                    </tr>
					
				</table>
			</div>
		</form>
		
	</body>
</HTML>


