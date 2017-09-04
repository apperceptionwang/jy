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

public partial class Admin_fenpei : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            string str_sql = "select flag from master where admin_name = '" + Session["admin_name"].ToString() + "'";
            if ((int)DBFun.ExecuteScalar(str_sql) != 2)
            {
                Response.Write("<script>alert('您没有权限访问此页面！');location.href = './main.aspx';</script>");
                return;
            }
            bindData();
        }
        
    }

    protected void bindData()
    {
        DBFun.FillDwList(ddlist_zj, "select bm,name from t_dict where flm = 1");
        DBFun.FillDwList(ddlist_cpry, "select bm,name from t_dict where flm = 3");

        DataView dv = DBFun.GetDataView(" SELECT aa.bm as id ,zj.name as zj ,cpry.name as cpry from t_dict as aa,"+
                                       " (select bm,name from t_dict where flm = 1) as zj,"+
                                       " (select bm,name from t_dict where flm = 3) as cpry"+
                                       " where aa.flm = 4 and format(zj.bm,'#') = aa.name and format(cpry.bm,'#') = aa.url");
        gv_detail.DataSource = dv;
        gv_detail.DataBind();
        Session["dv_detail"] = dv;
    }

    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string str_sql;
        string str_ryid ="", str_zjid = "";
        str_zjid = ddlist_zj.SelectedValue;
        str_ryid = ddlist_cpry.SelectedValue;
        int int_maxbm = Convert.ToInt16(DBFun.ExecuteScalar("select iif(isnull(max(bm)),1,max(bm)+1) AS maxbm from t_dict where flm = 4"));
        str_sql = string.Format("insert into t_dict (flm,bm,name,url) values ({0},{1},'{2}','{3}')", 4, int_maxbm, str_zjid, str_ryid);
        if (!DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存成功！');</script>");
            bindData();

        }
        
    }
   



    protected void gv_detail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        
        string str_sql = string.Format("delete from t_dict where flm = 4 and bm = {0}",
                        Convert.ToInt16(gv_detail.Rows[e.RowIndex].Cells[0].Text));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
    }
    protected void gv_detail_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        Response.Redirect("fenpei_info.aspx?Groupid="+gv_detail.Rows[e.NewSelectedIndex].Cells[0].Text);
    }
}
