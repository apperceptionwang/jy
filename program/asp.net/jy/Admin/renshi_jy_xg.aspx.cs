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

public partial class Admin_renshi_jy_xg : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dept_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        //判断是否到申报截止日期（包含当天），如果到了不允许访问该页面
        string strqry = " SELECT datediff('d',format(now(),'yyyy-MM-dd'), (select url from t_dict where flm = 8 and bm = 3 )) FROM t_dict;";
        if (Convert.ToInt16(DBFun.ExecuteScalar(strqry)) < 0)
        {
            Response.Write(@"<script>alert('申报截止日期已到，不能再访问该页面！');</script>");
            return;
        }
        if (CommFun.IsTimeOut("jy", Session["dept_id"].ToString()))
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
        string str_sfzh = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
        CheckBox ckb = (CheckBox)GridView1.Rows[e.NewEditIndex].FindControl("ckb_Sle");
        string str_editflag = ckb.Checked.ToString().ToLower();

        string str_sql = string.Format("update t_teacher_list set edit_flag = {0} where appyear=year(date()) and jsh = '{1}'",
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
        string strqry = "exec Q_Para_CommitList_By_sqbm '" + Session["dept_name"].ToString() + "' ";
        Session["dv_detail"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();

        string str_sfzh;
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            str_sfzh = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_xg");
            rbtnList_1.SelectedValue = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["edit_flag"].ToString();
        }
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        Session["type"] = "user";
        Session["jsh"] = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
        Session["jsm"] = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sqr"].ToString();
        Response.Redirect("../user_tb.aspx");
    }
    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{

    //    Label lbl_tjflag = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_tj");
    //    string str_sh = lbl_tjflag.Text;
    //    string str_sql = "";
    //    if (str_sh != "推荐")
    //    {
    //        str_sql = string.Format("update t_teacher_list set tj_sb = True where appyear=year(date()) and jsh = '{0}'",
    //                     GridView1.Rows[e.RowIndex].Cells[1].Text);
    //    }
    //    else
    //    {
    //        str_sql = string.Format("update t_teacher set tj_sb = False where appyear=year(date()) and jsh = '{0}'",
    //                    GridView1.Rows[e.RowIndex].Cells[1].Text);
    //    }

    //    if (DBFun.ExecuteUpdate(str_sql))
    //    {
    //        Response.Write("<script>alert('修改成功！');</script>");
    //        bindData();
    //    }
    //    else
    //    {
    //        Response.Write("<script>alert('修改失败！');</script>");
    //    }

    //}
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        string str_sfzh, str_xg, str_sql;
        DataView dv = (DataView)Session["dv_detail"];
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)    //循环GridView每一行
        {
            str_sfzh = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_xg");
            str_xg = rbtnList_1.SelectedValue.ToString();
            str_sql = "update t_teacher_list set edit_flag =" + str_xg + " where appyear=year(date()) and jsh = '" + str_sfzh + "'";
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
