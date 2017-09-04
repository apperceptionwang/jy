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
using System.Data.OleDb;

public partial class Admin_lw_sbsh : System.Web.UI.Page
{
    public Excel.Workbook wb;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            //CommFun.IsAdmin();
            //string str_qry = "SELECT stext,stext from q_newstype ;";
            //DBFun.FillDwList(dw_class, str_qry);
            //string str_leibie = Request.QueryString["flag"];
            //lbl_leibie.Text = str_leibie;
            //if (str_leibie == "") return;
            string str_sql = "select bm,name from t_dict where flm = 3";
            DBFun.FillDwList(Dropdownlist1, str_sql);
            bindData();
        }
        //File.Delete("./aa.xls");
    }
    protected void btn_Delete_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
            string id = GridView1.Rows[i].Cells[0].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("(" + id);
                else
                    strOpid += ("," + id);
            }
        }
        strOpid += ")";
        if (strOpid == ")")
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            strsql = string.Format("delete from news where id in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('删除成功！');</script>");
                bindData();
            }
        }
    }
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        if (dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sbzw"].ToString() == "研究员")
            Response.Redirect("../cpry_score.aspx");
        else
            Response.Redirect("../cpry_score_gg.aspx");

        CheckBox ckb = (CheckBox)GridView1.Rows[e.NewEditIndex].FindControl("ckb_Sle");
        string str_editflag = ckb.Checked.ToString().ToLower();

        string str_sql = string.Format("update cpry set edit_flag = {0} where sfzh = '{1}'",
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

    #region 数据绑定
    private void bindData()
    {
        string strqry = "SELECT ID,sfzh, yourname,name, " +
                       " cplb,lw_ctitle,ejxk_mc,zdjs_xm,edit_flag,sh_flag" +
                       " FROM yxxwlw_cpry,t_dict" +
                       " where url = tjdw and t_dict.tj_flag = true and edit_flag = false and yxxwlw_cpry.tj_flag = '推荐' ";
        if (RadioButtonList1.SelectedValue != "all")
            strqry = strqry + " and sh_flag = '" + RadioButtonList1.SelectedValue + "'";
        strqry = strqry + " ORDER BY name asc , ID asc;";
        Session["dv_detail"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }
    #endregion

    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion

    #region 分组
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;
        string id = "";
        DataView dv = (DataView)Session["dv_detail"];
        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("CheckBox1");

            id = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("('" + id);
                else
                    strOpid += ("','" + id);
            }
        }
        strOpid += "')";
        if (strOpid == "')")
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            strsql = string.Format("update cpry set fenlei = '" + Dropdownlist1.SelectedValue + "' where sfzh in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('添加成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 查看填报信息
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        Response.Redirect("../PrintPreview_lw.aspx");

    }
    #endregion

    #region 审核
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {

        Label lbtn_shflag = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_sh");
        string str_sh = lbtn_shflag.Text;
        string str_sql = "";
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();

        if (str_sh != "通过")
        {
            str_sql = string.Format("update yxxwlw_cpry set sh_flag = '{0}' where sfzh = '{1}'",
                        "通过", str_sfzh);
            //GridView1.Rows[e.RowIndex].Cells[6].Text = "通过";
        }
        else
        {
            str_sql = string.Format("update yxxwlw_cpry set sh_flag = '{0}' where sfzh = '{1}'",
                       "未通过", str_sfzh);
            //GridView1.Rows[e.RowIndex].Cells[6].Text = "未通过";
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('修改成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('修改失败！');</script>");
        }

    }
    #endregion

    #region 按审核结果检索
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    protected void btn_ExpToExcel_Click(object sender, EventArgs e)
    {
        string strqry = "SELECT tjdw_mc,yourname,ejxk_mc ,lw_ctitle,zdjs_xm,cplb" +
                       " FROM yxxwlw_cpry,t_dict" +
                       " where url = tjdw and t_dict.tj_flag = true and edit_flag = false and yxxwlw_cpry.tj_flag = '推荐' ";
        if (RadioButtonList1.SelectedValue != "all")
            strqry = strqry + " and sh_flag = '" + RadioButtonList1.SelectedValue + "'";
        strqry = strqry + " ORDER BY name asc , ID asc;";
        DataSet ds = DBFun.dataSet(strqry);
        CreateExcel(ds, "1", "1.xls");
    }

    public void CreateExcel(DataSet ds, string typeid, string FileName)
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        string colHeaders = "";
        int i = 0;

        //定义表对象与行对像，同时用DataSet对其值进行初始化
        DataTable dt = ds.Tables[0];
        DataRow[] myRow = dt.Select();
        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件
        if (typeid == "1")
        {
            colHeaders += "序 号" + "\t";
            colHeaders += "推荐单位" + "\t";
            colHeaders += "作者姓名" + "\t";
            colHeaders += "二级学科名称" + "\t";
            colHeaders += "论文题目" + "\t";
            colHeaders += "导师姓名" + "\t";
            colHeaders += "参评类别" + "\n";
            for (i = 0; i < dt.Rows.Count; i++)
            {
                colHeaders += Convert.ToString(i + 1) + "\t";
                for (int j = 0; j < dt.Columns.Count; j++)
                {
                    colHeaders += dt.Rows[i][j].ToString() + "\t";
                    if (j == dt.Columns.Count - 1)
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
                resp.Write(ds.GetXml());
            }
        }
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }





    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        TD1.Visible = true;
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        string strqry = "select pingjia from cpry where sfzh = '" + str_sfzh + "'";
        TextBox1.Text = DBFun.ExecuteScalar(strqry).ToString();
    }
    protected void btn_pingjia_save_Click(object sender, EventArgs e)
    {
        TD1.Visible = false;
        string strsql = string.Format("update cpry set pingjia = '" + TextBox1.Text + "' where sfzh ='" + Session["sfzh"].ToString() + "'");
        if (DBFun.ExecuteUpdate(strsql))
        {
            Response.Write("<script>alert('评价成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('评价失败！');</script>");
        }
    }

    #region 专家评分
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        TD1.Visible = false;
        DataView dv = (DataView)Session["dv_detail"];
        //string str_sfzh = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        //Session["sfzh"] = str_sfzh;
        Response.Redirect("admin_ry_zjlist.aspx?type=4&sfzh=" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString());
    }
    #endregion
    protected void btn_zjpsqk_Click(object sender, EventArgs e)
    {
        string str_sql = "select sfzh,yourname,tjdw_mc,cplb,lw_ctitle,zdjs_xm,lw_Cabstract from yxxwlw_cpry where sh_flag='通过' and edit_flag = false and tj_flag='推荐' order by tjdw asc, ID asc";
        DataView dv = DBFun.GetDataView(str_sql);
        DataView dv_zj;
        string str_content = "";
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            str_content += Convert.ToString(i + 1) + ".参评人姓名：" + dv.Table.Rows[i]["yourname"].ToString() + '\n';
            str_content += "推荐单位：" + dv.Table.Rows[i]["tjdw_mc"].ToString() + '\r' + '\n';
            str_content += "参评类别：" + dv.Table.Rows[i]["cplb"].ToString() + "论文" + '\r' + '\n';
            str_content += "论文题目：" + dv.Table.Rows[i]["lw_ctitle"].ToString() + '\r' + '\n';
            str_content += "指导教师：" + dv.Table.Rows[i]["zdjs_xm"].ToString() + '\r' + '\n';
            Freetextbox1.Text = dv.Table.Rows[i]["lw_Cabstract"].ToString();
            str_content += "中文摘要：" + Freetextbox1.HtmlStrippedText + '\r' + '\n';
            str_content += "专家评分：" + '\r' + '\n';
            str_content += "专家评审情况：" + '\r' + '\n';
            str_sql = "select jypj,fs_pjys_sum  from zjry where cpry_sfzh = '" + dv.Table.Rows[i]["sfzh"].ToString() + "' ";
            dv_zj = DBFun.GetDataView(str_sql);
            for (int j = 0; j < dv_zj.Table.Rows.Count; j++)
            {
                str_content += "专家" + Convert.ToString(j + 1) + "：" + '\r' + '\n';
                str_content += "打分：" + dv_zj.Table.Rows[j]["fs_pjys_sum"].ToString() + '\r' + '\n';
                Freetextbox1.Text = dv_zj.Table.Rows[j]["jypj"].ToString();
                str_content += "简要评价意见：" + Freetextbox1.HtmlStrippedText + '\r' + '\n';
            }
        }
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=专家评审情况一览表.doc");
        resp.Write(str_content);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }


    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType.ToString() != "Header")
        {
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=\"" + e.Row.Style["BACKGROUND-COLOR"] + "\"");
            e.Row.Attributes.Add("onmouseover", "this.style.backgroundColor=\"" + "#EEE6F8" + "\"");
        }
    }
    protected void btn_expAllInfo_Click(object sender, EventArgs e)
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=1.xls");
        string colHeaders = "";
        string str_sql = "select sfzh from yxxwlw_cpry where sh_flag='通过' and edit_flag = false and tj_flag='推荐' order by tjdw asc, ID asc";
        DataView dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            colHeaders += GetPersonInfo(dv.Table.Rows[i]["sfzh"].ToString()) + "\n\n";
        }

        resp.Write(colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }

    #region 把日期型数据格式化为“yyyy年mm月”
    /// <summary>
    /// 把日期型数据格式化为“yyyy年mm月”
    /// </summary>
    /// <param name="str_date"></param>
    /// <returns></returns>
    protected string GetYearMonth(string str_date)
    {
        string str_yearmonth = "";
        try
        {
            //str_yearmonth = Convert.ToDateTime(str_date).Year.ToString() + "年" + Convert.ToDateTime(str_date).Month.ToString() + "月";
            str_yearmonth = (Convert.ToDateTime(str_date)).ToString("yyyy年MM月");
        }
        catch { }
        return str_yearmonth;
    }
    #endregion

    #region 生成个人的所有信息的字符串
    /// <summary>
    /// 生成个人的所有信息的字符串
    /// </summary>
    /// <param name="str_sfzh">身份证号</param>
    /// <returns></returns>
    protected string GetPersonInfo(string str_sfzh)
    {
        string str_sql = "select cplb,yourname,xingbie,birth,mz,tjdw_mc,rxny,lwdbrq,xwhdrq,yjxk_dm,yjxk_mc,ejxk_dm,ejxk_mc," +
            "iif(sfzsxkzy=False,'否','是') as sfzsxkzy_name," +
            "zsxkzy,lw_ctitle,lw_etitle," +
            " iif(gdxwfs=0,'统招生',iif(gdxwfs=1,'联合培养',iif(gdxwfs=2,'在职攻读','其他'))) as gdxwfs_name ," +
            " lw_yjfx,lw_Cabstract,lw_Eabstract,lw_cxd,zdjs_xm,zdjs_csny,zdjs_xingbie,zdjs_zzxl," +
            " zdjs_zgxw,iif(zdjs_sfys=False,'否','是') as zdjs_sfys_name,zdjs_srbdny,zdjs_srsdny,zdjs_yjfx,zdjs_dsdh,zdjs_dsyx," +
            " iif(zdjs_xzrs=0,'',zdjs_xzrs) as zdjs_xzrs_name ," +
            " iif(zdjs_zdss=0,'',zdjs_zdss) as zdjs_zdss_name ," +
            " iif(zdjs_zdbs=0,'',zdjs_zdbs) as zdjs_zdbs_name ," +
            " iif(zdjs_byss=0,'',zdjs_byss) as zdjs_byss_name ," +
            " iif(zdjs_bybs=0,'',zdjs_bybs) as zdjs_bybs_name ," +
            " jzbd_gzdw,xrzw,dwtjyj,name" +
            " from yxxwlw_cpry,t_dict where url=tjdw and sfzh = '" + str_sfzh + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);

        DataView dv;
        //Label lbl_Value;
        int i_id;
        string colHeaders = "中国地震局优秀学位论文推荐表" + "\n";
        colHeaders += "参评类别" +dr["cplb"].ToString()+ "\n";
        colHeaders += "作者姓名：" + "\t" + dr["yourname"].ToString() + "\t";
        colHeaders += "性    别：" + "\t" + dr["xingbie"].ToString() + "\t";
        colHeaders += "出生年月：" + "\t" + dr["birth"].ToString() + "\t";
        colHeaders += "民    族：" + "\t" + dr["mz"].ToString() + "\n";
        colHeaders += "推荐单位：" + "\t" + dr["tjdw_mc"].ToString() + "\n";
        colHeaders += "入学年月：" + "\t" + dr["rxny"].ToString() + "\t";
        colHeaders += "论文答辩日期" + "\t" + dr["lwdbrq"].ToString() + "\t";
        colHeaders += "获学位日期" + "\t" + dr["xwhdrq"].ToString() + "\n";
        colHeaders += "一级学科代码" + "\t" + dr["yjxk_dm"].ToString() + "\t";
        colHeaders += "一级学科名称" + "\t" + dr["yjxk_mc"].ToString() + "\n";
        colHeaders += "二级学科代码" + "\t" + dr["ejxk_dm"].ToString() + "\t";
        colHeaders += "二级学科名称" + "\t" + dr["ejxk_mc"].ToString() + "\n";
        colHeaders += "是否自设学科专业" + "\t" + dr["sfzsxkzy_name"].ToString() + "\n";
        colHeaders += "论文中文题目" + "\t" + dr["lw_ctitle"].ToString() + "\n";
        colHeaders += "论文英文题目" + "\t" + dr["lw_etitle"].ToString() + "\n";
        colHeaders += "论文设计的研究方向" + "\t" + dr["lw_yjfx"].ToString() + "\n";
        colHeaders += "攻读学位方式" + "\t" + dr["gdxwfs_name"].ToString() + "\n";
        colHeaders += "本科至攻读学位期间履历" + "\n";
        colHeaders += "起止时间" + "\t" + "主要学习或工作经历" + "\n";

        str_sql = "select * from cdrwqk where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 6) break;
            i_id = i + 5;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["rwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["gznr"].ToString() + "\n";
        }
        //2本科至攻读学位期间履历
        str_sql = "SELECT * from yxxwlw_ll where sfzh = '" + str_sfzh + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 6) break;
                i_id = i + 1;
                colHeaders += i_id.ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["qzsj"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["jl"].ToString() + "\n";
            }
        }

        colHeaders += "论文中英文摘要" + "\n";
        colHeaders += "中文摘要" + "\t" + dr["lw_Cabstract"].ToString() + "\n" +
                      "英文摘要" + "\t" + dr["lw_Eabstract"].ToString() + "\n";
        colHeaders += "学位论文的主要创新点" + "\n" + dr["lw_cxd"].ToString() + "\n";

        colHeaders += "攻博（硕）期间及获得博（硕）士学位后一年内获得与学位论文有关的成果" + "\n" + "发表学术论文（限填5篇）" + "\n";

        colHeaders += "题目" + "\t" + "刊物名称" + "\t" + "刊物期号" + "\t" + "发表时间" + "\t" + "排名" + "\t" + "收录情况" + "\n";
        //4发表学术论文
        str_sql = "SELECT * from yxxwlw_lw where sfzh = '" + str_sfzh + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 6) break;
                i_id = i + 1;
                colHeaders += dv.Table.Rows[i]["tm"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["kwqh"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["fbsj"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["slqk"].ToString() + "\n"; 
            }
        }
        colHeaders += "出版专著(限填3项)" + "\n";
        colHeaders += "专著名称" + "\t" + "出版社" + "\t" + "出版时间" + "\t" + "排名" + "\n";
        //5出版专著
        str_sql = "SELECT * from yxxwlw_zz where sfzh = '" + str_sfzh + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 4) break;
                i_id = i + 1;
                colHeaders += dv.Table.Rows[i]["zzmc"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["cbs"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["cbsj"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\n"; 
            }
        }

        colHeaders += "获奖成果(限填3项)" + "\n";
        colHeaders += "成果名称" + "\t" + "奖励名称" + "\t" + "获奖等级" + "\t" + "获奖时间" + "\t" + "排名" + "\n";

        //6获奖成果
        str_sql = "SELECT * from yxxwlw_cg where sfzh = '" + str_sfzh + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 4) break;
                i_id = i + 1;
                colHeaders += dv.Table.Rows[i]["cgmc"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["jlmc"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["hjdj"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["hjsj"].ToString() + "\t";
                colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\n";
            }
        }

        colHeaders += "指导教师姓名" + "\t" + dr["zdjs_xm"].ToString() + "\t" + "出生年月" + "\t" + dr["zdjs_csny"].ToString() + "\t" + "性别" + "\t" + dr["zdjs_xingbie"].ToString() + "\n";
        colHeaders += "最终学历" + "\t" + dr["zdjs_zzxl"].ToString() + "\t" + "最高学位" + "\t" + dr["zdjs_zgxw"].ToString() + "\t" + "是否院士" + "\t" + dr["zdjs_sfys_name"].ToString() + "\n";
        colHeaders += "首任博导年月" + "\t" + dr["zdjs_srbdny"].ToString() + "\t" + "首任硕导年月" + "\t" + dr["zdjs_srsdny"].ToString() + "\t" + "研究方向" + "\t" + dr["zdjs_yjfx"].ToString() + "\n";
        colHeaders += "导师电话" + "\t" + dr["zdjs_dsdh"].ToString() + "\t" + "导师邮箱" + "\t" + dr["zdjs_dsyx"].ToString() + "\t" + "协助指导的教师人数" + "\t" + dr["zdjs_xzrs_name"].ToString() + "\n";
        colHeaders += "培养在读研究生数（含在职）" + "\t" + "在读硕士" + "\t" + dr["zdjs_zdss_name"].ToString() + "\t" + "在读博士" + "\t" + dr["zdjs_zdbs_name"].ToString() + "\n";
        colHeaders += "培养以毕业研究生数" + "\t" + "毕业硕士" + "\t" + dr["zdjs_byss_name"].ToString() + "\t" + "毕业博士" + "\t" + dr["zdjs_bybs_name"].ToString() + "\n";
        colHeaders += "兼职博导工作单位名称" + "\t" + dr["jzbd_gzdw"].ToString() + "\n";
        colHeaders += "现任职务（含学术团体）" + "\t" + dr["xrzw"].ToString() + "\n";
        colHeaders += "单位推荐意见" + "\t" + dr["dwtjyj"].ToString() + "\n";

        return colHeaders;
    }

    #endregion

}
