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
            str_sql = "exec Q_dict_flm3";
            DBFun.FillDwList(dw_group, str_sql);
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
        str_sql = " select a.LoginName,UserName,szbm,zc,zy,jb,tj_flag,cGroup "+
                  " from   t_Expert as a,t_ExpertList2 as b " +
            " where a.LoginName=b.LoginName and appyear=year(date()) ";
        if (ddlist_Group.SelectedIndex != 0)
        {
            str_sql += " and cGroup = '" + ddlist_Group.SelectedValue + "'";
        }
        if (ddlist_type.SelectedIndex != 0)
        {
            str_sql += " and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%'";
        }
        str_sql += " order by a.LoginName";
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

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion 
    
    #region 删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        str_sql = "delete from t_ExpertList2 where appyear=year(date()) and LoginName = '" + dv.Table.Rows[e.RowIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["LoginName"].ToString() + "'";

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('移除成功！');</script>");
            bindData();
        }
    }
    #endregion

    #region 把专家移动到组群
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

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
            //分组
            strsql = string.Format("update t_ExpertList2 set cGroup = '" + dw_group.SelectedValue + "' where appyear=year(date()) and LoginName in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('分组成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 移除专家分组
    protected void btn_drop_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

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
            //分组
            strsql = string.Format("update t_ExpertList2 set cGroup = '' where appyear=year(date()) and LoginName in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('移除分组成功！');</script>");
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

    #region 保存是否提交
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        RadioButtonList rbl_fnd;
        rbl_fnd = (RadioButtonList)this.GridView1.Rows[e.RowIndex].FindControl("rbl_tj");
        str_sql = "update t_ExpertList2 set tj_flag = " + rbl_fnd.SelectedValue + " where appyear=year(date()) and LoginName = '" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["LoginName"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('修改成功！');</script>");
            bindData();
        }
    }
    #endregion

    #region 从专家库导入
    protected void btn_Add0_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_zjImport.aspx?type=2");
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
            //下面两句代码是添加鼠标效果，当鼠标移动到行上时，变颜色 
            //加粗代码《,this.style.fontWeight='Bold'》
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            e.Row.Attributes["style"] = "Cursor:hand"; //鼠标悬停的行显示手型

            //给删除按钮增加确认功能
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[11].Controls[3]).Attributes.Add("onclick", "javascript:return confirm('你确认要移除:\"" + e.Row.Cells[2].Text + "\"吗?')");
            }
            //按照dv里面的值设置RadioButtonList的值
            RadioButtonList rbl_fnd;
            str_sql = ViewState["sql"].ToString();
            dv = DBFun.GetDataView(str_sql);
            rbl_fnd = (RadioButtonList)e.Row.FindControl("rbl_tj");
            rbl_fnd.SelectedValue = dv.Table.Rows[e.Row.RowIndex]["tj_flag"].ToString();
        }
    }
    #endregion

    #region 全选
    protected void cbx_SelectAll_CheckedChanged(object sender, EventArgs e)
    {

    }
    #endregion
}
