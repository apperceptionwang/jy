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

public partial class Admin_GroupEdit : System.Web.UI.Page
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
        DataView dv = DBFun.GetDataView("select bm,name from t_dict where flm = 1;");
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        TD_Add.Visible = true;
        lbl_editflag.Text = "update";
        lbl_id.Text = GridView1.Rows[e.NewEditIndex].Cells[0].Text;
        tbx_name.Text = GridView1.Rows[e.NewEditIndex].Cells[1].Text;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = string.Format("delete from t_dict where flm = {0} and bm = {1}",
                        1, Convert.ToInt16(dv.Table.Rows[e.RowIndex]["bm"]));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string str_sql = "";
        if (lbl_editflag.Text == "insert")
        {
            str_sql = "select maxbm from Q_MaxBM";
            int i_maxbm = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
            str_sql = string.Format("Insert Into t_dict (flm,bm,name) Values ({0},{1},'{2}')",
                             1, i_maxbm, tbx_name.Text);
        }
        else
        {
            str_sql = string.Format("update t_dict set name = '{0}' where flm = 1 and bm = {1}",
                               tbx_name.Text,lbl_id.Text);
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            bindData();
            TD_Add.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        TD_Add.Visible = true;
        lbl_editflag.Text = "insert";
        tbx_name.Text = "";
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_Add.Visible = false;
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from pszj";
        if (ddlist_type.SelectedValue != "all")
        {
            str_sql = str_sql + " where flag = 1 and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%'";
        }
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
    }
}
