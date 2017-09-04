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

public partial class user : System.Web.UI.Page
{
    string str_sql;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["jsh"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            DataTable dt;
            string str_type = Request.QueryString["type"];
            if (str_type == "0")
            {
                lbl_title.Text = "盲审专家建议";
                str_sql = " select jypj " +
                          " from t_zjry0 " +
                          " where appNo='"+Session["appNo"].ToString()+"' " +
                          " order by zjNo ";
                dt = DBFun.dataTable(str_sql);
                if (dt == null) return;
                string str_yjpj;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_yjpj = dt.Rows[i]["jypj"].ToString().Replace("'", "‘");
                    if (str_yjpj == "") str_yjpj = "无";
                    lbl_content.Text += "评委"+ Convert.ToString(i+1) + ":<br/>" + str_yjpj + "<br/><br/>";
                }
            }
            else if (str_type == "1")
            {
                lbl_title.Text = "立项专家建议";
                str_sql = " select jypj " +
                          " from t_zjry1 " +
                          " where appNo='" + Session["appNo"].ToString() + "' " +
                          " order by zjNo ";
                dt = DBFun.dataTable(str_sql);
                if (dt == null) return;
                string str_yjpj;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_yjpj = dt.Rows[i]["jypj"].ToString().Replace("'", "‘");
                    if (str_yjpj == "") str_yjpj = "无";
                    lbl_content.Text += "评委" + Convert.ToString(i + 1) + ":<br/>" + str_yjpj + "<br/><br/>";
                }
            }
            else if (str_type == "2")
            {
                lbl_title.Text = "中期专家建议";
                str_sql = " select jypj " +
                          " from t_zjry2 " +
                          " where appNo='" + Session["appNo"].ToString() + "' " +
                          " order by zjNo ";
                dt = DBFun.dataTable(str_sql);
                if (dt == null) return;
                string str_yjpj;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_yjpj = dt.Rows[i]["jypj"].ToString().Replace("'", "‘");
                    if (str_yjpj == "") str_yjpj = "无";
                    lbl_content.Text += "评委" + Convert.ToString(i + 1) + ":<br/>" + str_yjpj + "<br/><br/>";
                }
            }
            else if (str_type == "3")
            {
                lbl_title.Text = "结题专家建议";
                str_sql = " select jypj " +
                          " from t_zjry3 " +
                          " where appNo='" + Session["appNo"].ToString() + "' " +
                          " order by zjNo ";
                dt = DBFun.dataTable(str_sql);
                if (dt == null) return;
                string str_yjpj;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_yjpj = dt.Rows[i]["jypj"].ToString().Replace("'", "‘");
                    if (str_yjpj == "") str_yjpj = "无";
                    lbl_content.Text += "评委" + Convert.ToString(i + 1) + ":<br/>" + str_yjpj + "<br/><br/>";
                }
            }
            if (lbl_content.Text == "") lbl_content.Text = "无";
        }
        
    }
}
