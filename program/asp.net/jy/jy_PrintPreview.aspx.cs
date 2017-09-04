using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aspose.Words;

public partial class jy_PrintPreview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("./templete/jy.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_jy(doc, Session["jsh"].ToString());
        doc.Save(Server.MapPath("./exporttopdf/") + Session["jsm"].ToString() + Session["jsh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/" + Session["jsm"].ToString() + Session["jsh"].ToString() + ".doc");
    }
    protected void lbtn_dyyl_Click(object sender, EventArgs e)
    {
        
    }
}