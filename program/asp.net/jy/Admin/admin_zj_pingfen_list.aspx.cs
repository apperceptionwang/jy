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

public partial class Admin_admin_zj_pingfen_list : System.Web.UI.Page
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
            //string str_sql = "select bm,name from t_dict where flm = 3";
            //DBFun.FillDwList(Dropdownlist1, str_sql);
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

    #region //数据绑定
    private void bindData()
    {
        string strqry = "select iif(isnull(fs_pjys_sum),'0',fs_pjys_sum) as fs_sum,zj_sfzh,cpry_sfzh,jypj,UserName,zjdm,iif(isnull(fs_pjys_sum),'否','是') as sfpj from zjry,pszj where sfzh = zj_sfzh and zjry.flag = 1 ";
        strqry = strqry + " and cpry_sfzh = '"+Session["sfzh"].ToString()+"'";
        Session["dv_zj_pingfen"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_zj_pingfen"];
        GridView1.DataSource = dv;
        GridView1.DataBind();
        lbl_sum.Text = "得分：" + PrivateFun.Get_Score_zj(dv);
        
        GridView1.ShowFooter = true;
        GridView1.Columns[2].FooterText = lbl_sum.Text;

        //strqry = " select gz,count(gz) as num from " +
        //        " (SELECT iif(isnull(csgz),'未填写',csgz) as gz" +
        //        " FROM cpry ,t_dict" +
        //        " WHERE url = gzdw and t_dict.tj_flag = true and edit_flag = false and cpry.tj_flag = '推荐'";

        //if (RadioButtonList1.SelectedValue != "all")
        //    strqry = strqry + " and sh_flag = '" + RadioButtonList1.SelectedValue + "'";
        //strqry = strqry + ") group by gz";
        //OleDbDataReader reader = DBFun.dataReader(strqry);
        //lbl_tongji.Text = "";
        //while (reader.Read())
        //{
        //    lbl_tongji.Text = lbl_tongji.Text + reader.GetString(0).ToString() + ":" + reader.GetInt32(1).ToString() + "<br/>";

        //}
        //DBFun.closeDataReader(ref reader);
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
        DataView dv = (DataView)Session["dv_zj_pingfen"];
        //string str_sfzh = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        lbl_pingjia.Text ="专家评价："+ dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["jypj"].ToString();
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
        //Excel.Application excel = new Excel.Application();
        //wb = excel.Application.Workbooks.Add(true);


        //excel.Cells[1, 1] = "排 序";
        //excel.Cells[1, 2] = "姓  名";
        //excel.Cells[1, 3] = "性别";
        //excel.Cells[1, 4] = "年龄";
        //excel.Cells[1, 5] = "最高学历";
        //excel.Cells[1, 6] = "符合申报条件学历";
        //excel.Cells[1, 7] = "符合申报条件的毕业学校及时间";
        //excel.Cells[1, 8] = "专业技术职务资格";
        //excel.Cells[1, 9] = "资格评定时间";
        //excel.Cells[1, 10] = "聘任专业技术职务";
        //excel.Cells[1, 11] = "聘任时间";
        //excel.Cells[1, 12] = "从事工作";
        //excel.Cells[1, 13] = "学历资历审查情况";
        //excel.Cells[1, 14] = "外语条件审查情况";
        //excel.Cells[1, 15] = "计算机条件审查情况";
        //excel.Cells[1, 16] = "上次申报年份";
        //excel.Cells[1, 17] = "备注";

        string str_sql = " select " +
                         " name , " +//工作单位
                         " yourname, " +//姓名
                         " xingbie," +//性别
                         " iif( DateDiff('YYYY', CDate(iif(isnull(birth),now(),iif(birth='',now(),birth)) ), Format(Now(),'yyyy-mm-dd')" +
                         " ) = 0,'', DateDiff('YYYY', CDate(iif(isnull(birth),now(),iif(birth='',now(),birth))),Format(Now(),'yyyy-mm-dd') " +
                         " ) ) AS nianling, " +//年龄
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
                         " iif (jsj_msly='','符合',iif(isnull(jsj_msly),'符合','免试')) as jsjtj," +//计算机条件审查情况
                         " iif (scsbnd='无','符合',iif(isnull(scsbnd),'符合',scsbnd)) as sbnd," +//上次申报年份
                         " '','',''" +
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
            colHeaders += "业绩成果评分" + "\t\n";
            //colHeaders += "备注" + "\t\n";
            for (i = 0; i < dt.Rows.Count; i++)
            {
                colHeaders += Convert.ToString(i + 1) + "\t";
                for (int j = 0; j < 19; j++)
                {
                    colHeaders += dt.Rows[i][j].ToString() + "\t";
                    if (j == 18)
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
    protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        TD1.Visible = false;
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        Response.Redirect("admin_zj_pingfen_list.aspx");
    }

}
