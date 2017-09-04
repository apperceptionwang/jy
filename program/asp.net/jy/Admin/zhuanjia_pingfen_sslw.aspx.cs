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

public partial class Admin_zhuanjia_pingfen_sslw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["admin_id"] = "23412";
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            lbl_cpry_sfzh.Text = Request.QueryString["sfzh"];
            bindData();
        }
    }
    protected void bindData()
    {
        string str_sql = "select * from zjry where flag = 4 and zj_sfzh='" + Session["admin_id"].ToString() +
            "' and cpry_sfzh='" + lbl_cpry_sfzh.Text + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        str_sql = "select yourname from yxxwlw_cpry where sfzh='" + lbl_cpry_sfzh.Text + "'";
        lbl_xm.Text = DBFun.ExecuteScalar(str_sql).ToString();
        ListBox1.SelectedValue = dr["fs_pjys1"].ToString();
        ListBox2.SelectedValue = dr["fs_pjys2"].ToString();
        ListBox3.SelectedValue = dr["fs_pjys3"].ToString();
        ListBox4.SelectedValue = dr["fs_pjys4"].ToString();
        ListBox5.SelectedValue = dr["fs_pjys5"].ToString();
        ListBox6.SelectedValue = dr["fs_pjys6"].ToString();
        lbl_sum.Text = dr["fs_pjys_sum"].ToString();

        str_sql = "select tj_flag from pszj where flag = 4 and sfzh='" + Session["admin_id"].ToString() + "'";
        bool tj_flag = Convert.ToBoolean(DBFun.ExecuteScalar(str_sql));
        btn_commit.Visible = !tj_flag;
        btn_printpreview.Visible = tj_flag;
        if (tj_flag)
            Response.Write("<script>location.href = '../PrintPreview_zhuanjia_sslw.aspx?sfzh=" + lbl_cpry_sfzh.Text + "',target='_blank';</script>");

        try { rbtnlist_tuijian.SelectedValue = dr["fs_sftj"].ToString(); }
        catch { }
        ftb_content.Text = dr["jypj"].ToString();

    }


    protected void btn_commit_Click(object sender, EventArgs e)
    {
        string str_sql = "select count(*) from zjry where flag = 4 and zj_sfzh='" + Session["admin_id"].ToString() +
            "' and cpry_sfzh='" + lbl_cpry_sfzh.Text + "'";
        string ls_content = ftb_content.Text.Replace("'", "’");
        int i_count = CommFun.StringCounter(ftb_content.HtmlStrippedText);
        if (i_count > 200)
        {
            Response.Write("<script>alert('内容应少于200字！');</script>");
            return;
        }
        //if (ls_content == null || ls_content == "")
        //{
        //    Response.Write("<script>alert('推荐或不推荐理由不能为空！');</script>");
        //    return;
        //}
        if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
        {
            str_sql = string.Format("update zjry set fs_pjys1 = '{0}',fs_pjys2 = '{1}',fs_pjys3 = '{2}',fs_pjys4 = '{3}'," +
                     " fs_pjys5 = '{4}',fs_pjys6 = '{5}',fs_pjys_sum = '{6}',fs_sftj = '{7}',jypj = '{8}',psrq = '{9}'" +
                     " where flag = 4 and zj_sfzh='{10}' and cpry_sfzh='{11}'",
                     ListBox1.SelectedValue, ListBox2.SelectedValue, ListBox3.SelectedValue, ListBox4.SelectedValue,
                         ListBox5.SelectedValue, ListBox6.SelectedValue, lbl_sum.Text, rbtnlist_tuijian.SelectedValue,
                     ls_content, DateTime.Now.ToString("yyyy-MM-dd"), Session["admin_id"].ToString(), lbl_cpry_sfzh.Text);
        }
        else
        {
            str_sql = string.Format("insert into zjry (fs_pjys1,fs_pjys2,fs_pjys3,fs_pjys4,fs_pjys5,fs_pjys6," +
                        " fs_pjys_sum,fs_sftj,jypj,psrq,zj_sfzh,cpry_sfzh,flag) " +
                        " values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}',{12});",
                         ListBox1.SelectedValue, ListBox2.SelectedValue, ListBox3.SelectedValue, ListBox4.SelectedValue,
                         ListBox5.SelectedValue, ListBox6.SelectedValue, lbl_sum.Text, rbtnlist_tuijian.SelectedValue,
                         ls_content, DateTime.Now.ToString("yyyy-MM-dd"), Session["admin_id"].ToString(), lbl_cpry_sfzh.Text, 4);
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('评分成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('评分失败！');</script>");
        }
    }
    protected void btn_printpreview_Click(object sender, EventArgs e)
    {
        //Response.Redirect("../PrintPreview_zhuanjia_psyjb.aspx?sfzh="+lbl_cpry_sfzh.Text);
        Response.Write("<script>location.href = '../PrintPreview_zhuanjia_sslw.aspx?sfzh=" + lbl_cpry_sfzh.Text + "',target='_blank';</script>");
    }
    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("./zhuanjia_ry_list.aspx");
    }
    protected void rbtnlist_1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int i_sum = Convert.ToInt16(ListBox1.SelectedValue) +
               Convert.ToInt16(ListBox2.SelectedValue) +
               Convert.ToInt16(ListBox3.SelectedValue) +
               Convert.ToInt16(ListBox4.SelectedValue) +
               Convert.ToInt16(ListBox5.SelectedValue) +
               Convert.ToInt16(ListBox6.SelectedValue);
            lbl_sum.Text = i_sum.ToString();
        }
        catch
        {
            Response.Write("<script>alert('评判分数应为数字！');</script>");
        }
    }

    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        try
        {
            int i_sum = Convert.ToInt16(ListBox1.SelectedValue) +
               Convert.ToInt16(ListBox2.SelectedValue) +
               Convert.ToInt16(ListBox3.SelectedValue) +
               Convert.ToInt16(ListBox4.SelectedValue) +
               Convert.ToInt16(ListBox5.SelectedValue) +
               Convert.ToInt16(ListBox6.SelectedValue);
            lbl_sum.Text = i_sum.ToString();
        }
        catch
        {
            Response.Write("<script>alert('评判分数应为数字！');</script>");
        }
    }
}
