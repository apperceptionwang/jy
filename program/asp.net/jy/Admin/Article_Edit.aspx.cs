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

public partial class Admin_Article_Edit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {   
            //CommFun.IsAdmin();
            string str_qry = "SELECT stext,stext from q_newstype ;";
            DBFun.FillDwList(dw_class, str_qry);
            string str_leibie = Request.QueryString["flag"];
            lbl_leibie.Text = str_leibie;
            if (str_leibie == "") return;
            string strqry = "select id,title,shijian ,admin,hits,leibie,iif(leixing='0','正高级',iif(leixing='1','专业技术二级',iif(leixing='2','特殊津贴人员',iif(leixing='3','优秀论文')))) as lx from news where leibie = '" + str_leibie + "' and leixing='0' order by shijian desc ";
            Session["dv_detail"] = DBFun.GetDataView(strqry);
            bindData();
        }
    }
    protected void btn_Delete_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
            string id = GridView1.Rows[i].Cells[0].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("(" + id);
                else
                    strOpid += ("," + id);
            }
        }
        strOpid += ")";
        if (strOpid == ")")
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            strsql = string.Format("delete from news where id in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('删除成功！');</script>");
                string strqry = "select id,title,shijian ,admin,hits,leibie,iif(leixing='0','正高级',iif(leixing='1','专业技术二级',iif(leixing='2','特殊津贴人员',iif(leixing='3','优秀论文')))) as lx from news where leibie = '" + lbl_leibie.Text + "' and leixing='0'  order by shijian desc ";
                Session["dv_detail"] = DBFun.GetDataView(strqry);
                bindData();
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_id = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["id"].ToString();
        string str_leixing = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["leibie"].ToString();
        Response.Redirect("Article_Add.aspx?id=" + str_id + "&flag=" + str_leixing);
    }
   

    private void bindData()
    {
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
            string id = GridView1.Rows[i].Cells[0].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("(" + id);
                else
                    strOpid += ("," + id);
            }
        }
        strOpid += ")";
        if (strOpid == ")")
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            strsql = string.Format("update news set leibie = '"+dw_class.SelectedValue+"' where id in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('移动成功！');</script>");
                string strqry = "select id,title,shijian ,admin,hits,leibie,iif(leixing='0','正高级',iif(leixing='1','专业技术二级',iif(leixing='2','特殊津贴人员',iif(leixing='3','优秀论文')))) as lx from news where leibie = '" + lbl_leibie.Text + "' and leixing='0' order by shijian desc  ";
                Session["dv_detail"] = DBFun.GetDataView(strqry);
                bindData();
            }
        }
    }
}
