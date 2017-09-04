using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Admin_Export_SQL : System.Web.UI.Page
{
    int selectFlag = 0;
    protected void Page_Load(object sender, EventArgs e)
    {
        

    }
    protected void btn_exec_Click(object sender, EventArgs e)
    {
        try
        {
            string str_sql = tbx_sql.Text;
            GridView1.DataSource = DBFun.GetDataView(str_sql);
            GridView1.DataBind();
        }
        catch (Exception ex)
        {
            Response.Write("执行时出错！" + ex.Message);
        }
        
    }
    protected void btn_exp2excel_Click(object sender, EventArgs e)
    {
        DateTime dt = System.DateTime.Now;
        string str = dt.ToString("yyyyMMddhhmmss");
        str = str + ".xls";

        GridView1.AllowPaging = false;
        if (selectFlag == 0)
            bind();
        //if (selectFlag == 1)
        //    selectBind();
        ExcelManager.GridViewToExcel(GridView1, "application/ms-excel", str);
        // Export(gvRecord, "application/ms-excel", str);
    }
    public void bind()
    {
        selectFlag = 0;
        GridView1.DataSource = DBFun.GetDataView(tbx_sql.Text);
        GridView1.DataBind();
    }

    protected void btnExcel_Click(object sender, EventArgs e)
    {
        DateTime dt = System.DateTime.Now;
        string str = dt.ToString("yyyyMMddhhmmss");
        str = str + ".xls";

        GridView1.AllowPaging = false;
        if (selectFlag == 0)
            bind();
        //if (selectFlag == 1)
        //    selectBind();
        ExcelManager.GridViewToExcel(GridView1, "application/ms-excel", str);
        // Export(gvRecord, "application/ms-excel", str);

    }
    ///// <summary>
    ///// 将网格数据导出到Excel
    ///// </summary>
    ///// <param name="ctrl">网格名称(如GridView1)</param>
    ///// <param name="FileType">要导出的文件类型(Excel:application/ms-excel)</param>
    ///// <param name="FileName">要保存的文件名</param>
    //public static void GridViewToExcel(Control ctrl, string FileType, string FileName)
    //{
    //    HttpContext.Current.Response.Charset = "GB2312";
    //    HttpContext.Current.Response.ContentEncoding = System.Text.Encoding.UTF8;//注意编码
    //    HttpContext.Current.Response.AppendHeader("Content-Disposition",
    //        "attachment;filename=" + HttpUtility.UrlEncode(FileName, System.Text.Encoding.UTF8).ToString());
    //    HttpContext.Current.Response.ContentType = FileType;//image/JPEG;text/HTML;image/GIF;vnd.ms-excel/msword 
    //    ctrl.Page.EnableViewState = false;
    //    StringWriter tw = new StringWriter();
    //    HtmlTextWriter hw = new HtmlTextWriter(tw);
    //    ctrl.RenderControl(hw);
    //    HttpContext.Current.Response.Write(tw.ToString());
    //    HttpContext.Current.Response.End();
    //}
    /// <summary>
    /// ReLoad this VerifyRenderingInServerForm is neccessary
    /// </summary>
    /// <param name="control"></param>
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
    protected void gvRecord_PreRender(object sender, EventArgs e)
    {
        if (selectFlag == 0)
            bind();
    }
    protected void gvRecord_PageIndexChanged(object sender, EventArgs e)
    {
    }
    protected void gvRecord_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        bind();
    }
}