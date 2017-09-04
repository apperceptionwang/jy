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
using System.IO;


public partial class admin_GlJf : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!CommFun.IsAdmin(Session["admin_name"].ToString()))
        {
            Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
        }
        if (!IsPostBack)
        {
            string str_sql = "exec Q_dict_flm3";
            DBFun.FillDwList(ddlist_Group, str_sql);
            ddlist_Group.Items.Insert(0, "全部");
            ////读取PageSize信息
            //AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            //try
            //{
            //    ddl_PageSize.SelectedValue = ConfigurationManager.AppSettings.Get("PageSize");
            //}
            //catch
            //{
            //    ddl_PageSize.SelectedIndex = 0;
            //}
            AspNetPager1.PageSize = 10;
            //GridView1.SelectedRowStyle.BackColor = System.Drawing.Color.RosyBrown;
            bindData();
            this.GridView1.SelectedIndex = -1;

        }
    }
    #endregion

    #region GridView1数据绑定
    protected void bindData()
    {
        str_sql = "SELECT a.jsh, appyear, a.ktmc, a.sqbm, a.sqr,c.name AS tj," +
                  "  cGroup, a.id, pm, a.xmbh, zzlb " +
                  "  FROM t_teacher_list AS a, t_teacher AS b ,t_dict c " +
                  "  WHERE mid(a.appNo,5) = b.jsh and flm=11 and status = bm " +
                  "  and xmbh is not null ";
                  //"  and a.sqbm in (select name from t_dict where flm=13 and tj_flag) " +
                  //"  and Status =(select url from t_dict where flm= 11 and bm = 5)";
        //按分组查找
        if (ddlist_Group.SelectedIndex != 0)
        {
            str_sql += " and cGroup = '" + ddlist_Group.SelectedValue + "' ";
        }
        //按项目编号、课题名称、申请部门、申请人查找
        string str_condition = tbx_search.Text.Trim();
        if (str_condition != "")
            str_sql += " and (xmbh like '%" + str_condition + "%' or ktmc like '%" + str_condition + "%' or sqbm like '%" + str_condition + "%' or sqr like '%" + str_condition + "%') ";
        //排序
        if (rbl_order.SelectedIndex == 0)
            str_sql += " order by xmbh";
        else if (rbl_order.SelectedIndex == 1)
            str_sql += " order by cGroup,pm";
        else
            str_sql += " order by sqbm,sqr";
        dv = DBFun.GetDataView(str_sql);
        ViewState["sql"] = str_sql;
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        //GridView1.DataKeyNames = new string[] { "ID" };
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;

        
    }
    #endregion

    #region GridView2数据绑定
    protected void bindData1()
    {
        str_sql = ViewState["sql1"].ToString();
        dv = DBFun.GetDataView(str_sql);
        //DataRow dr = dv.Table.NewRow();
        //dv.Table.Rows.Add(dr);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager2.PageSize;
        pds.CurrentPageIndex = AspNetPager2.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView2.DataSource = pds;
        GridView2.DataKeyNames = new string[] { "ID" };
        GridView2.DataBind();
        AspNetPager2.RecordCount = dv.Table.Rows.Count;
        decimal i_xmjf,i_ysy,i_ye;
        str_sql = "select iif(isnull(xmjf),0,xmjf) as jf,sqr,xmbh from t_teacher_list where xmbh = '" + ViewState["xmbh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        i_xmjf = Convert.ToDecimal( dr["jf"]);                       //项目经费
        lbl_xmxx.Text = "项目编号：[" + dr["xmbh"].ToString() + "]申请人：" + dr["sqr"].ToString();
        i_ysy = 0;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            i_ysy += Convert.ToDecimal(dv.Table.Rows[i]["je"]);
        }
        i_ye = i_xmjf - i_ysy;
        lbl_xmjf.Text = "经费总额为：" + i_xmjf.ToString() + "元，已使用经费额：" + i_ysy.ToString() + "元，余额：" + i_ye.ToString() + "元。";
    }
    #endregion

    #region 排序
    protected void rbl_order_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 显示行号
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            int id = e.Row.RowIndex + 1 + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
            e.Row.Cells[0].Text = id.ToString();
        }
        //鼠标移动行变色
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //下面两句代码是添加鼠标效果，当鼠标移动到行上时，变颜色 
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            //加粗代码《,this.style.fontWeight='Bold'》#ccddff
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';this.style.fontWeight='Bold'");
            e.Row.Attributes["style"] = "Cursor:hand"; //鼠标悬停的行显示手型
        }
    }
    #endregion

    #region 每页显示条数
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        bindData();
    }
    #endregion

    #region 新增
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (ViewState["sql1"] == null)
        {
            Response.Write("<script>alert('请先选择项目！');</script>");
            return ;
        }
        GridView2.EditIndex = GridView2.Rows.Count;
        NewRow();
        //新增记录，隐藏删除按钮
        GridView2.Rows[GridView2.EditIndex].Cells[7].Controls[1].Visible = false;
    }
    protected void NewRow()
    {
        str_sql = ViewState["sql1"].ToString();
        dv = DBFun.GetDataView(str_sql);
        DataRow dr = dv.Table.NewRow();
        dr["je"] = 0;
        dr["rq"] = string.Format( DateTime.Today.ToString(),"yyyy-MM-dd");
        dv.Table.Rows.Add(dr);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager2.PageSize;
        pds.CurrentPageIndex = AspNetPager2.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView2.DataSource = pds;
        GridView2.DataKeyNames = new string[] { "ID" };
        GridView2.DataBind();
        AspNetPager2.RecordCount = dv.Table.Rows.Count;
    }
    #endregion

    #region 删除
    protected void GridView2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        string str_id = GridView2.DataKeys[e.RowIndex].Value.ToString();
        if (str_id == "")
        {
            Response.Write("<script language=javascript>alert('删除成功！')</script>");
            bindData1();
            return;
        }
        str_sql = "delete from t_jf where ID=" + str_id;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script language=javascript>alert('删除成功！')</script>");
            bindData1();//调用自定义方法重新绑定控件中数据
        }
        else
        {
            Response.Write("<script language=javascript>alert('删除失败！')</script>");
        }
    }
    #endregion

    #region GridView1编辑
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        int i_rownum = e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        string str_xmbh = dv.Table.Rows[i_rownum]["xmbh"].ToString();
        str_sql = "select * from t_jf where xmbh = '" + str_xmbh + "'";
        ViewState["sql1"] = str_sql;
        ViewState["xmbh"] = str_xmbh;
        //使选中行颜色与其他行颜色不同
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            GridView1.Rows[i].BackColor = System.Drawing.Color.White;
        }
        GridView1.Rows[e.NewEditIndex].BackColor = System.Drawing.Color.RosyBrown;
        bindData1();
    }
    #endregion

    #region GridView2编辑
    protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridView2.EditIndex = e.NewEditIndex;
        bindData1();
    }
    #endregion

    #region 保存
    protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        //取得编辑行的关键字段的值
        string str_ID = GridView2.DataKeys[e.RowIndex].Value.ToString();
        //取得文本框中输入的内容
        string str_1 = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[1].Controls[0])).Text.ToString().Trim();
        string str_2 = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[2].Controls[0])).Text.ToString().Trim();
        string str_3 = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[3].Controls[0])).Text.ToString().Trim();
        string str_4 = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[4].Controls[0])).Text.ToString().Trim();
        string str_5 = ((TextBox)(GridView2.Rows[e.RowIndex].Cells[5].Controls[0])).Text.ToString().Trim();
        //定义更新操作的SQL语句
        if (str_ID == "")
            str_sql = "insert into t_jf (xmbh,jfmc,ytsm,je,bz,rq) values ('" + ViewState["xmbh"].ToString() + "','" + str_1 + "','" + str_2 + "'," + str_3 + ",'" + str_4 + "','" + str_5 + "')";
        else
            str_sql = "update t_jf set jfmc='" + str_1 + "',ytsm='" + str_2 + "',je=" + str_3 + ",bz='" + str_4 + "',rq='" + Convert.ToDateTime(str_5) + "' where ID=" + str_ID;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            GridView2.EditIndex = -1;
            bindData1();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    #endregion

    #region 退出编辑
    protected void GridView2_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        //设置GridView控件的编辑项的索引为－1，即取消编辑
        GridView2.EditIndex = -1;
        bindData1();//数据绑定
    }
    #endregion

    #region 生成项目编号
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        //JY2014B25
        str_sql = " SELECT a.jsh, appyear, a.xmbh,zzlb " +
                         "   FROM t_teacher_list AS a " +
                         "   WHERE appYear=year(date()) and a.jsh in (SELECT a.jsh   FROM t_teacher_list AS a, t_teacher AS b, t_dict AS c    WHERE a.jsh = b.jsh and a.sqbm = c.name and flm=13 and not edit_flag and sh1 and sh2 and c.tj_flag  and xmzt = '在研'  order by sqbm,sqr) " +
                         " order by sqbm,sqr";

        OleDbDataAdapter OleAdp = DBFun.UpdateDataSet(str_sql);
        DataSet Ds = new DataSet();
        OleAdp.Fill(Ds, "aa");

        string str_zzlb;
        int i_zd = 0, i_yb = 0, i_bh;
        for (int i = 0; i < Ds.Tables[0].Rows.Count; i++)
        {
            str_zzlb = Ds.Tables[0].Rows[i]["zzlb"].ToString();
            if (str_zzlb == "重点")
            {
                str_zzlb = "A";
                i_zd++;
                i_bh = i_zd;
            }
            else
            {
                str_zzlb = "B";
                i_yb++;
                i_bh = i_yb;
            }
            Ds.Tables[0].Rows[i]["xmbh"] = "JY" + DateTime.Today.Year.ToString() + str_zzlb + i_bh;
        }


        //Ds.AcceptChanges();
        OleDbCommandBuilder odcb = new OleDbCommandBuilder(OleAdp);
        Ds.Tables[0].GetChanges();
        int i_return = OleAdp.Update(Ds, "aa");
        Ds.Tables[0].AcceptChanges();
        bindData();
        if (i_return != 0)
            Response.Write("<script>alert('分配成功！');</script>");
        else
            Response.Write("<script>alert('分配失败！');</script>");
        OleAdp.Dispose();
        Ds.Dispose();
    }
    #endregion

    //汇总的表格要有项目编号、负责人、项目名称、研究周期、批复金额、余额
    //批量导出，单个导出
    #region 导出到Excel
    protected void Exp2Excel_Click(object sender, EventArgs e)
    {
        //str_sql = "exec Q_Lxjg ";
        str_sql = "select content from t_dict where flm= 14 and bm = 1";
        str_sql = DBFun.ExecuteScalar(str_sql).ToString();
        ExcelManager.Exp2Excel(this.Page, str_sql);
    }
    #endregion
}