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

public partial class Index_jy : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str_sql;
            str_sql = "SELECT top 10 hot,leixing,id,iif(len(title)>23,left(title,22)+'…',title)+'('+format(shijian,'yyyy-mm-dd')+')' as biaoti FROM news where leibie = '新闻' and leixing='0'  order by shijian asc,id asc";
            DataView dv = DBFun.GetDataView(str_sql);
            GV_news.DataSource = dv;
            GV_news.DataBind();
            Session["dv_news"] = dv;
        }
    }
    protected void GV_news_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_news"];

        Response.Redirect("article.aspx?id=" + dv.Table.Rows[e.NewEditIndex]["id"].ToString());
    }
}