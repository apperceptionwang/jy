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

public partial class PrintPreview_zhuanjia_psyjb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        binddata();
    }

    protected void binddata()
    {
        string str_sfzh = Request.QueryString["sfzh"];
        if (str_sfzh == "" || str_sfzh == null) return;
        string str_sql = "SELECT zjry.* ,yourname "+
                         "   FROM cpry,zjry "+
                         "   WHERE sfzh=cpry_sfzh and flag = 1 and zj_sfzh = '" + Session["admin_id"].ToString() + "' and cpry.sfzh = '" + str_sfzh + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        lbl_xm.Text = dr["yourname"].ToString();
        //lbl_fenshu_1.Text = dr["fs_pjys1"].ToString();
        //lbl_fenshu_2.Text = dr["fs_pjys2"].ToString();
        //lbl_fenshu_3.Text = dr["fs_pjys3"].ToString();
        //lbl_fenshu_4.Text = dr["fs_pjys4"].ToString();
        //lbl_fenshu_5.Text = dr["fs_pjys5"].ToString();
        //lbl_fenshu_6.Text = dr["fs_pjys6"].ToString();
        lbl_fenshu_1.Text = get_fenshu(dr["fs_pjys1"].ToString());
        lbl_fenshu_2.Text = get_fenshu(dr["fs_pjys2"].ToString());
        lbl_fenshu_3.Text = get_fenshu(dr["fs_pjys3"].ToString());
        lbl_fenshu_4.Text = get_fenshu(dr["fs_pjys4"].ToString());
        lbl_fenshu_5.Text = get_fenshu(dr["fs_pjys5"].ToString());
        lbl_fenshu_6.Text = get_fenshu(dr["fs_pjys6"].ToString());
        lbl_fenshu_7.Text = dr["fs_pjys_sum"].ToString();
        lbl_pingjia.Text = dr["jypj"].ToString();
    }

    protected string get_fenshu(string str_fenshu)
    {
        //①②③⑤④⑥⑦⑧⑨
        string str_fs1 = "①②③⑤④⑥⑦⑧⑨";
        string str_fs = "123456789";
        str_fs = str_fs.Replace(str_fenshu, str_fs1.Substring(Convert.ToInt16(str_fenshu) - 1, 1));
        return str_fs;
    }
}
