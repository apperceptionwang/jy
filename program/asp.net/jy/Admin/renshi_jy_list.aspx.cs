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

public partial class Admin_renshi_zg_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dept_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!CommFun.IsTimeOut("jy", Session["dept_id"].ToString()))
        {
            Response.Write("<script>alert('您还未提交，不能再访问该页面！');window.history.go(-1);</script>");
            return;
        }
        bindData();
    }


    #region 数据绑定
    protected void bindData()
    {
        string str_sql = "exec Q_Para_Cyqk_By_szbm '" + Session["dept_name"].ToString() + "'";
        DataView dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            if (dv.Table.Rows.Count > 0)
            {
                string str_jsh = "", str_jsh_old = "", str_xmcy = "";
                for (int i = 0; i < dv.Table.Rows.Count; i++)
                {
                    if (i == 0) str_jsh_old = dv.Table.Rows[i]["jsh"].ToString();
                    str_jsh = dv.Table.Rows[i]["jsh"].ToString();
                    if (str_jsh == str_jsh_old)
                    {
                        str_xmcy += "," + dv.Table.Rows[i]["xm"].ToString();
                    }
                    else
                    {
                        if (str_jsh_old != "")
                        {
                            str_sql = "update t_teacher_list set xmcy = '" + str_xmcy.Substring(1) + "' where appyear=year(date()) and jsh = '" + str_jsh_old + "'";
                            DBFun.ExecuteSql(str_sql);
                        }
                        str_jsh_old = dv.Table.Rows[i]["jsh"].ToString();
                        str_xmcy = "," + dv.Table.Rows[i]["xm"].ToString();
                    }
                }
                str_sql = "update t_teacher_list set xmcy = '" + str_xmcy.Substring(1) + "' where appyear=year(date()) and jsh = '" + str_jsh + "'";
                DBFun.ExecuteSql(str_sql);
            }
        }
        lbl_year.Text = DateTime.Today.Year.ToString();
        str_sql = "exec Q_Para_hzb_By_szbm '" + Session["dept_name"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        if (dv == null) return;
        gv_1.DataSource = dv;
        gv_1.DataBind();
        Session["dv_detail"] = dv;
    }
    #endregion

}
