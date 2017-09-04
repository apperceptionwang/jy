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

public partial class Admin_query_ryfs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string str_sql = "select bm,name from t_dict where flm = 1";
            ddlist_Group.Items.Add("all");
            DBFun.FillDwList(ddlist_Group, str_sql);
            bindData_cpry();
        }
    }

    protected void bindData_cpry()
    {
        string str_group = ddlist_Group.SelectedItem.Text;
        string str_sql = "SELECT ID,sfzh, yourname,xingbie, DateDiff('YYYY', CDate(birth),Format(Now(),'yyyy-mm-dd')) AS nianling, xrzw, sbzw, sh_flag,edit_flag,fenlei FROM cpry  ";
        if (str_group != "all") str_sql = str_sql + " where fenlei = '" + str_group + "'";
        DataView dv = DBFun.GetDataView(str_sql);
        gv_chengyuan.DataSource = dv;
        gv_chengyuan.DataBind();
        Session["dv_cpry"] = dv;
        //gv_chengyuan.Visible = false;
    }

    protected void bindData_zj()
    {
        string str_sql = "select zjid,ryid from zjry where ryid = " + lbl_zjid.Text;
        OleDbDataReader reader = DBFun.dataReader(str_sql);
        string str_zjid = "0,";
        while (reader.Read())
        {
            str_zjid = str_zjid + reader["zjid"].ToString() + ",";
        }
        DBFun.closeDataReader(ref reader);
        str_sql = "";
        str_sql = str_sql + " where id in (" + str_zjid + ") ORDER BY ID;";
        Session["dv_zhuanjia"] = DBFun.GetDataView(str_sql);
        DataView dv = (DataView)Session["dv_zhuanjia"];
        gv_zhuanjia.DataSource = dv;
        gv_zhuanjia.DataBind();
        gv_zhuanjia.Visible = true;
    }
    protected void gv_chengyuan_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        string str_ryid = gv_chengyuan.Rows[e.NewSelectedIndex].Cells[0].Text;
        lbl_zjid.Text = str_ryid;
        bindData_zj();
    }
    protected void ddlist_Group_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData_cpry();
    }
    protected void gv_zhuanjia_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {

    }
    protected void btn_del_Click(object sender, EventArgs e)
    {

    }
}
