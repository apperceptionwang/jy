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

public partial class Admin_admin_yxjs : System.Web.UI.Page
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
            string str_id = Request.QueryString["id"];
            Session["type"] = str_id;
            string str_sql = "select bm,name from t_dict where flm = "+str_id+" order by bm;";
            DataTable dt = DBFun.dataTable(str_sql);
            DwPath.Items.Clear();
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                ListItem litem = new ListItem();
                litem.Value = dt.Rows[i]["bm"].ToString();
                litem.Text = dt.Rows[i]["name"].ToString();
                DwPath.Items.Add(litem);
            }

            GetInfo();
        }
    }
    protected void DwPath_SelectedIndexChanged(object sender, EventArgs e)
    {
        GetInfo();
    }

    protected void GetInfo()
    {

        string str_sql = "select name,content from t_dict where flm = " + Session["type"].ToString() + " and bm = " + DwPath.SelectedValue;
        DataRow dr = DBFun.GetDataRow(str_sql);
        ftb_content.Text = dr["content"].ToString();
    }
    protected void btn_save_Click(object sender, EventArgs e)
    {
        string ls_bm, ls_content;
        string str_sql = "";

        ls_bm = DwPath.SelectedValue;
        ls_content = ftb_content.Text.Replace("'", "’");

        str_sql = string.Format("update t_dict set content = '{0}' where flm = " + tbx_flm.Text + "  and bm = {1}"
                      , ls_content, tbx_bm.Text);

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string str_sql = "select name,content from t_dict where flm = " + tbx_flm.Text + " and bm = " + tbx_bm.Text;
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr != null)
            ftb_content.Text = dr["content"].ToString();
    }
}
