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


public partial class admin_Jt3zjxm : System.Web.UI.Page
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
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
            this.GridView1.SelectedIndex = -1;
            btn_create.Attributes.Add("onclick", "return confirm   (\"原有的对应关系将会删除，是否继续？\");");
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " select b.LoginName,b.UserName,c.ktmc,sqr,c.cGroup3 "+
                         " from t_zjry1 a,t_Expert b,t_teacher_list c "+
                         " where a.zjNo=b.LoginName and a.appNo = c.appNo and left(a.appNo,4)=year(date()) ";
        if (ddlist_Group.SelectedValue != "全部")
        {
            str_sql = str_sql + " and cGroup3 = '" + ddlist_Group.SelectedValue + "'";
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
        str_sql = "delete from t_zjry3 where left(appNo,4)=year(date()) ";
        DBFun.ExecuteSql(str_sql);
        str_sql = " insert into t_zjry3 (zjNo,appNo) " +
                  " select loginname,appNo from t_expertlist3 a,t_teacher_list b "+
                  " where  a.appyear=b.appyear and a.cGroup =b.cGroup3 and a.appyear=year(date()) and cGroup3 is not null ";
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

    #region 每页显示条数
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        bindData();
    }
    #endregion
}
