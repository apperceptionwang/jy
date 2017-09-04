<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Change_user.aspx.cs" Inherits="Admin_Change_user" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	TD.forumRowHighlight { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #e4edf9; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TD { FONT-SIZE: 12px }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	INPUT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	A { COLOR: #000000; TEXT-DECORATION: none }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	    .style1
        {
            height: 6px;
        }
	</style>
</head>
<body>
		<form id="Form2" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%; height: 48px;" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" class="style1">
                            切换用户</th></tr>
					<tr>
						<TD class="forumRowHighlight" vAlign="top" id="TD1" runat="server" 
                            visible="true" style="height: 21px">
                            教 师 号：<asp:TextBox ID="tbx_jsh" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_Changejsh" runat="server" OnClick="btn_Changejsh_Click" 
                                Text="确定" Width="48px" />
                        <asp:Button ID="btn_Canceljsh" runat="server" OnClick="btn_Canceljsh_Click" 
                                Text="取消" Width="48px" /></TD>
					</tr>
                    <tr>
						<TD class="forumRowHighlight" vAlign="top" id="TD2" runat="server" 
                            visible="true" style="height: 21px">
                            部门编号：<asp:TextBox ID="tbx_dept" runat="server"></asp:TextBox>
                            <asp:Button ID="btn_ChangeDept" runat="server" OnClick="btn_confirm_Click" 
                                Text="确定" Width="48px" />
                        <asp:Button ID="btn_Canceldept" runat="server" OnClick="btn_Canceldept_Click" 
                                Text="取消" Width="48px" /></TD>
					</tr>
					</table>
			</div>
		</form>
</body>
</html>
