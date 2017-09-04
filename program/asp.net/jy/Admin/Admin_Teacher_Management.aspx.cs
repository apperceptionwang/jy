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


public partial class Admin_Admin_Teacher_Management : System.Web.UI.Page
{
    #region  Page_Load
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        //if (CommFun.IsTimeOut("zgj", Session["admin_id"].ToString()))
        //{
        //    Response.Write("<script>alert('您已经提交，不能再访问该页面！');location.href = '../User_main.aspx','_main';</script>");
        //    return;
        //}
        if (!IsPostBack)
        {
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        string str_sql = " SELECT jsh,xsh,jsm,dept from t_teacher ";
        if (tbx_spm.Text.Trim() != "")
            str_sql += " where ( spm LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( jsm LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( jsh LIKE '%" + tbx_spm.Text.Trim() + "%') " ;
        //if (rbl_tj_status.SelectedIndex != 0)
        //    str_sql += " ( isnull(" + rbl_tj_status.SelectedValue + ",'False') = 'False' )";
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
        CommFun.Add_ConfirmAttrib(GridView1, "lbtn_del");
        str_sql = "select url from t_dict where flm = 8 and bm = 15 ";
        if (DBFun.ExecuteScalar(str_sql) == null)
            tbx_InitPwd.Text = "";
        else
            tbx_InitPwd.Text = DBFun.ExecuteScalar(str_sql).ToString();

        str_sql = "SELECT url,name from t_dict where flm=1 ;";
        DBFun.FillDwList(ddlist_dept, str_sql);
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 添加
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = true;
        lbl_editflag.Text = "insert";
        tbx_username.Text = "";
        tbx_sfzh.Text = "";
        tbx_csmm.Text = tbx_InitPwd.Text;
        tbx_qrmm.Text = tbx_InitPwd.Text;
        //tbx_username.Enabled = true;
        tbx_sfzh.Enabled = true;

        Label5.Visible = !cbx_InitPwd.Checked;
        Label7.Visible = !cbx_InitPwd.Checked;
        tbx_csmm.Visible = !cbx_InitPwd.Checked;
        tbx_qrmm.Visible = !cbx_InitPwd.Checked;
    }
    #endregion

    #region 删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "delete from t_teacher where jsh = '" +
            dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString() + "'";

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('删除失败！');</script>");
        }
    }
    #endregion

    #region 点击修改信息
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        TD_AddUser.Visible = true;
        lbl_editflag.Text = "update";
        tbx_username.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["jsm"].ToString();
        tbx_sfzh.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
        try { ddlist_dept.SelectedValue = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["xsh"].ToString(); }
        catch { }
        tbx_csmm.Text = "";
        tbx_qrmm.Text = "";
        //tbx_username.Enabled = false;
        tbx_sfzh.Enabled = false;
        //rbl_tj.SelectedValue = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["edit_flag"].ToString();
        //rbl_sb.SelectedValue = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["c_sb"].ToString();
        //rbl_hd.SelectedValue = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["c_hd"].ToString();
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string str_sql = "select url from t_dict where flm = 8 and bm = 15";
        if (DBFun.ExecuteScalar(str_sql) == null)
            tbx_InitPwd.Text = "";
        else
            tbx_InitPwd.Text = DBFun.ExecuteScalar(str_sql).ToString();
        string str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_csmm.Text, "MD5");
        if (cbx_InitPwd.Checked)
            str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_InitPwd.Text, "MD5");
        //新增
        if (lbl_editflag.Text == "insert")
        {
            string str_spm = "";
            try
            {
                str_spm = WordToal.GetFirstPYLetter(tbx_username.Text.Trim()).Trim();
            }
            catch
            {
                str_spm = "";
            }
            //判断身份证号是否重复
            str_sql = "select count(*) from t_teacher where jsh = '" + tbx_sfzh.Text + "'";
            if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
            {
                Response.Write(@"<script>alert('一个教师号只能注册一次，该教师号已经注册过了！');</script>");
                return;
            }
            str_sql = string.Format("insert into t_teacher (jsm, pwd, jsh,xsh,dept,spm) values ( '{0}',  '{1}', '{2}','{3}','{4}','{5}')",
                        tbx_username.Text.Trim(), str_pwd, tbx_sfzh.Text.Trim(), ddlist_dept.SelectedValue,ddlist_dept.SelectedItem.Text,str_spm);
        }
        //修改密码
        else
        {
            //判断密码是否为空
            if (tbx_csmm.Text == null || tbx_csmm.Text == "" || tbx_qrmm.Text == null || tbx_qrmm.Text == "")
            {
                str_sql = string.Format(" update t_teacher set jsm = '{0}',xsh = '{1}',dept = '{2}' where jsh = '{3}'",
                                    tbx_username.Text, ddlist_dept.SelectedValue,ddlist_dept.SelectedItem.Text,tbx_sfzh.Text);
            }
            else
            {
                str_sql = string.Format("update t_teacher set jsm = '{0}',pwd = '{1}',xsh = '{2}' ,dept = '{3}' where jsh = '{4}'",
                       tbx_username.Text, str_pwd, ddlist_dept.SelectedValue, ddlist_dept.SelectedItem.Text, tbx_sfzh.Text);
            }

        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('用户信息保存成功！');</script>");
            bindData();
            TD_AddUser.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('用户信息保存失败！');</script>");
        }
    }
    #endregion

    #region 取消按钮
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 设定初始密码
    protected void btn_InitPwd_Click(object sender, EventArgs e)
    {
        string str_sql = "Update t_dict Set url = '" + tbx_InitPwd.Text + "' Where flm = 8 and bm = 15 ";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    #endregion

    #region 是否使用初始密码
    protected void cbx_InitPwd_CheckedChanged(object sender, EventArgs e)
    {
        Label5.Visible = !cbx_InitPwd.Checked;
        Label7.Visible = !cbx_InitPwd.Checked;
        tbx_csmm.Visible = !cbx_InitPwd.Checked;
        tbx_qrmm.Visible = !cbx_InitPwd.Checked;
    }
    #endregion

    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion

    #region 按首拼码查找
    protected void btn_spm_find_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 按提交状态查找
    protected void btn_tj_find_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    protected void btn_init_Click(object sender, EventArgs e)
    {
        string str_sql = "update t_teacher_info set tj_sb = 'false' ";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('所有教师提交状态已初始化！');</script>");
        }
        else
        {
            Response.Write("<script>alert('所有教师提交状态未初始化！');</script>");
            return;
        }
        bindData();
    }
}
