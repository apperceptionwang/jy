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

public partial class Admin_tbsm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            lbl_id.Text = Request.QueryString["type"];
            string str_sql = "select name,content from t_dict where flm = 8 and bm = "+lbl_id.Text;
            DataRow dr = DBFun.GetDataRow(str_sql);
            if (dr != null)
            {
                tbx_title.Text = dr["name"].ToString();
                ftb_content.Text = dr["content"].ToString();
            }
            else
            {
                str_sql = "insert into t_dict (flm,bm) values (8,"+lbl_id.Text+")";
                if (!DBFun.ExecuteUpdate(str_sql))
                {
                    Response.Write("<script>alert('插入数据失败！');</script>");
                }
            }
            
        }
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ls_title, ls_content;
        ls_title = tbx_title.Text.Trim();
        ls_content = ftb_content.Text.Replace("'", "’");

        string str_sql = string.Format("update t_dict set name = '{0}',content = '{1}' where flm = 8 and bm = " + lbl_id.Text,
                      ls_title, ls_content);
      
       
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
}
