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

public partial class PrintPreview_zyjgg_save : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "111111111111111111";
        Page.EnableViewState = false;
        bindData();
        OutPut("attachment;filename=out.doc", "application/ms-word");
    }

    #region 数据绑定
    protected void bindData()
    {
        DataView dv;
        Label lbl_Value;
        int i_id;
        string str_sql = "select * from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        //1
        lbl_gzdw.Text = dr["gzdw_mc"].ToString();
        lbl_xm.Text = dr["yourname"].ToString();
        lbl_xrzw.Text = dr["xrzw"].ToString();
        lbl_csgz.Text = dr["csgz"].ToString();
        lbl_sbzw.Text = dr["sbzw"].ToString();
        lbl_tbrq.Text = dr["tbrq"].ToString();
        //2
        lbl2_xm.Text = dr["yourname"].ToString();
        lbl2_csny.Text = dr["birth"].ToString();
        lbl2_xb.Text = dr["xingbie"].ToString();

        lbl2_zgxl_mc.Text = dr["zgxl_mc"].ToString();
        lbl2_zgxl_bysj.Text = dr["zgxl_bysj"].ToString();
        lbl2_zgxl_zy.Text = dr["zgxl_zy"].ToString();
        lbl2_zgxl_sydw.Text = dr["zgxl_sydw"].ToString();

        lbl2_fhxl_mc.Text = dr["fhxl_mc"].ToString();
        lbl2_fhxl_bysj.Text = dr["fhxl_bysj"].ToString();
        lbl2_fhxl_zy.Text = dr["fhxl_zy"].ToString();
        lbl2_fhxl_sydw.Text = dr["fhxl_sydw"].ToString();

        lbl2_fhxw_mc.Text = dr["fhxw_mc"].ToString();
        lbl2_fhxw_qdsj.Text = dr["fhxw_qdsj"].ToString();
        lbl2_fhxw_zy.Text = dr["fhxw_zy"].ToString();
        lbl2_fhxw_sydw.Text = dr["fhxw_sydw"].ToString();

        lbl2_xrzw.Text = dr["xrzw"].ToString();
        lbl2_pdsj.Text = dr["pdsj"].ToString();
        lbl2_prsj.Text = dr["prsj"].ToString();
        lbl2_gzjj.Text = dr["gzjj"].ToString();

        //3承担任务情况一

        lbl3_11.Text = dr["cdrw_gg_gznr1"].ToString();
        if (dr["cdrw_gg_khyx1"].ToString().Length > 0) lbl3_12.Text = dr["cdrw_gg_khyx1"].ToString().Remove(0, 1);
        if (dr["cdrw_gg_khcz1"].ToString().Length > 0) lbl3_13.Text = dr["cdrw_gg_khcz1"].ToString().Remove(0, 1);
        lbl3_21.Text = dr["cdrw_gg_gznr2"].ToString();
        if (dr["cdrw_gg_khyx2"].ToString().Length > 0) lbl3_22.Text = dr["cdrw_gg_khyx2"].ToString().Remove(0, 1);
        if (dr["cdrw_gg_khcz2"].ToString().Length > 0) lbl3_23.Text = dr["cdrw_gg_khcz2"].ToString().Remove(0, 1);
        //研究生培养
        lbl3_31.Text = dr["pyyjs1"].ToString();
        lbl3_32.Text = dr["pyyjs2"].ToString();
        lbl3_33.Text = dr["pyyjs3"].ToString();
        lbl3_34.Text = dr["pyyjs4"].ToString();


        str_sql = "SELECT * from cdrwqk_gg where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 7) break;
            i_id = i + 4;
            lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["gzsj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["gznr"].ToString();
            lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["js"].ToString();
        }

        //3承担任务情况二
        str_sql = "SELECT rwmc,gznr,js,iif(gjjy = 'True','是','否') as jy from cdrwqk1_gg where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["rwmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["gznr"].ToString();
            lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["js"].ToString();
            lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["jy"].ToString();
        }

        //4.承担项目情况
        str_sql = "SELECT * from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl43_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["ktmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl43_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["ktly2"].ToString() + " " + dv.Table.Rows[i]["ktjb"].ToString();
            lbl_Value = (Label)this.FindControl("lbl43_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["ktbh"].ToString();
            lbl_Value = (Label)this.FindControl("lbl43_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["qzsj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl43_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["jfs"].ToString();
            lbl_Value = (Label)this.FindControl("lbl43_" + i_id.ToString() + "6");
            lbl_Value.Text = dv.Table.Rows[i]["drjs"].ToString();
        }


        //三、任现职以来撰写的主要学术论著和报告情况（限10篇）
        str_sql = "SELECT * from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["lzmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["zs"].ToString();
            lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["slqk"].ToString();
            lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["kwmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
            lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "6");
            lbl_Value.Text = dv.Table.Rows[i]["fbsj"].ToString();
        }



        //四、任现职以来取得的业绩成果

        //（一）获奖情况（限10项）
        str_sql = "SELECT * from hjqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["hjcgmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["jljb"].ToString();
            lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["hjdj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
            lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["hjsj"].ToString();
        }

        //（二）获得国家一级学会优秀论文奖情况（限3项）
        str_sql = "SELECT * from yxlw where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl7_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["lwmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl7_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["hjmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl7_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["zzpm"].ToString();
        }


        //（三）论文（第一作者或通讯作者）被引用情况
        str_sql = "SELECT * from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl8_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["lwmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl8_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["zz"].ToString();
            lbl_Value = (Label)this.FindControl("lbl8_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["fbsj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl8_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["kwmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl8_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["tycs"].ToString();
        }


        //（四）获国家专利情况（限3项）
        str_sql = "SELECT * from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl9_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["zlmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl9_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["zlh"].ToString();
            lbl_Value = (Label)this.FindControl("lbl9_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["sj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl9_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["zllx"].ToString();
            lbl_Value = (Label)this.FindControl("lbl9_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
        }

        //3.翻译论文、论著内容：
        str_sql = "SELECT * from fylw where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        decimal dec_total = 0;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl10_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["fylw"].ToString();
            lbl_Value = (Label)this.FindControl("lbl10_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["ywz"].ToString();
            lbl_Value = (Label)this.FindControl("lbl10_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["cbdw"].ToString();
            lbl_Value = (Label)this.FindControl("lbl10_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["cbsj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl10_" + i_id.ToString() + "5");
            lbl_Value.Text = dv.Table.Rows[i]["zs"].ToString();
            dec_total += Convert.ToDecimal(lbl_Value.Text);
        }
        lbl10_total.Text = dec_total.ToString();

        //五主要工作业绩
        //1.监测（观测）和预报工作评比情况（评比结果为第一名，限5项）
        str_sql = "SELECT * from qgjcybpb where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl51_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
            lbl_Value = (Label)this.FindControl("lbl51_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["grpm"].ToString();
            lbl_Value = (Label)this.FindControl("lbl51_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["zmwjwh"].ToString();
        }

        //2荣获中国地震局地震监测预报、地震现场工作先进个人情况（限5项）
        str_sql = "SELECT * from xjgrch where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl52_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["yjmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl52_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
            lbl_Value = (Label)this.FindControl("lbl52_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["zmwjwh"].ToString();
        }

        //3. 作为主要技术负责人在短临预报方面的业绩（提出的可以证明的短临预报意见取得显著减灾实效，或获得中国地震局短临预报实现奖励，限5项）
        str_sql = "SELECT * from dlyb where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl53_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["dzsj"].ToString();
            lbl_Value = (Label)this.FindControl("lbl53_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["zynr"].ToString();
            lbl_Value = (Label)this.FindControl("lbl53_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["zj"].ToString();
        }

        //4. 作为主持开发的仪器、软件情况（限3项）
        str_sql = "SELECT * from yqrj where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl54_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["yqrjmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl54_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["jddw"].ToString();
            lbl_Value = (Label)this.FindControl("lbl54_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
            lbl_Value = (Label)this.FindControl("lbl54_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["yydw"].ToString();
        }


        //5.作为技术负责人完成的重大工程地震安全性评价情况（经国家地震安全性评定委员会评审通过，限3项）

        str_sql = "SELECT * from aqpj where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            lbl_Value = (Label)this.FindControl("lbl55_" + i_id.ToString() + "1");
            lbl_Value.Text = dv.Table.Rows[i]["xmmc"].ToString();
            lbl_Value = (Label)this.FindControl("lbl55_" + i_id.ToString() + "2");
            lbl_Value.Text = dv.Table.Rows[i]["yydw"].ToString();
            lbl_Value = (Label)this.FindControl("lbl55_" + i_id.ToString() + "3");
            lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
            lbl_Value = (Label)this.FindControl("lbl55_" + i_id.ToString() + "4");
            lbl_Value.Text = dv.Table.Rows[i]["wh"].ToString();
        }


        //代表性成果
        lbl9_bt1.Text = dr["dbxcg_title1"].ToString();
        lbl9_nr1.Text = dr["dbxcg_content1"].ToString();
        lbl9_fj1.Text = dr["dbxcg_fj1"].ToString();
        lbl9_bt2.Text = dr["dbxcg_title2"].ToString();
        lbl9_nr2.Text = dr["dbxcg_content2"].ToString();
        lbl9_fj2.Text = dr["dbxcg_fj2"].ToString();


        //外语水平
        lbl10_kssj.Text = dr["kssj"].ToString();
        lbl10_yz.Text = dr["yz"].ToString();
        lbl10_jb.Text = dr["jb"].ToString();
        lbl10_zy.Text = dr["zy"].ToString();
        lbl10_fs.Text = dr["fs"].ToString();
        lbl10_msly.Text = dr["wymsly"].ToString();


        //考核年度
        str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
        int i_year = DateTime.Now.Year;
        try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
        catch { }
        i_year--;
        lbl_ndkh3.Text = i_year.ToString() + "年";
        i_year--;
        lbl_ndkh2.Text = i_year.ToString() + "年";
        i_year--;
        lbl_ndkh1.Text = i_year.ToString() + "年";
        lbl10_khdj1.Text = dr["ndkh1"].ToString();
        lbl10_khdj2.Text = dr["ndkh2"].ToString();
        lbl10_khdj3.Text = dr["ndkh3"].ToString();
        lbl10_xcg.Text = dr["chengguo"].ToString();

        //计算机水平
        lbl11_km1.Text = dr["jsj_km1"].ToString();
        lbl11_km2.Text = dr["jsj_km2"].ToString();
        lbl11_km3.Text = dr["jsj_km3"].ToString();
        lbl11_km4.Text = dr["jsj_km4"].ToString();
        if (dr["jsj_msly"].ToString() == "1") lbl11_msly1.Text = "■";
        else if (dr["jsj_msly"].ToString() == "2")
        {
            lbl11_msly2.Text = "■";
            lbl11_dj.Text = dr["jsj_msly_dj"].ToString();
        }
        else if (dr["jsj_msly"].ToString() == "3") lbl11_msly3.Text = "■";

        //破格申报理由
        if (dr["pglb"].ToString() == "1") lbl11_pglb1.Text = "■";
        else if (dr["pglb"].ToString() == "2") lbl11_pglb2.Text = "■";
        string str_pgtj = dr["pgtj"].ToString();
        string str_jtpgly = dr["jtpgly"].ToString();
        Label lbl_fnd;
        for (int i = 0; i < 3; i++)
        {
            if (str_pgtj.IndexOf(Convert.ToString(i + 1)) > 0)
            {
                lbl_fnd = (Label)this.FindControl("lbl11_pgtj" + Convert.ToString(i + 1));
                lbl_fnd.Text = "■";
            }
        }
        lbl11_pgly5.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
        if (str_jtpgly.Length > 0)
        {
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            lbl11_pgly4.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            lbl11_pgly3.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            lbl11_pgly2.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            lbl11_pgly1.Text = str_jtpgly;
        }
    }
    #endregion


    private void OutPut(string fileType, string strType)
    {
        Response.ContentType = "application/msword";
        Response.Charset = "utf-8";
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");//解决中文乱码之关   
        Response.AppendHeader("Content-Type", "Application/vnd.ms-word;   charset=gb2312");
        Response.AddHeader("Content-disposition", "attachment;   filename=" + Session["sfzh"].ToString() + ".doc");


        //Response.Clear();
        //Response.Buffer = true;
        //Response.Charset = "GB2312";
        //Response.AppendHeader("Content-Disposition", fileType);
        //Response.ContentType = strType;
        //this.EnableViewState = false;
        //System.IO.StringWriter swOut = new System.IO.StringWriter();
        //HtmlTextWriter hTw = new HtmlTextWriter(swOut);
        //myGW.RenderControl(hTw);
        //Response.Write(swOut.ToString());
        //Response.End();
    }
    protected void Button_Click(object sender, CommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "save":
                switch (listType.SelectedValue)
                {
                    case "excel":
                        OutPut("attachment;filename=out.xls", "application/ms-excel");
                        break;
                    case "word":
                        OutPut("attachment;filename=out.doc", "application/ms-word");
                        break;
                }
                break;
            case "open":
                switch (listType.SelectedValue)
                {
                    case "excel":
                        OutPut("online;filename=out.xls", "application/ms-excel");
                        break;
                    case "word":
                        OutPut("online;filename=out.doc", "application/ms-word");
                        break;
                }
                break;
        }
    }

}
