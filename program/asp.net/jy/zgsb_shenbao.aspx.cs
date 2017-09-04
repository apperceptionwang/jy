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

public partial class zgsb_shenbao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str_sql = "select name,content from t_dict where flm = 8 and bm = 2";
            DataRow dr = DBFun.GetDataRow(str_sql);
            if (dr == null) return;
            lbl_content.Text = dr["content"].ToString();

            str_sql = string.Format("select edit_flag From cpry where sfzh='{0}'",Session["sfzh"].ToString());
            if (DBFun.ExecuteScalar(str_sql).ToString().ToLower() == "false")
            {
                str_sql = string.Format("select sh_flag From cpry where sfzh='{0}'", Session["sfzh"].ToString());
                dr = DBFun.GetDataRow(str_sql);
                lbl_content.Text = dr["sh_flag"].ToString();

            }
            else
            {
                str_sql = string.Format("select ydsm From cpry where sfzh='{0}'", Session["sfzh"].ToString());
                if (DBFun.ExecuteScalar(str_sql).ToString().ToLower() == "false")
                {
                    cbx_agree.Visible = true;
                    imgbtn_Next.Enabled = false;
                    imgbtn_Next.ImageUrl = "./img/next_notenabled.gif";
                }
                else
                {
                    cbx_agree.Visible = false;
                    imgbtn_Next.Enabled = true;
                    imgbtn_Next.ImageUrl = "./img/next.gif";
                }
            }
        }
    }
    protected void lbtn_next_Click(object sender, EventArgs e)
    {
        string str_sql = string.Format("select edit_flag From cpry where sfzh='{0}'",
           Session["sfzh"].ToString());
        if (DBFun.ExecuteScalar(str_sql).ToString().ToLower() == "false")
        {
            Response.Write(@"<script>alert('信息已提交，不能修改！');</script>");
            return;
        }
        Response.Redirect("zgsb_1.aspx");
    }

    protected void imgbtn_ChangePassword_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/password.aspx");
        
    }
    protected void imgbtn_Next_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = string.Format("select edit_flag From cpry where sfzh='{0}'",
           Session["sfzh"].ToString());
        if (DBFun.ExecuteScalar(str_sql).ToString().ToLower() == "false")
        {
            Response.Write(@"<script>alert('信息已提交，不能修改！');</script>");
            return;
        }
        str_sql = string.Format("update cpry set ydsm = true where sfzh='{0}'",Session["sfzh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Redirect("zgsb_1.aspx");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        }
        
    }
    protected void cbx_agree_CheckedChanged(object sender, EventArgs e)
    {
        imgbtn_Next.Enabled = cbx_agree.Checked;
        if (!imgbtn_Next.Enabled)
            imgbtn_Next.ImageUrl = "./img/next_notenabled.gif";
        else
            imgbtn_Next.ImageUrl = "./img/next.gif";
        imgbtn_Next.Focus();
    }
}
