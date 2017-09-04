using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //特殊津贴 评审专家登陆界面
        //Response.Redirect("./admin/admin_login.aspx?type=tszj");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Write("<script>showModalDialog('default5.aspx','example04','dialogWidth:400px;dialogHeight:300px;dialogLeft:200px;dialogTop:150px;center:yes;help:yes;resizable:no;status:yes');</script>");
        //Response.Write("<script>showModelessDialog('http://www.baidu.com','example04','dialogWidth:400px;dialogHeight:300px;dialogLeft:200px;dialogTop:150px;center:yes;help:yes;resizable:yes;status:yes');</script>");
        
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Response.Write("<script>");
        this.Response.Write("{top.opener =null;top.close();}");
        this.Response.Write("</script>");


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        //遍历目录
        string[] dirs = Directory.GetDirectories( "C:\\"); 
        Array.Sort(dirs); 
        foreach(string s in dirs) 
        { 
        DirectoryInfo di = new DirectoryInfo(s); 
        Response.Write(di.Name); 
        } 
        //遍历文件
        string[] files = Directory.GetFiles( "C:\\"); 
        Array.Sort(files); 
        foreach(string s in files) 
        { 
        FileInfo fi = new FileInfo(s); 
        Response.Write(fi.Name); 
        } 
        Response.End();

    }
}
