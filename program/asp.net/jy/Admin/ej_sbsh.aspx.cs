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

public partial class Admin_ej_sbsh : System.Web.UI.Page
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
        File.Delete("./1.xls");
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

        string str_sql = string.Format("update ej_cpry set edit_flag = {0} where sfzh = '{1}'",
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
        string strqry = "SELECT ID,sfzh, yourname,xingbie, " +
                       " iif(DateDiff('YYYY', CDate(iif(isnull(birth),now,birth)),Format(Now(),'yyyy-mm-dd'))=0,'',DateDiff('YYYY', CDate(iif(isnull(birth),now,birth)),Format(Now(),'yyyy-mm-dd'))) AS nianling," +
                       " xrgw, gwxl, sh_flag,edit_flag,fenlei,ej_cpry.tj_flag,t_dict.ej_tj_flag,t_dict.name as gzdw FROM ej_cpry,t_dict" +
                       " where url = dw and t_dict.ej_tj_flag = true and edit_flag = false and ej_cpry.tj_flag = '推荐' ";
        if (RadioButtonList1.SelectedValue != "all")
            strqry = strqry + " and sh_flag = '" + RadioButtonList1.SelectedValue + "'";
        strqry = strqry + " ORDER BY dw asc , ID asc;";
        Session["dv_detail"] = DBFun.GetDataView(strqry);
        DataView dv = (DataView)Session["dv_detail"];
        GridView1.DataSource = dv;
        GridView1.DataBind();
        //for (int i = 0; i < GridView1.Rows.Count; i++)
        //{
        //    CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
        //    ckb.Checked = Convert.ToBoolean(dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["edit_flag"].ToString());
        //}

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
        DataView dv = (DataView)Session["dv_detail"];
        string str_sfzh = dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
        Session["sfzh"] = str_sfzh;
        //string strqry = "select sbzw from cpry where sfzh = '" + str_sfzh + "'";
        
        Response.Redirect("../PrintPreview_erji.aspx");

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
            str_sql = string.Format("update ej_cpry set sh_flag = '{0}' where sfzh = '{1}'",
                        "通过", str_sfzh);
            //GridView1.Rows[e.RowIndex].Cells[6].Text = "通过";
        }
        else
        {
            str_sql = string.Format("update ej_cpry set sh_flag = '{0}' where sfzh = '{1}'",
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
                         " Format(birth,'yyyy年mm月')," +//出生年月
                         " xkfx_qt," +//学科方向
                         " xrgw," +//现任岗位
                         " Format(prsj,'yyyy年mm月')," +//聘任时间
                         " ''" +//备注
                         " from ej_cpry ,t_dict where flm = 2 and url = dw and t_dict.ej_tj_flag = true and sh_flag='通过' and edit_flag = false and ej_cpry.tj_flag='推荐' order by dw asc, ID asc";

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
            colHeaders += "序 号" + "\t";
            colHeaders += "单位" + "\t";
            colHeaders += "姓  名" + "\t";
            colHeaders += "性别" + "\t";
            colHeaders += "出生年月" + "\t";
            colHeaders += "学科方向" + "\t";
            colHeaders += "现任岗位" + "\t";
            colHeaders += "聘任时间" + "\t";
            colHeaders += "备注" + "\t\n";
            for (i = 0; i < dt.Rows.Count; i++)
            {
                colHeaders += Convert.ToString(i + 1) + "\t";
                for (int j = 0; j < 8; j++)
                {
                    colHeaders += dt.Rows[i][j].ToString() + "\t";
                    if (j == 7)
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
}
