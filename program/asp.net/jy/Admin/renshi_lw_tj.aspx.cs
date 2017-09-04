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

public partial class Admin_renshi_lw_tj : System.Web.UI.Page
{
    #region pageload
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi';</script>");
            return;
        }
        if (CommFun.IsTimeOut("lw", Session["admin_id"].ToString()))
        {
            Response.Write("<script>alert('您已经提交，不能再访问该页面！');location.href = './main.aspx','_main';</script>");
            return;
        }
        if (!IsPostBack)
        {
            bindData();
            //this.btn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");
        }
        else
        {
            Save(false);
        }

    }
    #endregion

    #region 数据绑定
    private void bindData()
    {
        string strqry = "SELECT  ID, " +
                                 " sfzh,  " +
                                 " yourname, " +
                                 " xingbie, " +
                                 " iif( DateDiff('YYYY', CDate(iif(isnull(birth),now(),iif(birth='',now(),birth)) ), Format(Now(),'yyyy-mm-dd') " +
                                 " ) = 0,'', DateDiff('YYYY', CDate(iif(isnull(birth),now(),iif(birth='',now(),birth))),Format(Now(),'yyyy-mm-dd') " +
                                 " ) ) AS nianling,   " +
                                 " cplb,  " +
                                 " dwtjyj,  " +
                                 " iif (isnull(tj_flag),'未审核',tj_flag) as tuijian, " +
                                 " iif(edit_flag,'已提交','未提交') as tijiao " +
                                 " FROM yxxwlw_cpry  " +
                                 " where tjdw = '" + Session["admin_id"].ToString() + "'";


        if (RadioButtonList1.SelectedValue != "all")
            strqry = strqry + " and iif (isnull(tj_flag),'未审核',tj_flag) = '" + RadioButtonList1.SelectedValue + "'";
        strqry = strqry + " ORDER BY ID asc;";
        Session["dv_detail"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();

        string str_sfzh;
        RadioButtonList rbtnList_1;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            str_sfzh = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
            rbtnList_1 = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbtnList_tjjg");
            rbtnList_1.SelectedValue = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["tuijian"].ToString();
        }
        strqry = "select gz , count(gz) as num from " +
            "( SELECT iif(isnull(csgz),'未填写',csgz) as gz FROM cpry " +
            " WHERE gzdw =  '" + Session["admin_id"].ToString() + "' and edit_flag = false ";

        if (RadioButtonList1.SelectedValue != "all") strqry += " and iif(isnull(tj_flag),'未审核',tj_flag) = '" + RadioButtonList1.SelectedValue + "'";
        strqry += ")  GROUP BY gz;";
        OleDbDataReader reader = DBFun.dataReader(strqry);
        lbl_tongji.Text = "";
        while (reader.Read())
        {
            lbl_tongji.Text = lbl_tongji.Text + reader.GetString(0).ToString() + ":" + reader.GetInt32(1).ToString() + "<br/>";

        }
        DBFun.closeDataReader(ref reader);
        //计算推荐人员人数
        strqry = "SELECT count(*)  FROM yxxwlw_cpry  WHERE tjdw =  '" + Session["admin_id"].ToString() + "' and edit_flag = false  and iif(isnull(tj_flag),'未审核',tj_flag) = '推荐' ";

        string ls_count = DBFun.ExecuteScalar(strqry).ToString();
        this.btn_commit.Attributes.Add("onclick", "return   confirm   (\"拟向中国地震局拟推荐参评人员 " + ls_count + " 位，一旦提交不可修改，确定提交？\");");
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
        string str_sfzh = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        lbl_title.Text = "您现在正在评价的是: "+dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["yourname"].ToString();
        ftb_yj.Text = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["dwtjyj"].ToString();
        TD_yj.Visible = true;
        //Response.Redirect("../PrintPreview_lw.aspx");

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
        string str_sfzh, str_tjjg, str_sql, str_editflag;
        DataView dv = (DataView)Session["dv_detail"];
        RadioButtonList rbtnList_1;
        TextBox tbx_fnd;
        for (int i = 0; i < dv.Table.Rows.Count; i++)    //循环GridView每一行
        {
            str_sfzh = dv.Table.Rows[i]["sfzh"].ToString();
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
                try { rbtnList_1.SelectedValue = dv.Table.Rows[i]["tj_flag"].ToString(); }
                catch { }
            }
            str_tjjg = rbtnList_1.SelectedValue.ToString();
            if (str_tjjg == "推荐")
                str_editflag = "false";
            else
                str_editflag = "true";
            try { int j = Convert.ToInt16(tbx_fnd.Text); }
            catch
            {
                Response.Write("<script>alert('排序ID只能是数字！');</script>");
                return;
            }
            str_sql = "update yxxwlw_cpry set tj_flag = '" + str_tjjg + "' ,id =" + Convert.ToInt16(tbx_fnd.Text) + " where sfzh = '" + str_sfzh + "'";
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
        SetRadioButtonListStatus("推荐");
    }
    protected void lbtn_AllNo_Click(object sender, EventArgs e)
    {
        SetRadioButtonListStatus("不推荐");
    }
    #endregion

    #region 提交
    protected void btn_commit_Click(object sender, EventArgs e)
    {
        Save(false);
        string str_sql = "update t_dict set tj_flag = true where flm = 11 and url = '" + Session["admin_id"].ToString() + "'";
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
        Response.Write("<script>location.href = './admin_login.aspx?type=lwrs'; location.target='_top';</script>");
    }
    #endregion

    #region  意见
    protected void btn_yj_save_Click(object sender, EventArgs e)
    {
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("./admin_login.aspx?type=lwrs");
            return;
        }
        string ls_sfzh = Session["sfzh"].ToString();
        string ls_yj = ftb_yj.Text.Replace("'", "’");
        //if (CommFun.StringCounter(ftb_yj.HtmlStrippedText) > 3000)
        //{
        //    Response.Write("<script>alert('论文中文摘要 内容应在3000字以内！');</script>");
        //    return -1;
        //}
        string str_sql = " update yxxwlw_cpry set dwtjyj='" + ls_yj + "'" +
                         " where sfzh = '" + Session["sfzh"].ToString() + "'";

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }

        TD_yj.Visible = false;
    
    }
   
    protected void btn_yj_cancel_Click(object sender, EventArgs e)
    {
        TD_yj.Visible = false;
    } 
#endregion
}
