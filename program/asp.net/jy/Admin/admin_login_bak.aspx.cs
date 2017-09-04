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
using System.IO;

public partial class Admin_admin_login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lbl_type.Text = Request.QueryString["type"];
            
            
            //管理员
            if (lbl_type.Text == "" || lbl_type.Text == "admin")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                lbl_type.Text = "admin";
            }
            //正研级 专家
            else if (lbl_type.Text == "zhuanjia")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                IMG1.Src = "images/login_01_02.gif";
            }
            //人事部门
            else if (lbl_type.Text == "renshi")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                IMG1.Src = "images/login_01_04.gif";
            }
            //专业技术二级 申报人员
            else if (lbl_type.Text == "ejcpry")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                IMG1.Src = "images/login_01_05.gif";
                string strqry = "select url From t_dict where flm=8 and bm=9";
                if (Convert.ToDateTime(DBFun.ExecuteScalar(strqry)) <= DateTime.Now)
                {
                    Response.Write(@"<script>alert('报名截止日期已到！');window.history.go(-1);</script>");
                    return;
                }
            }
            //专业技术二级 专家登陆
            else if (lbl_type.Text == "ejzj")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                IMG1.Src = "images/login_01_02.gif";
            }
            //特殊津贴 申报人员
            else if (lbl_type.Text == "tscpry")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                IMG1.Src = "images/login_01_06.gif";
                string strqry = "select url From t_dict where flm=8 and bm=11";
                if (Convert.ToDateTime(DBFun.ExecuteScalar(strqry)) <= DateTime.Now)
                {
                    Response.Write(@"<script>alert('报名截止日期已到！');window.history.go(-1);</script>");
                    return;
                }
            }
            //特殊津贴 专家登陆
            else if (lbl_type.Text == "tszj")
            {
                lbl_leixing.Visible = false;
                ddlist_leixing.Visible = false;
                IMG1.Src = "images/login_01_02.gif";
            }
            //正研级申报人员
            else
            {
                if (Request.QueryString["msg"]!=null)
                    Response.Write(@"<script>alert('保存成功！');</script>");
                lbl_shuoming.Visible = true;
                //imgbtn_zc.Visible = true;
                IMG1.Src = "images/login_01_01.gif";
                string strqry = "select url From t_dict where flm=8 and bm=3";
                if (Convert.ToDateTime(DBFun.ExecuteScalar(strqry)) <= DateTime.Now)
                {
                    Response.Write(@"<script>alert('报名截止日期已到！');window.history.go(-1);</script>");
                    return;
                }
            }
        }
    }



    #region 登陆
    private void btnevent()
    {
        //管理员登陆

        #region 管理员登陆
        if (lbl_type.Text == "admin")
        {
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string strqry = string.Format("select count(*) From master where admin_name='{0}'",
                tbx_UserName.Text);
            if (DBFun.ExecuteScalar(strqry).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }


            strqry = string.Format("select * From master where admin_name='{0}' and admin_pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(strqry);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('密码不正确！');window.history.go(-1);</script>");
            }
            else
            {
                ////登陆成功                
                //if (ckb_AutoLogin.Checked)
                //{
                //    HttpCookie ck = new HttpCookie("UserInfoSave");
                //    ck.Expires = DateTime.Now.AddDays(30);
                //    ck.Values.Add("ID", UserDr["id"].ToString());
                //    ck.Values.Add("UserName", UserDr["UserName"].ToString());
                //    ck.Values.Add("UserPwd", UserDr["UserPwd"].ToString());
                //    Response.Cookies.Add(ck);
                //}
                ////Enter(UserDr);

                string strsql = string.Format("Update master set Lnum=Lnum +1,LLoginIP='{0}',LLoginTime=#{1}# where admin_name='{2}'",
                    Page.Request.UserHostAddress.ToString(), DateTime.Now.ToString(), UserDr["admin_name"].ToString());
                DBFun.ExecuteSql(strsql);
                Session["admin_type"] = "admin";
                Session["admin_name"] = UserDr["admin_name"].ToString(); 
                Session["admin_id"] = UserDr["id"].ToString(); 
                Response.Redirect("Admin_index.aspx");


            }
        }
        #endregion
        
        //人事部门登陆

        #region 人事部门登陆
        else if (lbl_type.Text == "renshi")
        {
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string strqry = string.Format("select count(*) From t_dict where flm=2 and url = '{0}'",
                tbx_UserName.Text);
            if (DBFun.ExecuteScalar(strqry).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }


            strqry = string.Format("select * From t_dict where flm=2 and url = '{0}' and pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(strqry);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('用户名或密码不正确！');window.history.go(-1);</script>");
                return;
            }

            strqry = "select tj_flag from t_dict where flm = 2 and url = '" + tbx_UserName.Text + "'";
              
            Session["admin_type"] = "renshi"; 
            Session["admin_name"] = UserDr["name"].ToString();
            Session["admin_id"] = UserDr["url"].ToString();
            //if (DBFun.ExecuteScalar(strqry).ToString().ToLower() == "true")
            //{
            //    Response.Redirect("renshi_list.aspx");
            //}  
            Response.Redirect("renshi_index.aspx");

        }

        #endregion

        //正高级参评人员登陆

        #region 正高级参评人员登陆
        else if (lbl_type.Text == "1")
        {
            //判断用户名
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string strqry = string.Format("select count(sfzh) From cpry where sfzh='{0}'",
                tbx_UserName.Text);
           
            if (DBFun.ExecuteScalar(strqry).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }
            
            //判断密码
            strqry = string.Format("select sfzh,pwd,yourname From cpry where sfzh='{0}' and pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(strqry);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('用户名或密码不正确！');window.history.go(-1);</script>");
                return;
            }

            //判断是否到截止日期
            strqry = "SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 3 ))"+
                     "   FROM t_dict"+
                     "   WHERE flm=8 AND t_dict.bm=3;";
            if (Convert.ToInt16( DBFun.ExecuteScalar(strqry)) < 0 )
            {
                Response.Write(@"<script>alert('报名截止日期已到，不能再报名了！');window.history.go(-1);</script>");
                return;
            }
            else
            {
                Session["sfzh"] = UserDr["sfzh"].ToString();
                Session["name"] = UserDr["yourname"].ToString();
                strqry = "select count(*) from cpry where sfzh = '" + tbx_UserName.Text + "' and edit_flag = true ";
                if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) != 1)
                {
                    strqry = "select sbzw from cpry where sfzh = '" + tbx_UserName.Text + "'";
                    if (DBFun.ExecuteScalar(strqry).ToString() == "研究员")
                        Response.Redirect("../PrintPreview_yjy.aspx");
                    else
                        Response.Redirect("../PrintPreview_zyjgg.aspx");
                }
                Response.Redirect("../zgsb_shenbao.aspx");
            }
        }
        #endregion

        //专家登陆 正高级
        else if (lbl_type.Text == "zhuanjia")
        {
            zj_Login(1);
        }

        //专家登陆 专业技术二级
        else if (lbl_type.Text == "ejzj")
        {
            zj_Login(2);
        }

        //专家登陆 特殊津贴人员
        else if (lbl_type.Text == "tszj")
        {
            zj_Login(3);
        }

        //参评人员登陆 专业技术二级

        #region 参评人员登陆 专业技术二级
        else if (lbl_type.Text == "ejcpry")
        {
            //判断用户名
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string strqry = string.Format("select count(sfzh) From ej_cpry where sfzh='{0}'",
                tbx_UserName.Text);

            if (DBFun.ExecuteScalar(strqry).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }

            //判断密码
            strqry = string.Format("select sfzh,pwd,yourname From ej_cpry where sfzh='{0}' and pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(strqry);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('用户名或密码不正确！');window.history.go(-1);</script>");
                return;
            }

            //判断是否到截止日期
            strqry = "SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 9 ))" +
                     "   FROM t_dict" +
                     "   WHERE flm=8 AND t_dict.bm=9;";
            if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) < 0)
            {
                Response.Write(@"<script>alert('报名截止日期已到，不能再报名了！');window.history.go(-1);</script>");
                return;
            }
            else
            {
                Session["sfzh"] = UserDr["sfzh"].ToString();
                Session["name"] = UserDr["yourname"].ToString();
                strqry = "select count(*) from ej_cpry where sfzh = '" + tbx_UserName.Text + "' and edit_flag = true ";
                if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) != 1)
                {
                    Response.Redirect("../PrintPreview_erji.aspx");
                }
                Response.Redirect("../zyjsej.aspx");
            }
        }
        #endregion

        //参评人员登陆 特殊津贴人员

        #region 参评人员登陆 特殊津贴人员
        else if (lbl_type.Text == "tscpry")
        {
            //判断用户名
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string strqry = string.Format("select count(sfzh) From ts_cpry where sfzh='{0}'",
                tbx_UserName.Text);

            if (DBFun.ExecuteScalar(strqry).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }

            //判断密码
            strqry = string.Format("select sfzh,pwd,yourname From ts_cpry where sfzh='{0}' and pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(strqry);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('用户名或密码不正确！');window.history.go(-1);</script>");
                return;
            }

            //判断是否到截止日期
            strqry = "SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 11 ))" +
                     "   FROM t_dict" +
                     "   WHERE flm=8 AND t_dict.bm=11;";
            if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) < 0)
            {
                Response.Write(@"<script>alert('报名截止日期已到，不能再报名了！');window.history.go(-1);</script>");
                return;
            }
            else
            {
                Session["sfzh"] = UserDr["sfzh"].ToString();
                Session["name"] = UserDr["yourname"].ToString();
                strqry = "select count(*) from ts_cpry where sfzh = '" + tbx_UserName.Text + "' and edit_flag = true ";
                if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) != 1)
                {
                    Response.Redirect("../PrintPreview_ts.aspx");
                }
                Response.Redirect("../tsjtry.aspx");
            }
        }
        #endregion

        //参评人员登陆 优秀论文人员

        #region 参评人员登陆 优秀论文人员
        else if (lbl_type.Text == "lwcpry")
        {
            //判断用户名
            string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
            string strqry = string.Format("select count(sfzh) From lw_cpry where sfzh='{0}'",
                tbx_UserName.Text);

            if (DBFun.ExecuteScalar(strqry).ToString() != "1")
            {
                Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
                return;
            }

            //判断密码
            strqry = string.Format("select sfzh,pwd,yourname From lw_cpry where sfzh='{0}' and pwd='{1}'",
                tbx_UserName.Text, pwd);
            DataRow UserDr = DBFun.GetDataRow(strqry);
            if (UserDr == null)
            {
                Response.Write(@"<script>alert('用户名或密码不正确！');window.history.go(-1);</script>");
                return;
            }

            //判断是否到截止日期
            strqry = "SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 20 ))" +
                     "   FROM t_dict" +
                     "   WHERE flm = 8 AND t_dict.bm = 20;";
            if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) < 0)
            {
                Response.Write(@"<script>alert('报名截止日期已到，不能再报名了！');window.history.go(-1);</script>");
                return;
            }
            else
            {
                Session["sfzh"] = UserDr["sfzh"].ToString();
                Session["name"] = UserDr["yourname"].ToString();
                strqry = "select count(*) from lw_cpry where sfzh = '" + tbx_UserName.Text + "' and edit_flag = true ";
                if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) != 1)
                {
                    //打印界面
                    Response.Redirect("../PrintPreview_lw.aspx");
                }
                //申报界面
                Response.Redirect("../lw_sb.aspx");
            }
        }
        #endregion

    }
    #endregion

    #region 专家登陆
    protected void zj_Login(int flag)
    {
        string pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");
        string str_sfzh = tbx_UserName.Text;
        string strqry = "select count(*) from pszj where sfzh = '" + str_sfzh + "' and flag = " + flag.ToString();
        if (DBFun.ExecuteScalar(strqry).ToString() == "0")
        {
            Response.Write(@"<script>alert('用户名不存在！');</script>");
            return;
        }
        //if (DBFun.ExecuteScalar(strqry).ToString() != "0")
        //{
        //    strqry = "select iif(isnull(lnum),0,lnum) From pszj where sfzh = '" + tbx_UserName.Text + "' and flag = " + flag.ToString();
        //    if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) != 0)
        //    {
        //        Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
        //        return;
        //    }
        //}
        //else
        //{
        //    strqry = string.Format("select count(*) From pszj where LoginName='{0}' and flag = "+flag.ToString(), tbx_UserName.Text);
        //    if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) == 0)
        //    {
        //        Response.Write(@"<script>alert('用户名不存在！');window.history.go(-1);</script>");
        //        return;
        //    }
        //    strqry = string.Format("select sfzh From pszj where LoginName='{0}' and flag = " + flag.ToString(), tbx_UserName.Text);
        //    str_sfzh = DBFun.ExecuteScalar(strqry).ToString();
        //}
        strqry = string.Format("select * From pszj where sfzh='{0}' and pwd='{1}' and flag = " + flag.ToString(),
            str_sfzh, pwd);
        DataRow UserDr = DBFun.GetDataRow(strqry);
        if (UserDr == null)
        {
            Response.Write(@"<script>alert('用户名或密码不正确！');window.history.go(-1);</script>");
        }
        else
        {
            strqry = string.Format("Update pszj set Lnum=Lnum +1,LLoginIP='{0}',LLoginTime=#{1}# where sfzh='{2}' and flag = " + flag.ToString(),
                Page.Request.UserHostAddress.ToString(), DateTime.Now.ToString(), UserDr["sfzh"].ToString());
            DBFun.ExecuteSql(strqry);
            if (flag == 1)
            {
                Session["admin_type"] = "zhuanjia";
            }
            else if (flag == 2)
            {
                Session["admin_type"] = "ejzj";
            }
            else if (flag == 3)
            {
                Session["admin_type"] = "tszj";
            }
            Session["admin_name"] = UserDr["UserName"].ToString();
            Session["admin_id"] = UserDr["sfzh"].ToString();
            Response.Redirect("./zhuanjia_index.aspx");
        }
    }
    #endregion


    protected void ibtn_Login_Click(object sender, ImageClickEventArgs e)
    {
        Session.Clear();
        btnevent();
    }
    protected void ibtn_Return_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../default.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("../reg.aspx");
    }
}
