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

public partial class admin_Jt4Result : System.Web.UI.Page
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
        str_sql = " select appNo,sqr,ktmc ,zjpf1,zjpf2,zjpf3,zjpf4,zjpf5,zjpf6,zjpf7,zf,pjf,pm,ps " +
                  " from   t_teacher_list " +
                  " where  left(appNo,4)=year(date()) " +
                  //" and    sqbm in (select name from t_dict where flm= 13 and tj_flag) "+
                  " and    Status between (select url from t_dict where flm= 11 and bm = 4) and (select url from t_dict where flm= 11 and bm = 5)";
        if (ddlist_year.SelectedValue != "")
            str_sql += " and ( left(appNo,4) = " + ddlist_year.SelectedValue + ") ";
        if (ddlist_xmzt0.SelectedIndex != 0)
            str_sql += " and ( Status = " + ddlist_xmzt0.SelectedValue + ") ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup1 = '" + ddlist_cGroup.SelectedValue + "') ";
        if (tbx_spm.Text.Trim() != "")
            str_sql += " and (( spm LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( sqr LIKE '%" + tbx_spm.Text.Trim() + "%') " +
                       " or  ( mid(appNo,5) LIKE '%" + tbx_spm.Text.Trim() + "%')) ";
        str_sql += " order by cGroup3,pm ";
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
        str_sql = " select sqr ,zjpf1,zjpf2,zjpf3,zjpf4,zjpf5,zjpf6,zjpf7,zf,pjf,ps " +
                  " from t_teacher_list "+
                  " where  appyear=year(date()) " +
                  " and    Status between (select url from t_dict where flm= 11 and bm = 4) and (select url from t_dict where flm= 11 and bm = 5)"+
                  " and ktmc is not null "+
                  " and sqbm in (select name from t_dict where flm= 13 and tj_flag) ";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup3 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by cGroup3,pm ";
        DataTable dt = DBFun.dataTable(str_sql);
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + DateTime.Now.ToString() + ".xls");
        int i_colnum = dt.Columns.Count;
        //定义表对象与行对像，同时用DataSet对其值进行初始化
        string str_colHeaders = "防灾科技学院教学研究与教学改革项目立项评审结果\n";
        str_colHeaders += "序号\t申请人\t评委1\t评委2\t评委3\t评委4\t评委5\t评委6\t评委7\t总分\t平均分\t排名\t同意立项票数\t备注\n";
        
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_colHeaders += Convert.ToString(i + 1) + "\t";
            str_colHeaders += dt.Rows[i]["sqr"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf1"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf2"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf3"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf4"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf5"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf6"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zjpf7"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["zf"].ToString() + "\t";
            str_colHeaders += dt.Rows[i]["pjf"].ToString() + "\t";
            str_colHeaders += Convert.ToString(i + 1) + "\t";
            str_colHeaders += dt.Rows[i]["ps"].ToString() + "\n";
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
        str_sql = " select appNo,mid(appNo,5) as jsh,sqr,sum(fs) as zf,round(avg(fs),2) as pjf from ( " +
                  " select a.appNo,jsh,sqr ,iif(isnull(fs_pjys_sum),0,fs_pjys_sum) as fs " +
                  " from   t_teacher_list a,t_zjry1 b " +
                  " where  a.appNo = b.appNo and left(a.appNo,4)=year(date()) " +
                //" and    sqbm in (select name from t_dict where flm= 13 and tj_flag)"+
                  " and    Status between (select url from t_dict where flm= 11 and bm = 4) and (select url from t_dict where flm= 11 and bm = 5)";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup3 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by sqbm,sqr " +
                   " ) group by appNo,sqr ";
        DataTable dt = DBFun.dataTable(str_sql);
        DataTable dt1;
        int i = 0;
        int i_pm=0;
        double i_zf;
        int[] i_zjpf = new int[7];
        int i_tjps;
        string str_Group="";
        double dbl_pjf;
        string str_appNo;
        //把专家分数、投票数写入t_teacher_list表中
        for (i = 0; i < dt.Rows.Count; i++)
        {
            str_appNo = dt.Rows[i]["appNo"].ToString();
            str_sql = "exec Q_Para_LxpsFs_byappNo '" + str_appNo + "'";
            dt1 = DBFun.dataTable(str_sql);
            i_tjps = 0;
            i_zf = 0;
            dbl_pjf = 0;
            Array.Clear(i_zjpf, 0, i_zjpf.Length);
            for (int j = 0; j < dt1.Rows.Count; j++)
            {
                i_zjpf[j] = Convert.ToInt16(dt1.Rows[j]["fs"]);
                if (Convert.ToBoolean(dt1.Rows[j]["sftj"])) i_tjps++;
                //if (j >= 1 && j < dt1.Rows.Count - 1)
                //{
                //    i_zf += Convert.ToInt16(dt1.Rows[j]["fs"]);
                //}
            }
            //s_pjf = i_zf / (dt1.Rows.Count - 2);

            //计算总分、平均分
            str_sql = " select sqr ,iif(isnull(fs_pjys_sum),0,fs_pjys_sum) as fs,sftj " +
                      " from   t_teacher_list a,t_zjry1 b " +
                      " where  a.appNo = b.appNo " +
                      " and    a.appNo = '" + str_appNo + "'" +
                      " order by sqbm,sqr,fs_pjys_sum";
            dt1 = DBFun.dataTable(str_sql);
            //总分和平均分要去掉最高和最低分
            for (int j = 0; j < dt1.Rows.Count; j++)
            {
                if (j >= 1 && j < dt1.Rows.Count - 1)
                {
                    i_zf += Convert.ToInt16(dt1.Rows[j]["fs"]);
                }
            }
            dbl_pjf =Convert.ToDouble( i_zf / (dt1.Rows.Count - 2));

            lbl_editflag.Text += dbl_pjf.ToString() + ";";
            str_sql = string.Format("update t_teacher_list set zjpf1 = {0},zjpf2 = {1},zjpf3 = {2},zjpf4 = {3},zjpf5 = {4},zjpf6 = {5},zjpf7 = {6},zf={7},pjf={8},ps={9} " +
                        " where appNo = '{10}'", i_zjpf[0], i_zjpf[1], i_zjpf[2], i_zjpf[3], i_zjpf[4], i_zjpf[5], i_zjpf[6], i_zf, dbl_pjf, i_tjps, str_appNo);
            DBFun.ExecuteUpdate(str_sql);
        }
        
        //计算排名
        str_sql = " select appNo,cGroup3  " +
                  " from   t_teacher_list " + 
                  " where  left(appNo,4)=year(date()) " +
                //" and    sqbm in (select name from t_dict where flm= 13 and tj_flag)"+
                  " and    Status between (select url from t_dict where flm= 11 and bm = 4) and (select url from t_dict where flm= 11 and bm = 5)";
        if (ddlist_cGroup.SelectedIndex != 0)
            str_sql += " and ( cGroup3 = '" + ddlist_cGroup.SelectedValue + "') ";
        str_sql += " order by cGroup3,pjf desc ,ps desc";
        dt = DBFun.dataTable(str_sql);
        for (i = 0; i < dt.Rows.Count; i++)
        {
            str_appNo = dt.Rows[i]["appNo"].ToString();
            if (str_Group != dt.Rows[i]["cGroup3"].ToString())
            {
                i_pm = 1;
            }
            else
            {
                i_pm += 1;
            }
            str_sql = string.Format("update t_teacher_list set pm = {0} " +
                        " where appNo = '{1}'", i_pm, str_appNo);
            DBFun.ExecuteUpdate(str_sql);
            str_Group = dt.Rows[i]["cGroup3"].ToString();
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

    #region 每页显示条数
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        bindData();
    }
    #endregion
}