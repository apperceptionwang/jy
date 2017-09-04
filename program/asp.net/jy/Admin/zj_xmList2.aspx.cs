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
    private DataView dv;
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
        str_sql = "select tj_flag from t_ExpertList2 where appyear= year(date()) and LoginName='" + Session["admin_id"].ToString() + "'";
        bool tj_flag = Convert.ToBoolean(DBFun.ExecuteScalar(str_sql));
        if (tj_flag)
        {
            TD2.Visible = false;
            TD3.Visible = false;
        }    
        str_sql = " SELECT a.appNo,xmbh,ktmc,sqr,Status,fs_pjys_sum,mid(a.jsh,5) as jsh,name,sftj,jypj  " +
                  " FROM   t_teacher_list a,t_dict b,t_zjry2 c" +
                  " WHERE  a.appNo= c.appNo and flm=11 and Status = bm" +
                  " and    c.appyear = year(date())  " +
                  " and    Status = (select url from t_dict where flm= 11 and bm = 6)" +
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
        RadioButtonList rbl_find;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            rbl_find = (RadioButtonList)GridView1.Rows[i].FindControl("rbl_vote");
            rbl_find.SelectedValue = dv.Table.Rows[i]["sftj"].ToString();
            rbl_find.Enabled = !tj_flag;
        }
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 查看任务书
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //通过网页在线查看信息
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        string str_xmbh = dv.Table.Rows[e.RowIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["xmbh"].ToString();
        string str_sqr = dv.Table.Rows[e.RowIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sqr"].ToString();
        string str_filename = "../任务书/教研课题(任务书)_" + str_sqr + "_" + str_xmbh + ".pdf";
        if (!File.Exists(Server.MapPath(str_filename)))
        {
            Response.Write("<script>alert('文件不存在！');</script>");
            return;
        }
        Response.Redirect(str_filename);
    }
    #endregion

    #region 查看中期检查表
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        string str_xmbh = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["xmbh"].ToString();
        string str_sqr = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sqr"].ToString();
        string str_filename = "../中期检查申请表/教研课题(中期检查申请表)_" + str_sqr + "_" + str_xmbh + ".pdf";
        if (!File.Exists(Server.MapPath(str_filename)))
        {
            Response.Write("<script>alert('文件不存在！');</script>");
            return;
        }
        Response.Redirect(str_filename);
    }
    #endregion

    #region 暂存
    protected void btn_TempSave_Click(object sender, EventArgs e)
    {
        if (TD_AddUser.Visible)
        {
            save();
        }
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        string str_appNo;
        bool b_vote;
        RadioButtonList rbl_find;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            str_appNo = dv.Table.Rows[i]["appNo"].ToString();
            rbl_find = (RadioButtonList)GridView1.Rows[i].FindControl("rbl_vote");
            b_vote = Convert.ToBoolean( rbl_find.SelectedValue);
            str_sql = "update t_zjry2 set sftj = " + b_vote + " where appNo = '" + str_appNo + "' and zjNO = '"+Session["admin_id"].ToString()+"'";
            if (!DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('暂存失败！');</script>");
                return;
            }

        }
        Response.Write("<script>alert('暂存成功！');</script>");
    }
    #endregion

    #region 提交
    protected void btn_commit_Click(object sender, EventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        string str_appNo;
        bool b_vote;
        RadioButtonList rbl_find;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            str_appNo = dv.Table.Rows[i]["appNo"].ToString();
            rbl_find = (RadioButtonList)GridView1.Rows[i].FindControl("rbl_vote");
            b_vote = Convert.ToBoolean(rbl_find.SelectedValue);
            str_sql = "update t_zjry2 set sftj = " + b_vote + " where appNo = '" + str_appNo + "' and zjNO = '" + Session["admin_id"].ToString() + "'";
            if (!DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('保存失败！');</script>");
                return;
            }

        }

        //str_sql = " SELECT count(*) "
        //               + " FROM   t_teacher_list a,t_zjry2 b"
        //               + " WHERE  a.appNo = b.appNo"
        //               + " AND    left(a.appNo,4)= year(date()) "
        //               + " and    zjNo ='" + Session["admin_id"].ToString() + "'"
        //               + " and    fs_pjys_sum is null";
        //if (Convert.ToInt16( DBFun.ExecuteScalar(str_sql)) > 0)
        //{
        //    Response.Write("<script>alert('您还有尚未评分的项目，请对所有项目评分后再提交！');</script>");
        //    return;
        //}
        str_sql = " update t_ExpertList2 set tj_flag = true "
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

    #region 意见建议
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        //bindData();//为了显示行号
        TD_AddUser.Visible = true;
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        lbl_jsm.Text = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sqr"].ToString();
        lbl_appNo.Text = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["appNo"].ToString();
        tbx_yj2.Text = dv.Table.Rows[e.NewSelectedIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["jypj"].ToString();
    }
    #endregion



    protected bool save()
    {
        string ls_content = tbx_yj2.Text;
        str_sql = string.Format("update t_zjry2 set jypj = '{0}',psrq = #{1}#" +
                    " where zjNo='{2}' and appNo='{3}'",
                    ls_content, DateTime.Now,Session["admin_id"].ToString(), lbl_appNo.Text);
        return (DBFun.ExecuteUpdate(str_sql));
    }
}
