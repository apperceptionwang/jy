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


public partial class admin_Jt5xmConfirm : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region 页面加载
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
            str_sql = "exec Q_dict_flm3";
            DBFun.FillDwList(ddlist_Group, str_sql);
            ddlist_Group.Items.Insert(0, "全部");
            str_sql = "SELECT url,name from t_dict where flm=11 ;";
            DBFun.FillDwList(ddlist_xmzt, str_sql);
            ddlist_xmzt.Items.Insert(0, "全部");
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            try
            {
                ddl_PageSize.SelectedValue = ConfigurationManager.AppSettings.Get("PageSize");
            }
            catch
            {
                ddl_PageSize.SelectedIndex = 0;
            }
            bindData();
            this.GridView1.SelectedIndex = -1;
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        //str_sql = " SELECT a.jsh, appyear, a.ktmc, a.sqbm, a.sqr, xmzt,edit_flag, iif(edit_flag,'否','是') as tj," +
        //          "        c.tj_flag AS bmtj ,cGroup,a.id,pm,name as xmzt " +
        //          " FROM   t_teacher_list AS a, t_teacher AS b, t_dict AS c " +
        //          " WHERE  mid(a.appNo,5) = b.jsh and a.sqbm = c.name and flm=13 and not edit_flag and sh1 and sh2 and c.tj_flag ";
        str_sql = " SELECT appNo, a.ktmc, a.sqbm, a.sqr,c.name AS xmzt," +
                  "        cGroup1, a.id, pm, a.xmbh, zzlb " +
                  " FROM   t_teacher_list AS a, t_teacher AS b ,t_dict c " +
                  " WHERE  mid(a.appNo,5) = b.jsh and flm=11 and status = bm " +
                  " and    left(a.appNo,4) =year(date()) " +
            //"  and a.sqbm in (select name from t_dict where flm=13 and tj_flag) " +
                  "  and Status between (select url from t_dict where flm= 11 and bm = 4) and (select url from t_dict where flm= 11 and bm = 5)";
        if (ddlist_xmzt.SelectedIndex != 0)
        {
            str_sql += " and Status = " + ddlist_xmzt.SelectedValue ;
        }
        if (ddlist_Group.SelectedIndex != 0)
        {
            str_sql += " and cGroup3 = '" + ddlist_Group.SelectedValue + "' ";
        }
        if (ddlist_type.SelectedIndex != 0)
        {
            str_sql += " and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%' ";
        }
        str_sql += " order by cGroup3,pm";
        dv = DBFun.GetDataView(str_sql);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        AspNetPager1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        pds.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 立项
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[2].Text;
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
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            str_sql = "select url from t_dict where flm= 11 and bm = 5";
            str_sql = DBFun.ExecuteScalar(str_sql).ToString();
            str_sql = string.Format("update t_teacher_list set Status = "+str_sql+" where appNo in {0}", strOpid);
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('立项成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 取消立项
    protected void btn_qxlx_Click(object sender, EventArgs e)
    {
        string strOpid = "";

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[2].Text;
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
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            str_sql = "select url from t_dict where flm= 11 and bm = 4";
            str_sql = DBFun.ExecuteScalar(str_sql).ToString();
            str_sql = string.Format("update t_teacher_list set Status = " + str_sql + " where appNo in {0}", strOpid); 
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('取消立项成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
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

    #region 导出到excel
    protected void Exp2Excel_Click(object sender, EventArgs e)
    {
        str_sql = "select content from t_dict where flm = 14 and bm =1";
        str_sql = DBFun.ExecuteScalar(str_sql).ToString();
        ExcelManager.Exp2Excel(this.Page, str_sql);
    }
    #endregion

    #region 每页显示条数
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        bindData();
    }
    #endregion

    #region 全选/取消全选
    protected void cbx_SelectAll_CheckedChanged(object sender, EventArgs e)
    {
        CheckBox cbx;
        bool b_checked = cbx_SelectAll.Checked;
        for (int i=0; i < GridView1.Rows.Count; i++)
        {
            cbx = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            cbx.Checked = b_checked;
        }
    }
    #endregion
}
