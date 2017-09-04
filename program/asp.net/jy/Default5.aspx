<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
<script type="text/javascript" src="./Scripts/c.js"></script>
		<script language=javascript src="./img/calendar.js"></script>
    <style type="text/css">

	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	    .style2
        {
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <asp:GridView ID="GridView1" runat="server">
    </asp:GridView>
    <asp:GridView ID="GridView2" runat="server">
    </asp:GridView>
    <asp:Button ID="Button5" runat="server" onclick="Button5_Click" Text="检索数据" />
    <br />
    检索access中所有表，点击表名，显示对应表的列名<br />
    <asp:ListBox ID="ListBox1" runat="server" AutoPostBack="True" Height="120px" 
        onselectedindexchanged="ListBox1_SelectedIndexChanged" Width="239px">
    </asp:ListBox>
    <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="5" 
        RepeatDirection="Horizontal">
    </asp:CheckBoxList>
    <asp:TextBox ID="TextBox1" runat="server" Height="112px" TextMode="MultiLine" 
        Width="533px"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
    <br />
    <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
        Text="按照教师工号生成密码" />
    <asp:Button ID="Button3" runat="server" onclick="Button3_Click" 
        Text="按照系部编号生成密码" />
    <asp:Button ID="Button4" runat="server" onclick="Button4_Click" 
        Text="按照专家登录名生成密码" />
    <br />
    <asp:Button ID="Button6" runat="server" onclick="Button6_Click" 
        Text="按照姓名生成全拼" />
                            <span class="style4"> 
                            <asp:Button ID="btn_CreatePDF" runat="server" 
        OnClick="btn_CreatePDF_Click" Text="doc2pdf" 
                                CssClass="style2" Width="70px" />
                            </span>
    <br />
    </form>
</body>
</html>
