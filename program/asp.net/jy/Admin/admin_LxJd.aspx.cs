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

public partial class admin_LxJd : System.Web.UI.Page
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
            DBFun.FillDwList(ddlist_Status, str_sql);
            ddlist_Status.Items.Insert(0, "全部");
            str_sql = "SELECT name,name from t_dict where flm=13 ;";
            DBFun.FillDwList(ddlist_sqbm, str_sql);
            ddlist_sqbm.Items.Insert(0, "全部");
            //str_sql = "select distinct left(appNo,4)&'年',left(appNo,4) from t_teacher_list order by left(appNo,4) desc";
            //DBFun.FillDwList(ddlist_year, str_sql);
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " SELECT appNo, ktmc, szbm,sqbm, sqr,name as xmzt,zzlb,Status " +
                  " from   t_teacher_list a,t_dict b " +
                  " WHERE  flm=11 and status = bm " +
                  " and    left(appNo,4) = year(date()) " +
                  " and    Status >= (select url from t_dict where flm = 11 and bm = 2)";
                   
        if (ddlist_sqbm.SelectedIndex != 0)
            str_sql += " and ( sqbm = '" + ddlist_sqbm.SelectedValue + "') ";
        if (ddlist_tjzt0.SelectedIndex != 0)
            str_sql += " and ( Status = " + ddlist_tjzt0.SelectedValue + ") ";
        if (tbx_spm.Text.Trim() != "")
            str_sql += " and ( sqr LIKE '%" + tbx_spm.Text.Trim() + "%' " +
                       " or   mid(appNo,5) LIKE '%" + tbx_spm.Text.Trim() + "%') ";
        str_sql += " order by sqbm ,id ";
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
        int i_index = e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        tbx_username.Text = dv.Table.Rows[i_index]["sqr"].ToString();
        tbx_appNo.Text = dv.Table.Rows[i_index]["appNo"].ToString();
        try { ddlist_dept.SelectedValue = dv.Table.Rows[i_index]["szbm"].ToString(); }
        catch { }
        try { ddlist_Status.SelectedValue = dv.Table.Rows[i_index]["Status"].ToString(); }
        catch { }
        
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        str_sql = "update t_teacher_list set szbm='" + ddlist_dept.SelectedValue + "',Status=" + ddlist_Status.SelectedValue + " where appNo='" + tbx_appNo.Text + "' ";
        
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

    #region 取消
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 按首拼码查找
    protected void btn_find_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 查看
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        str_sql= ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        Session["type"] = "user";
        Session["appNo"] = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString();
        Session["jsh"] = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString().Substring(5);
        Session["jsm"] = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sqr"].ToString();
        Response.Redirect("../user_tb.aspx?type=view");
    }
    #endregion

    //private void checkCache()
    //{
    //    //检查缓存是否存在
    //    if (Cache["dvlist"] == null)
    //    {
    //        //绑定数据,显示用户
    //        dv = DBFun.GetDataView(Session["strqry"].ToString());
    //        AspNetPager1.RecordCount = dv.Table.Rows.Count;
    //        Cache.Insert("dvlist", (DataView)dv, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0));
    //    }
    //}

    #region 导出到excel
    protected void btn_exp2Excel_Click(object sender, EventArgs e)
    {
        str_sql = " SELECT appNo as 申报号,id as 部门推荐顺序, ktmc as 课题名称, sqr as 申请人, sqbm as 申报部门,name as 项目状态, zzlb as 资助类别 " +
                  " from   t_teacher_list a,t_dict b " +
                  " WHERE  flm=11 and status = bm " +
                  " and    left(appNo,4) = year(date()) " +
                  " and    Status > (select url from t_dict where flm = 11 and bm = 1)";

        if (ddlist_sqbm.SelectedIndex != 0)
            str_sql += " and ( sqbm = '" + ddlist_sqbm.SelectedValue + "') ";
        if (ddlist_tjzt0.SelectedIndex != 0)
            str_sql += " and ( Status = " + ddlist_tjzt0.SelectedValue + ") ";
        if (tbx_spm.Text.Trim() != "")
            str_sql += " and ( sqr LIKE '%" + tbx_spm.Text.Trim() + "%' " +
                       " or   mid(appNo,5) LIKE '%" + tbx_spm.Text.Trim() + "%') ";
        str_sql += " order by sqbm ,id ";
        ExcelManager.Exp2Excel(this.Page, str_sql);
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
}