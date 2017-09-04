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

public partial class Admin_renshi_ej_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi';</script>");
            return;
        }
        if (!CommFun.IsTimeOut("ej", Session["admin_id"].ToString()))
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

        string str_sql = "SELECT yourname,gwxl,xkfx_qt ,name as dw, xingbie, format(birth,'yyyy年MM月') as csny," +
            " zgxl,zgxw,xrgw, format(zgsj,'yyyy年MM月') as zg, format(prsj,'yyyy年MM月') as pr,qtwt" +
            " FROM ej_cpry,t_dict" +
            " WHERE flm = 2 and dw = url and url =  '" + Session["admin_id"].ToString() + "' and ej_cpry.tj_flag='推荐' and edit_flag = false  order by ID asc";

        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            SetValue("lbl" + Convert.ToString(i + 1) + "_1", dv.Table.Rows[i]["dw"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_2", dv.Table.Rows[i]["yourname"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_3", dv.Table.Rows[i]["xingbie"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_4", dv.Table.Rows[i]["csny"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_5", dv.Table.Rows[i]["xkfx_qt"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_6", dv.Table.Rows[i]["zg"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_7", dv.Table.Rows[i]["pr"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_8", "");
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
