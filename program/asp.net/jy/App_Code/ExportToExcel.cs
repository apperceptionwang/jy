using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Runtime.InteropServices;
using System.IO;
using System.Data.SqlClient;
using System.Data.OleDb;



/***********************************************************************************
 ****Class Name :   ExcelManger
 ****Author:            KingNa
 ****Create Date :   2006-9-1
 ****CopyRight:     Reserve this info if you want to User this Class
***********************************************************************************/

public class ExcelManager : IDisposable
{
    Excel.Range m_objRange = null;
    Excel.Application m_objExcel = null;
    Excel.Workbooks m_objBooks = null;
    Excel._Workbook m_objBook = null;
    Excel.Sheets m_objSheets = null;
    Excel._Worksheet m_objSheet = null;
    Excel.QueryTable m_objQryTable = null;
    object m_objOpt = System.Reflection.Missing.Value;
    //DataBase-used variable
    private System.Data.SqlClient.SqlConnection sqlConn = null;
    private string strConnect = string.Empty;
    private System.Data.SqlClient.SqlCommand sqlCmd = null;

    //Sheets variable
    private double dbSheetSize = 65535;//the hight limit number in one sheet
    private int intSheetTotalSize = 0;//total record can divied sheet number
    private double dbTotalSize = 0;//record total number


    /// <summary>
    /// 建构函数
    /// </summary>
    public ExcelManager() { }

    /// <summary>
    /// 建构函数
    /// </summary>
    /// <param name="dbHL">一个Excel表格的最大记录数</param>
    /// <param name="dbTotal">该数据库表共查询出多少条记录</param>
    /// <param name="intDivide">查询出的记录可分成几个Excel</param>
    /// <param name="conn">sqlConnection</param>
    public ExcelManager(Double dbHL, Double dbTotal, int intDivide, SqlConnection conn)
    {
        dbSheetSize = dbHL;
        intSheetTotalSize = intDivide;
        dbTotalSize = dbTotal;
        sqlConn = conn;
    }
    /// <summary>
    /// 建构函数
    /// </summary>
    /// <param name="dbHL">一个Excel表格的最大记录数</param>
    /// <param name="strTableName">需查询的数据库的表名</param>
    /// <param name="conn">sqlConnection</param>
    public ExcelManager(Double dbHL, string strTableName, SqlConnection conn)
    {
        dbSheetSize = dbHL;
        sqlConn = conn;
        intSheetTotalSize = GetTotalSize(strTableName, sqlConn);
    }

    public void Dispose()
    {
        Dispose(true);
        GC.SuppressFinalize(this);
    }
    private void Dispose(bool disposing)
    {
        if (disposing)
        {
            // Dispose managed resources.
            Marshal.FinalReleaseComObject(m_objExcel);
            m_objRange = null;
            m_objSheet = null;
            m_objSheets = null;
            m_objBooks = null;
            m_objBook = null;
            m_objExcel = null;
        }
    }
    /// <summary>
    /// 取得总记录数跟可分成几个Excel sheet.
    /// </summary>
    /// <param name="strTableName">被查询的数据库的表名</param>
    /// <param name="sqlConn">sqlConnection</param>
    /// <returns>可分成Excel Sheet的个数</returns>
    private int GetTotalSize(string strTableName, SqlConnection sqlConn)
    {
        //sqlConn = new System.Data.SqlClient.SqlConnection(strConnect);
        sqlCmd = new System.Data.SqlClient.SqlCommand("Select Count(*) From " + strTableName, sqlConn);
        if (this.sqlConn.State == ConnectionState.Closed) sqlConn.Open();
        dbTotalSize = (int)sqlCmd.ExecuteScalar();
        sqlConn.Close();
        return (int)Math.Ceiling(dbTotalSize / this.dbSheetSize);
    }

