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
using System.Xml.Xsl;
using System.Xml;
using System.IO;
using System.Data.OleDb;

public partial class Default3 : System.Web.UI.Page
{
    public Excel.Workbook wb;
    protected void Page_Load(object sender, EventArgs e)
    {
        //专业技术二级评审专家登陆界面
        //Response.Redirect("./admin/admin_login.aspx?type=ejzj");
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



    public void CreateExcel1(DataSet ds, string typeid, string FileName)
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        string colHeaders = "";
        int i = 0;

        string str_sql = "select * from cpry where sfzh = '110102195308282312'";
        DataRow dr = DBFun.GetDataRow(str_sql);

        //定义表对象与行对像，同时用DataSet对其值进行初始化
        DataTable dt = ds.Tables[0];
        DataRow[] myRow = dt.Select();

        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件
        if (typeid == "1")
        {
            colHeaders += "中国地震局正高级专业技术职务任职资格" + "\t\n";
            colHeaders += "综 合 评 审 表" + "\t\n";
            colHeaders += "（适用于研究员评审）" + "\t\n";
            colHeaders += "工作单位：" + "\t" + dr["gzdw_mc"].ToString() + "\t\n";
            colHeaders += "姓    名：" + "\t" + dr["yourname"].ToString() + "\t\n";
            colHeaders += "现任专业" + "\t\n";
            colHeaders += "技术职务：" + "\t" + dr["xrzw"].ToString() + "\t\n";
            colHeaders += "申报专业" + "\t\n";
            colHeaders += "技术职务：" + "\t" + dr["sbzw"].ToString() + "\t\n";
            colHeaders += "从事工作：" + "\t" + dr["csgz"].ToString() + "\t\n";
            colHeaders += "填表日期：" + "\t" + dr["tbrq"].ToString() + "\t\n";
            //colHeaders += "\t\n";            
            colHeaders += "中国地震局人事教育和科技司制" + "\t\n";
            colHeaders += "二〇〇九年十月" + "\t\n";
            //colHeaders += "\t\n";
            colHeaders += "一、个人简历和业务工作简介" + "\t\n";
            colHeaders += "姓  名" + "\t" + dr["yourname"].ToString() + "\t" + "出生年月" + "\t\t" + dr["birth"].ToString() + "性  别" + dr["xingbie"].ToString() + "\t\n";
            colHeaders += "最高学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t" + "专   业" + "\t" + "授予单位" + "\t\n";
            colHeaders += "论著报告评分" + "\t";
            colHeaders += "业绩成果评分" + "\t";
            colHeaders += "专家评分" + "\t\n";
            colHeaders += "备注" + "\t\n";

            //for (i = 0; i < dt.Rows.Count; i++)
            //{
            //    colHeaders += Convert.ToString(i + 1) + "\t";
            //    for (int j = 0; j < dt.Columns.Count; j++)
            //    {
            //        colHeaders += dt.Rows[i][j].ToString() + "\t";
            //        if (j == dt.Columns.Count - 1)
            //            colHeaders += "\n";
            //    }

            //}
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
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        TextBox2.Text = WordToal.GetAllPYLetters(TextBox1.Text);
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        this.Response.Write("<script language=javascript>showModalDialog('default5.aspx','dialogWidth:400px;dialogHeight:300px; dialogLeft:200px;dialogTop:150px;center:yes;help:yes;resizable:yes;status:yes') </script>");
    }
}


    