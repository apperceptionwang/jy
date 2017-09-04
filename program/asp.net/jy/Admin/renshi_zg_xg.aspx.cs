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

public partial class Admin_renshi_zg_xg : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi'; location.target='_top';</script>");
            return;
        }
        if (CommFun.IsTimeOut("zgj", Session["admin_id"].ToString()))
        {
            Response.Write("<script>alert('您已经提交，不能再访问该页面！');location.href = './main.aspx','_main';</script>");
            return;
        }
        if (!IsPostBack)
        {
            bindData();
        }
    }
    
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        CheckBox ckb = (CheckBox)GridView1.Rows[e.NewEditIndex].FindControl("ckb_Sle");
        string str_editflag = ckb.Checked.ToString().ToLower();

        string str_sql = string.Format("update cpry set edit_flag = {0} where sfzh = '{1}'",
                str_editflag, str_sfzh);


        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }


    private void bindData()
    {
        string strqry = "SELECT ID,sfzh, yourname,xingbie, " +
            "iif(DateDiff('YYYY', CDate(iif(isnull(birth),now,iif(birth='',now(),birth))),Format(Now(),'yyyy-mm-dd'))=0,'',DateDiff('YYYY', CDate(iif(isnull(birth),now,iif(birth='',now(),birth))),Format(Now(),'yyyy-mm-dd'))) AS nianling," +
            "xrzw, sbzw, iif(isnull(tj_flag),'未审核',tj_flag) as tuijian,edit_flag,fenlei FROM cpry where gzdw = '" + Session["admin_id"].ToString() + "' ";
        if (RadioButtonList1.SelectedValue != "all")
            strqry = strqry + " and iif(isnull(tj_flag),'未审核',tj_flag) = '" + RadioButtonList1.SelectedValue + "'";
        strqry = strqry + " ORDER BY ID;"; 
        Session["dv_detail"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();

        string str_sfzh;
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            str_sfzh = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_xg");
            rbtnList_1.SelectedValue = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["edit_flag"].ToString();
        }
        
        strqry = " SELECT iif(isnull(csgz),'未填写',csgz), count(csgz) AS num " +
                "    FROM cpry " +
                "   WHERE gzdw = '" + Session["admin_id"].ToString() + "'";
        if (RadioButtonList1.SelectedValue != "all") strqry += " and iif(isnull(tj_flag),'未审核',tj_flag) = '" + RadioButtonList1.SelectedValue + "'";
        strqry += " GROUP BY csgz;";
        OleDbDataReader reader = DBFun.dataReader(strqry);
        lbl_tongji.Text = "";
        if (reader != null)
        {
            try
            {
                while (reader.Read())
                {
                    lbl_tongji.Text = lbl_tongji.Text + reader.GetString(0).ToString() + ":" + reader.GetInt32(1).ToString() + "<br/>";
                }
            }
            catch { }
        }
        DBFun.closeDataReader(ref reader);
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
        string str_sbzw = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sbzw"].ToString();
        Session["sfzh"] = str_sfzh;

        if (str_sbzw == "研究员")
            Response.Redirect("../PrintPreview_yjy.aspx");
        else
            Response.Redirect("../PrintPreview_zyjgg.aspx");
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        Label lbl_tjflag = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_tj");
        string str_sh = lbl_tjflag.Text;
        string str_sql = "";
        if (str_sh != "推荐")
        {
            str_sql = string.Format("update cpry set tj_flag = '{0}' where id = {1}",
                        "推荐", Convert.ToInt16(GridView1.Rows[e.RowIndex].Cells[0].Text));
            //GridView1.Rows[e.RowIndex].Cells[6].Text = "通过";
        }
        else
        {
            str_sql = string.Format("update cpry set tj_flag = '{0}' where id = {1}",
                       "不推荐", Convert.ToInt16(GridView1.Rows[e.RowIndex].Cells[0].Text));
            //GridView1.Rows[e.RowIndex].Cells[6].Text = "未通过";
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('修改成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('修改失败！');</script>");
        }

    }
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        rbtnListSave();
    }

    protected void rbtnListSave()
    {
        string str_sfzh, str_xg, str_sql;
        DataView dv = (DataView)Session["dv_detail"];
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)    //循环GridView每一行
        {
            str_sfzh = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_xg");
            str_xg = rbtnList_1.SelectedValue.ToString();
            str_sql = "update cpry set edit_flag =" + str_xg + " where sfzh = '" + str_sfzh + "'";
            if (!DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('保存失败！');</script>");
                return;
            }
        }
        Response.Write("<script>alert('保存成功！');</script>");

    }

    protected void lbtn_AllYes_Click(object sender, EventArgs e)
    {
        SetRadioButtonListStatus("True");
    }

   
    protected void lbtn_AllNo_Click(object sender, EventArgs e)
    {
        SetRadioButtonListStatus("False");
    }
    protected void SetRadioButtonListStatus(string str_Value)
    {
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_xg");
            rbtnList_1.SelectedValue = str_Value;
        }
    }
}