    /// <summary>
    /// 新建一个Excel实例
    /// </summary>
    /// <param name="strTitle">Excel表头上的文字</param>
    public void DeclareExcelApp(string[] strTitle, string strSql, string strTableName, string strMastTitle)
    {
        m_objExcel = new Excel.ApplicationClass();
        m_objExcel.Visible = true;
        m_objBooks = (Excel.Workbooks)m_objExcel.Workbooks;
        m_objBook = (Excel._Workbook)(m_objBooks.Add(m_objOpt));
        m_objSheets = (Excel.Sheets)m_objBook.Worksheets;
        if (intSheetTotalSize <= 3)
        {
            if (this.dbTotalSize <= this.dbSheetSize)
            {
                this.ExportDataByQueryTable(1, false, strTitle, strSql, strTableName, strMastTitle);
                return;
            }
            else if (this.dbTotalSize <= this.dbSheetSize * 2)
            {
                this.ExportDataByQueryTable(1, false, strTitle, strSql, strTableName, strMastTitle);
                this.ExportDataByQueryTable(2, true, strTitle, strSql, strTableName, strMastTitle);
                return;
            }
            else
            {
                this.ExportDataByQueryTable(1, false, strTitle, strSql, strTableName, strMastTitle);
                this.ExportDataByQueryTable(2, true, strTitle, strSql, strTableName, strMastTitle);
                this.ExportDataByQueryTable(3, true, strTitle, strSql, strTableName, strMastTitle);
                return;
            }
        }
        for (int i = 3; i < intSheetTotalSize; i++)
        {
            m_objSheets.Add(m_objOpt, m_objSheets.get_Item(i), m_objOpt, m_objOpt);
        }
        ExportDataByQueryTable(1, false, strTitle, strSql, strTableName, strMastTitle);
        for (int i = 2; i <= m_objSheets.Count; i++)
        {
            ExportDataByQueryTable(i, true, strTitle, strSql, strTableName, strMastTitle);
        }
    }
    /// <summary>
    /// 以用户输入的文件名保存文件
    /// </summary>
    public void SaveExcelApp()
    {
        //string excelFileName = string.Empty;
        //SaveFileDialog sf = new SaveFileDialog();
        //sf.Filter = "*.xls|*.*";
        //if (sf.ShowDialog() == DialogResult.OK)
        //{
        //    excelFileName = sf.FileName;
        //}
        //else
        //{
        //    return;
        //}
        //m_objBook.SaveAs(excelFileName, m_objOpt, m_objOpt, m_objOpt, m_objOpt, m_objOpt,
        //    Excel.XlSaveAsAccessMode.xlNoChange, m_objOpt, m_objOpt, m_objOpt, m_objOpt, m_objOpt);
        //if (m_objExcel != null)
        //    m_objExcel = null;
    }
    /// <summary>
    /// 利用Excel的QueryTable导出数据
    /// </summary>
    /// <param name="intSheetNumber">导出第几个sheet</param>
    /// <param name="blIsMoreThan">余下的数据是否大于指定的每个Sheet的最大记录数</param>
    /// <param name="strTitle">表头,需与查询sql语句对齐一致。</param>
    /// <param name="strSql">查询的sql语句，表头的文字需与该sql语句对齐一致。</param>
    /// <param name="strTablName">查询的表名</param>    
    /// <param name="strMastTitle">主标题</param>
    /// </summary>
    public void ExportDataByQueryTable(int intSheetNumber, bool blIsMoreThan, string[] strTitle, string strSql, string strTablName, string strMastTitle)
    {
        string strQuery = string.Empty;
        if (blIsMoreThan)
        {
            strQuery = "Select Top " +
                this.dbSheetSize + strSql + "  From " + strTablName + " Where Not  OrderID In (Select Top " +
                dbSheetSize * (intSheetNumber - 1) + "  OrderID From " + strTablName + ")";
        }
        else
        {
            strQuery = "Select Top " + this.dbSheetSize + strSql + "  From " + strTablName;

        }
        m_objSheet = (Excel._Worksheet)(m_objSheets.get_Item(intSheetNumber));

        m_objSheet.Cells[1, 1] = strMastTitle;
        m_objSheet.Cells[2, 1] = "打印日期" + DateTime.Now.ToShortDateString();
        for (int i = 1; i <= strTitle.Length; i++)
        {
            m_objSheet.Cells[4, i] = strTitle[i - 1].ToString();
        }
        m_objRange = m_objSheet.get_Range("A5", m_objOpt);
        m_objQryTable = m_objSheet.QueryTables.Add("OLEDB;Provider=SQLOLEDB.1;" + sqlConn.ConnectionString, m_objRange, strQuery);
        m_objQryTable.RefreshStyle = Excel.XlCellInsertionMode.xlInsertEntireRows;
        m_objQryTable.FieldNames = false;
        m_objQryTable.Refresh(false);
    }


    #region 导出到Excel函数
    public static void CreateExcel(DataTable dt, string typeid, string FileName, Page pg)
    {
        HttpResponse resp;
        resp = pg.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + FileName);
        string colHeaders = "";
        int i = 0;

        //定义表对象与行对像，同时用DataSet对其值进行初始化

