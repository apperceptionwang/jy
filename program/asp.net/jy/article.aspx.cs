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

public partial class article : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str_id = Request.QueryString["id"];
            string str_sql = "select content from news where id ="+str_id;
            ltl_content.Text = DBFun.ExecuteScalar(str_sql).ToString();
        }
    }

    protected void ImgBtn_zhuce_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("reg.aspx");
    }

    protected void ImgBtn_shenqing_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }
    protected void ImgBtn_renshi_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=renshi");
    }
    protected void ImgBtn_zhuanjia_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zhuanjia");
    }

}
