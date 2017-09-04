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

public partial class Admin_zxsh : System.Web.UI.Page
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
            bindData();
        }
    }

    protected void bindData()
    {
        string str_value = rblist_select.SelectedValue;
        string str_sql = "select id,name,shengfen,zxip,wenti,shenhe,iif(len(wenti)>26,left(wenti,26)+'…',wenti) as wt,format(shijian,'yyyy-mm-dd') as sj from zxzx where ";
        if (str_value == "全部")
            str_sql = str_sql + " (1=1) ";
        else if (str_value == "否") 
            str_sql = str_sql + " (shenhe='" + str_value + "' or shenhe is null) ";
        else if (str_value == "是") 
            str_sql = str_sql + " (shenhe='" + str_value + "') ";
        str_sql = str_sql + " order by id desc";
        DataView dv = DBFun.GetDataView(str_sql);
        gv_detail.DataSource = dv;
        gv_detail.DataBind();
        Session["dv_detail"] = dv;

        str_sql = "select count(*) from zxzx";
        string str_countTotal = DBFun.ExecuteScalar(str_sql).ToString();
        str_sql = "select count(*) from zxzx where shenhe = '是'";
        string str_countYsh = DBFun.ExecuteScalar(str_sql).ToString();
        str_sql = "select count(*) from zxzx where shenhe = '否' or shenhe is null";
        string str_countWsh = DBFun.ExecuteScalar(str_sql).ToString();
        lbl_count.Text = "在线咨询数据共有 "+str_countTotal+" 条，其中已解答 "+str_countYsh+
                         " 条，还有 "+str_countWsh+" 条尚未解答。";
    }

    protected void gv_detail_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["id"].ToString();
        lbl_name.Text = dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["name"].ToString();
        lbl_sf.Text = dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["shengfen"].ToString();
        lbl_ip.Text = dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["zxip"].ToString();
        lbl_wt.Text = dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["wenti"].ToString();
        lbl_sj.Text = dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["sj"].ToString();
        cbx_shenhe.Checked = true;
        TD1.Visible = true;
    }
    protected void gv_detail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "delete from zxzx where id = " + dv.Table.Rows[e.RowIndex + gv_detail.PageIndex * gv_detail.PageSize]["id"].ToString();

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
    }
    protected void gv_detail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gv_detail.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
        string str_sh="否";
        if (cbx_shenhe.Checked) str_sh = "是";
        string str_sql = string.Format("update zxzx set shenhe = '{0}',jieda = '{1}' where id= {2}",
                        str_sh, tbx_jieda.Text, lbl_id.Text);
        if (DBFun.ExecuteUpdate(str_sql))
        {
            TD1.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('解答失败！');</script>");
        }
    }
    protected void rblist_select_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
}
