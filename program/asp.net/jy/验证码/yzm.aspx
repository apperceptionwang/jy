<%@ Page Language="C#" AutoEventWireup="true" CodeFile="yzm.aspx.cs" Inherits="验证码_yzm" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script src="Scripts/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript">
        //点击切换验证码
        function f_refreshtype() {
            var Image1 = document.getElementById("img");
            if (Image1 != null) {
                Image1.src = Image1.src + "?";
            }
        } 
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
                <td>
                    <img src="png.aspx" id="img" onclick="f_refreshtype()" />
                </td>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="确定" />
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
