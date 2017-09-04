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

public partial class Admin_zhuanjia_ry_list : System.Web.UI.Page
{
    protected string str_type;
    protected GridView gv;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }        
        gv = GridView2;
        btn_vote.Visible = true;
        
        

        if (!IsPostBack)
        {
            bindData();
            this.btn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");   
        }
    }

    

    #region 数据绑定
    private void bindData()
    {
        string strqry="";
        
        strqry = " SELECT id,jsh,sqr,sqbm,sftj " +
                " FROM   t_teacher_list,t_zjry,t_dict" +
                " WHERE t_teacher_list.appyear=year(date()) and t_zjry.appyear=year(date()) " +
                " and cpry_sfzh = jsh and flm=1 and t_teacher_list.sqbm = t_dict.name " +                
                " AND    zj_sfzh = '" + Session["admin_id"].ToString() + "' " +
                " AND    not edit_flag " +
                " AND    tj_sb " +
                " AND    tj_flag" +
                " ORDER BY url,id";
        gv.Visible = true;
        DataView dv = DBFun.GetDataView(strqry);
        Session["dv_detail"] = dv;
        gv.DataSource = dv;
        gv.DataBind();

        bool tj_flag;
        
        
        //设置是否推荐选项框
        CheckBox cbx;
        for (int i = 0; i < gv.Rows.Count; i++)
        {
            cbx = (CheckBox)gv.Rows[i].FindControl("cbx_1");
            cbx.Checked = Convert.ToBoolean(dv.Table.Rows[i + gv.PageIndex * gv.PageSize]["sftj"].ToString());
        }
        
        

        //设置按钮是否可见
        strqry = "SELECT tj_flag FROM t_pszj WHERE appyear=year(date()) AND sfzh='" + Session["admin_id"].ToString() + "'";
        tj_flag = Convert.ToBoolean(DBFun.ExecuteScalar(strqry));
        
        //如果已提交，投票按钮不可见
        btn_vote.Visible = !tj_flag;

        //如果已提交，打印按钮可见
        btn_print.Visible = tj_flag;

        //如果已提交，提交按钮不可见
        btn_commit.Visible = !tj_flag;
        
    }
    #endregion

    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gv.PageIndex = e.NewPageIndex;
        this.bindData();
    }

    //protected void GridView4_PageIndexChanging(object sender, GridViewPageEventArgs e)
    //{
    //    lbl_pingjia.Visible = false;
    //    DataView dv = (DataView)Session["dv_detail"];
    //    string str_sql = "select tj_flag from pszj where flag = 4 and sfzh='" + Session["admin_id"].ToString() + "'";
    //    bool tj_flag = Convert.ToBoolean(DBFun.ExecuteScalar(str_sql));

    //}
    #endregion

    #region 投票
    protected void btn_vote_Click(object sender, EventArgs e)
    {


        Save(true);
        //Response.Write("<script>alert('投票失败！');</script>");
        //    return;
        //}
    }
    #endregion

    #region 保存
    protected int Save(bool b_ShowMsg)
    {
        string strOpid = "";
        string strsql;
        TextBox tbx_fnd;//排列顺序号
        TextBox tbx_fnd1;//排列顺序号 用来比较是否有重复
        int i_Number = 0; //特殊津贴人员  专家推荐人数

        strsql = "Select count(*) From t_zjry Where appyear=year(date()) And zj_sfzh = '" + Session["admin_id"].ToString() + "' and sftj ";
        DataView dv = (DataView)Session["dv_detail"];
        for (int i = 0; i < gv.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)gv.Rows[i].FindControl("cbx_1");
            string str_sfzh = dv.Table.Rows[i + gv.PageIndex * gv.PageSize]["jsh"].ToString();
           
            if (ckb.Checked)
            {
                i_Number++;
                if (strOpid == "")
                    strOpid += ("('" + str_sfzh);
                else
                    strOpid += ("','" + str_sfzh);
            }
            
        }

        strOpid += "')";
        if (strOpid == "')")
            strOpid = "('')";
       
        
        
        //投票
        strsql = string.Format("update t_zjry set sftj = true where appyear=year(date()) and zj_sfzh='{0}' and cpry_sfzh in {1}", Session["admin_id"].ToString(), strOpid);
        DBFun.ExecuteUpdate(strsql);

        strsql = string.Format("update t_zjry set sftj = false where appyear=year(date()) and zj_sfzh='{0}' and cpry_sfzh not in {1}", Session["admin_id"].ToString(), strOpid);
        DBFun.ExecuteUpdate(strsql);
        if (b_ShowMsg)
        {
            Response.Write("<script>alert('已保存推荐结果！');</script>");
        }
        bindData();
        return 1;
    }
    #endregion

    #region 查看附件
    //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    lbl_pingjia.Visible = false;
    //    DataView dv = (DataView)Session["dv_detail"];
    //    //string str_url = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["dbxcg_fj1"].ToString();
    //    //if (str_url == "")
    //    //{
    //    //    Response.Write("<script>alert('该人员没有上传附件！');</script>");
    //    //    return;
    //    //}

    //    //Response.Redirect("../dbxcg/" + dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["dbxcg_fj1"].ToString());

    //}
    //protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    //{
    //    lbl_pingjia.Visible = false;
    //    DataView dv = (DataView)Session["dv_detail"];
    //    //string str_url = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["dbxcg_fj2"].ToString();
    //    //if (str_url == "")
    //    //{
    //    //    Response.Write("<script>alert('该人员没有上传附件！');</script>");
    //    //    return;
    //    //}
    //    //Response.Redirect("../dbxcg/" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["dbxcg_fj2"].ToString());
    //}

    //protected void GridView4_RowEditing(object sender, GridViewEditEventArgs e)
    //{
    //    lbl_pingjia.Visible = false;
    //    DataView dv = (DataView)Session["dv_detail"];
    //    string str_url = dv.Table.Rows[e.NewEditIndex + GridView4.PageIndex * GridView4.PageSize]["lw_fj"].ToString();
    //    if (str_url == "")
    //    {
    //        Response.Write("<script>alert('该人员没有上传附件！');</script>");
    //        return;
    //    }

    //    Response.Redirect("../lw/" + dv.Table.Rows[e.NewEditIndex + GridView4.PageIndex * GridView4.PageSize]["lw_fj"].ToString());

    //}
    #endregion

    #region 查看人员信息
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_pingjia.Visible = false;
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.NewSelectedIndex + gv.PageIndex * gv.PageSize]["jsh"].ToString();
        Session["jsh"] = str_sfzh;
        Session["jsm"] = dv.Table.Rows[e.NewSelectedIndex + gv.PageIndex * gv.PageSize]["sqr"].ToString();
        Response.Redirect("../user_tb.aspx");
        
    }
    #endregion

    #region 提交
    protected void btn_commit_Click(object sender, EventArgs e)
    {
        if (Save(false) == -1)
        {
            return;
        }
        string str_sql = "update t_pszj set tj_flag = true where appyear=year(date()) and sfzh = '" + Session["admin_id"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('提交成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
            return;
        }
        
        Response.Write("<script>location.href = './admin_login.aspx?type=" + Session["admin_type"].ToString() + "'; location.target='_top';</script>");
        Session.Clear();
    }
    #endregion

    protected void btn_back_Click(object sender, EventArgs e)
    {
        Response.Redirect("./zhuanjia_index.aspx");
    }

    protected void btn_print_Click(object sender, EventArgs e)
    {
        Response.Redirect("../PrintPreview_erji_nprytpb.aspx?zjid=" + Session["admin_id"].ToString());
    }

    //导出到Excel函数

    #region 导出到Excel函数
    public void CreateExcel(DataView dv, string typeid, string FileName)
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        string colHeaders = "";
        int i = 0;

        //定义表对象与行对像，同时用DataSet对其值进行初始化
        DataTable dt = dv.Table;
        DataRow[] myRow = dt.Select();
        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件
        if (typeid == "1")
        {	
            colHeaders += "序  号" + "\t";
            colHeaders += "工作单位" + "\t";
            colHeaders += "姓  名" + "\t";
            colHeaders += "投票栏" + "\t";
            colHeaders += "推荐顺序" + "\t";
            colHeaders += "性  别" + "\t";
            colHeaders += "出生年月" + "\t";
            colHeaders += "职称" + "\t";
            colHeaders += "所学专业" + "\t";
            colHeaders += "文化程度" + "\t\n";
            for (i = 0; i < dt.Rows.Count; i++)
            {
                colHeaders += Convert.ToString(i + 1) + "\t";
                for (int j = 0; j < 9; j++)
                {
                    colHeaders += dt.Rows[i][j].ToString() + "\t";
                    if (j == 8)
                        colHeaders += "\n";
                }

            }
            resp.Write(colHeaders);
        }
        else
        {
            if (typeid == "2")
            {
                //从DataSet中直接导出XML数据并且写到HTTP输出流中
                //resp.Write(ds.GetXml());
            }
        }
        //写缓冲区中的数据到HTTP头文件中
        resp.End();


    }
    #endregion


    protected void cbx_1_CheckedChanged(object sender, EventArgs e)
    {
        //设置是否推荐选项框
        CheckBox cbx;
        TextBox tbx;
        for (int i = 0; i < gv.Rows.Count; i++)
        {
            cbx = (CheckBox)gv.Rows[i].FindControl("cbx_1");
            tbx = (TextBox)gv.Rows[i].FindControl("tbx_ID");
            tbx.Visible = cbx.Checked;
            if (!tbx.Visible)
            {
                tbx.Text = "";
            }
        }
    }



    protected void GridVi(object sender, GridViewUpdateEventArgs e)
    {

    }
}
