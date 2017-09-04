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

public partial class admin_LxxmZt : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region  页面加载
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
            str_sql = "SELECT name,name from t_dict where flm=1 ;";
            DBFun.FillDwList(ddlist_dept, str_sql);
            str_sql = "SELECT url,name from t_dict where flm=11 ;";
            DBFun.FillDwList(ddlist_xmzt0, str_sql);
            ddlist_xmzt0.Items.Insert(0, "全部");
            DBFun.FillDwList(ddlist_xmzt, str_sql);
            ddlist_xmzt.Items.Insert(0, "全部");
            str_sql = "SELECT name,name from t_dict where flm=13 ;";
            DBFun.FillDwList(ddlist_sqbm, str_sql);
            ddlist_sqbm.Items.Insert(0, "全部");
            str_sql = "select content from t_dict where flm = 14 and bm =3";
            str_sql = DBFun.ExecuteScalar(str_sql).ToString();
            DBFun.FillDwList(ddlist_year, str_sql);

            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        //str_sql = " SELECT a.appNo,a.jsh, appyear, a.ktmc, a.sqbm, a.sqr, xmzt,edit_flag, iif(edit_flag,'否','是') as tj, c.tj_flag AS bmtj " +
        //          "   FROM t_teacher_list as a, t_teacher as b, t_dict as c "+
        //          "  WHERE a.jsh = b.jsh and a.sqbm = c.name and flm=13 and not edit_flag and sh1 and c.tj_flag ";
        str_sql = "SELECT appNo, a.ktmc, Status,a.sqbm, a.sqr,c.name as xmzt," +
                  "       cGroup1, a.id, pm, a.xmbh, zzlb, " + 
                  "       mid(appNo,5) as jsh, " +
                  "       left(appNo,4) as appYear "+
                  "FROM   t_teacher_list a,t_teacher b, t_dict c " +
                  "WHERE  mid(a.appNo,5) = b.jsh and flm=11 and status = bm "+
                  //"  and left(appNo,4) = year(date()) " +
                  //"  and a.sqbm in (select name from t_dict where flm=13 and tj_flag) " +
                  "  and Status between (select url from t_dict where flm= 11 and bm = 4) and (select url from t_dict where flm= 11 and bm = 5)";
        if (ddlist_year.SelectedValue != "")
            str_sql += " and ( left(appNo,4) = " + ddlist_year.SelectedValue + ") ";
        if (ddlist_xmzt0.SelectedIndex != 0)
            str_sql += " and ( Status = " + ddlist_xmzt0.SelectedValue + ") ";
        if (ddlist_sqbm.SelectedIndex != 0)
            str_sql += " and ( a.sqbm = '" + ddlist_sqbm.SelectedValue + "') ";
        if (tbx_spm.Text.Trim() != "")
            str_sql += " and (( spm LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( a.sqr LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( mid(appNo,5) LIKE '%" + tbx_spm.Text.Trim() + "%')) ";
        str_sql += " order by sqbm,sqr";
        ViewState["sql"] = str_sql;
        dv = DBFun.GetDataView(str_sql);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;
        TD_AddUser.Visible = false;
    }
    #endregion
    
    #region 修改
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        bindData();
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        TD_AddUser.Visible = true;
        int i_rownum = e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        tbx_username.Text = dv.Table.Rows[i_rownum]["sqr"].ToString();
        tbx_appNo.Text = dv.Table.Rows[i_rownum]["appNo"].ToString();
        try { ddlist_dept.SelectedValue = dv.Table.Rows[i_rownum]["sqbm"].ToString(); }
        catch { }
        try { ddlist_xmzt.SelectedValue = dv.Table.Rows[i_rownum]["Status"].ToString(); }
        catch { }
        
    }
    #endregion

    #region 查看
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        int i_rownum = e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        Session["type"] = "user";
        Session["appNo"] = dv.Table.Rows[i_rownum]["appNo"].ToString();
        Session["jsh"] = dv.Table.Rows[i_rownum]["jsh"].ToString();
        Session["jsm"] = dv.Table.Rows[i_rownum]["sqr"].ToString();
        Response.Redirect("../user_tb.aspx?type=view");
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        str_sql = " update t_teacher_list "+
                  " set sqbm='" + ddlist_dept.SelectedValue + "',Status=" + ddlist_xmzt.SelectedItem.Text +
                  " where  appNo='" + tbx_appNo.Text + "' ";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            bindData();
            TD_AddUser.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    #endregion

    #region 取消按钮
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 查找
    protected void btn_find_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 显示行号
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            int id = e.Row.RowIndex + 1 + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
            e.Row.Cells[0].Text = id.ToString();
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            e.Row.Attributes["style"] = "Cursor:hand";
        }
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

}