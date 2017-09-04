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
using System.IO;
using Aspose.Words;

public partial class Admin_zj_xmList : System.Web.UI.Page
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
        if (!IsPostBack)
        {
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    private void bindData()
    {
        //判断专家是否提交，如果已经提交，隐藏提交按钮
        str_sql = "select tj_flag from t_ExpertList1 where appyear= year(date()) and LoginName='" + Session["admin_id"].ToString() + "'";
        bool tj_flag = Convert.ToBoolean(DBFun.ExecuteScalar(str_sql));
        if (tj_flag)
        {
            TD2.Visible = false;
            GridView1.Columns[5].HeaderText = "评议结果";
        }    
        str_sql = " SELECT a.appNo,ktmc,sqr,Status,fs_pjys_sum,mid(a.jsh,5) as jsh,iif(sftj,'是','否') as sflx " +
                  " FROM   t_teacher_list a,t_dict b,t_zjry1 c" +
                  " WHERE  a.appNo= c.appNo and flm=11 and Status = bm" +
                  " and    left(a.appNo,4) = year(date()) " +
                  " and    Status = (select url from t_dict where flm= 11 and bm = 4)" +
                  " and    zjNo = '" + Session["admin_id"].ToString() + "'" +
                  " order by sqbm , sqr ";
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

    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 查看项目信息
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        //通过网页在线查看信息
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        Session["type"] = "user";
        Session["appNo"] = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString();
        Session["jsh"] = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["jsh"].ToString();
        Session["jsm"] = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sqr"].ToString();
        Response.Redirect("../user_tb.aspx?type=view");
    }
    #endregion

    #region 评分页面
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);

        Response.Redirect("zj_Pf1.aspx?appNo=" + dv.Table.Rows[e.RowIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString());
            
    }
    #endregion

    #region 提交
    protected void btn_commit_Click(object sender, EventArgs e)
    {
        string str_sql = " SELECT count(*) "
                       + " FROM   t_teacher_list a,t_zjry1 b"
                       + " WHERE  a.appNo = b.appNo"
                       + " AND    left(a.appNo,4)= year(date()) "
                       + " and    zjNo ='" + Session["admin_id"].ToString() + "'"
                       + " and    fs_pjys_sum is null";
        if (Convert.ToInt16( DBFun.ExecuteScalar(str_sql)) > 0)
        {
            Response.Write("<script>alert('您还有尚未评分的项目，请对所有项目评分后再提交！');</script>");
            return;
        }
        str_sql = " update t_ExpertList1 set tj_flag = true "
                 +" where  appyear= year(date()) "
                 +" and    LoginName = '" + Session["admin_id"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('提交成功！');location.replace(location.href);</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
            return;
        }
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
