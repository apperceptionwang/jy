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
using System.Data.SqlClient;

/// <summary>
/// Author:walkingp
/// Web Site:http://www.51obj.cn/
/// E-mail:walkingp@126.com
/// </summary>
public partial class manage_ManageSQL : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            GetTableName();
        }
    }

    #region SqlConnection
    /// <summary>
    /// 初始化SqlConnection
    /// </summary>
    private static SqlConnection connection;
    public static SqlConnection Connection
    {
        get
        {
            string connectionString = "server=211.71.232.22;DataBase=master;uid=sa;pwd=;";
            if (connection == null)
            {
                connection = new SqlConnection(connectionString);
                connection.Open();
            }
            else if (connection.State == System.Data.ConnectionState.Closed)
            {
                connection.Open();
            }
            else if (connection.State == System.Data.ConnectionState.Broken)
            {
                connection.Close();
                connection.Open();
            }
            return connection;
        }
    }

    /// <summary>
    /// 执行Sql
    /// </summary>
    /// <param name="sql">Sql</param>
    /// <returns>影响记录条数</returns>
    public static int ExecuteCommand(string safeSql)
    {
        SqlCommand cmd = new SqlCommand(safeSql, Connection);
        int result = cmd.ExecuteNonQuery();
        return result;
    }
    /// <summary>
    /// 执行Sql(overload)
    /// </summary>
    /// <param name="sql">Sql</param>
    /// <param name="values">SqlParameter</param>
    /// <returns>影响记录条数</returns>
    public static int ExecuteCommand(string sql, params SqlParameter[] values)
    {
        SqlCommand cmd = new SqlCommand(sql, Connection);
        cmd.Parameters.AddRange(values);
        return cmd.ExecuteNonQuery();
    }

    /// <summary>
    /// 获取DataTable
    /// </summary>
    /// <param name="safeSql">Sql</param>
    /// <returns>DataTable</returns>
    public static DataTable GetDataSet(string safeSql)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand(safeSql, Connection);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        da.Fill(ds);
        return ds.Tables[0];
    }
    #endregion

    /// <summary>
    /// 获取数据表结构
    /// </summary>
    protected void GetTableName()
    {
        DataTable dt = Connection.GetSchema("Tables", null);
        Connection.Close();
        grdTable.DataSource = dt;
        grdTable.DataBind();
    }

    /// <summary>
    /// 执行操作
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void btnExeSql_Click(object sender, EventArgs e)
    {
        string sql = txtSQL.Text.Trim().ToLower();
        int intExeNum;

        try
        {
            if (sql.Substring(0, 6).IndexOf("select") != -1)
            {
                DataTable dt = GetDataSet(sql);
                grdSQL.DataSource = dt;
                grdSQL.DataBind();
                lblExeNum.Text = "返回记录条数：<strong>" + dt.Rows.Count + "</strong>";
                grdSQL.Visible = true;
            }
            else if (sql.Substring(0, 6).IndexOf("delete") != -1 || sql.Substring(0, 6).IndexOf("update") != -1 || sql.Substring(0, 8).IndexOf("truncate") != -1)
            {
                intExeNum = ExecuteCommand(sql);
                lblExeNum.Text = "影响行数：<strong>" + intExeNum + "</strong>";
                grdSQL.Visible = false;
            }
        }
        catch (Exception ex)
        {
            ClientScript.RegisterStartupScript(typeof(string), "", "document.write(\"<h4 style=\'font-size:14px;color:#c00;padding-left:20px;\'>抱歉，系统发生了错误……错误信息：" + ex.Message.Replace("\"", "'") + "</h4>\")", true);
        }
    }

    /// <summary>
    /// 执行按钮可用
    /// </summary>
    /// <param name="sender"></param>
    /// <param name="e"></param>
    protected void txtSQL_TextChanged(object sender, EventArgs e)
    {
        btnExeSql.Enabled = true;
    }
}
