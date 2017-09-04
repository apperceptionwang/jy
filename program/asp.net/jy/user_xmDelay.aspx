<%@ Page Language="C#" AutoEventWireup="true" CodeFile="user_xmDelay.aspx.cs" Inherits="user" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>film_classAddEdit</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="admin/Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style1
            {
                height: 25px;
                font-weight: bold;
                font-size: 12px;
                color: white;
                background-color: #4455aa;
                background-image: url('images/admin_bg_1.gif');
            }
        </style>
	</HEAD>
	<body MS_POSITIONING="GridLayout">
		<form id="Form1" method="post" runat="server">
			<div class="menuskin" id="popmenu" onMouseOver="clearhidemenu();" onMouseOut="dynamichide(event)"
				style="Z-INDEX:100"></div>
			<table cellpadding="3" cellspacing="0" border="0" align="center" class="tableBorder1" style="WIDTH:100%">
				<tr>
					<td height="10"></td>
				</tr>
			</table>
			<table cellpadding="3" cellspacing="1" border="0" class="tableBorder" align="center">
				<tr>
					<th class="style1">
                        <span style="font-size: 11pt; color: #FFFFFF;">
                        <asp:Label ID="lbl_title" runat="server" ForeColor="White" Font-Size="12pt">项目延期申请</asp:Label>
                        </span></th>
				<tr>
					<td height="23">
                        <asp:HyperLink ID="hl_2" runat="server" ForeColor="#000066" 
                            NavigateUrl="./templete/防灾科技学院教研教改项目延期申请表.doc">下载项目延期申请表模板</asp:HyperLink>
                    </td>
				</tr>
				<tr>
                        <TD id="id_Change" runat=server visible=True class="forumRowHighlight" 
                            style="height: 30px" v>
                        <asp:FileUpload ID="fu_1" runat="server" Width="300px"  /><asp:Button
                            ID="btn_upload" runat="server" OnClick="btn_upload_Click" Text="确定" Width="39px" />
                    </td>
                    </tr>
				<tr>
					<td height="23">
                        <asp:HyperLink ID="hl_1" runat="server" ForeColor="#000066">查看项目延期申请表</asp:HyperLink>
                    </td>
				</tr>
				<tr>
					<td class="forumRowHighlight" height="23">
						</td>
				</tr>
			</table>
			<br>
			<br>
			<br>
			
			
		</form>
		</body>
</HTML>
