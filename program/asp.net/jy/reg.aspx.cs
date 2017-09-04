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

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_Reg_Click(object sender, EventArgs e)
    {
        string str_sql = "select count(*) from cpry where sfzh = '" + tbx_sfzh.Text + "'";
        if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
        {
            Response.Write(@"<script>alert('一个身份证号只能注册一次，该身份证号已经注册过了！');</script>");
            return;
        }
        string str_pwd =  System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_Pwd.Text, "MD5");

        str_sql = string.Format("insert into cpry (yourname, pwd, sfzh,tj_flag) values ( '{0}',  '{1}', '{2}','{3}')",
                    tbx_UserName.Text.Trim(),str_pwd,tbx_sfzh.Text.Trim(),"未审核");
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('注册成功！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=zgcpry&msg=true");
            
        }
        else
        {
            Response.Write("<script>alert('注册失败！');</script>");
        }
    }
    protected void ImgBtn_shenqing_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }
    protected void ImgBtn_pingshen_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zhuanjia");
    }
    protected void ImgBtn_zhuce_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("reg.aspx");
    }
    protected void lbtn_login_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }
}
