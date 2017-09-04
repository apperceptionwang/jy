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
using System.Data.OleDb;
using System.Data.OracleClient;

public partial class admin_Login : System.Web.UI.Page
{
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_type.Text = Request.QueryString["type"];
            string str_jzsj = "";
            //管理员
            if (lbl_type.Text == "" || lbl_type.Text == "admin")
            {
                lbl_type.Text = "admin";
                lbl_UserType.Text = "管理员";
            }
            //申报人事部门
            else if (lbl_type.Text == "jyrs")
            {
                str_sql = "select url From t_dict where flm=8 and bm=9";
                str_jzsj = DBFun.ExecuteScalar(str_sql).ToString();
                lbl_UserType.Text = "管理部门";
            }
            //专家
            else if (lbl_type.Text == "jyzj")
            {
                str_sql = "select url From t_dict where flm=8 and bm=11";
                str_jzsj = DBFun.ExecuteScalar(str_sql).ToString();
                lbl_UserType.Text = "评审专家";
            }
            //申报人员
            else if (lbl_type.Text == "jycpry")
            {
                lbl_UserType.Text = "个人申报";
                if (Request.QueryString["msg"] != null)
                    Response.Write(@"<script>alert('保存成功！');</script>");
                //判断申报截止日期
                str_sql = "select url+' 至 '+content  From t_dict where flm=10 and bm=1";
                str_jzsj = DBFun.ExecuteScalar(str_sql).ToString();
            }
            lbl_jzsj.Text = "提示：本次申报起止日期为 " + str_jzsj + " ，请各位老师在截止日期前提交申报信息。";
        }
    }
    protected void ibtn_Login_Click(object sender, ImageClickEventArgs e)
    {
        //Session.Clear();
        LoginIn();
    }

    #region 登陆
    private void LoginIn()
    {
        //生成的验证码被保存到session中
        #region 验证码
        if (Session["CheckCode"] != null)
        {
            string checkcode = Session["CheckCode"].ToString();
            if (this.tbx_yzm.Text != checkcode)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('验证码输入错误!')", true);
                return;
            }
        }
        #endregion

        #region 管理员登陆
        if (lbl_type.Text == "admin")
        {
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            str_sql = string.Format("select count(*) From master where admin_name='{0}'",
                tbx_UserName.Text);
            if (DBFun.ExecuteScalar(str_sql).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }


            str_sql = string.Format("select * From master where admin_name='{0}' and admin_pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(str_sql);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('密码不正确！');window.history.go(-1);</script>");
            }
            else
            {
                //string strsql = string.Format("Update master set Lnum=Lnum +1,LLoginIP='{0}',LLoginTime=#{1}# where admin_name='{2}'",
                //    Page.Request.UserHostAddress.ToString(), DateTime.Now.ToString(), UserDr["admin_name"].ToString());
                //DBFun.ExecuteSql(strsql);
                Session["admin_type"] = "admin";
                Session["admin_name"] = UserDr["admin_name"].ToString();
                Session["admin_id"] = UserDr["id"].ToString();
                Response.Redirect("Admin_index.aspx");


            }
        }
        #endregion

        #region 参评人员登陆
        else if (lbl_type.Text == "jycpry")
        {
            DataRow UserDr;
            //判断用户名
            str_sql = string.Format("select count(*) From t_teacher where jsh='{0}'",tbx_UserName.Text.Trim());
            if (DBFun.ExecuteScalar(str_sql).ToString() != "1")
            {
                //Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('用户名不存在!')");
                return;
            }
            //判断密码
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text.Trim(), "MD5");
            str_sql = string.Format("select jsh,pwd,jsm From t_teacher where jsh='{0}' and pwd='{1}'",
                tbx_UserName.Text.Trim(), pwd);
            UserDr = DBFun.GetDataRow(str_sql);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('密码不正确！');window.history.go(-1);</script>");
                return;
            }
            //如果认证成功，直接跳转进入申报系统；
            Session["jsh"] = UserDr["jsh"].ToString();
            Session["jsm"] = UserDr["jsm"].ToString();
            Session["appNo"] = DateTime.Today.Year + UserDr["jsh"].ToString();
            Response.Redirect("../user_index.aspx");            
        }
        #endregion

        #region 系部登陆
        else if (lbl_type.Text == "jyrs")
        {
            ////判断是否到截止日期，包含当天
            //str_sql = " SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 9 )) FROM t_dict;";
            //if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) < 0)
            //{
            //    Response.Write(@"<script>alert('部门申报截止日期已到，不能再申报了！');window.history.go(-1);</script>");
            //    return;
            //}
            str_sql = string.Format("select count(*) From t_dict where flm=13 and url = '{0}'",
                tbx_UserName.Text);
            if (DBFun.ExecuteScalar(str_sql).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            str_sql = string.Format("select * From t_dict where flm=13 and url = '{0}' and pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(str_sql);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('密码不正确！');window.history.go(-1);</script>");
                return;
            }
            //str_sql = "select * from t_dict where flm = 13 and url = '" + tbx_UserName.Text + "'";
            //Session["admin_type"] = lbl_type.Text;
            //Session["admin_name"] = UserDr["name"].ToString();
            //Session["admin_id"] = UserDr["url"].ToString();
            Session["dept_type"] = lbl_type.Text;
            Session["dept_name"] = UserDr["name"].ToString();
            Session["dept_id"] = UserDr["url"].ToString();
            Response.Redirect("renshi_index.aspx");

        }

        #endregion

        #region 专家登陆
        else if (lbl_type.Text == "jyzj")
        {
            ////判断是否到截止日期，包含当天
            //str_sql = " SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 11 )) FROM t_dict;";
            //if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) < 0)
            //{
            //    Response.Write(@"<script>alert('专家评审截止日期已到，不能再评审了！');window.history.go(-1);</script>");
            //    return;
            //}
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string str_UserName = tbx_UserName.Text;
            str_sql = "select count(*) from t_Expert where LoginName = '" + str_UserName + "'";
            if (DBFun.ExecuteScalar(str_sql).ToString() == "0")
            {
                Response.Write(@"<script>alert('用户名不存在！');location.replace(location.href);</script>");
                return;
            }

            str_sql = string.Format("select jsh as LoginName,jsm as UserName From t_teacher where jsh='{0}' and pwd='{1}' ", str_UserName, pwd);
            DataRow UserDr = DBFun.GetDataRow(str_sql);
            if (UserDr == null)
            {
                str_sql = string.Format("select * From t_Expert where LoginName='{0}' and pwd='{1}' ", str_UserName, pwd);
                UserDr = DBFun.GetDataRow(str_sql);
                if (UserDr == null)
                {
                    Response.Write(@"<script>alert('密码不正确！');location.replace(location.href);</script>");
                    return;
                }
            }
            
            str_sql = string.Format("Update t_Expert set Lnum=Lnum +1,LLoginIP='{0}',LLoginTime=#{1}# where LoginName='{2}' ",
                Page.Request.UserHostAddress.ToString(), DateTime.Now.ToString(), UserDr["LoginName"].ToString());
            DBFun.ExecuteSql(str_sql);

            Session["admin_type"] = lbl_type.Text;
            Session["admin_name"] = UserDr["UserName"].ToString();
            Session["admin_id"] = UserDr["LoginName"].ToString();
            Response.Redirect("./zj_index.aspx");
        }
        #endregion
    }
    #endregion
}
