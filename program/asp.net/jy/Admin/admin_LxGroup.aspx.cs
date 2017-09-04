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

public partial class admin_LxGroup : System.Web.UI.Page
{
    DataView dv;
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!CommFun.IsAdmin(Session["admin_name"].ToString()))
        {
            Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
        }
        if (!IsPostBack)
        {
            bindData();
        }
    }
    protected void bindData()
    {
        str_sql = "select bm,name from t_dict where flm = 3 order by bm;";
        dv = DBFun.GetDataView(str_sql);
        ViewState["sql"] = str_sql;
        GridView1.DataSource = dv;
        GridView1.DataBind();
        CommFun.Add_ConfirmAttrib(GridView1, "");
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
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        str_sql = string.Format("delete from t_dict where flm = {0} and bm = {1}",
                        3, Convert.ToInt16(dv.Table.Rows[e.RowIndex]["bm"]));

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
            str_sql = "SELECT iif(isnull(max(bm)),1,max(bm)+1) AS maxbm FROM t_dict WHERE flm=3";
            int i_maxbm = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
            str_sql = string.Format("Insert Into t_dict (flm,bm,name) Values ({0},{1},'{2}')",
                             3, i_maxbm, tbx_name.Text);
        }
        else
        {
            str_sql = string.Format("update t_dict set name = '{0}' where flm = 3 and bm = {1}",
                               tbx_name.Text, lbl_id.Text);
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
    
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            int id = e.Row.RowIndex + 1 ;
            e.Row.Cells[0].Text = id.ToString();
        }
        //如果是绑定数据行 
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            e.Row.Attributes["style"] = "Cursor:hand";
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[2].Controls[2]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除:\"" + e.Row.Cells[1].Text + "\"吗?')");
            }
        } 
    }
}
