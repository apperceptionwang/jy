using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Text.RegularExpressions;
using System.Data.OleDb;
using System.Data.SqlClient;

/// <summary>
/// WebFunction 的摘要说明
/// </summary>
public class DBFun
{
    protected static OleDbConnection conn = new OleDbConnection();
    protected static OleDbCommand comm = new OleDbCommand();

    public DBFun()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }

    /// <summary> 
    /// 打开数据库连接 
    /// </summary> 
    private static void openConnection()
    {
        if (conn.State == ConnectionState.Closed)
        {
            string str_DbType  = ConfigurationManager.AppSettings["DbType"].ToString();
            string str_DbPath = ConfigurationManager.ConnectionStrings["DbPath"].ToString();
            //string str_ExtName = str_DbPath.Substring(str_DbPath.LastIndexOf(".") + 1).ToUpper();
            //连接Access2003
            if (str_DbType == "MDB")
            {
                conn.ConnectionString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(str_DbPath);
            }
            //连接Access2010
            else if (str_DbType == "ACCDB")
            {
                conn.ConnectionString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + System.Web.HttpContext.Current.Server.MapPath(str_DbPath);
            }
            //用oledb连接oracle
            else if (str_DbType == "Oracle")
            {
                conn.ConnectionString = "Provider=OraOLEDB.Oracle;data source=drcom;user id=user1;password=user1";
            }
            //连接SQLserver
            else if (str_DbType == "SQLserver")
            {
                conn.ConnectionString = "Provider=SQLOLEDB;Data Source=211.71.233.24;Initial Catalog=kw;Persist Security Info=True;User ID=sa;Password=1q2w3e$r;MultipleActiveResultSets=False;Packet Size=4096;Application Name=Microsoft SQL Server Management Studio";
            }
           

            comm.Connection = conn;
            try
            {
                conn.Open();
            }
            catch (Exception e)
            {
                throw new Exception(e.Message);
            }
        }
    }
    /// <summary> 
    /// 关闭当前数据库连接 
    /// </summary> 
    private static void closeConnection()
    {
        if (conn.State == ConnectionState.Open)
            conn.Close();
        conn.Dispose();
        comm.Dispose();
    }
    /// <summary> 
    /// 执行Sql查询语句 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    public static void ExecuteSql(string sqlstr)
    {
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            comm.ExecuteNonQuery();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
    }

    /// <summary> 
    /// 执行Sql更新语句 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param>
    /// <returns>布尔值</returns>
    public static bool ExecuteUpdate(string sqlstr)
    {
        int isUpdateOk = 0;
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            isUpdateOk = Convert.ToInt32(comm.ExecuteNonQuery());
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
            CommFun.error_record("", "", e.Message);
        }
        finally
        {
            closeConnection();
        }
        if (isUpdateOk >= 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    public static  DataRow GetDataRow(string strSQL)
    {
        //查询数据，取得数据行
        try
        {
            openConnection();
            OleDbDataAdapter OleAdp = new OleDbDataAdapter(strSQL, conn);
            DataSet Rs = new DataSet();
            OleAdp.Fill(Rs);
            if (Rs.Tables[0].Rows.Count != 0)
                return Rs.Tables[0].Rows[0];
            else
                return null;
        }
        catch
        {
            return null;
        }

    }

    public static DataView GetDataView(string strSQL)
    {
        //查询数据，取得数据视图
        try
        {
            openConnection();
            OleDbDataAdapter OleAdp = new OleDbDataAdapter(strSQL, conn);
            DataSet Rs = new DataSet();
            OleAdp.Fill(Rs);
            return Rs.Tables[0].DefaultView;
           
        }
        catch
        {
            return null;
        }

    }
    public static bool SearchTable(string strSQL)
    {
        OleDbDataReader OleDr = null;
        try
        {
            openConnection();
            comm.CommandText = strSQL;
            comm.CommandType = CommandType.Text;
            OleDr = comm.ExecuteReader(CommandBehavior.CloseConnection);
            if (OleDr.Read())
            {
               
                return true;
            }
            else
            {
               
                return false;
            }
        }
        catch
        {
            try
            {
                OleDr.Close();
                closeConnection();
            }
            catch
            {
            }
            return false;
        }
        finally
        {
            OleDr.Close();
        }
       
    }
    public static string SearchValue(string strSQL)
    {
        //查找
        OleDbDataReader OleDr = null;
        try
        {
            openConnection();
            comm.CommandText = strSQL;
            comm.CommandType = CommandType.Text;
            OleDr = comm.ExecuteReader(CommandBehavior.CloseConnection);
            if (OleDr.Read())
            {

                return OleDr[0].ToString();
            }
            else
                return "";
        }
        catch
        {
            try
            {
                OleDr.Close();
                closeConnection();
            }
            catch
            {
            }
            return "";
        }
        finally
        {
            OleDr.Close();
        }

    }

    /// <summary>
    /// 用SQL语句填充下拉列表FillDwList
    /// </summary>
    /// <param name="ddlist">要填充的下拉列表DropDownList</param>
    /// <param name="strqry">取得数据的SQL语句</param>
    /// 
    #region 用SQL语句填充下拉列表
    public static void FillDwList(DropDownList ddlist, string strqry)
    {
        //用SQL语句填充下拉列表
        try
        {
            DataView dv = GetDataView(strqry);
            ddlist.DataValueField = dv.Table.Columns[0].Caption.ToString();
            ddlist.DataTextField = dv.Table.Columns[1].Caption.ToString();
            ddlist.DataSource = dv;
            ddlist.DataBind();
        }
        catch (Exception ex)
        {
            throw new Exception(ex.Message);
        }
    }
    #endregion

    /// <summary>
    /// 填充GridView FillGridView
    /// </summary>
    /// <param name="str_sql">得到数据的SQL语句</param>
    /// <param name="gv_bind">要绑定的Gridview</param>
    /// <param name="b_lbtn"> 是否包含删除按钮</param>
    /// <returns>包含数据的DataView</returns>
    #region  填充GridView
    public static DataView FillGridView(string str_sql, GridView gv_bind, bool b_lbtn)
    {
        DataView dv = DBFun.GetDataView(str_sql);
        gv_bind.DataSource = dv;
        gv_bind.DataBind();
        if (b_lbtn && dv != null)
        {
            LinkButton lbtn;
            for (int i = 0; i < gv_bind.Rows.Count; i++)//dv.Table
            {
                lbtn = (LinkButton)gv_bind.Rows[i].FindControl("lbtn_del");
                if (lbtn != null) lbtn.Attributes.Add("onclick", "return   confirm   (\"确定要删除吗？\");");
            }
        }
        return dv;
    }
    #endregion


    /// <summary> 
    /// 执行Sql查询语句并返回第一行的第一条记录,返回值为object 使用时需要拆箱操作 -> Unbox 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <returns>object 返回值 </returns> 
    public static object ExecuteScalar(string sqlstr)
    {
        object obj = new object();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            obj = comm.ExecuteScalar();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
        return obj;
    }

    /// <summary> 
    /// 返回指定Sql语句的SqlDataReader，请注意，在使用后请关闭本对象，同时将自动调用closeConnection()来关闭数据库连接 
    /// 方法关闭数据库连接 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <returns>SqlDataReader对象</returns> 
    public static OleDbDataReader dataReader(string sqlstr)
    {
        OleDbDataReader dr = null;
        try
        {
            openConnection();
            comm.CommandText = sqlstr;
            comm.CommandType = CommandType.Text;
            dr = comm.ExecuteReader(CommandBehavior.CloseConnection);
        }
        catch
        {
            try
            {
                dr.Close();
                closeConnection();
            }
            catch
            {
            }
        }
        return dr;
    }

    ///<summary>
    ///关闭datareader
    ///传入SqlDataReader的ref
    ///</summary>
    public static void closeDataReader(ref OleDbDataReader sdr)
    {
        try
        {
            sdr.Close();
            sdr.Dispose();
            closeConnection();
        }
        catch (Exception)
        { }
    }

    /// <summary> 
    /// 返回指定Sql语句的DataSet 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <returns>DataSet</returns> 
    public static DataSet dataSet(string sqlstr)
    {
        DataSet ds = new DataSet();
        OleDbDataAdapter da = new OleDbDataAdapter();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            da.SelectCommand = comm;
            da.Fill(ds);
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
        return ds;
    }

    /// <summary> 
    /// 返回指定Sql语句的DataSet 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <param name="ds">传入的引用DataSet对象</param> 
    public static void dataSet(string sqlstr, ref DataSet ds)
    {
        OleDbDataAdapter da = new OleDbDataAdapter();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            da.SelectCommand = comm;
            da.Fill(ds);
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }

        finally
        {
            closeConnection();
        }
    }
    /// <summary> 
    /// 返回指定Sql语句的DataTable 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <returns>DataTable</returns> 
    public static DataTable dataTable(string sqlstr)
    {
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataTable datatable = new DataTable();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            da.SelectCommand = comm;
            da.Fill(datatable);
        }
        catch (Exception)
        {
        }
        finally
        {
            closeConnection();
        }
        return datatable;
    }

    /// <summary> 
    /// 执行指定Sql语句,同时给传入DataTable进行赋值 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <param name="dt">ref DataTable dt </param> 
    public static void dataTable(string sqlstr, ref DataTable dt)
    {
        OleDbDataAdapter da = new OleDbDataAdapter();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            da.SelectCommand = comm;
            da.Fill(dt);
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
    }

    /// <summary> 
    /// 执行指定Sql语句 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    public static DataView dataView(string sqlstr)
    {
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataView dv = new DataView();
        DataSet ds = new DataSet();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            da.SelectCommand = comm;
            da.Fill(ds);
            dv = ds.Tables[0].DefaultView;
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
        return dv;
    }

    /// <summary> 
    /// 执行指定Sql语句,开始记录位置,和返回记录数 
    /// </summary> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <param name="StartIndex">开始记录位置</param>
    /// <param name="pageSize">返回记录数</param> 
    public static DataView dataView(string sqlstr, int StartIndex, int pageSize)
    {
        OleDbDataAdapter da = new OleDbDataAdapter();
        DataView dv = new DataView();
        DataSet ds = new DataSet();
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            da.SelectCommand = comm;
            da.Fill(ds, StartIndex, pageSize, "pagelist");
            dv = ds.Tables["pagelist"].DefaultView;
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
        return dv;
    }

    public static string cutTitle(string str, int len)
    {
        int intLen = str.Length;
        int start = 0;
        int end = intLen;
        int single = 0;
        char[] chars = str.ToCharArray();
        for (int i = 0; i < chars.Length; i++)
        {
            if (Convert.ToInt32(chars[i]) > 255)
            {
                start += 2;
            }
            else
            {
                start += 1;
                single++;
            }
            if (start >= len)
            {

                if (end % 2 == 0)
                {
                    if (single % 2 == 0)
                    {
                        end = i + 1;
                    }
                    else
                    {
                        end = i;
                    }
                }
                else
                {
                    end = i + 1;
                }
                break;
            }
        }
        string temp = str.Substring(0, end);
        if (str.Length > end)
        {
            return temp + "...";
        }
        else
        {
            return temp;
        }
    }

    /// <summary>
    /// 验证是否正确
    /// </summary>
    /// <param name="userName">传入sql语句</param>
    /// <returns>布尔值</returns>
    public static bool chkExist(string sqlstr)
    {
        int isExit = 0;
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = sqlstr;
            isExit = Convert.ToInt32(comm.ExecuteScalar());
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
        if (isExit > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static string safeForm(string str)
    {
        str = str.Trim();
        str = str.Replace("'", "''");
        return str;
    }

    public static string alertChk(string str, int how)
    {
        switch (how)
        {
            case 1:
                return "<script>alert('" + str + "');window.location.href='Default.aspx'</script>";
            case 2:
                return "<script>alert('" + str + "');window.close()</script>";
            default:
                return "<script>alert('" + str + "');history.go(-1)</script>";
        }
    }

    /// <summary>
    /// 替换html中的特殊字符
    /// </summary>
    /// <param name="theString">需要进行替换的文本。</param>
    /// <returns>替换完的文本。</returns>
    public static string HtmlEncode(string theString)
    {
        theString = theString.Replace(">", "&gt;");
        theString = theString.Replace("<", "&lt;");
        theString = theString.Replace("  ", " &nbsp;");
        theString = theString.Replace("  ", " &nbsp;");
        theString = theString.Replace("\"", "&quot;");
        theString = theString.Replace("\'", "&#39;");
        theString = theString.Replace("\n", "<br/> ");
        return theString;
    }

    /// <summary>
    /// 恢复html中的特殊字符
    /// </summary>
    /// <param name="theString">需要恢复的文本。</param>
    /// <returns>恢复好的文本。</returns>
    public static string HtmlDiscode(string theString)
    {
        theString = theString.Replace("&gt;", ">");
        theString = theString.Replace("&lt;", "<");
        theString = theString.Replace("&nbsp;", " ");
        theString = theString.Replace(" &nbsp;", "  ");
        theString = theString.Replace("&quot;", "\"");
        theString = theString.Replace("&#39;", "\'");
        theString = theString.Replace("<br/> ", "\n");
        return theString;
    }

    /// <summary> 
    /// 通过 OleDbDataAdapter 把数据放入 DataSet
    /// </summary> 
    /// <param name="sqlstr">OleDbCommandBuilder</param> 
    /// <param name="sqlstr">DataSet</param> 
    /// <param name="sqlstr">传入的Sql语句</param> 
    /// <returns>OleDbDataAdapter</returns>
    public static OleDbDataAdapter FillDataSet(ref OleDbCommandBuilder myCommandBuilder,ref DataSet ds, string str_sql)
    {
        //例子
        //DataSet ds = new DataSet();
        //OleDbCommandBuilder myCommandBuilder = new OleDbCommandBuilder();
        //OleDbDataAdapter myAdapter = DBFun.FillDataSet(ref myCommandBuilder, ref ds, "select * from t_1");

        //ds.Tables[0].Rows[0]["dd"] = "5";
        //DBFun.ExecuteUpdate(myAdapter, myCommandBuilder, ds);
        try
        {
            openConnection();
            comm.CommandType = CommandType.Text;
            comm.CommandText = str_sql;
            OleDbDataAdapter myAdapter = new OleDbDataAdapter(comm);
            myCommandBuilder.DataAdapter = myAdapter;
            myAdapter.Fill(ds);
            return myAdapter;
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            //closeConnection();
        }
    }

    /// <summary> 
    /// 通过 OleDbDataAdapter 更新 DataSet 中变化的数据
    /// </summary> 
    /// <param name="sqlstr">OleDbDataAdapter</param> 
    /// <param name="sqlstr">OleDbCommandBuilder</param> 
    /// <param name="sqlstr">DataSet</param> 
    /// <returns>布尔值</returns>
    public static bool ExecuteUpdate(OleDbDataAdapter myAdapter,OleDbCommandBuilder myCommandBuilder, DataSet ds)
    {
        int i_return;
        try
        {
            myAdapter.UpdateCommand = myCommandBuilder.GetUpdateCommand();
            i_return = myAdapter.Update(ds);
            ds.Dispose();
            myAdapter.Dispose();
        }
        catch (Exception e)
        {
            throw new Exception(e.Message);
        }
        finally
        {
            closeConnection();
        }
        if (i_return > 0)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public static string DealHtml(string str)
    {
        str = Regex.Replace(str, @"\<(img)[^>]*>|<\/(img)>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<(table|tbody|tr|td|th|)[^>]*>|<\/(table|tbody|tr|td|th|)>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<(div|blockquote|fieldset|legend)[^>]*>|<\/(div|blockquote|fieldset|legend)>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<(font|i|u|h[1-9]|s)[^>]*>|<\/(font|i|u|h[1-9]|s)>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<(style|strong)[^>]*>|<\/(style|strong)>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<a[^>]*>|<\/a>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<(meta|iframe|frame|span|tbody|layer)[^>]*>|<\/(iframe|frame|meta|span|tbody|layer)>", "", RegexOptions.IgnoreCase);
        str = Regex.Replace(str, @"\<a[^>]*", "", RegexOptions.IgnoreCase);
        return str;
    }

    public static string PageList(int size, string funClick, int countNum, int currentPage)
    {
        int pageCount = 0;
        int stepNum = 3;
        int pageRoot = 1;
        string pageStr = "";
        int pageSize = size;
        if (countNum % pageSize == 0)
        {
            pageCount = countNum / pageSize;
        }
        else
        {
            pageCount = countNum / pageSize + 1;
        }
        pageStr = "<div id='pager'>分页：" + currentPage.ToString() + "/" + pageCount.ToString() + "页";
        if (currentPage - stepNum > 1)
        {
            pageRoot = currentPage - stepNum;
        }
        int pageFoot = pageCount;
        if (currentPage + stepNum < pageCount)
        {
            pageFoot = currentPage + stepNum;
        }
        if (pageRoot == 1)
        {
            if (currentPage == 1)
            {
                pageStr += "<font color=888888 face=webdings>9</font></a>";
                pageStr += "<font color=888888 face=webdings>7</font></a> ";
            }
            else
            {
                pageStr += "<a href='#page.1' onclick='" + funClick + "(1)' title='首页'><font face=webdings>9</font></a>";
                pageStr += "<a href='#page." + Convert.ToString(currentPage - 1) + "' onclick='" + funClick + "(" + Convert.ToString(currentPage - 1) + ")' title='上页'><font face=webdings>7</font></a> ";
            }
        }
        else
        {
            pageStr += "<a href='#page.1' onclick='" + funClick + "(1)' title='首页'><font face=webdings>9</font></a>";
            pageStr += "<a href='#page." + Convert.ToString(currentPage - 1) + "' onclick='" + funClick + "(" + Convert.ToString(currentPage - 1) + ")' title='上页'><font face=webdings>7</font></a>...";
        }
        for (int i = pageRoot; i <= pageFoot; i++)
        {
            if (i == currentPage)
            {
                pageStr += "<font color='red'>[" + i.ToString() + "]</font>&nbsp;";
            }
            else
            {
                pageStr += "<a href='#page." + i.ToString() + "' onclick='" + funClick + "(" + i.ToString() + ")'>[" + i.ToString() + "]</a>&nbsp;";
            }
            if (i == pageCount)
                break;
        }
        if (pageFoot == pageCount)
        {
            if (pageCount == currentPage)
            {
                pageStr += "<font color=888888 face=webdings>8</font></a>";
                pageStr += "<font color=888888 face=webdings>:</font></a>";
            }
            else
            {
                pageStr += "<a href='#page." + Convert.ToString(currentPage + 1) + "' onclick='" + funClick + "(" + Convert.ToString(currentPage + 1) + ")' title='下页'><font face=webdings>8</font></a>";
                pageStr += "<a href='#page." + pageCount.ToString() + "' onclick='" + funClick + "(" + pageCount.ToString() + ")' title='尾页'><font face=webdings>:</font></a>";
            }
        }
        else
        {
            pageStr += "... <a href='#page." + Convert.ToString(currentPage + 1) + "' onclick='" + funClick + "(" + Convert.ToString(currentPage + 1) + ")' title='下页'><font face=webdings>8</font></a>";
            pageStr += "<a href='#page." + pageCount.ToString() + "' onclick='" + funClick + "(" + pageCount.ToString() + ")' title='尾页'><font face=webdings>:</font></a>";
        }
        pageStr += "</div>";
        return pageStr;
    }
    /// <summary>
    /// 查询Access数据库中所有表名
    /// </summary>
    /// <param name="myAdapter"></param>
    /// <param name="myCommandBuilder"></param>
    /// <param name="ds"></param>
    /// <returns></returns>
    public static DataView GetAccessTableList()
    {
        openConnection();
        //DataTable tbl = conn.GetSchema("tables");
        DataTable tbl = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Tables, new Object[] { null, null,null, "Table" });
        DataView dv = tbl.DefaultView;
        //dv.Sort="ORDINAL_POSITION asc";
        return dv;
        
    }
    /// <summary>
    /// 查询Access数据库中所有列名
    /// </summary>
    /// <param name="myAdapter"></param>
    /// <param name="myCommandBuilder"></param>
    /// <param name="ds"></param>
    /// <returns></returns>
    public static DataView GetAccessColumnList(string str_TableName)
    {
        openConnection();
        DataTable tbl = conn.GetSchema("columns", new string[] { null, null, str_TableName });  
        //DataTable tbl = conn.GetOleDbSchemaTable(OleDbSchemaGuid.Columns, new object[] { null, null, str_TableName, null });
        //DataViewRowState drs = new DataViewRowState();
        //DataView dv = new DataView(tbl, "", "column_name DESC", drs);
        //dv.Sort = "DATA_TYPE asc";
        DataView dv = tbl.DefaultView;
        return dv;
    }

    public static OleDbDataAdapter UpdateDataSet(string strSQL)
    {
        try
        {
            openConnection();
            OleDbDataAdapter OleAdp = new OleDbDataAdapter(strSQL, conn);
            return OleAdp;
            //DataSet Ds = new DataSet();
            //OleAdp.Fill(Ds);
            //int i_return = OleAdp.Update(Ds, "MRBccd");

            //if (i_return != 0)
            //    return OleAdp;
            //else
            //    return null;
        }
        catch
        {
            return null;
        }
        //finally
        //{
        //    closeConnection();
        //}        
    }
    
}
