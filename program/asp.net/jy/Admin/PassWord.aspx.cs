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

public partial class PassWord : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //申报教师
        if (Session["jsh"] != null)
        {
            lbl_ID.Text = Session["jsh"].ToString();
            lbl_UserName.Text = Session["jsm"].ToString();
            lbl_type.Text = "jycpry";
            hlnk_back.Visible = true;
            return;
        }
        //人事管理部门
        else if (Session["dept_id"] != null)
        {
            lbl_ID.Text = Session["dept_id"].ToString();
            lbl_UserName.Text = Session["dept_name"].ToString();
            lbl_type.Text = "jyrs";
            hlnk_back.Visible = true;
            return;
        }
        //管理员
        else if (Session["admin_id"] != null)
        {
            lbl_ID.Text = Session["admin_id"].ToString();
            lbl_UserName.Text = Session["admin_name"].ToString();
            lbl_type.Text = Session["admin_type"].ToString();
            hlnk_back.Visible = true;
            return;
        }
        else
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            //lbl_ID.Text = Session["admin_id"].ToString();
            //lbl_UserName.Text = Session["admin_name"].ToString();
            
            ////zhuanjia  专家
            //lbl_type.Text = Request.QueryString["type"];
            //if (lbl_type.Text == "")
            //    lbl_type.Text = Session["admin_type"].ToString();
        }
    }

    #region 保存
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string str_sql = "", str_name, str_OldPwd, str_NewPwd, str_Pwd;
        //取得现有信息
        str_name = lbl_ID.Text;
        str_OldPwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tb_UserPwd.Text, "MD5");
        str_NewPwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tb_NewPwd.Text, "MD5");
        //判断要修改密码的是管理员、人事管理部门、专家
        if (lbl_type.Text == "admin")
            str_sql = "Select admin_pwd From master Where id = " + str_name;
        else if (lbl_type.Text == "jyrs")
            str_sql = "Select pwd From t_dict Where flm = 13 and url = '" + str_name + "'";
        //else if (lbl_type.Text == "jyzj")
        //    str_sql = "Select pwd From pszj Where flag = 1 and sfzh = '" + str_name + "'";
        else if (lbl_type.Text == "jycpry")
            str_sql = "Select pwd From t_teacher Where jsh = '" + str_name + "'";
        
        str_Pwd = DBFun.ExecuteScalar(str_sql).ToString();
        if (str_Pwd.ToUpper() != str_OldPwd)
        {
            Response.Write("<script>alert('原始密码错误！');</script>");
            SetFocus(tb_UserPwd);
            return;
        }
        if (lbl_type.Text == "admin")
            str_sql = "Update master Set admin_pwd = '" + str_NewPwd + "' Where id = " + str_name;
        else if (lbl_type.Text == "jyrs")
            str_sql = "Update t_dict Set pwd = '" + str_NewPwd + "' Where flm = 13 and url = '" + str_name + "';";
        //else if (lbl_type.Text == "jyzj")
        //    str_sql = "Update pszj Set pwd = '" + str_NewPwd + "' Where flag = 1 and sfzh = '" + str_name + "';";
        //else if (lbl_type.Text == "ejzj")
        //    str_sql = "Update pszj Set pwd = '" + str_NewPwd + "' Where flag = 2 and sfzh = '" + str_name + "';";
        else if (lbl_type.Text == "jycpry")
            str_sql = "Update t_teacher Set pwd = '" + str_NewPwd + "' Where jsh = '" + str_name + "';";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('密码修改成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('密码修改失败！');</script>");
        }
    }
    #endregion
}
