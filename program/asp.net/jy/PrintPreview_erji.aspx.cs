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

public partial class PrintPreview_erji : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "000000000000001";
        //bindData();
        string sourcefile = Server.MapPath("templete/erji.doc");
        Document doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_erji(doc, Session["sfzh"].ToString());

        doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/default.aspx?sfzh=" + Session["sfzh"].ToString());
    }

    #region 数据绑定
    protected void bindData()
    {
        DataView dv;
        Label lbl_Value;
        int i_id;
        string str_sql = "SELECT yourname,gwxl,xkfx_qt ,name as dw, xingbie, format(birth,'yyyy年MM月') as csny,"+
            " zgxl,zgxw,xrgw, format(zgsj,'yyyy年MM月') as zg, format(prsj,'yyyy年MM月') as pr,qtwt"+
            " FROM ej_cpry,t_dict"+
            " WHERE flm = 2 and dw = url and sfzh='" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        //1
        lbl_gwxl.Text = dr["gwxl"].ToString();
        lbl_xm.Text = dr["yourname"].ToString();
        lbl_xkfx.Text = dr["xkfx_qt"].ToString();
        lbl_dw.Text = dr["dw"].ToString();
        //2
        lbl2_xm.Text = dr["yourname"].ToString();
        lbl2_csny.Text = dr["csny"].ToString();
        lbl2_xb.Text = dr["xingbie"].ToString();

        lbl2_zgxl.Text = dr["zgxl"].ToString();
        lbl2_zgxw.Text = dr["zgxw"].ToString();
        lbl2_xrgw.Text = dr["xrgw"].ToString();
        lbl2_zgsj.Text = dr["zg"].ToString();
        lbl2_prsj.Text = dr["pr"].ToString();
        lbl2_xkfx.Text = dr["xkfx_qt"].ToString();
        lbl_qtwt.Text = dr["qtwt"].ToString();

        //3承担项目情况

        str_sql = "SELECT * from ej_cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["xmmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["xmlb"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["xmjf"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["brjs"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["qzsj"].ToString();
        }

        //4.代表性论著情况
        str_sql = "SELECT tm,format(fbsj,'yyyy年MM月') as fb,kwmc,brpm from ej_dbxlz where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["tm"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["fb"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["kwmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["brpm"].ToString();
        }


        //专利与成果转化情况
        str_sql = "SELECT * from ej_zlycgzh where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl_zlcg_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["zlmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_zlcg_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["zhjg"].ToString();
        }



        //获奖情况
        str_sql = "SELECT * from ej_hjqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["jlzl"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["hjcgmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["jldj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
        }

        //国内外学术任职情况
        str_sql = "SELECT * from ej_xsrzqk where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["rzzzmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["drzw"].ToString();
            lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["rzqzsj"].ToString();
        }

    }
    #endregion
    protected void btn_SaveToWord_Click(object sender, EventArgs e)
    {
        string sourcefile = Server.MapPath("templete/erji.doc");
        Document doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_erji(doc, Session["sfzh"].ToString());

        doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/default.aspx?sfzh=" + Session["sfzh"].ToString());
    }
}
