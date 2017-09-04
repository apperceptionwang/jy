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

public partial class Admin_renshi_left : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dept_type"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');window.open('../default.aspx','_top')</script>");
            return;
        }
        else if (Session["dept_type"].ToString() == "jyrs")
        {
            Table_jy.Visible = true;
        }
        //判断是否到申报截止日期（包含当天），如果到了不允许访问该页面
        string strqry = " SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 3 )) FROM t_dict;";
        if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) < 0)
        {
            Td5.Visible = false;
        }
    }
    protected void lbtn_Quit_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Write("<script>window.open('../default.aspx','_top')</script>");
    }
}
