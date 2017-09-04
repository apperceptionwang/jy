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

public partial class zgsb_select_ry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = 'admin_login.aspx';</script>");
            return;
        }
        bindData();
    }
    protected void bindData()
    {
        string str_sql = "SELECT cpry.sfzh ,yourname,xingbie, DateDiff('YYYY', CDate(birth),Format(Now(),'yyyy-mm-dd')) AS nianling,xrzw,sbzw from cpry,zjry where zjid = " + Session["admin_id"].ToString() + " and cpry.sfzh=zjry.sfzh";
        Session["dv_cpry"] = DBFun.GetDataView(str_sql);
        DataView dv = (DataView)Session["dv_cpry"];
        gv_cpyr.DataSource = dv;
        gv_cpyr.DataBind();
    }
    protected void gv_cpyr_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("zgsb_pingshen.aspx?id="+gv_cpyr.Rows[e.NewSelectedIndex].Cells[1].Text);
    }
}