        DataRow[] myRow = dt.Select();
        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件
        if (typeid == "1")
        {
            colHeaders += "序  号" + "\t";
            colHeaders += "推荐单位" + "\t";
            colHeaders += "作者姓名" + "\t";
            colHeaders += "二级学科名称" + "\t";
            colHeaders += "论文题目" + "\t";
            colHeaders += "导师姓名" + "\t";
            colHeaders += "参评类别" + "\t";
            colHeaders += "分组" + "\t";
            colHeaders += "得分" + "\t\n";
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
        }
        else
        {
            if (typeid == "2")
            {
                //从DataSet中直接导出XML数据并且写到HTTP输出流中
                //resp.Write(ds.GetXml());
            }
        }
        //写缓冲区中的数据到HTTP头文件中
        resp.End();


    }
    #endregion

    /// <summary>
    /// 导出到Excel
    /// </summary>
    /// <param name="pg">页面</param>
    /// <param name="str_sql">SQL</param>
    /// <param name="str_colHeaders">列名</param>格式为（"列名1\t列名2\t……列名\n）
    /// <param name="i_colnum">列数</param>
    #region 导出到Excel函数
    public static void Exp2Excel(Page pg, string str_sql)
    {
        DataTable dt = DBFun.dataTable(str_sql);
        HttpResponse resp;
        resp = HttpContext.Current.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + DateTime.Now.ToString() + ".xls");
        int i = 0;
        int i_colnum = dt.Columns.Count;
        //定义表对象与行对像，同时用DataSet对其值进行初始化
        string str_colHeaders = "";
        for (int k = 0; k < i_colnum; k++)
        {
            str_colHeaders += dt.Columns[k].ColumnName + "\t";
            if (k == i_colnum - 1)
                str_colHeaders += "\n";
        }
        for (i = 0; i < dt.Rows.Count; i++)
        {
            //str_colHeaders += Convert.ToString(i + 1) + "\t";
            for (int j = 0; j < i_colnum; j++)
            {
                str_colHeaders += dt.Rows[i][j].ToString() + "\t";
                if (j == i_colnum - 1)
                    str_colHeaders += "\n";
            }
        }
        resp.Write(str_colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }
    public static void Exp2Excel(Page pg, DataTable dt)
    {
        HttpResponse resp;
        resp = pg.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + DateTime.Now.ToString() + ".xls");
        int i = 0;
        int i_colnum = dt.Columns.Count;
        //定义表对象与行对像，同时用DataSet对其值进行初始化
        string str_colHeaders = "";
        for (int k = 0; k < i_colnum; k++)
        {
            str_colHeaders += dt.Columns[k].ColumnName + "\t";
            if (k == i_colnum - 1)
                str_colHeaders += "\n";
        }
        for (i = 0; i < dt.Rows.Count; i++)
        {
            //str_colHeaders += Convert.ToString(i + 1) + "\t";
            for (int j = 0; j < i_colnum; j++)
            {
                str_colHeaders += dt.Rows[i][j].ToString() + "\t";
                if (j == i_colnum - 1)
                    str_colHeaders += "\n";
            }
        }
        resp.Write(str_colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }

    public static void Exp2Excel(Page pg, GridView gv)
    {
        HttpResponse resp;
        resp = pg.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=" + DateTime.Now.ToString() + ".xls");
        int i = 0;
        int i_colnum = gv.Columns.Count;
        //定义表对象与行对像，同时用DataSet对其值进行初始化
        string str_colHeaders = "";
        for (int k = 0; k < i_colnum; k++)
        {
            str_colHeaders += gv.Columns[k].HeaderText + "\t";
            if (k == i_colnum - 1)
                str_colHeaders += "\n";
        }
        for (i = 0; i < gv.Rows.Count; i++)
        {
            //str_colHeaders += Convert.ToString(i + 1) + "\t";
            for (int j = 0; j < i_colnum; j++)
            {
                str_colHeaders += gv.Rows[i].Cells[j].Text + "\t";
                if (j == i_colnum - 1)
                    str_colHeaders += "\n";
            }
        }
        resp.Write(str_colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }
    #endregion


    #region 获取Excel中的数据，返回DataTable

    /// <summary>
    ///  获取Excel中的数据，返回DataTable 
    /// </summary>
    /// <param name="filename">Excel的文件路径</param>
    /// <param name="comText">Excel查询字符串</param>
    /// <returns>DataTable</returns>

    public static DataTable GetXlsDataTable(string filename, string comText)
    {
        OleDbConnection con = new OleDbConnection(@"Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + filename + ";Extended Properties=Excel 8.0;");
        try
        {
            con.Open();
            OleDbDataAdapter adapter = new OleDbDataAdapter(comText, con);
            DataTable table = new DataTable();
            adapter.Fill(table);
            return table;
        }

        catch (Exception ex)
        {
            string exceptionMessage = ex.Message;
            return null;
        }
        finally
        {
            con.Close();
        }
    }

    #endregion
    
    /// <summary>
    /// 将网格数据导出到Excel
    /// GridViewToExcel
    /// </summary>
    /// <param name="ctrl">网格名称(如GridView1)</param>
    /// <param name="FileType">要导出的文件类型(Excel:application/ms-excel)</param>
    /// <param name="FileName">要保存的文件名</param>
    #region 将网格数据导出到Excel
    public static void GridViewToExcel(Control ctrl, string FileType, string FileName)
    {
        HttpContext.Current.Response.Charset = "GB2312";
        HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.UTF8;//注意编码
        HttpContext.Current.Response.AppendHeader("Content-Disposition",
            "attachment;filename=" + HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8).ToString());
        HttpContext.Current.Response.ContentType = FileType;//image/JPEG;text/HTML;image/GIF;vnd.ms-excel/msword 
        ctrl.Page.EnableViewState = false;
        StringWriter tw = new StringWriter();
        HtmlTextWriter hw = new HtmlTextWriter(tw);
        ctrl.RenderControl(hw);
        HttpContext.Current.Response.Write(tw.ToString());
        HttpContext.Current.Response.End();
    }
    #endregion


}
