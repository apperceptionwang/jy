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
using Aspose.Words;

public partial class PrintPreview_yjy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "111111111111111111";

        bindData();
    }

    #region 数据绑定
    protected void bindData()
    {
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("./templete/jy.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_1(doc, Session["jsh"].ToString());
        doc.Save(Server.MapPath("./exporttopdf/") + Session["jsm"].ToString()+" "+Session["jsh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/" + Session["jsm"].ToString() + " "+Session["jsh"].ToString() + ".doc");
    }
    #endregion

    protected void btn_SaveToWord_Click(object sender, EventArgs e)
    {
        string sourcefile;
        string str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
        string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
        Document doc;
        if (str_sbzw == "研究员")
        {
            sourcefile = Server.MapPath("./templete/yjy.doc");
            doc = new Document(sourcefile); //载入模板 
            PrivateFun.SetInfoIntoWrod_yjy(doc, Session["sfzh"].ToString());
        }
        else
        {
            sourcefile = Server.MapPath("./templete/zyjgg.doc");
            doc = new Document(sourcefile); //载入模板 
            PrivateFun.SetInfoIntoWrod_zyjgg(doc, Session["sfzh"].ToString());
        }

        doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/default.aspx?sfzh=" + Session["sfzh"].ToString());
    }
}
