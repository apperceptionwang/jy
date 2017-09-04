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
using System.Timers;

public partial class admin_main : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session["admin_name"] == null)
            {
                Response.Redirect("../SessionTimeOut.aspx?type=top");
            }
            if (!CommFun.IsAdmin(Session["admin_name"].ToString()))
            {
                Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
            }
        }
    }
}
