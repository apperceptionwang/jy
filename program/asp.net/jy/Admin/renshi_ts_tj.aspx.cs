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

public partial class Admin_renshi_ts_tj : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi';</script>");
            return;
        }
        if (CommFun.IsTimeOut("ts", Session["admin_id"].ToString()))
        {
            Response.Write("<script>alert('您已经提交，不能再访问该页面！');location.href = './main.aspx','_main';</script>");
            return;
        }
        if (!IsPostBack)
        {
            bindData();
            this.btn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");
        }
        else
        {
            Save(false);
        }
    }


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
                                 " jszc,  " +
                                 " xzzw,  " +
                                 " iif (isnull(tj_flag),'未审核',tj_flag) as tuijian, " +
                                 " iif(edit_flag,'已提交','未提交') as tijiao " +
                                 " FROM ts_cpry  " +
                                 " where gzdw = '" + Session["admin_id"].ToString() + "'";


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
        //strqry = "select gz , count(gz) as num from " +
        //    "( SELECT iif(isnull(csgz),'未填写',csgz) as gz FROM cpry " +
        //    " WHERE dw =  '" + Session["admin_id"].ToString() + "' and edit_flag = false ";

        //if (RadioButtonList1.SelectedValue != "all") strqry += " and iif(isnull(tj_flag),'未审核',tj_flag) = '" + RadioButtonList1.SelectedValue + "'";
        //strqry += ")  GROUP BY gz;";
        //OleDbDataReader reader = DBFun.dataReader(strqry);
        //lbl_tongji.Text = "";
        //while (reader.Read())
        //{
        //    lbl_tongji.Text = lbl_tongji.Text + reader.GetString(0).ToString() + ":" + reader.GetInt32(1).ToString() + "<br/>";

        //}
        //DBFun.closeDataReader(ref reader);
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
        Response.Redirect("../PrintPreview_ts.aspx");
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
            str_sql = "update ts_cpry set tj_flag = '" + str_tjjg + "' ,id =" + Convert.ToInt16(tbx_fnd.Text) + " where sfzh = '" + str_sfzh + "'";
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
        string str_sql = "update t_dict set ts_tj_flag = true where flm = 2 and url = '" + Session["admin_id"].ToString() + "'";
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
        //Response.Redirect("../default.aspx");
        Response.Write("<script>location.href = './admin_login.aspx?type=renshi'; location.target='_top';</script>");
    }
    #endregion
}
