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
using Aspose.Words;

public partial class Admin_admin_ts_Result : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (Request.QueryString["type"] == "export")
        {
            //string str_sql = " select gzdw_mc,yourname,sftj,tj_order from ts_cpry,t_dict,"+
            //                 " (select cpry_sfzh,sum(iif(fs_sftj='False',0,1)) as sftj, sum(iif(isnull(iif(fs_pjys1='',0,fs_pjys1)),0,iif(fs_pjys1='',0,fs_pjys1))) as tj_order from zjry " +
            //                 " where flag = 3 group by cpry_sfzh ) " +
            //                 " where cpry_sfzh = sfzh and gzdw=url and edit_flag = false and ts_cpry.tj_flag = '推荐' and sh_flag = '通过' and t_dict.ts_tj_flag=true  order by url,id asc ";
            //DataTable dt = DBFun.dataTable(str_sql);
            //CreateExcel(dt, "1", "1.xls");
            //return;
            string sourcefile;
            Document doc;

            sourcefile = Server.MapPath("../templete/tt_zjtpb.doc");
            doc = new Document(sourcefile); //载入模板 

            //3获奖情况
            string str_sql = " select gzdw_mc,yourname,sftj,tj_order from ts_cpry,t_dict," +
                             " (select cpry_sfzh,sum(iif(fs_sftj='False',0,1)) as sftj, sum(iif(isnull(iif(fs_pjys1='',0,fs_pjys1)),0,iif(fs_pjys1='',0,fs_pjys1))) as tj_order from zjry " +
                             " where flag = 3 group by cpry_sfzh ) " +
                             " where cpry_sfzh = sfzh and gzdw=url and edit_flag = false and ts_cpry.tj_flag = '推荐' and sh_flag = '通过' and t_dict.ts_tj_flag=true  order by url,id asc ";
            DataView dv = DBFun.GetDataView(str_sql);
            int i_id;
            string str_1 = "";
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 32) break;
                i_id = i + 1;
                str_1 = "l_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["gzdw_mc"].ToString();
                str_1 = "l_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yourname"].ToString();
            }


            doc.Save(Server.MapPath("../exporttopdf/") + "tt_zjtpb.doc", SaveFormat.Doc); //保存为doc，并打开
            Response.Redirect("../exporttopdf/tt_zjtpb.doc");
            return;
        }
        bindData();
    }

    protected void bindData()
    {
        string str_sql = " select gzdw_mc,yourname,sftj,tj_order from ts_cpry,t_dict," +
                             " (select cpry_sfzh,sum(iif(fs_sftj='False',0,1)) as sftj, sum(iif(isnull(iif(fs_pjys1='',0,fs_pjys1)),0,iif(fs_pjys1='',0,fs_pjys1))) as tj_order from zjry " +
                             " where flag = 3 group by cpry_sfzh ) " +
                             " where cpry_sfzh = sfzh and gzdw=url and edit_flag = false and ts_cpry.tj_flag = '推荐' and sh_flag = '通过' and t_dict.ts_tj_flag=true  order by url,id asc ";


        //"where cpry_sfzh = sfzh and flag = 2 and zj_sfzh = '" +
        //Session["admin_id"].ToString() + "' and edit_flag = false and tj_flag = '推荐' and sh_flag = '通过' order by dw,id";
        DataTable dt = DBFun.dataTable(str_sql);
        Label lbl_Value;
        int i_id;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (i == 32) break;
            i_id = i + 1;

            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_1");
            lbl_Value.Text = dt.Rows[i]["gzdw_mc"].ToString();


            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_2");
            lbl_Value.Text = dt.Rows[i]["yourname"].ToString();

            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_3");
            lbl_Value.Text = dt.Rows[i]["sftj"].ToString();

            
            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_4");
            lbl_Value.Text = dt.Rows[i]["tj_order"].ToString();
            
        }
    }

    //导出到Excel函数

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
            colHeaders += "工作单位" + "\t";
            colHeaders += "姓  名" + "\t";
            colHeaders += "投票栏" + "\t";
            colHeaders += "推荐顺序" + "\t\n";
            for (i = 0; i < dt.Rows.Count; i++)
            {
                colHeaders += Convert.ToString(i + 1) + "\t";
                for (int j = 0; j < 4; j++)
                {
                    colHeaders += dt.Rows[i][j].ToString() + "\t";
                    if (j == 3)
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
