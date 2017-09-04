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

public partial class admin_Zq : System.Web.UI.Page
{
    private DataView dv;
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
        str_sql = " select appNo,sqr,ktmc ,iif(zjtp2_1,'是','否') as tp1," +
                  " iif(zjtp2_2,'是','否') as tp2," +
                  " iif(zjtp2_3,'是','否') as tp3," +
                  " iif(zjtp2_4,'是','否') as tp4," +
                  " iif(zjtp2_5,'是','否') as tp5," +
                  " pm2,ps2,cGroup2 " +
                  " from   t_teacher_list " +
                  " where  Status = (select url from t_dict where flm= 11 and bm = 6)";
        //if (ddlist_year.SelectedValue != "")
        //    str_sql += " and ( left(appNo,4) = " + ddlist_year.SelectedValue + ") ";
        if (ddlist_xmzt0.SelectedIndex != 0)
            str_sql += " and ( Status = " + ddlist_xmzt0.SelectedValue + ") ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup2 = '" + ddlist_cGroup.SelectedValue + "') ";
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
        str_sql = " select sqr ,zjpf1,zjpf2,zjpf3,zjpf4,zjpf5,zf,pjf,ps " +
                  " from t_teacher_list "+
                  " where appyear=year(date()) and not edit_flag and sh1 and sh2 and ktmc is not null "+
                  " and sqbm in (select name from t_dict where flm= 13 and tj_flag) ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup2 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by sqbm,sqr ";
        DataTable dt = DBFun.dataTable(str_sql);
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + DateTime.Now.ToString() + ".xls");
        int i_colnum = dt.Columns.Count;
        //定义表对象与行对像，同时用DataSet对其值进行初始化
        string str_colHeaders = "防灾科技学院教学研究与教学改革项目中期评审结果\n";
        str_colHeaders += "序号\t申请人\t评委1\t评委2\t评委3\t评委4\t评委5\t总分\t平均分\t排名\t同意通过票数\t备注\n";
        
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_colHeaders += Convert.ToString(i + 1) + "\t";
            str_colHeaders += dt.Rows[i]["sqr"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf1"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf2"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf3"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf4"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf5"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zf"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["pjf"].ToString() + "\t";
            str_colHeaders += Convert.ToString(i + 1) + "\t";
            str_colHeaders += dt.Rows[i]["ps2"].ToString() + "\n";
        }
        resp.Write(str_colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }
    #endregion

    #region 计算分数，写入数据库
    protected void Calc_fs()
    {
        //循环所有老师
        str_sql = " select a.appNo,jsh,sqr " +
                  " from   t_teacher_list a " +
                  " where  Status = (select url from t_dict where flm= 11 and bm = 6) ";

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
            str_sql = "SELECT appNo,zjno, sftj from t_zjry2 where appno = '" + str_appNo + "' order by zjNo ";

            dt1 = DBFun.dataTable(str_sql);
            i_tjps = 0;
            Array.Clear(i_zjtp, 0, i_zjtp.Length);
            for (int j = 0; j < dt1.Rows.Count; j++)
            {
                i_zjtp[j] = Convert.ToBoolean(dt1.Rows[j]["sftj"]);
                if (Convert.ToBoolean(dt1.Rows[j]["sftj"])) i_tjps++;
            }

            str_sql = string.Format("update t_teacher_list set zjtp2_1 = {0},zjtp2_2 = {1},zjtp2_3 = {2},zjtp2_4 = {3},zjtp2_5 = {4},ps2={5} " +
                        " where appNo = '{6}'", i_zjtp[0], i_zjtp[1], i_zjtp[2], i_zjtp[3], i_zjtp[4], i_tjps, str_appNo);
            DBFun.ExecuteUpdate(str_sql);
        }
        
        //计算排名
        str_sql = " select appNo,cGroup2  " +
                  " from   t_teacher_list " + 
                  " where  Status = (select url from t_dict where flm= 11 and bm = 6)";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup2 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by cGroup2,ps2 desc,sqbm,sqr";
        dt = DBFun.dataTable(str_sql);
        for (i = 0; i < dt.Rows.Count; i++)
        {
            str_appNo = dt.Rows[i]["appNo"].ToString();
            if (str_Group != dt.Rows[i]["cGroup2"].ToString())
            {
                i_pm = 1;
            }
            else
            {
                i_pm += 1;
            }
            str_sql = string.Format("update t_teacher_list set pm2 = {0} " +
                        " where appNo = '{1}'", i_pm, str_appNo);
            DBFun.ExecuteUpdate(str_sql);
            str_Group = dt.Rows[i]["cGroup2"].ToString();
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

}