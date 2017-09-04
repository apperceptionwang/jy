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


public partial class admin_Zq : System.Web.UI.Page
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
            string str_sql = "exec Q_dict_flm3";
            DBFun.FillDwList(ddlist_Group, str_sql);
            ddlist_Group.Items.Insert(0, "全部");
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
            this.GridView1.SelectedIndex = -1;
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " select b.LoginName,b.UserName,c.ktmc,sqr,c.cGroup2 " +
                  " from t_zjry2 a,t_Expert b,t_teacher_list c " +
                  " where  a.appyear=year(date()) and a.zjNo=b.Loginname and a.appNo=c.appNo ";
        
        if (ddlist_Group.SelectedValue != "全部")
        {
            str_sql = str_sql + " and cGroup2 = '" + ddlist_Group.SelectedValue + "'";
        }
        if (ddlist_type.SelectedValue != "all")
        {
            str_sql = str_sql + " and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%'";
        }
        str_sql = str_sql + " order by sqbm,sqr";

        dv = DBFun.GetDataView(str_sql);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
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

    #region 生成对应关系
    protected void btn_create_Click(object sender, EventArgs e)
    {
        string str_sql = "delete from t_zjry2 where appYear=year(date()) ";
        DBFun.ExecuteSql(str_sql);
        str_sql = " insert into t_zjry2 (zjNo,appNo) " +
                  " select loginname,appNo from t_expertlist2 a,t_teacher_list b "+
                  " where  a.appyear=year(date()) and a.cGroup =b.cGroup2 and b.status=(select url from t_dict where flm=11 and bm=6) and cGroup2 is not null ";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('生成成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('生成失败！');</script>");
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
