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

public partial class Admin_renshi_jy_tj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["dept_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (CommFun.IsTimeOut("jy", Session["dept_id"].ToString()))
        {
            //Response.Write("<script>alert('您已经提交，不能再访问该页面！');location.href = './main.aspx','_main';</script>");
            //return;
            TD1.Visible = false;
            btn_Save.Visible = false;
            
        }
        if (!IsPostBack)
        {
            bindData();
            //this.btn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");
        }
        //else
        //{
        //    Save(false);
        //}
        string strqry = "exec Q_Para_CommitNum_By_sqbm '" + Session["dept_name"].ToString() + "'";
        string ls_count = DBFun.ExecuteScalar(strqry).ToString();
        this.btn_commit.Attributes.Add("onclick", "return   confirm   (\"拟推荐课题 " + ls_count + " 项，一旦提交不可修改，确定提交？\");");
    }
    

    #region 数据绑定
    private void bindData()
    {
        string strqry = "exec Q_Para_CommitList_By_sqbm '" + Session["dept_name"].ToString() + "' ";
        //if (RadioButtonList1.SelectedValue != "all")
        //    strqry = strqry + " and iif (isnull(tj_sb),'False',tj_sb) = " + RadioButtonList1.SelectedValue ;
        //strqry = strqry + " ORDER BY ID asc;";
        Session["dv_detail"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();
        
        string str_sfzh;
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            str_sfzh = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_tjjg");
            try
            {
                rbtnList_1.SelectedValue = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["status"].ToString();
            }
            catch
            {
                rbtnList_1.SelectedValue = "3";
            }
        }
    }
    #endregion

    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion

    #region 查看基本信息
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        Session["type"] = "user";
        Session["jsh"] = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
        Session["jsm"] = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sqr"].ToString();
        Session["appNo"] = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["appNo"].ToString();
        Response.Redirect("../user_tb.aspx?type=view");
    }
    #endregion

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }

    #region 保存
    protected void btn_Save_Click(object sender, EventArgs e)
    {
        Save(true);
    }

    protected void Save(bool b_ShowMsg)
    {
        string str_sfzh, str_tjjg,str_sql;
        DataView dv = (DataView)Session["dv_detail"];
        RadioButtonList rbtnList_1;
        TextBox tbx_fnd;
        for (int i = 0; i < dv.Table.Rows.Count; i++)    //循环GridView每一行
        {
            str_sfzh = dv.Table.Rows[i]["jsh"].ToString();
            if (i < GridView1.Rows.Count)
            {
                rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i + GridView1.PageIndex * GridView1.PageSize].FindControl("rbtnList_tjjg");
                tbx_fnd = (TextBox)this.GridView1.Rows[i + GridView1.PageIndex * GridView1.PageSize].FindControl("tbx_ID");
            }
            else
            {
                tbx_fnd = new TextBox();
                int i_count = i + 1;
                tbx_fnd.Text = i_count.ToString();
                rbtnList_1 = new RadioButtonList();
                string str_status = dv.Table.Rows[i]["status"].ToString();
                if (str_status == "2")
                { rbtnList_1.SelectedIndex = 1 ;}
                else
                {rbtnList_1.SelectedIndex = 0;}
                
            }
            str_tjjg = rbtnList_1.SelectedValue.ToString();
            //if (str_tjjg == "推荐")
            //    str_editflag = "false";
            //else
            //    str_editflag = "true";
            try { int j = Convert.ToInt16(tbx_fnd.Text); }
            catch
            {
                Response.Write("<script>alert('排序只能是数字！');</script>");
                return;
            }
            str_sql = "update t_teacher_list set status = " + str_tjjg + " ,id =" + Convert.ToInt16(tbx_fnd.Text) + " where appyear=year(date()) and jsh = '" + str_sfzh + "'";
            if (!DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('保存失败！');</script>");
                return;
            }
        }
        if (b_ShowMsg)
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        bindData();
    }
#endregion

    #region 设置 全部推荐 全部不推荐
    protected void SetRadioButtonListStatus(string str_Value)
    {
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_tjjg");
            rbtnList_1.SelectedValue = str_Value;
        }
    }
    protected void lbtn_AllYes_Click(object sender, EventArgs e)
    {
        SetRadioButtonListStatus("3");
    }
    protected void lbtn_AllNo_Click(object sender, EventArgs e)
    {
        SetRadioButtonListStatus("2");
    }
    #endregion

    #region 提交
    protected void btn_commit_Click(object sender, EventArgs e)
    {
        Save(false);
        string str_sql = "update t_dict set tj_flag = true where flm = 13 and url = '" + Session["dept_id"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('提交成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
            return;
        }
        Session.Clear();
        Response.Redirect("../SessionTimeOut.aspx?type=topnomsg");
    }
    #endregion

    

}
