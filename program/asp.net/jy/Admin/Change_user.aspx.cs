using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Admin_Change_user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Canceljsh_Click(object sender, EventArgs e)
    {
        tbx_jsh.Text = "";
    }
    protected void btn_Canceldept_Click(object sender, EventArgs e)
    {
        tbx_dept.Text = "";
    }
    protected void btn_Changejsh_Click(object sender, EventArgs e)
    {
        //判断用户名
        string str_jsh = tbx_jsh.Text.Trim();
        string strqry = string.Format("select jsh,xsh,jsm From T_teacher where jsh='{0}'", str_jsh);
        DataRow UserDr = DBFun.GetDataRow(strqry);
        if (UserDr == null)
        {
            Response.Write(@"<script>alert('教师号不存在！');</script>");
            tbx_jsh.Focus();
            return;
        }
        Session["type"] = "user";
        Session["jsh"] = UserDr["jsh"].ToString();
        Session["jsm"] = UserDr["jsm"].ToString();
        Response.Redirect("../user_tb.aspx");
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        //判断用户名
        string str_dept = tbx_dept.Text.Trim();
        string strqry = "select * From T_dict where flm=1 and url = '" + str_dept + "'";
        DataRow UserDr = DBFun.GetDataRow(strqry);
        if (UserDr == null)
        {
            Response.Write(@"<script>alert('部门编码不存在！');</script>");
            tbx_dept.Focus();
            return;
        }
        Session["dept_type"] = "jyrs";
        Session["dept_name"] = UserDr["name"].ToString();
        Session["dept_id"] = UserDr["url"].ToString();
        Response.Redirect("renshi_index.aspx");
    }
}