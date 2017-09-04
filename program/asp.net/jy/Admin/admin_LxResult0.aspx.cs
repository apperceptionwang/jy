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
using System.IO;

public partial class admin_Lx : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region  页面加载
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
            Calc_fs();
            str_sql = "SELECT name,name from t_dict where flm=3 ;";
            DBFun.FillDwList(ddlist_cGroup, str_sql);
            ddlist_cGroup.Items.Insert(0, "全部"); 
            str_sql = "SELECT url,name from t_dict where flm=11 ;";
            DBFun.FillDwList(ddlist_xmzt0, str_sql);
            ddlist_xmzt0.Items.Insert(0, "全部");
            str_sql = "select content from t_dict where flm = 14 and bm =3";
            str_sql = DBFun.ExecuteScalar(str_sql).ToString();
            DBFun.FillDwList(ddlist_year, str_sql);
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " select appNo,sqr,ktmc ,iif(zjtp0_1,'是','否') as tp1," +
                  " iif(zjtp0_2,'是','否') as tp2," +
                  " iif(zjtp0_3,'是','否') as tp3," +
                  " iif(zjtp0_4,'是','否') as tp4," +
                  " iif(zjtp0_5,'是','否') as tp5," +
                  " pm0,ps0,cGroup0 " +
                  " from   t_teacher_list " +
                  " where  left(appNo,4)=year(date()) " +
                  //" and    sqbm in (select name from t_dict where flm= 13 and tj_flag) "+
                  " and    Status >= (select url from t_dict where flm= 11 and bm = 3)";
        if (ddlist_year.SelectedValue != "")
            str_sql += " and ( left(appNo,4) = " + ddlist_year.SelectedValue + ") ";
        if (ddlist_xmzt0.SelectedIndex != 0)
            str_sql += " and ( Status = " + ddlist_xmzt0.SelectedValue + ") ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup0 = '" + ddlist_cGroup.SelectedValue + "') ";
        if (tbx_spm.Text.Trim() != "")
            str_sql += " and (( spm LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( sqr LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( mid(appNo,5) LIKE '%" + tbx_spm.Text.Trim() + "%')) ";
        str_sql += " order by sqbm,sqr ";
        ViewState["sql"] = str_sql;
        dv = DBFun.GetDataView(str_sql);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 查找
    protected void btn_find_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion
    
    #region 导出到excel
    protected void btn_exp2Excel_Click(object sender, EventArgs e)
    {
        DateTime dt = System.DateTime.Now;
        string str = dt.ToString("yyyyMMddhhmmss");
        str = str + ".xls";

        GridView1.AllowPaging = false;
        ExcelManager.GridViewToExcel(GridView1, "application/ms-excel", str);        
    }
    #endregion

    #region 计算分数，写入数据库
    protected void Calc_fs()
    {
        //循环所有老师
        str_sql = " select appNo,mid(appNo,5) as jsh,sqr from ( " +
                  " select a.appNo,jsh,sqr " +
                  " from   t_teacher_list a,t_zjry0 b " +
                  " where  a.appNo = b.appNo and left(a.appNo,4)=year(date()) " +
                //" and    sqbm in (select name from t_dict where flm= 13 and tj_flag)"+
                  " and    Status >= (select url from t_dict where flm= 11 and bm = 3) ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup0 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by sqbm,sqr " +
                   " ) group by appNo,sqr ";
        DataTable dt = DBFun.dataTable(str_sql);
        DataTable dt1;
        int i = 0;
        int i_pm=0;
        bool[] i_zjtp = new bool[5];
        int i_tjps;
        string str_Group="";
        string str_appNo;
        //把专家分数、投票数写入t_teacher_list表中
        for (i = 0; i < dt.Rows.Count; i++)
        {
            str_appNo = dt.Rows[i]["appNo"].ToString();
            str_sql = "exec Q_Para_ZqpsFs_byappNo '" + str_appNo + "'";
            dt1 = DBFun.dataTable(str_sql);
            i_tjps = 0;
            Array.Clear(i_zjtp, 0, i_zjtp.Length);
            for (int j = 0; j < dt1.Rows.Count; j++)
            {
                i_zjtp[j] = Convert.ToBoolean(dt1.Rows[j]["sftj"]);
                if (Convert.ToBoolean(dt1.Rows[j]["sftj"])) i_tjps++;
            }

            str_sql = string.Format("update t_teacher_list set zjtp0_1 = {0},zjtp0_2 = {1},zjtp0_3 = {2},zjtp0_4 = {3},zjtp0_5 = {4},ps0={5} " +
                        " where appNo = '{6}'", i_zjtp[0], i_zjtp[1], i_zjtp[2], i_zjtp[3], i_zjtp[4], i_tjps, str_appNo);
            DBFun.ExecuteUpdate(str_sql);
        }
        
        //计算排名
        str_sql = " select appNo,cGroup0  " +
                  " from   t_teacher_list " + 
                  " where  left(appNo,4)=year(date()) " +
                //" and    sqbm in (select name from t_dict where flm= 13 and tj_flag)"+
                  " and    Status >= (select url from t_dict where flm= 11 and bm = 3) ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup0 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by cGroup0,ps0 desc,sqbm,sqr";
        dt = DBFun.dataTable(str_sql);
        for (i = 0; i < dt.Rows.Count; i++)
        {
            str_appNo = dt.Rows[i]["appNo"].ToString();
            if (str_Group != dt.Rows[i]["cGroup0"].ToString())
            {
                i_pm = 1;
            }
            else
            {
                i_pm += 1;
            }
            str_sql = string.Format("update t_teacher_list set pm0 = {0} " +
                        " where appNo = '{1}'", i_pm, str_appNo);
            DBFun.ExecuteUpdate(str_sql);
            str_Group = dt.Rows[i]["cGroup0"].ToString();
        }
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

    public override void VerifyRenderingInServerForm(Control control)
    {
    }
}