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
using System.Timers;
using System.IO;
using System.Net;
using System.Net.Sockets;

public partial class user_main : System.Web.UI.Page
{
    private DataView dv;
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["jsh"] == null)
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            AspNetPager1.PageSize = 10;
            bindData();
            this.GridView1.SelectedIndex = -1;
        }
    }


    #region GridView1数据绑定
    protected void bindData()
    {
        str_sql = "SELECT a.jsh, appNO,appyear, a.ktmc, a.sqbm, a.sqr,c.name AS tj," +
                  "  cGroup, a.id, pm, a.xmbh, zzlb " +
                  "  FROM t_teacher_list AS a, t_teacher AS b ,t_dict c " +
                  "  WHERE mid(a.appNo,5) = b.jsh and flm=11 and status = bm " +
                  //"  and Status =(select url from t_dict where flm= 11 and bm = 5)" +
                  "  and xmbh is not null " +
                  "  and a.jsh = '"+Session["jsh"].ToString()+"'" ;
        
        //排序
        str_sql += " order by appyear desc";
        dv = DBFun.GetDataView(str_sql);
        ViewState["sql"] = str_sql;
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        //GridView1.DataKeyNames = new string[] { "ID" };
        GridView1.DataBind();
        try
        {
            AspNetPager1.RecordCount = dv.Table.Rows.Count;
        }
        catch (Exception ee)
        {
            Response.Write("<script>alert('" + ee.Message + "，请与管理员联系。" + "');</script>");
            CommFun.error_record(Session["jsh"].ToString(),Session["jsm"].ToString(), ee.Message);
        }
    }
    #endregion

    #region GridView1编辑
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        int i_rownum = e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        string str_xmbh = dv.Table.Rows[i_rownum]["xmbh"].ToString();
        string str_appNo = dv.Table.Rows[i_rownum]["appNo"].ToString();
        //str_sql = "select * from t_jf where xmbh = '" + str_xmbh + "'";
        //ViewState["sql1"] = str_sql;
        Session["xmbh"] = str_xmbh;
        Session["appNo"] = str_appNo;
        Response.Write("<script>alert('已选择项目编号为【" + str_xmbh + "】的项目，请选择下一步操作！');</script>");
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
        //鼠标移动行变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //下面两句代码是添加鼠标效果，当鼠标移动到行上时，变颜色 
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            //加粗代码《,this.style.fontWeight='Bold'》#ccddff
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';this.style.fontWeight='Bold'");
            e.Row.Attributes["style"] = "Cursor:hand"; //鼠标悬停的行显示手型
        }

    }
    #endregion

    

}
