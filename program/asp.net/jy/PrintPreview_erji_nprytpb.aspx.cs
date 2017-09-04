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

public partial class PrintPreview_erji_nprytpb : System.Web.UI.Page
{
    string str_zjid;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin/admin_login.aspx?type=ejzj';</script>");
            return;
        }
        str_zjid = Request.QueryString["zjid"];
        bindData();
    }

    protected void bindData()
    {
        string str_sql = "select iif(fs_sftj='true','○','×') as sftj,yourname from ej_cpry,zjry,t_dict "+
            " where cpry_sfzh = sfzh and flm = 2 and dw = url and flag = 2 and zj_sfzh = '" +
               str_zjid + "' and edit_flag = false and ej_cpry.tj_flag = '推荐' and sh_flag = '通过' and t_dict.ej_tj_flag=true " +
               " order by url,id";
            //"where cpry_sfzh = sfzh and flag = 2 and zj_sfzh = '" +
            //Session["admin_id"].ToString() + "' and edit_flag = false and tj_flag = '推荐' and sh_flag = '通过' order by dw,id";
        DataTable dt = DBFun.dataTable(str_sql);
        Label lbl_Value;
        int i_id;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (i == 35) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_1");
            lbl_Value.Text = dt.Rows[i]["yourname"].ToString();

            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_2");
            lbl_Value.Text = dt.Rows[i]["sftj"].ToString();
        }
    }
}
