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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str_sql;
            str_sql = "SELECT top 20 hot,leixing,id,title+'('+format(shijian,'mm-dd')+')' as biaoti FROM news where leibie = '新闻'  order by shijian asc,id asc";
            DataView dv = DBFun.GetDataView(str_sql);
            GV_news.DataSource = dv;
            GV_news.DataBind();
            Session["dv_news"] = dv;


            //更改数据库数据类型
            //str_sql = "alter table cpry alter column cdrw_gg_khyx1 varchar(255)";
            //DBFun.ExecuteSql(str_sql);
            //str_sql = "alter table cpry alter column cdrw_gg_khcz1 varchar(255)";
            //DBFun.ExecuteSql(str_sql);
            //str_sql = "alter table cpry alter column cdrw_gg_khyx2 varchar(255)";
            //DBFun.ExecuteSql(str_sql);
            //str_sql = "alter table cpry alter column cdrw_gg_khcz2 varchar(255)";
            //DBFun.ExecuteSql(str_sql);
            str_sql = "select * from cpry";
            DataTable dt = DBFun.dataTable(str_sql);

            if (!dt.Columns.Contains("score_zj"))
            {
                str_sql = "alter table cpry add COLUMN score_zj double;";
                DBFun.ExecuteSql(str_sql);
            }
        }
    }


    protected void GV_news_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_news"];

        Response.Redirect("article.aspx?id=" + dv.Table.Rows[e.NewEditIndex]["id"].ToString());
    }
    protected void ImgBtn_zhuce_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("reg.aspx");
    }

    protected void ImgBtn_shenqing_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }
    protected void ImgBtn_renshi_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=renshi");
    }
    protected void ImgBtn_zhuanjia_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=zhuanjia");
    }

    protected void imgbtn_ej_sb_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=ejcpry");
    }
    protected void imgbtn_ts_sb_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admin/admin_login.aspx?type=tscpry");
    }
}
