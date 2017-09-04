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

public partial class Admin_zhuanjia_Info : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        
        if (!IsPostBack)
        {
            bindData();
        }
    }
    protected void bindData()
    {
        string str_sql = "select * from t_Expert where LoginName = '" + Session["admin_id"].ToString() + "'";
        
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        tb_Username.Text = dr["UserName"].ToString();
        tb_LoginName.Text = dr["LoginName"].ToString();
        //try { rbl_Sex.SelectedValue = dr["xingbie"].ToString(); }
        //catch{rbl_Sex.SelectedIndex = 0; }
        //tb_sfzh.Text = dr["sfzh"].ToString();
        //txt_csrq.Value = dr["csrq"].ToString();
        //try { ddl_xl.SelectedValue = dr["xueli"].ToString(); }
        //catch { ddl_xl.SelectedIndex = 0; }
        //tb_dw.Text = dr["gzdw"].ToString();
        //tb_byxx.Text = dr["byxx"].ToString();
        //tb_zy.Text = dr["sxzy"].ToString();
        //tb_zyjs.Text = dr["zc"].ToString();
        //txt_qdsj.Value = dr["qdzgsj"].ToString();
        //tb_csly.Text = dr["xcszyly"].ToString();
        //tb_sxly.Text = dr["sxzyly"].ToString();
    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        if (tb_NewPwd.Text.Trim() != "")
        {
            string str_NewPwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tb_NewPwd.Text, "MD5");
            string str_sql = " update t_Expert set pwd = '" + str_NewPwd +
                             "' where LoginName = '" + Session["admin_id"].ToString() + "'";
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('保存成功！');location.href = 'zhuanjia_main.aspx','_main';</script>");
            }
            else
            {
                Response.Write("<script>alert('保存失败！');</script>");
            }
        }
    }
}
