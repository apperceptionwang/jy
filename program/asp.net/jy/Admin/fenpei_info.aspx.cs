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
using System.Data.OleDb;

public partial class Admin_fenpei_info : System.Web.UI.Page
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
            string str_sql = "select flag from master where admin_name = '" + Session["admin_name"].ToString() + "'";
            if ((int)DBFun.ExecuteScalar(str_sql) != 2)
            {
                Response.Write("<script>alert('您没有权限访问此页面！');location.href = './main.aspx';</script>");
                return;
            }
            string str_Groupid = Request.QueryString["Groupid"];
            if (str_Groupid == "") return;
            str_sql = "select bm,name,url from t_dict where flm = 4";
            DataRow dr = DBFun.GetDataRow(str_sql);
            if (dr == null)
            {
                Response.Write("<script>alert('没有检索到数据！');</script>");
                return;
            }
            
            bindData_zj(dr["name"].ToString());
            bindData_cpry(dr["url"].ToString());
        }
    }

    //专家组 数据绑定 传入参数 专家组ID
    protected void bindData_zj(string str_zjzid)
    {
        string str_sql = "select * from pszj where flag = 1 and fenlei = '" + str_zjzid + "'";
        DataView dv = DBFun.GetDataView(str_sql);
        gv_zhuanjia.DataSource = dv;
        gv_zhuanjia.DataBind();
        Session["dv_zhuanjia"] = dv;
    }

    //参评组 数据绑定 传入参数 参评组ID
    protected void bindData_cpry(string str_cpzid)
    {
        //string str_sql = "select zjid,ryid from zjry where zjid = " + lbl_zjid.Text;
        //OleDbDataReader reader = DBFun.dataReader(str_sql);
        //string str_ryid = "0,";
        //while (reader.Read())
        //{
        //    str_ryid = str_ryid + reader["ryid"].ToString() + ",";
        //}
        //DBFun.closeDataReader(ref reader);
        string str_sql = "SELECT ID,sfzh, yourname,xingbie, "+
        "iif(DateDiff('YYYY', CDate(iif(isnull(birth),now,birth)),Format(Now(),'yyyy-mm-dd'))=0,'',DateDiff('YYYY', CDate(iif(isnull(birth),now,birth)),Format(Now(),'yyyy-mm-dd'))) AS nianling, "+
        "xrzw, sbzw, sh_flag,edit_flag,fenlei FROM cpry ";
        str_sql = str_sql + " where fenlei = '" + str_cpzid + "';";
        Session["dv_cpry"] = DBFun.GetDataView(str_sql);
        DataView dv = (DataView)Session["dv_cpry"];
        gv_chengyuan.DataSource = dv;
        gv_chengyuan.DataBind();
    }
}
