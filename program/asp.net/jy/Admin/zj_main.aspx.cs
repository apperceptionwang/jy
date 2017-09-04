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

public partial class Admin_zj_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            string str_sql = "select content from t_dict where flm = 8 and bm = 10";
            lbl_content.Text = DBFun.ExecuteScalar(str_sql).ToString();
            lbl_welcom.Text = Session["admin_name"].ToString() + " 已登陆专家立项评审系统";
        }
        
    }
}
