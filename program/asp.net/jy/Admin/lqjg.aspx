<%@ Page Language="C#" AutoEventWireup="true" CodeFile="lqjg.aspx.cs" Inherits="Admin_lqjg" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>录取结果</title>
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
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="25">
                            录取结果上传管理
                        </th></tr>
                    <tr>
                        <TD class="forumRowHighlight" vAlign="middle" height="30">
                            <asp:FileUpload ID="FileUpload1" runat="server" Width="462px" />
                            <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="上传" Width="50px" /></td>
                    </tr>
                    <tr>
						<td bgColor="#ffffff">
                            <asp:Label ID="lbl_result" runat="server" Width="734px"></asp:Label></td>
                    </tr>
                    <tr>
                        <td class="forumRowHighlight" height="30" valign="middle">
                            本科录取省份</td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff" style="height: 117px; text-align: left">
                            <asp:CheckBoxList ID="cbxlist_bk" runat="server" Height="102px" RepeatColumns="6"
                                Width="734px">
                            </asp:CheckBoxList>
                        </td>
                    </tr>
                    <tr>
                        <td class="forumRowHighlight" style="height: 30px; text-align: center">
                            <asp:CheckBox ID="cbx_bk" runat="server" AutoPostBack="True" OnCheckedChanged="cbx_bk_CheckedChanged"
                                Text="全选" />
                            &nbsp; &nbsp;<asp:Button ID="btn_bk" runat="server" OnClick="btn_bk_Click" Text="保存"
                                Width="50px" /></td>
                    </tr>
                    <tr>
                        <td class="forumRowHighlight" height="30" valign="middle">
                            专科录取省份</td>
                    </tr>
                    <tr>
                        <td bgcolor="#ffffff">
                            <asp:CheckBoxList ID="cbxlist_zk" runat="server" Height="102px" RepeatColumns="6"
                                Width="734px">
                            </asp:CheckBoxList></td>
                    </tr>
                    <tr>
                        <td class="forumRowHighlight" style="height: 30px; text-align: center">
                            <asp:CheckBox ID="cbx_zk" runat="server" AutoPostBack="True" OnCheckedChanged="cbx_zk_CheckedChanged"
                                Text="全选" />
                            &nbsp;&nbsp;
                            <asp:Button ID="btn_zk" runat="server" OnClick="btn_zk_Click" Text="保存" Width="50px" /></td>
                    </tr>
				</table>
			</div>
		</form>
		
	</body>
</HTML>

