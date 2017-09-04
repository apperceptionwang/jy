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


public partial class Admin_admin_LxxmBh : System.Web.UI.Page
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
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            try
            {
                ddl_PageSize.SelectedValue = ConfigurationManager.AppSettings.Get("PageSize");
            }
            catch
            {
                ddl_PageSize.SelectedIndex = 0;
            }
            bindData();
            this.GridView1.SelectedIndex = -1;
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " SELECT appNo, a.ktmc, a.sqbm, a.sqr,c.name AS xmzt," +
                  "        mid(appNo,5) as jsh, left(appNo,4) as appyear," +
                  "        cGroup1, a.id, pm, a.xmbh, zzlb " +
                  " FROM   t_teacher_list AS a, t_teacher AS b ,t_dict c " +
                  " WHERE  mid(a.appNo,5) = b.jsh and flm=11 and status = bm " +
                  " and    left(a.appNo,4) =year(date()) " +
            //"  and a.sqbm in (select name from t_dict where flm=13 and tj_flag) " +
                  " and    Status = (select url from t_dict where flm= 11 and bm = 5)";
        if (ddlist_Group.SelectedIndex != 0)
        {
            str_sql += " and cGroup1 = '" + ddlist_Group.SelectedValue + "' ";
        }
        if (ddlist_type.SelectedIndex != 0)
        {
            str_sql += " and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%' ";
        }
        if (rbl_order.SelectedIndex == 0)
            str_sql += " order by cGroup1,pm";
        else
            str_sql += " order by sqbm,sqr";
        dv = DBFun.GetDataView(str_sql);
        ViewState["sql"] = str_sql;
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        AspNetPager1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        pds.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;
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
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            e.Row.Attributes["style"] = "Cursor:hand";
        }
    }
    #endregion

    #region 生成项目编号
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        //JY2014B25
        //编码规则：前两位JY；接下来四位是年2015；下一位A代表资助类别为重点，B代表一般项目；最后两位为序号
        //str_sql = " SELECT   appNo,mid(appNo,5) as jsh, left(appNo,4) as appyear, xmbh,zzlb " +
        //          " FROM     t_teacher_list " +
        //          " WHERE    left(appNo,4) = year(date()) and a.jsh in "+
        //          " (  SELECT appNo "+
        //          "    FROM   t_teacher_list AS a, t_teacher AS b, t_dict AS c    "+
        //          "    WHERE  a.jsh = b.jsh and a.sqbm = c.name and flm=13 and not edit_flag and sh1 and sh2 and c.tj_flag  and xmzt = '在研'  order by sqbm,sqr) "+
        //          " order by sqbm,sqr";
        str_sql = " SELECT appNo, a.ktmc, a.sqbm, a.sqr," +
                  "        mid(appNo,5) as jsh, left(appNo,4) as appyear,"+
                  "        cGroup1, a.id, pm, a.xmbh, zzlb " +
                  " FROM   t_teacher_list AS a " +
                  " WHERE  left(a.appNo,4) =year(date()) " +
            //"  and a.sqbm in (select name from t_dict where flm=13 and tj_flag) " +
                  " and    Status = (select url from t_dict where flm= 11 and bm = 5)"+
                  " order by sqbm,id";
        OleDbDataAdapter OleAdp = DBFun.UpdateDataSet(str_sql);
        DataSet Ds = new DataSet();
        OleAdp.Fill(Ds, "aa");
        
        string str_zzlb;
        int i_zd = 0,i_yb = 0,i_bh;
        string str_bh,str_xmbh;
        string str_appNo;
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
                i_yb ++;
                i_bh = i_yb;    
            }
            if (i_bh < 10)
            {
                str_bh = "0" + i_bh.ToString();
            }
            else
            {
                str_bh = i_bh.ToString();
            }
            Ds.Tables[0].Rows[i]["xmbh"] = "JY" + DateTime.Today.Year.ToString() + str_zzlb + str_bh;
            str_xmbh = "JY" + DateTime.Today.Year.ToString() + str_zzlb + str_bh;
            str_appNo = Ds.Tables[0].Rows[i]["appno"].ToString();
            str_sql = "update t_teacher_list set xmbh ='" + str_xmbh + "' where appno = '" + str_appNo + "' ";
            DBFun.ExecuteUpdate(str_sql);
        }

        //Ds.AcceptChanges();
        //OleDbCommandBuilder odcb = new OleDbCommandBuilder(OleAdp);
        //Ds.Tables[0].GetChanges();
        //int i_return = OleAdp.Update(Ds, "aa");
        //Ds.Tables[0].AcceptChanges();
        bindData();
        //if (i_return != 0)
        //    Response.Write("<script>alert('分配成功！');</script>");
        //else
        //    Response.Write("<script>alert('分配失败！');</script>");
        //OleAdp.Dispose();
        //Ds.Dispose();
    }
    #endregion

    #region 导出到Excel
    protected void Exp2Excel_Click(object sender, EventArgs e)
    {
        str_sql = "select content from t_dict where flm= 14 and bm = 1";
        str_sql = DBFun.ExecuteScalar(str_sql).ToString();
        ExcelManager.Exp2Excel(this.Page, str_sql);
    }
    #endregion

    #region 每页显示条数
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        bindData();
    }
    #endregion
}