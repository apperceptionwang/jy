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
using System.Data.OleDb;

public partial class Admin_Dept : System.Web.UI.Page
{
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
            bindData();
        }
    }

    #region 修改
    protected void gv_Dept_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            DataView dv = (DataView)Session["dv_detail"];
            lbl_id.Text = dv.Table.Rows[e.NewEditIndex + gv_Dept.PageIndex * gv_Dept.PageSize]["bm"].ToString();
            //lbl_pwd.Text = dv.Table.Rows[e.NewEditIndex]["UserName"].ToString() + "的密码重设为：";
            TD_AddUser.Visible = true;
            lbl_editflag.Text = "update";
            tbx_bm.Enabled = false;
            tbx_bm.Text = dv.Table.Rows[e.NewEditIndex + gv_Dept.PageIndex * gv_Dept.PageSize]["url"].ToString();
            tbx_dwmc.Text = dv.Table.Rows[e.NewEditIndex + gv_Dept.PageIndex * gv_Dept.PageSize]["name"].ToString();
            rbtnlist_sftj.SelectedValue = dv.Table.Rows[e.NewEditIndex + gv_Dept.PageIndex * gv_Dept.PageSize]["sftj"].ToString();
            tbx_pwd_new.Text = "";
        }
        catch { }
    }
    #endregion

    #region 删除
    protected void gv_Dept_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "13";
        str_sql = "delete from t_dict where flm = " + str_sql + " and bm = " + dv.Table.Rows[e.RowIndex + gv_Dept.PageIndex * gv_Dept.PageSize]["bm"].ToString();

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
    }
    #endregion

    #region 新增用户
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = true;
        lbl_editflag.Text = "insert";
        tbx_bm.Text = "";
        tbx_bm.Enabled = true;
        tbx_dwmc.Text = "";
        rbtnlist_sftj.SelectedIndex = 1;
        //rbtnlist_ej_sftj.SelectedIndex = 1;
        //rbtnlist_ts_sftj.SelectedIndex = 1;
        tbx_pwd_new.Text = "";
    }
    #endregion

    #region 取消
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_pwd_new.Text, "MD5");
        string str_sql = "";        
        string str_sftj = Convert.ToString((rbtnlist_sftj.SelectedValue == "已提交"));
        string str_flm = "";
        string str_flag = "";
        str_flm = "13";
        str_flag = "tj_flag";
       
        if (lbl_editflag.Text == "insert")
        {
            str_sql = "SELECT count(*) FROM t_dict WHERE flm = " + str_flm + " and url = '" + tbx_bm.Text + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) > 0)
            {
                Response.Write("<script>alert('单位编码已存在！');</script>");
                tbx_bm.Focus();
                return;
            }
            str_sql = " SELECT iif(isnull(max(bm)),1,max(bm)+1) AS maxbm"+
                      "   FROM t_dict"+
                      "  WHERE flm = " + str_flm + ";";
            int i_maxbm =Convert.ToInt16( DBFun.ExecuteScalar(str_sql));
            str_sql = string.Format("Insert Into t_dict (flm,bm,name,url,pwd," + str_flag + ") Values ({0},{1},'{2}','{3}','{4}',{5})",
                             str_flm, i_maxbm, tbx_dwmc.Text, tbx_bm.Text, str_pwd, str_sftj);
        }
        else
        {
            if (tbx_pwd_new.Text == null || tbx_pwd_new.Text == "")
            {
                str_sql = string.Format("update t_dict set name = '{0}',url = '{1}'," + str_flag + " = {2}",
                                    tbx_dwmc.Text.Trim(), tbx_bm.Text.Trim(), str_sftj);
            }
            else
            {
                str_sql = string.Format("update t_dict set name = '{0}',url = '{1}'," + str_flag + " = {2},pwd = '{3}'",
                                   tbx_dwmc.Text.Trim(), tbx_bm.Text.Trim(), str_sftj, str_pwd);
            }
            str_sql = str_sql + " where flm = " + str_flm + " and  bm = " + lbl_id.Text;
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('部门信息保存成功！');</script>");
            bindData();
            TD_AddUser.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('部门信息保存失败！');</script>");
        }
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from pszj";
        if (ddlist_type.SelectedValue != "all")
        {
            str_sql = str_sql + " where " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%'";
        }
        DataView dv = DBFun.GetDataView(str_sql);
        gv_Dept.DataSource = dv;
        gv_Dept.DataBind();
        Session["dv_detail"] = dv;
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        DataView dv;
        string str_sql;
        str_sql = "select bm,name,url,iif(tj_flag=True,'已提交','未提交') as sftj from t_dict where flm = 13";
        dv = DBFun.GetDataView(str_sql);
        gv_Dept.DataSource = dv;
        gv_Dept.DataBind();
        CommFun.Add_ConfirmAttrib(gv_Dept, "lbtn_del");
        Session["dv_detail"] = dv;
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 翻页
    protected void gv_Dept_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gv_Dept.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion

    #region 选择类别
    protected void rblist_type_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion



    
}
