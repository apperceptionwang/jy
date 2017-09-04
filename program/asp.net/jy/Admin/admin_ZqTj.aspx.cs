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

public partial class admin_Zq : System.Web.UI.Page
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
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " select appNo, ktmc, sqbm, sqr, Status,yj21,id,name as xmzt, " +
                  "        iif(cstr(Status) = (select url from t_dict where flm=11 and bm=3),'false','true') as sh2 "+
                  " from   t_teacher_list a,t_dict b " +
                  " where  flm=11 and status = bm " +
                  " and    left(appNo,4)=year(date()) "+
                  " and    Status between (select url from t_dict where flm = 11 and bm =5) and (select url from t_dict where flm = 11 and bm =6) " +                  
                  //" and    Status =(select url from t_dict where flm = 11 and bm in(3,4)) " +
                  //" and sqbm in (select name from t_dict where flm= 13 and tj_flag)" +
                  " order by sqbm,sqr";
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
        
        
        string str_appNo;
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            str_appNo = dv.Table.Rows[i + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_tjjg");
            rbtnList_1.SelectedValue = dv.Table.Rows[i + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["Status"].ToString();
        }
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 保存意见
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
        str_sql = string.Format("update t_teacher_list set yj21 = '" + tbx_yj2.Text + "' where appNo ='" + lbl_appNo.Text + "'");
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('意见填写成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('意见填写失败！');</script>");
        }
    }
    #endregion

    #region 取消按钮
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
    protected void btn_spm_find_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 查看/修改意见
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        bindData();//为了显示行号
        TD_AddUser.Visible = true;
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        lbl_jsm.Text = GridView1.Rows[e.NewSelectedIndex].Cells[5].Text.ToString();
        lbl_appNo.Text = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString();
        tbx_yj2.Text = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["yj21"].ToString();
    }
    #endregion

    #region 保存推荐意见
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        string str_appNo, str_tjjg; 
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        RadioButtonList rbtnList_1;
        for (int i = 0; i < GridView1.Rows.Count; i++)    //循环GridView每一行
        {
            str_appNo = dv.Table.Rows[i + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_tjjg");
            str_tjjg = rbtnList_1.SelectedValue;
            str_sql = "select url from t_dict where flm= 11 and bm = " + str_tjjg;
            str_sql = DBFun.ExecuteScalar(str_sql).ToString();
            str_sql = "update t_teacher_list set Status = " + str_sql + " where appNo = '" + str_appNo + "'";
            if (!DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('保存失败！');</script>");
                return;
            }
        }
        Response.Write("<script>alert('保存成功！');</script>");
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

    #region 导出到Excel
    protected void btn_exp2Excel_Click(object sender, EventArgs e)
    {
        str_sql = "select content from t_dict where flm = 14 and bm =2";
        str_sql = DBFun.ExecuteScalar(str_sql).ToString();
        ExcelManager.Exp2Excel(this.Page, str_sql);
    }
    #endregion
   
}