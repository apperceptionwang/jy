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
using Aspose.Words;

public partial class Admin_zg_sbsh : System.Web.UI.Page
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
        if (dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sbzw"].ToString()=="研究员")
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

    #region //数据绑定
        private void bindData()
        {

            string strqry = " select jsh,ktmc,jsm,lxdh,xmlb,yjnx,dept,edit_flag,iif(edit_flag,'未提交','已提交') as sftj " +
                            " from t_teacher where status_sb=true ";
            if (RadioButtonList1.SelectedValue != "all")
                strqry = strqry + " and edit_flag = " + RadioButtonList1.SelectedValue;
            strqry = strqry + " ORDER BY jsm asc ";
            Session["dv_detail"] = DBFun.GetDataView(strqry);
            DataView dv = (DataView)Session["dv_detail"];
            GridView1.DataSource = dv;
            GridView1.DataBind();


            //for (int i = 0; i < GridView1.Rows.Count; i++)
            //{
            //    CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
            //    ckb.Checked = Convert.ToBoolean(dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["edit_flag"].ToString());
            //}

            strqry = " select iif (edit_flag,'未提交','已提交') as sftj,count(*) from t_teacher where status_sb=true " +
                     "   group by edit_flag " +
                     "   union all " +
                     "   select xmlb,count(*) from t_teacher where status_sb=true  " +
                     "   group by xmlb ";
            OleDbDataReader reader = DBFun.dataReader(strqry);
            lbl_tongji.Text = "";
            while (reader.Read())
            {
                lbl_tongji.Text = lbl_tongji.Text + reader.GetString(0).ToString() + ":" + reader.GetInt32(1).ToString() + "<br/>";

            }
            DBFun.closeDataReader(ref reader);
        }
    #endregion

    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
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
   
   
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_jsh = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["jsh"].ToString();
        string str_jsm = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["jsm"].ToString();
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("../templete/jy.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_1(doc, str_jsh);
        doc.Save(Server.MapPath("../exporttopdf/") + str_jsm + " " + str_jsh + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("../exporttopdf/" + str_jsm + " " + str_jsh + ".doc");
        
    }
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        
        Label lbtn_shflag = (Label)GridView1.Rows[e.RowIndex].FindControl("lbl_sh");
        string str_sh = lbtn_shflag.Text;
        string str_sql = "";
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
       
        if (str_sh != "通过")
        {
            str_sql = string.Format("update cpry set sh_flag = '{0}' where sfzh = '{1}'",
                        "通过", str_sfzh);
            //GridView1.Rows[e.RowIndex].Cells[6].Text = "通过";
        }
        else
        {
            str_sql = string.Format("update cpry set sh_flag = '{0}' where sfzh = '{1}'",
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
    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        bindData();
    }
    protected void btn_ExpToExcel_Click(object sender, EventArgs e)
    {
        string str_sql = " select "+
                         " '' , "+//工作单位
                         " ktmc, " +//姓名
                         " jsm," +//性别
                         " lxdh, " +//年龄
                         " zgxl_mc," +//最高学历
                         " fhxl_mc," +//符合申报条件学历
                         " iif(isnull(fhxl_sydw),'',fhxl_sydw)+' '+iif(isnull(fhxl_bysj),'',fhxl_bysj) as xxsj ," +//符合申报条件的毕业学校及时间
                         "  xrzw," +//专业技术职务资格
                         " Format(pdsj,'yyyy年mm月')," +//资格评定时间
                       //" sbzw, "+//聘任专业技术职务
                         " Format(prsj,'yyyy年mm月')," +//聘任时间
                         " sbzw, " +//申报专业技术职务
                         " csgz," +//从事工作
                         " iif (pglb='1','破格',iif(pglb = '2','破格','符合')) as xlzl," +//学历资历审查情况
                         " iif (wymsly='','符合',iif(isnull(wymsly),'符合','免试')) as wytj," +//外语条件审查情况
                         //" iif (jsj_msly='','符合',iif(isnull(jsj_msly),'符合','免试')) as jsjtj," +//计算机条件审查情况
                         " iif (jsj_msly='','无',iif(isnull(jsj_msly),'无',iif(jsj_msly='0','无',iif(jsj_msly='1','具有计算机专业本科及以上学历',iif(jsj_msly='2','参加全国计算机专业技术资格（水平）考试，取得中级及以上证书','博士研究生毕业，获得博士学位'))))) as jsjtj," +//计算机条件审查情况
                         " iif (scsbnd='无','符合',iif(isnull(scsbnd),'符合',scsbnd)) as sbnd," +//上次申报年份
                         " score_xmrw,score_lzbg,score_yjcg,score_zj "+
                         " from cpry ,t_dict where flm = 2 and url = gzdw and t_dict.tj_flag = true and sh_flag='通过' and edit_flag = false and cpry.tj_flag='推荐' order by gzdw asc, ID asc";

        //DataView dv = DBFun.GetDataView(str_sql);

        //for (int i = 0; i < dv.Table.Rows.Count; i++)
        //{
        //    for (int j = 0; j < 15; j++)
        //    {
        //        excel.Cells[i + 2, j + 2] = dv.Table.Rows[i][j].ToString();
        //    }
        //    excel.Cells[i + 2, 1] = Convert.ToString(i + 1);
        //}
        DataSet ds = DBFun.dataSet(str_sql);
        CreateExcel(ds, "1", "1.xls");

        //excel.Visible = true;
        
        
        //excel.Save();
    }

    public void CreateExcel(DataSet ds,string typeid,string FileName) 
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName); 
        string colHeaders= "";
        int i=0;

        //定义表对象与行对像，同时用DataSet对其值进行初始化
        DataTable dt=ds.Tables[0];
        DataRow[] myRow = dt.Select(); 
        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件
        if (typeid == "1")
        {
            colHeaders += "排 序" + "\t";
            colHeaders += "工作单位" + "\t";
            colHeaders += "姓  名" + "\t";
            colHeaders += "性别" + "\t";
            colHeaders += "年龄" + "\t";
            colHeaders += "最高学历" + "\t";
            colHeaders += "符合申报条件学历" + "\t";
            colHeaders += "符合申报条件的毕业学校及时间" + "\t";
            colHeaders += "专业技术职务资格" + "\t";
            colHeaders += "资格评定时间" + "\t";
            //colHeaders += "聘任专业技术职务" + "\t";
            colHeaders += "聘任时间" + "\t";
            colHeaders += "申报专业技术职务" + "\t";
            colHeaders += "从事工作" + "\t";
            colHeaders += "学历资历审查情况" + "\t";
            colHeaders += "外语条件审查情况" + "\t";
            colHeaders += "计算机条件审查情况" + "\t";
            colHeaders += "上次申报年份" + "\t";
            colHeaders += "任务项目评分" + "\t";
            colHeaders += "论著报告评分" + "\t";
            colHeaders += "业绩成果评分" + "\t";
            colHeaders += "专家评分" + "\n";
            //colHeaders += "备注" + "\n";
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
            //取得数据表各列标题，各标题之间以\t分割，最后一个列标题后加回车符
            //for (i = 0; i < dt.Rows.Count; i++)
            //{
            //    colHeaders += dt.Columns[i].Caption.ToString() + "\t";
            //    colHeaders += dt.Columns[i].Caption.ToString() + "\n";
            //    //向HTTP输出流中写入取得的数据信息
            //    //resp.Write(colHeaders);
            //    //逐行处理数据 
            //    foreach (DataRow row in myRow)
            //    {
            //        //在当前行中，逐列获得数据，数据之间以\t分割，结束时加回车符\n
            //        ls_item += row[i].ToString() + "\t";
            //        ls_item += row[i].ToString() + "\n";
            //        //当前行数据写入HTTP输出流，并且置空ls_item以便下行数据 
            //        resp.Write(ls_item);
            //        ls_item = "";
            //    }
            //}
            
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
        string strsql = string.Format("update cpry set pingjia = '" + TextBox1.Text + "' where sfzh ='"+ Session["sfzh"].ToString()+"'");
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
        string str_sfzh = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        Response.Redirect("admin_zj_pingfen_list.aspx");
    }
    #endregion
    protected void btn_zjpsqk_Click(object sender, EventArgs e)
    {
        string str_sql = "select sfzh,yourname,gzdw_mc,sbzw,score_zj from cpry where sh_flag='通过' and edit_flag = false and tj_flag='推荐' order by gzdw asc, ID asc";
        DataView dv = DBFun.GetDataView(str_sql);
        DataView dv_zj;
        string str_content = "";
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            str_content += Convert.ToString(i + 1) + ".申报人姓名：" + dv.Table.Rows[i]["yourname"].ToString() + '\r' + '\n';
            str_content += "工作单位：" + dv.Table.Rows[i]["gzdw_mc"].ToString() + '\r' + '\n';
            str_content += "申报专业技术职务：" + dv.Table.Rows[i]["sbzw"].ToString() + '\r' + '\n';
            str_content += "同行专家评分：" + dv.Table.Rows[i]["score_zj"].ToString() + '\r' + '\n';
            str_content += "同行专家评审情况：" + '\r' + '\n';
            str_sql = "select jypj,fs_pjys_sum  from zjry where cpry_sfzh = '" + dv.Table.Rows[i]["sfzh"].ToString() + "' ";
            dv_zj = DBFun.GetDataView(str_sql);
            for (int j = 0; j < dv_zj.Table.Rows.Count; j++)
            {
                str_content += "专家" + Convert.ToString(j + 1) + "：" + '\r' + '\n';
                str_content += "评审要素打分：" + dv_zj.Table.Rows[j]["fs_pjys_sum"].ToString() + '\r' + '\n';
                Freetextbox1.Text = dv_zj.Table.Rows[j]["jypj"].ToString();
                str_content += "简要评价意见：" + Freetextbox1.HtmlStrippedText + '\r' + '\n';
            }
        }

        string time = System.DateTime.Now.ToShortTimeString();
        string text = str_content;
        string sss = "专家评审情况一览表.txt";
        //指定路径
        sss = "d:\\" + sss;
        //如果文件a.txt存在就打开，不存在就新建 .append 是追加写
        File.Delete(sss);
        FileStream fst = new FileStream(sss, FileMode.Append);
        //写数据到a.txt格式
        StreamWriter swt = new StreamWriter(fst, System.Text.Encoding.GetEncoding("utf-8"));
        //写入
        //swt.WriteLine(time + '\r' + '\n' + "写" + text);
        swt.WriteLine(text);
        swt.Close();
        fst.Close();
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
        string str_sql = "select sfzh,sbzw from cpry where sh_flag='通过' and edit_flag = false and tj_flag='推荐' order by gzdw asc, ID asc";
        DataView dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (dv.Table.Rows[i]["sbzw"]=="研究员")
                colHeaders += GetPersonInfo_yjy(dv.Table.Rows[i]["sfzh"].ToString()) + "\n\n";
            else
                colHeaders += GetPersonInfo_zyjgg(dv.Table.Rows[i]["sfzh"].ToString()) + "\n\n";
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
    //研究员
    protected string GetPersonInfo_yjy(string str_sfzh)
    {
        string str_sql = "select * from cpry where sfzh = '" + str_sfzh + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);

        DataView dv;
        //Label lbl_Value;
        int i_id;
        //str_sql = "select * from cdrwqk where sfzh = '"+str_sfzh+"'  order by id;";
        //dv = DBFun.GetDataView(str_sql);
        //for (int m = 0; m < dv.Table.Rows.Count; m++)
        //{
        //    if (m == 6) break;
        //    i_id = m + 5;
        //    lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[m]["rwmc"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[m]["gznr"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "3");
        //    lbl_Value.Text = dv.Table.Rows[m]["rwmc"].ToString();
        //}


        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件

        string colHeaders = "中国地震局正高级专业技术职务任职资格" + "\n";
        colHeaders += "综 合 评 审 表" + "\n";
        colHeaders += "（适用于研究员评审）" + "\n";
        colHeaders += "工作单位：" + "\t" + dr["gzdw_mc"].ToString() + "\n";
        colHeaders += "姓    名：" + "\t" + dr["yourname"].ToString() + "\n";
        colHeaders += "现任专业技术职务：" + "\t" + dr["xrzw"].ToString() + "\n";
        colHeaders += "申报专业技术职务：" + "\t" + dr["sbzw"].ToString() + "\n";
        colHeaders += "从事工作：" + "\t" + dr["csgz"].ToString() + "\n";
        colHeaders += "填表日期：" + "\t" + dr["tbrq"].ToString() + "\n";
        colHeaders += "中国地震局人事教育和科技司制" + "\n";
        colHeaders += "二〇〇九年十月" + "\n";
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "一、个人简历和业务工作简介" + "\n";
        colHeaders += "姓  名" + "\t" + dr["yourname"].ToString() + "\t" +
                      "出生年月" + "\t\t" + GetYearMonth(dr["birth"].ToString()) +
                      "\t" + "性  别" + "\t" + dr["xingbie"].ToString() + "\n";
        colHeaders += "最高学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["zgxl_mc"].ToString() + "\t" +
                      GetYearMonth(dr["zgxl_bysj"].ToString()) +
                      "\t\t" + dr["zgxl_zy"].ToString() + "\t\t" + dr["zgxl_sydw"].ToString() + "\n";
        colHeaders += "符合申报条件的学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["fhxl_mc"].ToString() +
                       GetYearMonth(dr["fhxl_bysj"].ToString()) +


                      "\t\t" + dr["fhxl_zy"].ToString() + "\t\t" + dr["fhxl_sydw"].ToString() + "\n";

        colHeaders += "合申报条件的学位符" + "\t" + "学位名称" + "\t" + "取得时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["fhxw_mc"].ToString() + "\t" +
                      GetYearMonth(dr["fhxw_qdsj"].ToString()) +
                      "\t\t" + dr["fhxw_zy"].ToString() + "\t\t" + dr["fhxw_sydw"].ToString() + "\n";
        colHeaders += "现任技术职务" + "\t" + dr["xrzw"].ToString() + "\t\t" + "评定时间(年、月)" + "\t" +
                      GetYearMonth(dr["pdsj"].ToString()) +
                      "\t" + "聘任时间(年、月)" + "\t" +
                      GetYearMonth(dr["prsj"].ToString()) +
                      "\n";
        colHeaders += "业务工作简介：（限800字）" + "\n";
        Freetextbox1.Text = dr["gzjj"].ToString();
        colHeaders += Freetextbox1.HtmlStrippedText;
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "二、任现职以来承担的主要任务和项目情况" + "\n";
        colHeaders += "（一）承担任务情况" + "\n";
        colHeaders += "序号" + "\t" + "负责某方面工作情况" + "\t" + "具体内容" + "\n";
        colHeaders += "1" + "\t" + "全面主持强破坏性地震现场的考察、监测预报、震害评估、应急救援等工作" + "\t" + dr["cdrw_gznr1"].ToString() + "\n";
        colHeaders += "2" + "\t" + "主持所（省局）级综合震情监测、分析预报工作" + "\t" + dr["cdrw_gznr2"].ToString() + "\n";
        colHeaders += "3" + "\t" + "负责所（省局）级学科方法震情监测、分析预报工作" + "\t" + dr["cdrw_gznr3"].ToString() + "\n";
        colHeaders += "4" + "\t" + "培养研究生情况：" + "\t" + "协助培养博士生人数" + "\t" + dr["pyyjs1"].ToString() + "\t" + "毕业人数" + "\t" + dr["pyyjs2"].ToString() + "\n";
        colHeaders += "\t\t" + "培养硕士生人数" + "\t" + dr["pyyjs3"].ToString() + "\t" + "毕业人数" + "\t" + dr["pyyjs4"].ToString() + "\n";
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
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）承担项目情况（限10项）" + "\n";
        colHeaders += "序号" + "\t" + "项 目 名 称" + "\t" + "来源" + "\t" + "编号" + "\t" + "起止时间（年、月）" +
                      "\t" + "经费数（万元）" + "担任何角色" + "\n";
        str_sql = "SELECT * from cdxmqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktly2"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktbh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["qzsj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jfs"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["drjs"].ToString()) + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "三、任现职以来撰写的主要学术论著和报告情况（限10篇）" + "\n";
        colHeaders += "序号\t" + "论著或报告名称\t" + "字 数\t" + "收录情况\t" + " 刊物名称及期号或出版社名称或国际学术会议论文集名称\t" + "排 名\t" + "发表时间（年、月）\n";


        str_sql = "SELECT * from lzbgqk where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lzmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zs"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["slqk"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += " 四、任现职以来取得的业绩成果" + "\n";
        colHeaders += "（一）获奖情况（限10项）" + "\n";
        colHeaders += "序号\t" + "获奖成果名称\t" + "奖励名称\t" + "获奖等级\t" + "排 名\t" + " 获奖时间\n";
        str_sql = "SELECT * from hjqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjcgmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jljb"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjdj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["hjsj"].ToString()) + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）获得国家一级学会优秀论文奖情况（限3项）\n";
        colHeaders += "序号\t" + "论文名称\t" + "获奖名称\t" + "作者排名\n";

        str_sql = "SELECT * from yxlw where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zzpm"].ToString() + "\n";
        }
        colHeaders += "注：同一项成果获得不同级别的奖励，只填写获得最高级别奖励的情况，不得重复填写\n";
        colHeaders += "（三）论文（第一作者或通讯作者）被引用情况\n";
        colHeaders += "序号\t" + "论文名称\t" + "作者\t" + "发表时间\t" + "刊物名称、卷、期、页码\t" + "他引次数\n";

        str_sql = "SELECT * from lwbyyqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zz"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["tycs"].ToString() + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（四）获国家专利情况（限3项）\n";
        colHeaders += "序号\t" + "专利名称\t" + "专利号\t" + "时间\t" + "专利类型\t" + "排名\n";
        str_sql = "SELECT * from hgjzlqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;

            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["sj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "五、代表性成果（限2项）\n";
        colHeaders += "（一）代表性成果一\n";
        colHeaders += "标题\t" + dr["dbxcg_title1"].ToString() + "\n";
        Freetextbox1.Text = dr["dbxcg_content1"].ToString();
        colHeaders += "内容（限600字）" + Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "附件" + dr["dbxcg_fj1"].ToString() + "\n";
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）代表性成果二\n";
        colHeaders += "标题\t" + dr["dbxcg_title2"].ToString() + "\n";
        Freetextbox1.Text = dr["dbxcg_content2"].ToString();
        colHeaders += "内容（限600字）" + Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "附件" + dr["dbxcg_fj2"].ToString() + "\n";
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "六、上次申报后取得的新成果（限200字）\n";
        Freetextbox1.Text = dr["chengguo"].ToString();
        colHeaders += Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "年  度  考  核  情 况\n";

        str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
        int i_year = DateTime.Now.Year;
        try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
        catch { }
        i_year--;
        colHeaders += "考核年度\t" + i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\n";
        colHeaders += "考核等级\t" + dr["ndkh1"].ToString() + "\t" + dr["ndkh2"].ToString() + "\t" + dr["ndkh3"].ToString() + "\n";

        colHeaders += "\n\n七、外语水平\n";
        colHeaders += "1. 参加全国专业技术人员职称外语等级考试情况：\n";
        colHeaders += "考试时间：\t" + dr["kssj"].ToString() + "\t语种：\t" + dr["yz"].ToString() + "\t级别：\t" + dr["jb"].ToString() + "\t专业：\t" + dr["zy"].ToString() + "\t分数：\t" + dr["fs"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由（限50字）：\n" + dr["wymsly"].ToString() + "\n";
        colHeaders += "3.翻译论文、论著内容：\n";
        colHeaders += "翻译论文或著作名称（限五项）\t\t原文种及翻译文种\t出版单位期刊名称\t出版时间\t字数（万）\n";


        str_sql = "SELECT * from fylw where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        decimal dec_total = 0;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t" + dv.Table.Rows[i]["fylw"].ToString() + "\t" + dv.Table.Rows[i]["ywz"].ToString() + "\t"
            + dv.Table.Rows[i]["cbdw"].ToString() + "\t" + GetYearMonth(dv.Table.Rows[i]["cbsj"].ToString()) + "\t" + dv.Table.Rows[i]["zs"].ToString() + "\n";
            dec_total += Convert.ToDecimal(dv.Table.Rows[i]["zs"]);
        }
        colHeaders += "合计\t\t\t\t\t" + dec_total.ToString() + "\n";
        colHeaders += "八、计算机水平\n";
        colHeaders += "1.    参加全国专业技术人员计算机应用能力考试情况：\n";
        colHeaders += "通过科目1：\t" + dr["jsj_km1"].ToString() + "\t";
        colHeaders += "科目2：\t" + dr["jsj_km2"].ToString() + "\n";
        colHeaders += "科目3：\t" + dr["jsj_km3"].ToString() + "\t";
        colHeaders += "科目4：\t" + dr["jsj_km4"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由：\n";
        if (dr["jsj_msly"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（1）计算机专业本科以上；\n";
        if (dr["jsj_msly"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（2）全国计算机专业资格考试" + dr["jsj_msly_dj"].ToString() + "级证书；\n";
        if (dr["jsj_msly"].ToString() == "3")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（3）博士毕业；\n";

        colHeaders += "九、破格申报理由\n";
        colHeaders += "1.破格申报类别：\n";
        if (dr["pglb"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "1、学历破格\t";
        if (dr["pglb"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "2、资历破格\n";
        colHeaders += "2.破格申报条件：\n";
        if (dr["pgtj"].ToString() == "1")
            colHeaders += "■1.获得奖励\t□2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "2")
            colHeaders += "□1.获得奖励\t■2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "3")
            colHeaders += "□1.获得奖励\t□2、发表论著\t■3承担重点项目\n";
        colHeaders += "3.具体破格理由：\n";

        string str_pgly = "";
        string str_jtpgly = dr["jtpgly"].ToString();
        if (str_jtpgly != "" && str_jtpgly != null)
        {
            str_pgly = "（3）作为项目负责人承担国家级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "项目。";
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（2）作为第一作者，有" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "篇学术论文被SCI、EI、ISTP收录；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "等奖，排名第" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "奖" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（1）获得国家级或省部级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
        }
        colHeaders += str_pgly;
        return colHeaders;
    }

    //正研级高工
    protected string GetPersonInfo_zyjgg(string str_sfzh)
    {
        string str_sql = "select * from cpry where sfzh = '" + str_sfzh + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);

        DataView dv;
        int i_id;
        string colHeaders = "中国地震局正高级专业技术职务任职资格" + "\n";
        colHeaders += "综 合 评 审 表" + "\n";
        colHeaders += "（适用于正研级高工评审）" + "\n";
        colHeaders += "工作单位：" + "\t" + dr["gzdw_mc"].ToString() + "\n";
        colHeaders += "姓    名：" + "\t" + dr["yourname"].ToString() + "\n";
        colHeaders += "现任专业技术职务：" + "\t" + dr["xrzw"].ToString() + "\n";
        colHeaders += "申报专业技术职务：" + "\t" + dr["sbzw"].ToString() + "\n";
        colHeaders += "从事工作：" + "\t" + dr["csgz"].ToString() + "\n";
        colHeaders += "填表日期：" + "\t" + dr["tbrq"].ToString() + "\n";
        colHeaders += "中国地震局人事教育和科技司制" + "\n";
        colHeaders += "二〇〇九年十月" + "\n";
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "一、个人简历和业务工作简介" + "\n";
        colHeaders += "姓  名" + "\t" + dr["yourname"].ToString() + "\t" +
                      "出生年月" + "\t\t" + GetYearMonth(dr["birth"].ToString()) +
                      "\t" + "性  别" + "\t" + dr["xingbie"].ToString() + "\n";
        colHeaders += "最高学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["zgxl_mc"].ToString() + "\t" +
                      GetYearMonth(dr["zgxl_bysj"].ToString()) +
                      "\t\t" + dr["zgxl_zy"].ToString() + "\t\t" + dr["zgxl_sydw"].ToString() + "\n";
        colHeaders += "符合申报条件的学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["fhxl_mc"].ToString() + GetYearMonth(dr["fhxl_bysj"].ToString()) +
                      "\t\t" + dr["fhxl_zy"].ToString() + "\t\t" + dr["fhxl_sydw"].ToString() + "\n";
        colHeaders += "合申报条件的学位符" + "\t" + "学位名称" + "\t" + "取得时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["fhxw_mc"].ToString() + "\t" +GetYearMonth(dr["fhxw_qdsj"].ToString()) +
                      "\t\t" + dr["fhxw_zy"].ToString() + "\t\t" + dr["fhxw_sydw"].ToString() + "\n";
        colHeaders += "现任技术职务" + "\t" + dr["xrzw"].ToString() + "\t\t" + "评定时间(年、月)" + "\t" + GetYearMonth(dr["pdsj"].ToString()) +
                      "\t" + "聘任时间(年、月)" + "\t" + GetYearMonth(dr["prsj"].ToString()) + "\n";
        colHeaders += "业务工作简介：（限800字）" + "\n";
        Freetextbox1.Text = dr["gzjj"].ToString();
        colHeaders += Freetextbox1.HtmlStrippedText;
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "二、任现职以来承担的主要任务和项目情况" + "\n";
        colHeaders += "（一）承担任务情况一" + "\n";
        colHeaders += "序号\t" + "任务名称\t" + "工作内容\t\t" + "年度考核结果\t\n"
                   + "\t\t\t\t优秀\t称职\t ";
        colHeaders += "1\t" + "主持省局级以上单位综合震情监测和分析预报工作\t" + dr["cdrw_gg_gznr1"].ToString()+"\t\t";
        if (dr["cdrw_gg_khyx1"].ToString().Length > 0) 
            colHeaders += dr["cdrw_gg_khyx1"].ToString().Remove(0,1)+"\t";
        if (dr["cdrw_gg_khcz1"].ToString().Length > 0) 
            colHeaders += dr["cdrw_gg_khcz1"].ToString().Remove(0, 1)+"\t";
        colHeaders += "\n";
        colHeaders += "2\t" + "负责本学科方法震情监测和分析预报工作\t" + dr["cdrw_gg_gznr2"].ToString() + "\t\t";
        if (dr["cdrw_gg_khyx2"].ToString().Length > 0) 
            colHeaders += dr["cdrw_gg_khyx2"].ToString().Remove(0,1)+"\t";
        if (dr["cdrw_gg_khcz2"].ToString().Length > 0) 
            colHeaders += dr["cdrw_gg_khcz2"].ToString().Remove(0, 1)+"\t";
        colHeaders += "\n";
        colHeaders += "3\t" + "培养研究生情况\t" + "协助培养博士生人数\t" + dr["pyyjs1"].ToString() + "\t" + "毕业人数\t" + dr["pyyjs2"].ToString() + "\n";
        colHeaders += "\t\t" + "培养硕士生人数\t" + dr["pyyjs3"].ToString() + "\t毕业人数\t" + dr["pyyjs4"].ToString() + "\n";
        str_sql = "select * from cdrwqk_gg where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 7) break;
            i_id = i + 4;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["gzsj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["gznr"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["js"].ToString()   + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";
        //3承担任务情况二
        colHeaders += "（二）承担项目情况二" + "\n";
        colHeaders += "序号\t" + "国内外破坏性地震事件名称\t" + "现场工作内容\t" + "角色\t" + "是否属于国际救援\n";
       
        str_sql = "SELECT rwmc,gznr,js,iif(gjjy = 'True','是','否') as jy from cdrwqk1_gg where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["rwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["gznr"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["js"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jy"].ToString() + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";
        //4.承担项目情况
        colHeaders += "（三）承担项目情况（限10项）" + "\n";
        colHeaders += "序号\t" + "项目名称\t" + "来源\t" + "编号\t" + "起止时间（年、月）\t" + "经费数\t" + "但任何角色\n";

        str_sql = "SELECT * from cdxmqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktly2"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktbh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["qzsj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jfs"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["drjs"].ToString() + "\n";
        }

        colHeaders += "\n";
        colHeaders += "\n";

        //三、任现职以来撰写的主要学术论著和报告情况（限10篇）
        colHeaders += "三、任现职以来撰写的主要学术论著和报告情况（限10篇）" + "\n";
        colHeaders += "序号\t" + "论著或报告名称\t" + "字数\t" + "收录情况\t" + "刊物名称及期号或出版社名称或国际学术会议论文集名称\t" + 
                      "排名\t" + "发表时间（年、月）\n";

        str_sql = "SELECT * from lzbgqk where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lzmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zs"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["slqk"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["fbsj"].ToString() + "\n";
        }


        colHeaders += " 四、任现职以来取得的业绩成果" + "\n";
        colHeaders += "（一）获奖情况（限10项）" + "\n";
        colHeaders += "序号\t" + "获奖成果名称\t" + "奖励名称\t" + "获奖等级\t" + "排 名\t" + " 获奖时间\n";
        str_sql = "SELECT * from hjqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjcgmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jljb"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjdj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["hjsj"].ToString()) + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）获得国家一级学会优秀论文奖情况（限3项）\n";
        colHeaders += "序号\t" + "论文名称\t" + "获奖名称\t" + "作者排名\n";

        str_sql = "SELECT * from yxlw where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zzpm"].ToString() + "\n";
        }
        
        colHeaders += "（三）论文（第一作者或通讯作者）被引用情况\n";
        colHeaders += "序号\t" + "论文名称\t" + "作者\t" + "发表时间\t" + "刊物名称、卷、期、页码\t" + "他引次数\n";

        str_sql = "SELECT * from lwbyyqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zz"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["tycs"].ToString() + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（四）获国家专利情况（限3项）\n";
        colHeaders += "序号\t" + "专利名称\t" + "专利号\t" + "时间\t" + "专利类型\t" + "排名\n";
        str_sql = "SELECT * from hgjzlqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["sj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["zllx"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";
        
        
        //五主要工作业绩
        //1.监测（观测）和预报工作评比情况（评比结果为第一名，限5项）
        colHeaders += "（五）主要工作业绩\n";
        colHeaders += "1.监测（观测）和预报工作评比情况（评比结果为第一名，限5项）\n";
        colHeaders += "序号\t" + "业绩名称\t" + "个人排名\t" + "证明文件标题及文号\n";
       
        str_sql = "SELECT * from qgjcybpb where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["nd"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["grpm"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zmwjwh"].ToString() + "\n";
        }

        //2荣获中国地震局地震监测预报、地震现场工作先进个人情况（限5项）
        colHeaders += "2荣获中国地震局地震监测预报、地震现场工作先进个人情况（限5项）\n";
        colHeaders += "序号\t" + "业绩名称\t" + "年度\t" + "证明文件标题及文号\n";
        str_sql = "SELECT * from xjgrch where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["yjmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["nd"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zmwjwh"].ToString() + "\n";
        }

        //3. 作为主要技术负责人在短临预报方面的业绩（提出的可以证明的短临预报意见取得显著减灾实效，或获得中国地震局短临预报实现奖励，限5项）
        colHeaders += "作为主要技术负责人在短临预报方面的业绩（提出的可以证明的短临预报意见取得显著减灾实效，或获得中国地震局短临预报实现奖励，限5项）\n";
        colHeaders += "序号\t" + "地震事件\t" + "主要内容\t" + "震级\n";
        str_sql = "SELECT * from dlyb where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["dzsj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zynr"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zj"].ToString() + "\n";
        }

        //4. 作为主持开发的仪器、软件情况（限3项）
        colHeaders += "4. 作为主持开发的仪器、软件情况（限3项）\n";
        colHeaders += "序号\t" + "仪器、软件名称\t" + "省、部级验收或鉴定单位\t" + "验收或鉴定年度\t"+"主要推广应用单位（每项限2个）\n";
        str_sql = "SELECT * from yqrj where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["yqrjmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jddw"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["nd"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["yydw"].ToString() + "\n";
        }


        //5.作为技术负责人完成的重大工程地震安全性评价情况（经国家地震安全性评定委员会评审通过，限3项）

        colHeaders += "5.作为技术负责人完成的重大工程地震安全性评价情况（经国家地震安全性评定委员会评审通过，限3项）\n";
        colHeaders += "序号\t" + "项目名称\t" + "应用单位\t" + "评审通过年度\t"+"证明文件标题及文号\n";
        str_sql = "SELECT * from aqpj where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["xmmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["yydw"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["nd"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["wh"].ToString() + "\n";
        }

        colHeaders += "五、代表性成果（限2项）\n";
        colHeaders += "（一）代表性成果一\n";
        colHeaders += "标题\t" + dr["dbxcg_title1"].ToString() + "\n";
        Freetextbox1.Text = dr["dbxcg_content1"].ToString();
        colHeaders += "内容（限600字）" + Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "附件" + dr["dbxcg_fj1"].ToString() + "\n";
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）代表性成果二\n";
        colHeaders += "标题\t" + dr["dbxcg_title2"].ToString() + "\n";
        Freetextbox1.Text = dr["dbxcg_content2"].ToString();
        colHeaders += "内容（限600字）" + Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "附件" + dr["dbxcg_fj2"].ToString() + "\n";
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "六、上次申报后取得的新成果（限200字）\n";
        Freetextbox1.Text = dr["chengguo"].ToString();
        colHeaders += Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "年  度  考  核  情 况\n";

        str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
        int i_year = DateTime.Now.Year;
        try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
        catch { }
        i_year--;
        colHeaders += "考核年度\t" + i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\n";
        colHeaders += "考核等级\t" + dr["ndkh1"].ToString() + "\t" + dr["ndkh2"].ToString() + "\t" + dr["ndkh3"].ToString() + "\n";

        colHeaders += "\n\n七、外语水平\n";
        colHeaders += "1. 参加全国专业技术人员职称外语等级考试情况：\n";
        colHeaders += "考试时间：\t" + dr["kssj"].ToString() + "\t语种：\t" + dr["yz"].ToString() + "\t级别：\t" + dr["jb"].ToString() + "\t专业：\t" + dr["zy"].ToString() + "\t分数：\t" + dr["fs"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由（限50字）：\n" + dr["wymsly"].ToString() + "\n";
        colHeaders += "3.翻译论文、论著内容：\n";
        colHeaders += "翻译论文或著作名称（限五项）\t\t原文种及翻译文种\t出版单位期刊名称\t出版时间\t字数（万）\n";


        str_sql = "SELECT * from fylw where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        decimal dec_total = 0;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t" + dv.Table.Rows[i]["fylw"].ToString() + "\t" + dv.Table.Rows[i]["ywz"].ToString() + "\t"
            + dv.Table.Rows[i]["cbdw"].ToString() + "\t" + GetYearMonth(dv.Table.Rows[i]["cbsj"].ToString()) + "\t" + dv.Table.Rows[i]["zs"].ToString() + "\n";
            dec_total += Convert.ToDecimal(dv.Table.Rows[i]["zs"]);
        }
        colHeaders += "合计\t\t\t\t\t" + dec_total.ToString() + "\n";
        colHeaders += "八、计算机水平\n";
        colHeaders += "1.    参加全国专业技术人员计算机应用能力考试情况：\n";
        colHeaders += "通过科目1：\t" + dr["jsj_km1"].ToString() + "\t";
        colHeaders += "科目2：\t" + dr["jsj_km2"].ToString() + "\n";
        colHeaders += "科目3：\t" + dr["jsj_km3"].ToString() + "\t";
        colHeaders += "科目4：\t" + dr["jsj_km4"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由：\n";
        if (dr["jsj_msly"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（1）计算机专业本科以上；\n";
        if (dr["jsj_msly"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（2）全国计算机专业资格考试" + dr["jsj_msly_dj"].ToString() + "级证书；\n";
        if (dr["jsj_msly"].ToString() == "3")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（3）博士毕业；\n";

        colHeaders += "九、破格申报理由\n";
        colHeaders += "1.破格申报类别：\n";
        if (dr["pglb"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "1、学历破格\t";
        if (dr["pglb"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "2、资历破格\n";
        colHeaders += "2.破格申报条件：\n";
        if (dr["pgtj"].ToString() == "1")
            colHeaders += "■1.获得奖励\t□2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "2")
            colHeaders += "□1.获得奖励\t■2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "3")
            colHeaders += "□1.获得奖励\t□2、发表论著\t■3承担重点项目\n";
        colHeaders += "3.具体破格理由：\n";

        string str_pgly = "";
        string str_jtpgly = dr["jtpgly"].ToString();
        if (str_jtpgly != "" && str_jtpgly != null)
        {
            str_pgly = "（3）作为项目负责人承担国家级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "项目。";
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（2）作为第一作者，有" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "篇学术论文被SCI、EI、ISTP收录；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "等奖，排名第" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "奖" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（1）获得国家级或省部级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
        }
        colHeaders += str_pgly;
        return colHeaders;
    }

    //导出承担项目情况
    protected string GetInfo_cdxm(string str_sfzh)
    {
        string str_sql = "select * from cpry where sfzh = '" + str_sfzh + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);

        DataView dv;
        int i_id;

        string colHeaders = "承担项目情况统计" + "\n";
        colHeaders += "序号：" + "\t" + dr["yourname"].ToString() + "\n";
        colHeaders += "姓    名：" + "\t" + dr["yourname"].ToString() + "\n";
        colHeaders += "工作单位：" + "\t" + dr["gzdw_mc"].ToString() + "\n";
        colHeaders += "现任专业技术职务：" + "\t" + dr["xrzw"].ToString() + "\n";
        colHeaders += "申报专业技术职务：" + "\t" + dr["sbzw"].ToString() + "\n";
        colHeaders += "从事工作：" + "\t" + dr["csgz"].ToString() + "\n";
        colHeaders += "填表日期：" + "\t" + dr["tbrq"].ToString() + "\n";
        colHeaders += "中国地震局人事教育和科技司制" + "\n";
        colHeaders += "二〇〇九年十月" + "\n";
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "一、个人简历和业务工作简介" + "\n";
        colHeaders += "姓  名" + "\t" + dr["yourname"].ToString() + "\t" +
                      "出生年月" + "\t\t" + GetYearMonth(dr["birth"].ToString()) +
                      "\t" + "性  别" + "\t" + dr["xingbie"].ToString() + "\n";
        colHeaders += "最高学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["zgxl_mc"].ToString() + "\t" +
                      GetYearMonth(dr["zgxl_bysj"].ToString()) +
                      "\t\t" + dr["zgxl_zy"].ToString() + "\t\t" + dr["zgxl_sydw"].ToString() + "\n";
        colHeaders += "符合申报条件的学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["fhxl_mc"].ToString() +
                       GetYearMonth(dr["fhxl_bysj"].ToString()) +


                      "\t\t" + dr["fhxl_zy"].ToString() + "\t\t" + dr["fhxl_sydw"].ToString() + "\n";

        colHeaders += "合申报条件的学位符" + "\t" + "学位名称" + "\t" + "取得时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\n";
        colHeaders += "\t" + dr["fhxw_mc"].ToString() + "\t" +
                      GetYearMonth(dr["fhxw_qdsj"].ToString()) +
                      "\t\t" + dr["fhxw_zy"].ToString() + "\t\t" + dr["fhxw_sydw"].ToString() + "\n";
        colHeaders += "现任技术职务" + "\t" + dr["xrzw"].ToString() + "\t\t" + "评定时间(年、月)" + "\t" +
                      GetYearMonth(dr["pdsj"].ToString()) +
                      "\t" + "聘任时间(年、月)" + "\t" +
                      GetYearMonth(dr["prsj"].ToString()) +
                      "\n";
        colHeaders += "业务工作简介：（限800字）" + "\n";
        Freetextbox1.Text = dr["gzjj"].ToString();
        colHeaders += Freetextbox1.HtmlStrippedText;
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "\n";
        colHeaders += "二、任现职以来承担的主要任务和项目情况" + "\n";
        colHeaders += "（一）承担任务情况" + "\n";
        colHeaders += "序号" + "\t" + "负责某方面工作情况" + "\t" + "具体内容" + "\n";
        colHeaders += "1" + "\t" + "全面主持强破坏性地震现场的考察、监测预报、震害评估、应急救援等工作" + "\t" + dr["cdrw_gznr1"].ToString() + "\n";
        colHeaders += "2" + "\t" + "主持所（省局）级综合震情监测、分析预报工作" + "\t" + dr["cdrw_gznr2"].ToString() + "\n";
        colHeaders += "3" + "\t" + "负责所（省局）级学科方法震情监测、分析预报工作" + "\t" + dr["cdrw_gznr3"].ToString() + "\n";
        colHeaders += "4" + "\t" + "培养研究生情况：" + "\t" + "协助培养博士生人数" + "\t" + dr["pyyjs1"].ToString() + "\t" + "毕业人数" + "\t" + dr["pyyjs2"].ToString() + "\n";
        colHeaders += "\t\t" + "培养硕士生人数" + "\t" + dr["pyyjs3"].ToString() + "\t" + "毕业人数" + "\t" + dr["pyyjs4"].ToString() + "\n";
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
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）承担项目情况（限10项）" + "\n";
        colHeaders += "序号" + "\t" + "项 目 名 称" + "\t" + "来源" + "\t" + "编号" + "\t" + "起止时间（年、月）" +
                      "\t" + "经费数（万元）" + "担任何角色" + "\n";
        str_sql = "SELECT * from cdxmqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktly2"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktbh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["qzsj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jfs"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["drjs"].ToString()) + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "三、任现职以来撰写的主要学术论著和报告情况（限10篇）" + "\n";
        colHeaders += "序号\t" + "论著或报告名称\t" + "字 数\t" + "收录情况\t" + " 刊物名称及期号或出版社名称或国际学术会议论文集名称\t" + "排 名\t" + "发表时间（年、月）\n";


        str_sql = "SELECT * from lzbgqk where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lzmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zs"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["slqk"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += " 四、任现职以来取得的业绩成果" + "\n";
        colHeaders += "（一）获奖情况（限10项）" + "\n";
        colHeaders += "序号\t" + "获奖成果名称\t" + "奖励名称\t" + "获奖等级\t" + "排 名\t" + " 获奖时间\n";
        str_sql = "SELECT * from hjqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjcgmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jljb"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjdj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["hjsj"].ToString()) + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）获得国家一级学会优秀论文奖情况（限3项）\n";
        colHeaders += "序号\t" + "论文名称\t" + "获奖名称\t" + "作者排名\n";

        str_sql = "SELECT * from yxlw where sfzh = '" + str_sfzh + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zzpm"].ToString() + "\n";
        }
        colHeaders += "注：同一项成果获得不同级别的奖励，只填写获得最高级别奖励的情况，不得重复填写\n";
        colHeaders += "（三）论文（第一作者或通讯作者）被引用情况\n";
        colHeaders += "序号\t" + "论文名称\t" + "作者\t" + "发表时间\t" + "刊物名称、卷、期、页码\t" + "他引次数\n";

        str_sql = "SELECT * from lwbyyqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zz"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["tycs"].ToString() + "\n";
        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（四）获国家专利情况（限3项）\n";
        colHeaders += "序号\t" + "专利名称\t" + "专利号\t" + "时间\t" + "专利类型\t" + "排名\n";
        str_sql = "SELECT * from hgjzlqk where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;

            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["sj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\n";

        }
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "五、代表性成果（限2项）\n";
        colHeaders += "（一）代表性成果一\n";
        colHeaders += "标题\t" + dr["dbxcg_title1"].ToString() + "\n";
        Freetextbox1.Text = dr["dbxcg_content1"].ToString();
        colHeaders += "内容（限600字）" + Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "附件" + dr["dbxcg_fj1"].ToString() + "\n";
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "（二）代表性成果二\n";
        colHeaders += "标题\t" + dr["dbxcg_title2"].ToString() + "\n";
        Freetextbox1.Text = dr["dbxcg_content2"].ToString();
        colHeaders += "内容（限600字）" + Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "附件" + dr["dbxcg_fj2"].ToString() + "\n";
        colHeaders += "\n";
        colHeaders += "\n";

        colHeaders += "六、上次申报后取得的新成果（限200字）\n";
        Freetextbox1.Text = dr["chengguo"].ToString();
        colHeaders += Freetextbox1.HtmlStrippedText + "\n";
        colHeaders += "年  度  考  核  情 况\n";

        str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
        int i_year = DateTime.Now.Year;
        try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
        catch { }
        i_year--;
        colHeaders += "考核年度\t" + i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\n";
        colHeaders += "考核等级\t" + dr["ndkh1"].ToString() + "\t" + dr["ndkh2"].ToString() + "\t" + dr["ndkh3"].ToString() + "\n";

        colHeaders += "\n\n七、外语水平\n";
        colHeaders += "1. 参加全国专业技术人员职称外语等级考试情况：\n";
        colHeaders += "考试时间：\t" + dr["kssj"].ToString() + "\t语种：\t" + dr["yz"].ToString() + "\t级别：\t" + dr["jb"].ToString() + "\t专业：\t" + dr["zy"].ToString() + "\t分数：\t" + dr["fs"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由（限50字）：\n" + dr["wymsly"].ToString() + "\n";
        colHeaders += "3.翻译论文、论著内容：\n";
        colHeaders += "翻译论文或著作名称（限五项）\t\t原文种及翻译文种\t出版单位期刊名称\t出版时间\t字数（万）\n";


        str_sql = "SELECT * from fylw where sfzh = '" + str_sfzh + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        decimal dec_total = 0;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t" + dv.Table.Rows[i]["fylw"].ToString() + "\t" + dv.Table.Rows[i]["ywz"].ToString() + "\t"
            + dv.Table.Rows[i]["cbdw"].ToString() + "\t" + GetYearMonth(dv.Table.Rows[i]["cbsj"].ToString()) + "\t" + dv.Table.Rows[i]["zs"].ToString() + "\n";
            dec_total += Convert.ToDecimal(dv.Table.Rows[i]["zs"]);
        }
        colHeaders += "合计\t\t\t\t\t" + dec_total.ToString() + "\n";
        colHeaders += "八、计算机水平\n";
        colHeaders += "1.    参加全国专业技术人员计算机应用能力考试情况：\n";
        colHeaders += "通过科目1：\t" + dr["jsj_km1"].ToString() + "\t";
        colHeaders += "科目2：\t" + dr["jsj_km2"].ToString() + "\n";
        colHeaders += "科目3：\t" + dr["jsj_km3"].ToString() + "\t";
        colHeaders += "科目4：\t" + dr["jsj_km4"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由：\n";
        if (dr["jsj_msly"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（1）计算机专业本科以上；\n";
        if (dr["jsj_msly"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（2）全国计算机专业资格考试" + dr["jsj_msly_dj"].ToString() + "级证书；\n";
        if (dr["jsj_msly"].ToString() == "3")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（3）博士毕业；\n";

        colHeaders += "九、破格申报理由\n";
        colHeaders += "1.破格申报类别：\n";
        if (dr["pglb"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "1、学历破格\t";
        if (dr["pglb"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "2、资历破格\n";
        colHeaders += "2.破格申报条件：\n";
        if (dr["pgtj"].ToString() == "1")
            colHeaders += "■1.获得奖励\t□2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "2")
            colHeaders += "□1.获得奖励\t■2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "3")
            colHeaders += "□1.获得奖励\t□2、发表论著\t■3承担重点项目\n";
        colHeaders += "3.具体破格理由：\n";

        string str_pgly = "";
        string str_jtpgly = dr["jtpgly"].ToString();
        if (str_jtpgly != "" && str_jtpgly != null)
        {
            str_pgly = "（3）作为项目负责人承担国家级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "项目。";
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（2）作为第一作者，有" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "篇学术论文被SCI、EI、ISTP收录；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "等奖，排名第" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "奖" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（1）获得国家级或省部级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
        }
        colHeaders += str_pgly;
        return colHeaders;
    }

    #endregion
    protected void btn_expInfo_cdxm_Click(object sender, EventArgs e)
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=1.xls");
        string colHeaders = "承担项目情况统计" + "\n"; 
        string str_sql = "select sfzh,sbzw,yourname,gzdw_mc from cpry where sh_flag='通过' and edit_flag = false and tj_flag='推荐' order by gzdw asc, ID asc";
        DataView dv = DBFun.GetDataView(str_sql);
        DataView dv1;
        int i_id;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            //if (dv.Table.Rows[i]["sbzw"] == "研究员")
            //    colHeaders += GetPersonInfo_yjy(dv.Table.Rows[i]["sfzh"].ToString()) + "\n\n";
            //else
            //    colHeaders += GetPersonInfo_zyjgg(dv.Table.Rows[i]["sfzh"].ToString()) + "\n\n";

            i_id = i + 1;
            colHeaders += "人员序号：" + "\t" + i_id.ToString() + "\t";
            colHeaders += "姓名：" + "\t" + dv.Table.Rows[i]["yourname"].ToString() + "\t";
            colHeaders += "单位：" + "\t" + dv.Table.Rows[i]["gzdw_mc"].ToString() + "\t";
            colHeaders += "申报专业技术职务：" + "\t" + dv.Table.Rows[i]["sbzw"].ToString() + "\n";
            colHeaders += "\n";
            colHeaders += "项目序号" + "\t" + "项目名称" + "\t" + "来源" + "\t" + "编号" + "\t" + "起止时间（年、月）" +
                          "\t" + "经费数（万元）" + "\t" + "担任何角色" + "\n";
            str_sql = "SELECT * from cdxmqk where sfzh = '" + dv.Table.Rows[i]["sfzh"].ToString() + "' order by id ;";
            dv1 = DBFun.GetDataView(str_sql);
            for (int j = 0; j < dv1.Table.Rows.Count; j++)
            {
                if (j == 10) break;
                i_id = j + 1;
                colHeaders += i_id.ToString() + "\t";
                colHeaders += dv1.Table.Rows[j]["ktmc"].ToString() + "\t";
                colHeaders += dv1.Table.Rows[j]["ktly2"].ToString() + "\t";
                colHeaders += dv1.Table.Rows[j]["ktbh"].ToString() + "\t";
                colHeaders += dv1.Table.Rows[j]["qzsj"].ToString() + "\t";
                colHeaders += dv1.Table.Rows[j]["jfs"].ToString() + "\t";
                colHeaders += dv1.Table.Rows[j]["drjs"].ToString() + "\n";
            }
            colHeaders += "\n";
        }

        resp.Write(colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }
}
