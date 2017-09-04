<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default3.aspx.cs" Inherits="Default3" %>
<%@ Register TagPrefix="ftb" Namespace="FreeTextBoxControls" Assembly="FreeTextBox"  %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<HTML>    

<HEAD>     
  <TITLE>   New   Document   </TITLE>     
  <META   NAME="Generator"   CONTENT="EditPlus">     
  <META   NAME="Author"   CONTENT="YC">     

  
  <script    language="JavaScript" >     
   var    HKEY_Root,HKEY_Path,HKEY_Key,HKEY_all,value;     
   HKEY_Root="HKEY_CURRENT_USER";     
   //此处分隔符不能用“\”,写成HKEY_Path="\Software\Microsoft\Internet Explorer\Main\"无效
   HKEY_Path="\\Software\\Microsoft\\Internet Explorer\\Main\\";  
   HKEY_Key="Start Page";  
   //当此变量最后有\\时，代表此变量值为注册表中的“项”，后面的Data变量为对应项的“默认值”的“数据”。
   //当没有\\时，代表此变量值为在前一个“\”后面的项中建立所设立的“值”，Data变量为此值的“数据”。 
   HKEY_all=HKEY_Root+HKEY_Path+HKEY_Key;
   value="http://hi.baidu.com/suofang";
   //设置网页打印的页眉页脚为空     
   function    PageSetupNull()     
   {     
   var Wsh=new ActiveXObject("WScript.shell");     
   alert("nihao");   
//   Wsh.RegWrite(HKEY_all,value);  
   或者直接用Wsh.RegWrite("HKEY_CURRENT_USER\\Software\\Microsoft\\Internet Explorer\\Main\\Start Page","http://hi.baidu.com/suofang");     
   
   alert(HKEY_all);   
   }   

     PageSetupNull();
   </script>
  
  
  </HEAD>     
    
  <BODY>  <form id="Form1" method="post" runat="server">   
  <br/>     
  <br/>     
  <br/>     
      <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
      <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
  <br/>     
      <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Button" />
  <br/>     
      <asp:Calendar ID="Calendar1" runat="server" NextPrevFormat="FullMonth" 
          onselectionchanged="Calendar1_SelectionChanged"></asp:Calendar>
  <br/><p   align=center>     
          <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Button" />
          &nbsp;<br/>     &nbsp;
  </p>     
      <p align="center">
          &nbsp;</p>
  </form>
  </BODY>     
  </HTML>     
