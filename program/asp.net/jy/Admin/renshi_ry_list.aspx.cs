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

public partial class Admin_renshi_ry_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi';</script>");
            return;
        }
        if (!IsPostBack)
        {
            //CommFun.IsAdmin();
            //string str_qry = "SELECT stext,stext from q_newstype ;";
            //DBFun.FillDwList(dw_class, str_qry);
            //string str_leibie = Request.QueryString["flag"];
            //lbl_leibie.Text = str_leibie;
            //if (str_leibie == "") return;
            
            
            bindData();
        }
    }

    #region 删除
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
                bindData();
            }
        }
    }
    #endregion
    
    #region 数据绑定
    private void bindData()
    {
        string strqry = "SELECT ID,sfzh, yourname,xingbie, DateDiff('YYYY', CDate(birth),Format(Now(),'yyyy-mm-dd')) AS nianling, xrzw, sbzw, tj_flag,edit_flag,fenlei FROM cpry where edit_flag = false and gzdw = '" + Session["admin_id"].ToString() + "' ";
        if (Session["admin_type"].ToString() == "zhuanjia")
            strqry = "SELECT cpry.id,cpry.sfzh ,yourname,xingbie, DateDiff('YYYY', CDate(birth),Format(Now(),'yyyy-mm-dd')) AS nianling,xrzw,sbzw,tj_flag from cpry,zjry where edit_flag = false and zjid = " + Session["admin_id"].ToString() + " and cpry.sfzh=zjry.sfzh";
        if (RadioButtonList1.SelectedValue != "all")
            strqry = strqry + " and tj_flag = '" + RadioButtonList1.SelectedValue + "'";
        strqry = strqry + " ORDER BY ID;";

        DataView dv = DBFun.GetDataView(strqry);//dv null 为什么
        Session["dv_detail"] = dv;
        GridView1.DataSource = dv;
        GridView1.DataBind();
        //for (int i = 0; i < GridView1.Rows.Count; i++)
        //{
        //    CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
        //    ckb.Checked = Convert.ToBoolean(dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["edit_flag"].ToString());
        //}

        strqry = " SELECT csgz, count(csgz) AS num " +
                "    FROM cpry " +
                "   WHERE gzdw = '" + Session["admin_id"].ToString() + "' ";
        if (RadioButtonList1.SelectedValue != "all") strqry += " and tj_flag = '" + RadioButtonList1.SelectedValue + "'";
        strqry += " GROUP BY csgz;";
        OleDbDataReader reader = DBFun.dataReader(strqry);
        lbl_tongji.Text = "";
        while (reader.Read())
        {
            lbl_tongji.Text = lbl_tongji.Text + reader.GetString(0).ToString() + ":" + reader.GetInt32(1).ToString() + "<br/>";

        }
        DBFun.closeDataReader(ref reader);
    }
#endregion

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
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");
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
            strsql = string.Format("update cpry set fenlei = '" + Dropdownlist1.SelectedItem.Text + "' where id in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('添加成功！');</script>");
                bindData();
            }
        }
    }


    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        if (dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sbzw"].ToString() == "研究员")
            Response.Redirect("../PrintPreview_yjy.aspx"  );
        else
            Response.Redirect("../PrintPreview_zyjgg.aspx");
    }
    
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }

}
