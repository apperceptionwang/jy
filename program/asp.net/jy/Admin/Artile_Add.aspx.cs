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

public partial class Admin_Artile_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = '../Default.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            Session["ID"] = 0;
            lbl_title.Text = Request.QueryString["flag"];
            
            table20.Visible = (lbl_title.Text == "公告" || lbl_title.Text == "新闻");
        }
    }


    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ls_title,ls_time,ls_content,ls_admin,ls_leibie,ls_leixing;
        string str_sql = "";
        string str_aritleid ;
        

        ls_title = tbx_title.Text.Trim();
        ls_time = System.DateTime.Now.ToString();
        ls_content = ftb_content.Text.Replace("'", "’");
        ls_admin = Session["Name"].ToString();
        ls_leibie = lbl_title.Text;
        ls_leixing = DwPath.SelectedIndex.ToString();

        str_aritleid = Session["ID"].ToString();
        str_sql = "select count(*) from news where id  = " + str_aritleid + " and leixing = '" + DwPath.SelectedIndex + "'" ;
        int i = (int)DBFun.ExecuteScalar(str_sql);
        //如果该记录存在，更新该记录
        if (i == 1)
        {
            str_sql = string.Format("update news set title = '{0}',shijian = '{1}',content = '{2}',"+
                      "admin = '{3}',leibie='{4}',leixing='{5}';",ls_title,ls_time,ls_content,ls_admin,ls_leibie,ls_leixing);
        }
        //如果该记录存在，插入新记录
        else if (i == 0)
        {
            str_sql = string.Format("insert into news (title,shijian,content,admin,leibie,leixing) "+
                         " values('{0}','{1}','{2}','{3}','{4}','{5}');",
                         ls_title,ls_time,ls_content,ls_admin,ls_leibie,ls_leixing);
        }
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
   

