<%@ Page Language="C#" AutoEventWireup="true" CodeFile="弹出窗口.aspx.cs" Inherits="测试代码_弹出窗口" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html> 
<head> 
<script type="text/javascript">
    function neww() {
        var w = document.getElementById("w").value;
        var h = document.getElementById("h").value;
        var hh = document.getElementById("hh").value;
        var v = document.getElementById("v").value;
        var style = "directories=no,location=no,menubar=no,width=" + w + ",height=" + h;
        var myFunc = window.open("http://www.baidu.com", "nwindow", style);
        myFunc.moveTo(hh, v);

    } 
</script> 

</head> 
<body> 
    <form id="form1" runat="server">
新窗口的高度：<input type="text" id="h" size="4" value="300" /> 
新窗口的宽度：<input type="text" id="w" size="4" value="300" /> 
新窗口的垂直坐标：<input type="text" id="hh" size="4" value="300" /> 
新窗口的水平坐标：<input type="text" id="v" size="4" value="300" /> 
<button onclick="neww();">打开心弹窗</button> 
    <a href="javascript:var a=window.open('msg!get_type.action','_blank','height=400px,width=750px,menubar=no,titlebar=no,scrollbar=no,toolbar=no,status=no,location=no,resizable=yes')">打开</a>
    <button onclick="window.showModelessDialog('/red','','dialogWidth:800px;dialogHeight:300px')">open3</button>
    &nbsp;</form>
</body> 
</html> 
