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

public partial class Admin_admin_lw_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }

        string str_sql = "SELECT   tjdw_mc,  " +
                                 " yourname, " +
                                 " ejxk_mc, " +
                                 " lw_ctitle, " +
                                 " zdjs_xm, " +
                                 " cplb ,  " + 
                                 " '' as ry_group , score  " +
                                 " FROM yxxwlw_cpry , " +
                                 " ( select round(avg(fs_pjys_sum),0) as score ,cpry_sfzh from zjry group by cpry_sfzh ) as a " +
                                  " where  a.cpry_sfzh=sfzh  and edit_flag = false and tj_flag = '推荐' and sh_flag = '通过' order by id asc ";

        if (Request.QueryString["type"] == "export")
        {
            DataTable dt = DBFun.dataTable(str_sql);
            CreateExcel(dt, "1", "1.xls");
            return;
        }
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
    }

    #region 导出到Excel函数
    public void CreateExcel(DataTable dt, string typeid, string FileName)
    {
        HttpResponse resp;
        resp = Page.Response;
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
}
