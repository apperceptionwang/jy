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

public partial class Admin_zj_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }

        if (!IsPostBack)
        {
            string str_sql = "select lnum from t_Expert where LoginName = '" + Session["admin_id"].ToString() + "'";
            Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
        }
        
    }
}
