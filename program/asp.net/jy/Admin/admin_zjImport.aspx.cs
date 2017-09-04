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
using System.Data.OleDb;
using System.IO;


public partial class admin_zjImport : System.Web.UI.Page
{
    string str_sql;
    DataView dv;

    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null) 
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        if (!CommFun.IsAdmin(Session["admin_name"].ToString())) 
            Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
        lbl_type.Text = Request.QueryString["type"];
        if (!IsPostBack)
        {
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        str_sql = "select * from t_Expert where LoginName not in ( select LoginName from t_ExpertList" + lbl_type.Text + " where appYear=year(date())) ";
        if (ddlist_type.SelectedValue != "all")
        {
            str_sql += " and "+ ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%' ";
        }
        str_sql += "order by loginname ";
        dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion
    
    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion

    #region 设置每页显示条数
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16( ddl_PageSize.SelectedValue);
        bindData();
    }
    #endregion

    #region 确定
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        Import();
    }
    #endregion

    #region 确定并返回
    protected void btn_okReturn_Click(object sender, EventArgs e)
    {
        Import();
        if (lbl_type.Text == "0")
            Response.Write("<script>location.href = './admin_LxzjGroup" + lbl_type.Text + ".aspx';</script>");
        else if (lbl_type.Text == "1")
            Response.Write("<script>location.href = './admin_LxzjGroup" + lbl_type.Text + ".aspx';</script>");
        else if (lbl_type.Text == "2")
            Response.Write("<script>location.href = './admin_ZqzjGroup.aspx';</script>");
        else if (lbl_type.Text == "3")
            Response.Write("<script>location.href = './admin_Jt1zjGroup.aspx';</script>");
    }
    #endregion

    #region 返回
    protected void btn_Return_Click(object sender, EventArgs e)
    {
        
        if (lbl_type.Text == "0")
            Response.Redirect("admin_LxzjGroup" + lbl_type.Text + ".aspx");
        else if (lbl_type.Text == "1")
            Response.Redirect("admin_LxzjGroup" + lbl_type.Text + ".aspx");
        else if (lbl_type.Text == "2")
            Response.Redirect("admin_ZqzjGroup.aspx");
        else if (lbl_type.Text == "3")
            Response.Redirect("admin_Jt1zjGroup.aspx");
    }
    #endregion

    #region 把专家移动到组群Import
    protected void Import()
    {
        string strOpid = "";

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[1].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("('" + id);
                else
                    strOpid += ("','" + id);
            }
        }
        strOpid += "')";
        if (strOpid == "')")
        {
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
            return;
        }
        else
        {
            str_sql = string.Format("insert into t_ExpertList" + lbl_type.Text + " (LoginName) select LoginName from t_Expert where LoginName in {0}", strOpid);
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('导入成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

}
