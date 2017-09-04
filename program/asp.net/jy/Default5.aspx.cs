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
using System.Collections.Generic;
using System.IO;
using Microsoft.Office.Interop.Word;


public partial class Default5 : System.Web.UI.Page
{
    string str_sql;
    DataView dv;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["admin_type"] = "admin";
        //Session["admin_name"] = "admin";
        //Session["admin_id"] = "admin";
        //Response.Redirect("admin/Admin_index.aspx");

        //OleDbConnection conn = new OleDbConnection();
        //OleDbCommand comm = new OleDbCommand();
        //conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source="
        //        + System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.ConnectionStrings["DbPath"].ToString());

        //  //  conn.ConnectionString = "Provider=sqloledb;" +
        //  // "Data Source=localhost;" +
        //  // "Initial Catalog=HR;" +
        //  // "User Id=sa;" +
        //    //"Password='';";

            
        //comm.Connection = conn;
        //conn.Open();

        //DataTable tbl = conn.GetSchema("columns", new string[] { null, null, "t_teacher" });
        ////DataTable tbl = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Columns, new object[] { null, null, str_TableName, null });
        //GridView1.Dispose();
        //DataView dv = tbl.DefaultView;
        //dv.Sort = "ordinal_position DESC";
        if (!IsPostBack)
        {
            //TABLE_CATALOG TABLE_SCHEMA TABLE_NAME TABLE_TYPE TABLE_GUID DESCRIPTION TABLE_PROPID DATE_CREATED DATE_MODIFIED 
            DataView dv = DBFun.GetAccessTableList();
            dv.Sort = "DATE_CREATED desc";
            ListItem li;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                li = new ListItem();
                li.Text = dv.Table.Rows[i]["DESCRIPTION"].ToString();
                li.Value = dv.Table.Rows[i]["TABLE_NAME"].ToString();
                ListBox1.Items.Add(li);
            }
            //GridView1.DataSource = dv;
            //GridView1.DataBind();
        }
    }


    protected void ListBox1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //TABLE_CATALOG TABLE_SCHEMA TABLE_NAME COLUMN_NAME COLUMN_GUID COLUMN_PROPID ORDINAL_POSITION COLUMN_HASDEFAULT 
        //COLUMN_DEFAULT COLUMN_FLAGS IS_NULLABLE DATA_TYPE TYPE_GUID CHARACTER_MAXIMUM_LENGTH CHARACTER_OCTET_LENGTH 
        //    NUMERIC_PRECISION NUMERIC_SCALE DATETIME_PRECISION CHARACTER_SET_CATALOG CHARACTER_SET_SCHEMA CHARACTER_SET_NAME 
        //        COLLATION_CATALOG COLLATION_SCHEMA COLLATION_NAME DOMAIN_CATALOG DOMAIN_SCHEMA DOMAIN_NAME DESCRIPTION 
        DataView dv = DBFun.GetAccessColumnList(ListBox1.SelectedValue);
        dv.Sort = "ORDINAL_POSITION";
        ListItem li;
        CheckBoxList1.Items.Clear();
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            li = new ListItem();
            li.Text = dv.Table.Rows[i]["DESCRIPTION"].ToString();
            li.Value = dv.Table.Rows[i]["COLUMN_NAME"].ToString();
            CheckBoxList1.Items.Add(li);
        }
        //GridView1.DataSource = dv;
        //GridView1.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string str_TableName = ListBox1.SelectedValue;
        string str_Columns = "";
        string str_sql;
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                str_Columns += " , " + CheckBoxList1.Items[i].Value;
            }
        }
        str_sql = " select " + str_Columns.Remove(0,2) + " from " + str_TableName;
        TextBox1.Text = str_sql;
        //ExcelManager.Exp2Excel(Page, str_sql);
        DataSet ds = DBFun.dataSet(str_sql);
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
        System.Data.DataTable dt = ds.Tables[0];
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
    protected void Button2_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from t_teacher";
        string str_pwd;
        string str_jsh;
        System.Data.DataTable dt = DBFun.dataTable(str_sql);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_jsh = dt.Rows[i]["jsh"].ToString();
            str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_jsh, "MD5");
            str_sql = "update t_teacher set pwd = '" + str_pwd + "' where jsh = '" + str_jsh + "'";
            DBFun.ExecuteSql(str_sql);
        }
        
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from t_dict where flm=13";
        string str_pwd;
        string str_xsh;
        System.Data.DataTable dt = DBFun.dataTable(str_sql);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_xsh = dt.Rows[i]["url"].ToString();
            str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_xsh, "MD5");
            str_sql = "update t_dict set pwd = '" + str_pwd + "' where flm = 13 and url = '" + str_xsh + "'";
            DBFun.ExecuteSql(str_sql);
        }
        Response.Write("<script>alert('执行完毕！');</script>");
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from t_expert";
        string str_pwd;
        string str_xsh;
        System.Data.DataTable dt = DBFun.dataTable(str_sql);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_xsh = dt.Rows[i]["loginname"].ToString();
            str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_xsh, "MD5");
            str_sql = "update t_expert set pwd = '" + str_pwd + "' where loginname = '" + str_xsh + "'";
            DBFun.ExecuteSql(str_sql);
        }
        Response.Write("<script>alert('执行完毕！');</script>");
    }
    protected void Button5_Click(object sender, EventArgs e)
    {
        move(0, "DOWN");
    }

    protected void move(int i_RowNum,string str_Direct)
    {
        string str_sql = "SELECT * from t_cyqk where appyear = 2015 and jsh = '1996196701' order by id";
        OleDbDataAdapter OleAdp = DBFun.UpdateDataSet(str_sql);
        DataSet Ds = new DataSet();
        OleAdp.Fill(Ds, "aa");
        GridView1.DataSource = Ds.Tables[0].DefaultView;
        GridView1.DataBind();
        if (i_RowNum >= 0 && i_RowNum < Ds.Tables[0].Rows.Count)
        {
            if (str_Direct.ToUpper() == "UP")
            {
                if (i_RowNum == 0)
                {
                    Response.Write("<script>alert('已经是第一行，不能再上移了！');</script>");
                    return;
                }
                Ds.Tables[0].Rows[i_RowNum]["ID"] = i_RowNum;
                Ds.Tables[0].Rows[i_RowNum - 1]["ID"] = i_RowNum + 1;
            }
            else
            {
                if (i_RowNum == Ds.Tables[0].Rows.Count - 1)
                {
                    Response.Write("<script>alert('已经是最后一行，不能再下移了！');</script>");
                    return;
                }
                Ds.Tables[0].Rows[i_RowNum]["ID"] = i_RowNum + 2;
                Ds.Tables[0].Rows[i_RowNum + 1]["ID"] = i_RowNum + 1;
            }
        }
        
        
        //Ds.AcceptChanges();
        OleDbCommandBuilder odcb = new OleDbCommandBuilder(OleAdp);
        Ds.Tables[0].GetChanges();
        int i_return = OleAdp.Update(Ds, "aa");
        Ds.Tables[0].AcceptChanges();
        DataView dv = new DataView();
        dv.Table = Ds.Tables[0];
        dv.Sort = "id asc";
        GridView2.DataSource = dv;
        GridView2.DataBind();
        if (i_return != 0)
            Response.Write("<script>alert('成功！');</script>");
        else
            Response.Write("<script>alert('失败！');</script>");
        OleAdp.Dispose();
        Ds.Dispose();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        str_sql = "select * from 表1";
        dv = DBFun.GetDataView(str_sql);
        string str_name, str_py;

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            str_name = dv.Table.Rows[i]["姓名"].ToString();
            str_py = WordToal.GetAllPYLetters(str_name);
            str_sql = "update 表1 set 邮箱地址='" + str_py + "' where 姓名 ='" + str_name + "' ";
            DBFun.ExecuteSql(str_sql);
        }
    }
    protected void btn_CreatePDF_Click(object sender, EventArgs e)
    {
        string str_PdfFilename, str_mulu;
        string str_DocFilename;
        str_mulu = "./2015课题成果/研究报告/";
        string str_MapPath = Server.MapPath(str_mulu);
        DirectoryInfo di = new DirectoryInfo(str_MapPath);
        FileInfo[] dis = di.GetFiles();//取目录中所有内容
        for (int i = 0; i < dis.Length; i++)
        {
            str_DocFilename = dis[i].Name;
            str_PdfFilename = str_DocFilename.Substring(0, str_DocFilename.LastIndexOf(".")) + ".pdf";
            try
            {
                Microsoft.Office.Interop.Word.WdSaveFormat wdf = Microsoft.Office.Interop.Word.WdSaveFormat.wdFormatRTF;
                WordToal.Word2Format(str_MapPath + str_DocFilename, str_MapPath + str_PdfFilename, wdf);
            }
            catch (Exception ee)
            {
                CommFun.error_record(Session["jsh"].ToString(), Session["jsm"].ToString(), ee.Message);
            }
        }
    }
}
