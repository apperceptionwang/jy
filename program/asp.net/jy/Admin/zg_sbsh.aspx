<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zg_sbsh.aspx.cs" Inherits="Admin_zg_sbsh" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>申报审核</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                font-size: x-small;
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
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            参评人员管理
                            <asp:Label ID="lbl_leibie" runat="server" Visible="False"></asp:Label></th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="middle" height="30">
                            点击 <span style="color: #cc0000" class="style1">姓名</span> 可以查看修改参评人员信息</TD>
					</tr>
					<tr>
						<td bgColor="#ffffff" style="height: 342px" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="0px"
                                CellPadding="3" CellSpacing="1" Width="100%" AllowPaging="True" 
                                OnRowEditing="GridView1_RowEditing" 
                                OnPageIndexChanging="GridView1_PageIndexChanging" 
                                OnSelectedIndexChanging="GridView1_SelectedIndexChanging" 
                                OnRowUpdating="GridView1_RowUpdating" OnRowDeleting="GridView1_RowDeleting" 
                                OnRowCancelingEdit="GridView1_RowCancelingEdit" 
                                OnRowDataBound="GridView1_RowDataBound" EnableModelValidation="True" 
                                Font-Size="9pt" PageSize="20">
                                <Columns>
                                    <asp:BoundField DataField="ktmc" HeaderText="项目名称" />
                                    <asp:ButtonField CommandName="select" DataTextField="jsm" HeaderText="负责人" 
                                        Text="按钮" />
                                    <asp:BoundField DataField="lxdh" HeaderText="联系方式" />
                                    <asp:BoundField DataField="xmlb" HeaderText="项目类别" />
                                    <asp:BoundField DataField="yjnx" HeaderText="研究年限" />
                                    <asp:BoundField DataField="dept" HeaderText="所在部门" />
                                    <asp:BoundField DataField="sftj" HeaderText="是否提交" />
                                    <asp:TemplateField HeaderText="选择" Visible="False">
                                        <ItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </ItemTemplate>
                                        <EditItemTemplate>
                                            <asp:CheckBox ID="CheckBox1" runat="server" />
                                        </EditItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="量化评分" Visible="False">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="LinkButton1" runat="server" CommandName="edit">查看</asp:LinkButton>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:ButtonField CommandName="cancel" HeaderText="专家评分" Text="查看" 
                                        Visible="False" />
                                </Columns>
                                <RowStyle BackColor="#F1F3F5" HorizontalAlign="Center" Font-Size="9pt" />
                                <HeaderStyle BackColor="#F1F3F5" Font-Size="13px" />
                                <PagerStyle HorizontalAlign="Center" Font-Size="9pt" />
                            </asp:GridView>
                        </td>
					</tr>
					<TR>
						<TD class="forumRowHighlight" style="height: 30px" align="left"><FONT face="宋体"><span style="background-color: #e4edf9">
                            <asp:Label ID="lbl_tongji" runat="server" Font-Size="9pt"></asp:Label></span></FONT></TD>
					</TR>
					<tr>
						<td class="forumRowHighlight" style="height: 30px" align="left">
                            <table style="width: 416px; height: 11px" cellpadding="0" cellspacing="0"><tr><td style="width: 2px; height: 17px;"></td><td style="width: 3px; height: 17px;">
                                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged"
                                    RepeatDirection="Horizontal" Width="282px">
                                    <asp:ListItem Selected="True" Value="all">全部</asp:ListItem>
                                    <asp:ListItem Value="false">已提交</asp:ListItem>
                                    <asp:ListItem Value="true">未提交</asp:ListItem>
                                </asp:RadioButtonList></td></tr></table>
                            <asp:Button ID="btn_ExpToExcel" runat="server" OnClick="btn_ExpToExcel_Click" Text="导出到EXCEL" />
                            <asp:Button ID="btn_zjpsqk" runat="server" OnClick="btn_zjpsqk_Click" 
                                Text="导出专家评审情况一览表TXT" Width="165px" Visible="False" />
                            <span
                                style="color: #ff0000"><br />
                                <asp:Button ID="btn_expAllInfo" runat="server" 
                                OnClick="btn_expAllInfo_Click" Text="导出所有信息到EXCEL" Visible="False" />
                                <asp:Button ID="btn_expInfo_cdxm" runat="server" 
                                OnClick="btn_expInfo_cdxm_Click" Text="导出承担项目信息" Visible="False" /></span></td>
					</tr>
                    <tr>
                        <TD class="forumRowHighlight" style="height: 30px" id="TD2" runat="server" visible="false">
                            <FONT face="宋体"><span style="background-color: #e4edf9" class="style2">将选择的人员</span><span class="STYLE1">添加</span><span
                                style="background-color: #e4edf9" class="style2">到</span><span
                                style="background-color: #e4edf9">&nbsp; </span>
                                <asp:dropdownlist id="Dropdownlist1" runat="server" Width="105px">
                                </asp:DropDownList>
                                <asp:Button ID="Button1" runat="server" OnClick="btn_Ok_Click" Text="确定" Width="51px" />
                            </font>
                        </td>
                    </tr>
                     <tr>
                        <TD class="forumRowHighlight" style="height: 30px" id="TD1" runat="server" visible="false">
                            <FONT face="宋体"><span style="background-color: #e4edf9"></span><span
                                style="background-color: #e4edf9"> </span>
                                <asp:TextBox ID="TextBox1" runat="server" Height="74px" TextMode="MultiLine" Width="573px"></asp:TextBox><asp:Button ID="btn_pingjia_save" runat="server" OnClick="btn_pingjia_save_Click" Text="保存" Width="51px" /></font></td>
                    </tr>
					
				</table>
			</div>
            <ftb:FreeTextBox ID="Freetextbox1" runat="server" AutoConfigure="EnableAll" ButtonPath="../images/ftb/office2003/"
                Height="" HelperFilesPath="../HelperScripts/" ImageGalleryPath="upfiles" Width="" Visible="False">
            </ftb:FreeTextBox>
		</form>
		
	</body>
</HTML>

