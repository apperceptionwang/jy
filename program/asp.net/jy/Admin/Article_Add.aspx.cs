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

public partial class Admin_Article_Add : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            lbl_title.Text = Request.QueryString["flag"];
            string str_id = Request.QueryString["id"];
            table20.Visible = (lbl_title.Text == "公告" || lbl_title.Text == "新闻");
            table20.Visible = false;
            if (str_id == "" || str_id == null)
            {
                lbl_id.Text = "0";
            }
            else
            {
                string str_sql = "select id,title,shijian,content ,admin,hits,leibie,leixing,hot from news where id = " + str_id;
                DataRow dr = DBFun.GetDataRow(str_sql);
                if (dr != null)
                {
                    lbl_title.Text = dr["leibie"].ToString();
                    tbx_title.Text = dr["title"].ToString();

                    if (dr["hot"].ToString() == "true")
                        cbx_hot.Checked = true;
                    else
                        cbx_hot.Checked = false;
                    ftb_content.Text = dr["content"].ToString();
                    DwPath.SelectedIndex = Convert.ToInt16( dr["leixing"]);
                    lbl_time.Text = "上次编辑时间：" + dr["shijian"].ToString();
                    lbl_admin.Text = "上次修改人为：" + dr["admin"].ToString();
                    lbl_id.Text = dr["id"].ToString();
                }
            }
        }
    }


    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ls_title,ls_time,ls_content,ls_admin,ls_leibie,ls_leixing;
        string str_sql = "";
        string str_aritleid ;
        string ls_hot;
        
        ls_title = tbx_title.Text.Trim();
        ls_time = System.DateTime.Now.ToString();
        ls_content = ftb_content.Text.Replace("'", "’");
        ls_admin = Session["admin_name"].ToString();
        ls_leibie = lbl_title.Text;
        ls_leixing = DwPath.SelectedIndex.ToString();
        
        ls_hot = cbx_hot.Checked.ToString();

        str_aritleid = lbl_id.Text;
        str_sql = "select count(*) from news where id  = " + str_aritleid + " and leixing = '" + DwPath.SelectedIndex + "'";
        int i = (int)DBFun.ExecuteScalar(str_sql);
        //如果该记录存在，更新该记录
        if (i == 1)
        {
            str_sql = string.Format("update news set title = '{0}',shijian = '{1}',content = '{2}',"+
                      "admin = '{3}',leibie='{4}',leixing='{5}',hot='{6}' where id={7};",
                      ls_title, ls_time, ls_content, ls_admin, ls_leibie, ls_leixing, ls_hot, str_aritleid);
        }
        //如果该记录不存在，插入新记录
        else if (i == 0)
        {
            str_sql = string.Format("insert into news (title,shijian,content,admin,leibie,leixing,hot) "+
                         " values('{0}','{1}','{2}','{3}','{4}','{5}','{6}');",
                         ls_title,ls_time,ls_content,ls_admin,ls_leibie,ls_leixing,ls_hot);
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
