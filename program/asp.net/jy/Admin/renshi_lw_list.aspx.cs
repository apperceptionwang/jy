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

public partial class Admin_renshi_lw_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=lwrs';</script>");
            return;
        }
        if (!CommFun.IsTimeOut("lw", Session["admin_id"].ToString()))
        {
            Response.Write("<script>alert('您还未提交，不能再访问该页面！');window.history.go(-1);</script>");
            return;
        }
        bindData();
    }

    #region 数据绑定
    protected void bindData()
    {
        DataView dv;

        string str_sql = "SELECT yourname,xingbie,cplb ,ejxk_dm,ejxk_mc, lw_ctitle, zdjs_xm,cplb,name " +
            " FROM yxxwlw_cpry,t_dict" +
            " WHERE flm = 11 and tjdw = url and url =  '" + Session["admin_id"].ToString() + "' and yxxwlw_cpry.tj_flag='推荐' and edit_flag = false  order by ID asc";

        dv = DBFun.GetDataView(str_sql);
        if (dv.Table.Rows.Count == 0) return;
        lbl_tjdw.Text = dv.Table.Rows[0]["name"].ToString();
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            SetValue("lbl" + Convert.ToString(i + 1) + "_1", dv.Table.Rows[i]["yourname"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_2", dv.Table.Rows[i]["xingbie"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_3", dv.Table.Rows[i]["cplb"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_4", dv.Table.Rows[i]["ejxk_dm"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_5", dv.Table.Rows[i]["ejxk_mc"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_6", dv.Table.Rows[i]["lw_ctitle"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_7", dv.Table.Rows[i]["zdjs_xm"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_8", dv.Table.Rows[i]["cplb"].ToString());
            //SetValue("lbl" + Convert.ToString(i + 1) + "_9", Convert.ToString( i+1));

        }

    }
    #endregion

    protected void SetValue(string str_fnd, string str_Value)
    {
        Label lbl_fnd;
        lbl_fnd = (Label)this.FindControl(str_fnd);
        if (lbl_fnd != null) lbl_fnd.Text = str_Value;
    }
}
