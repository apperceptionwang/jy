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

public partial class user_left : System.Web.UI.Page
{
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["jsh"] == null)
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            str_sql = "select status from t_teacher_list where appNo = '" + Session["appNo"].ToString() + "'";
            string str_status;
            try
            {
                str_status = DBFun.ExecuteScalar(str_sql).ToString();
            }
            catch (Exception ee)
            {
                Response.Write("<script>alert('" + ee.Message + "，请与管理员联系。" + "');</script>");
                CommFun.error_record(Session["jsh"].ToString(), Session["jsm"].ToString(), ee.Message);
                return;
            }

            str_sql = " select iif(count(*)=0,false,true) From t_dict where flm=10 and bm=1 " +
                      " and date() between cdate(url) and cdate(content) ";
            hl_1.Enabled = Convert.ToBoolean(DBFun.ExecuteScalar(str_sql));
            if (str_status == "")
            { }
        }
    }
    protected void lbtn_Quit_Click(object sender, EventArgs e)
    {
        Response.Redirect("SessionTimeOut.aspx?type=topnomsg");
    }
}
