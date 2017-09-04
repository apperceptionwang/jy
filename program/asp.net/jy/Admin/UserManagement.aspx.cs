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

public partial class Admin_UserManagement : System.Web.UI.Page
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
            DataView dv = DBFun.GetDataView("select * from master;");
            GridView1.DataSource = dv;
            GridView1.DataBind();
            Session["dv_detail"] = dv;
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        lbl_pwd.Text = dv.Table.Rows[e.NewEditIndex]["UserName"].ToString()+"的密码重设为：";
        TD_pwd.Visible = true;
    }
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "delete from master where id = " + dv.Table.Rows[e.RowIndex]["id"].ToString();

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            GridView1.DataSource = DBFun.GetDataView("select * from master;");
            GridView1.DataBind();
        }
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_pwd.Text, "MD5");
        string str_sql = str_sql = "Update master Set admin_pwd = '" + str_pwd + "' Where id = " + lbl_id.Text;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('密码修改成功！');</script>");
            TD_pwd.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('密码修改失败！');</script>");
        }
    }
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = true;
    }
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_pwd.Visible = false;
    }
    protected void btn_cancel1_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    protected void btn_confirm1_Click(object sender, EventArgs e)
    {
        string str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_pwd_new.Text, "MD5");
        string str_sql = string.Format("Insert Into Master (admin_name,Username,admin_pwd,flag) Values ('{0}','{1}','{2}',{3})",
                         tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), str_pwd, 1);
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('用户添加成功！');</script>");
            DataView dv = DBFun.GetDataView("select * from master;");
            GridView1.DataSource = dv;
            GridView1.DataBind();
            Session["dv_detail"] = dv;
            TD_AddUser.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('用户添加失败！');</script>");
        }
    }
}
