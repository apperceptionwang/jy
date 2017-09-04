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

public partial class Admin_renshi_lw_yhgl : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi';</script>");
            return;
        }
        if (CommFun.IsTimeOut("lw",Session["admin_id"].ToString()))
        {
            Response.Write("<script>alert('您已经提交，不能再访问该页面！');location.href = './main.aspx','_main';</script>");
            return;
        }
        if (!IsPostBack)
        {
            bindData();
        }
    }

    #region 数据绑定
    protected void bindData()
    {
        string str_sql = "select * from yxxwlw_cpry where tjdw = '" + Session["admin_id"].ToString() + "' order by edit_rq asc";
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;

        LinkButton lbtn ;
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            lbtn = (LinkButton)GridView1.Rows[i].FindControl("lbtn_del");
            lbtn.Attributes.Add("onclick", "return   confirm   (\"是否删除？\");");   
        }
        str_sql = "select InitPwd from t_dict where flm = 2 and url = '"+Session["admin_id"].ToString()+"'";
        if (DBFun.ExecuteScalar(str_sql) == null)
            tbx_InitPwd.Text = "";
        else
            tbx_InitPwd.Text = DBFun.ExecuteScalar(str_sql).ToString();
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
        tbx_username.Enabled = true;
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
        string str_sql = "delete from yxxwlw_cpry where sfzh = '" +
            dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString() + "'";

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

    #region 点击修改密码
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        TD_AddUser.Visible = true;
        lbl_editflag.Text = "update";
        tbx_username.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["yourname"].ToString();
        tbx_sfzh.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        tbx_csmm.Text = "";
        tbx_qrmm.Text = "";
        tbx_username.Enabled = false;
        tbx_sfzh.Enabled = false;
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string str_sql = "select InitPwd from t_dict where flm = 2 and url = '" + Session["admin_id"].ToString() + "'";
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
            //判断身份证号是否重复
            str_sql = "select count(*) from yxxwlw_cpry where sfzh = '" + tbx_sfzh.Text + "'";
            if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
            {
                Response.Write(@"<script>alert('一个身份证号只能注册一次，该身份证号已经注册过了！');</script>");
                return;
            }
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) from yxxwlw_cpry where tjdw= '" + Session["admin_id"].ToString() + "' ";
            int li_maxid = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
            str_sql = "select name from t_dict where flm = 11 and url='" + Session["admin_id"].ToString() + "'";
            string ls_tjdwmc = DBFun.ExecuteScalar(str_sql).ToString();
            str_sql = string.Format("insert into yxxwlw_cpry (yourname, pwd, sfzh,tj_flag,tjdw,id,edit_rq,tjdw_mc) values ( '{0}',  '{1}', '{2}','{3}','{4}',{5},'{6}','{7}')",
                        tbx_username.Text.Trim(), str_pwd, tbx_sfzh.Text.Trim(), "未审核", Session["admin_id"].ToString(), li_maxid, DateTime.Now.ToString(), ls_tjdwmc);
        }
        //修改密码
        else
        {
            //判断密码是否为空
            if (tbx_csmm.Text == null || tbx_csmm.Text == "" || tbx_qrmm.Text == null || tbx_qrmm.Text == "")
            {
                Response.Write(@"<script>alert('密码不能为空！');</script>");
                return;
            }
            else
            {
                str_sql = string.Format("update yxxwlw_cpry set pwd = '{0}' where sfzh = '{1}'",
                                    str_pwd, tbx_sfzh.Text);
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
        //TD_AddUser.Visible = false;
    }
    #endregion

    #region 设定初始密码
    protected void btn_InitPwd_Click(object sender, EventArgs e)
    {
        string str_sql = "Update t_dict Set InitPwd = '" + tbx_InitPwd.Text + "' Where flm = 2 and url = '" + Session["admin_id"].ToString() + "'";
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
        TD5.Visible = cbx_InitPwd.Checked;
    }
    #endregion

    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion


}
