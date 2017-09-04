<%@ Page Language="C#" AutoEventWireup="true" CodeFile="WordTotal.aspx.cs" Inherits="WordTotal" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>字数统计</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <textarea id="text1" class="textarea" onchange="gbcount(this,document.getElementById('used'));"
            onkeyup="gbcount(this,document.getElementById('used'));" style="width: 256px;
            height: 168px; font-size: 9pt; font-family: 宋体;" runat="server"></textarea>
        已用字数：
        <input disabled="disabled" maxlength="4" name="used" size="5" value="0" style="font-size: 9pt; font-family: 宋体" />

        <script type="text/javascript">
function gbcount(message,used)
{
var lenE = message.value.length;
var lenC = 0;
var CJK = message.value.match(/[^\x00-\xff]/g);
var enter = message.value.match(/\r\n/g);
if (CJK != null) lenC += CJK.length;
if (enter != null) lenC -= enter.length;
        used.value = lenE + lenC;
}
        </script>
<input   name=Button   onClick=document.all.WebBrowser.ExecWB(1,1)   type=button   value=打开>     
  <OBJECT   classid=CLSID:8856F961-340A-11D0-A96B-00C04FD705A2   height=0   id=WebBrowser   width=0></OBJECT>  
       
            <textarea id="text" class="textarea" name="words" onchange="gbcount(this.form.words,this.form.used);"
                onkeyup="gbcount(this.form.words,this.form.used);" style="width: 264px;
                height: 170px; font-size: 9pt; font-family: 宋体;"></textarea>
            已用字数：
            <input disabled="disabled" maxlength="4" name="used" size="5" value="0" style="font-size: 9pt; font-family: 宋体" />
   
    </div>
        <asp:TextBox ID="TextBox1" runat="server" Font-Names="宋体" Font-Size="9pt"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Font-Names="宋体" Font-Size="9pt" OnClick="Button1_Click"
            Text="Button" />
        <asp:Button ID="Button2" runat="server" Font-Names="宋体" Font-Size="9pt" OnClick="Button2_Click"
            Text="Button" />
        <asp:Button ID="Button3" runat="server" Font-Names="宋体" Font-Size="9pt" OnClick="Button3_Click"
            Text="Button" />
        <asp:Button ID="Button4" runat="server" Font-Names="宋体" Font-Size="9pt" OnClick="Button4_Click"
            Text="数据库备份" /></form>
</body>
</html>
    

