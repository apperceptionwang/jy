using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Aspose.Words;

/// <summary>
/// PrivateFun 的摘要说明
/// </summary>
public class PrivateFun
{
    public PrivateFun()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
    }


    #region 计算专家给申报人员的分数
    public static string Get_Score_zj(DataView dv)
    {
        decimal[] list = new decimal[dv.Table.Rows.Count];
        string str_score;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = Convert.ToDecimal(dv.Table.Rows[i]["fs_sum"]);
        }
        CommFun.Sort(ref list);
        try
        {
            list[list.Length - 1] = 0;
            list[0] = 0;
        }
        catch { }

        decimal i_sum = 0;
        for (int i = 0; i < list.Length; i++)
        {
            i_sum += list[i];
        }

        str_score = Convert.ToString(decimal.Round(Convert.ToDecimal((i_sum / (list.Length - 2) * 100 / 54)), 1));

        if (str_score.Length > 4) str_score = str_score.Substring(0, 4);
        return str_score;
    }
    #endregion

    #region 设置word数据 研究员
    public static void SetInfoIntoWrod_yjy(Document doc, string sfzh)
    {
        try
        {
            DataView dv;
            int i_id;
            string str_sql = "select * from cpry where sfzh = '" + sfzh + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            //1
            doc.Range.Bookmarks["gzdw"].Text = dr["gzdw_mc"].ToString();
            doc.Range.Bookmarks["xm"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["xrzw"].Text = dr["xrzw"].ToString();
            doc.Range.Bookmarks["csgz"].Text = dr["csgz"].ToString();
            doc.Range.Bookmarks["sbzw"].Text = dr["sbzw"].ToString();
            doc.Range.Bookmarks["tbrq"].Text = dr["tbrq"].ToString();

            //2

            doc.Range.Bookmarks["xm_2"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["csny"].Text = dr["birth"].ToString();
            doc.Range.Bookmarks["xb"].Text = dr["xingbie"].ToString();

            doc.Range.Bookmarks["zgxl_mc"].Text = dr["zgxl_mc"].ToString();
            doc.Range.Bookmarks["zgxl_bysj"].Text = dr["zgxl_bysj"].ToString();
            doc.Range.Bookmarks["zgxl_zy"].Text = dr["zgxl_zy"].ToString();
            doc.Range.Bookmarks["zgxl_sydw"].Text = dr["zgxl_sydw"].ToString();

            doc.Range.Bookmarks["fhxl_mc"].Text = dr["fhxl_mc"].ToString();
            doc.Range.Bookmarks["fhxl_bysj"].Text = dr["fhxl_bysj"].ToString();
            doc.Range.Bookmarks["fhxl_zy"].Text = dr["fhxl_zy"].ToString();
            doc.Range.Bookmarks["fhxl_sydw"].Text = dr["fhxl_sydw"].ToString();

            doc.Range.Bookmarks["fhxw_mc"].Text = dr["fhxw_mc"].ToString();
            doc.Range.Bookmarks["fhxw_qdsj"].Text = dr["fhxw_qdsj"].ToString();
            doc.Range.Bookmarks["fhxw_zy"].Text = dr["fhxw_zy"].ToString();
            doc.Range.Bookmarks["fhxw_sydw"].Text = dr["fhxw_sydw"].ToString();

            doc.Range.Bookmarks["xrzw_2"].Text = dr["xrzw"].ToString();
            doc.Range.Bookmarks["pdsj"].Text = dr["pdsj"].ToString();
            doc.Range.Bookmarks["prsj"].Text = dr["prsj"].ToString();

            doc.Range.Bookmarks["gzjj"].Text = dr["gzjj"].ToString().Replace("&nbsp;", "");

            //3承担任务情况

            doc.Range.Bookmarks["cdrw_gznr1"].Text = dr["cdrw_gznr1"].ToString();
            doc.Range.Bookmarks["cdrw_gznr2"].Text = dr["cdrw_gznr2"].ToString();
            doc.Range.Bookmarks["cdrw_gznr3"].Text = dr["cdrw_gznr3"].ToString();
            //研究生培养
            doc.Range.Bookmarks["lbl3_41"].Text = dr["pyyjs1"].ToString();
            doc.Range.Bookmarks["lbl3_42"].Text = dr["pyyjs2"].ToString();
            doc.Range.Bookmarks["lbl3_43"].Text = dr["pyyjs3"].ToString();
            doc.Range.Bookmarks["lbl3_44"].Text = dr["pyyjs4"].ToString();


            str_sql = "SELECT * from cdrwqk where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);
            string str_1;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 6) break;
                i_id = i + 5;
                str_1 = "lbl3_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["rwmc"].ToString();
                str_1 = "lbl3_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["gznr"].ToString();
            }

            //4.承担项目情况
            str_sql = "SELECT * from cdxmqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl4_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ktmc"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ktly2"].ToString() + " " + dv.Table.Rows[i]["ktjb"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ktbh"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["qzsj"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jfs"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "6";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["drjs"].ToString();
            }

            //str_sql = "SELECT * from cdrwqk where sfzh = '" + sfzh + "' ;";
            //Session["cdrwqk"] = DBFun.GetDataView(str_sql);

            //三、任现职以来撰写的主要学术论著和报告情况（限10篇）
            str_sql = "SELECT * from lzbgqk where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl5_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lzmc"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zs"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["slqk"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["kwmc"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "6";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fbsj"].ToString();
            }



            //四、任现职以来取得的业绩成果

            //（一）获奖情况（限10项）
            str_sql = "SELECT * from hjqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl6_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjcgmc"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jljb"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjdj"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjsj"].ToString();
            }

            //（二）获得国家一级学会优秀论文奖情况（限3项）
            str_sql = "SELECT * from yxlw where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "lbl7_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lwmc"].ToString();
                str_1 = "lbl7_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjmc"].ToString();
                str_1 = "lbl7_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zzpm"].ToString();
            }


            //（三）论文（第一作者或通讯作者）被引用情况
            str_sql = "SELECT * from lwbyyqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl8_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lwmc"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zz"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fbsj"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["kwmc"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["tycs"].ToString();
            }


            //（四）获国家专利情况（限3项）
            str_sql = "SELECT * from hgjzlqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "lbl9_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zlmc"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zlh"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["sj"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zllx"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
            }

            //3.翻译论文、论著内容：
            str_sql = "SELECT * from fylw where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);
            decimal dec_total = 0;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "lbl10_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fylw"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ywz"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["cbdw"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["cbsj"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zs"].ToString();
                dec_total += Convert.ToDecimal(dv.Table.Rows[i]["zs"].ToString());
            }
            doc.Range.Bookmarks["lbl10_total"].Text = dec_total.ToString();

            //代表性成果
            doc.Range.Bookmarks["lbl9_bt1"].Text = dr["dbxcg_title1"].ToString();
            doc.Range.Bookmarks["lbl9_nr1"].Text = dr["dbxcg_content1"].ToString().Replace("&nbsp;", "");
            doc.Range.Bookmarks["lbl9_fj1"].Text = dr["dbxcg_fj1"].ToString();
            doc.Range.Bookmarks["lbl9_bt2"].Text = dr["dbxcg_title2"].ToString();
            doc.Range.Bookmarks["lbl9_nr2"].Text = dr["dbxcg_content2"].ToString().Replace("&nbsp;", "");
            doc.Range.Bookmarks["lbl9_fj2"].Text = dr["dbxcg_fj2"].ToString();

            //外语水平
            doc.Range.Bookmarks["lbl10_kssj"].Text = dr["kssj"].ToString();
            doc.Range.Bookmarks["lbl10_yz"].Text = dr["yz"].ToString();
            doc.Range.Bookmarks["lbl10_jb"].Text = dr["jb"].ToString();
            doc.Range.Bookmarks["lbl10_zy"].Text = dr["zy"].ToString();
            doc.Range.Bookmarks["lbl10_fs"].Text = dr["fs"].ToString();
            doc.Range.Bookmarks["lbl10_msly"].Text = dr["wymsly"].ToString().Replace("&nbsp;", "");


            //考核年度
            str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
            int i_year = DateTime.Now.Year;
            try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
            catch { }
            i_year--;
            doc.Range.Bookmarks["lbl_ndkh3"].Text = i_year.ToString() + "年";
            i_year--;
            doc.Range.Bookmarks["lbl_ndkh2"].Text = i_year.ToString() + "年";
            i_year--;
            doc.Range.Bookmarks["lbl_ndkh1"].Text = i_year.ToString() + "年";
            doc.Range.Bookmarks["lbl10_khdj1"].Text = dr["ndkh1"].ToString();
            doc.Range.Bookmarks["lbl10_khdj2"].Text = dr["ndkh2"].ToString();
            doc.Range.Bookmarks["lbl10_khdj3"].Text = dr["ndkh3"].ToString();
            doc.Range.Bookmarks["lbl10_xcg"].Text = dr["chengguo"].ToString().Replace("&nbsp;", ""); ;

            //计算机水平
            doc.Range.Bookmarks["lbl11_km1"].Text = dr["jsj_km1"].ToString();
            doc.Range.Bookmarks["lbl11_km2"].Text = dr["jsj_km2"].ToString();
            doc.Range.Bookmarks["lbl11_km3"].Text = dr["jsj_km3"].ToString();
            doc.Range.Bookmarks["lbl11_km4"].Text = dr["jsj_km4"].ToString();
            if (dr["jsj_msly"].ToString() == "1")
                doc.Range.Bookmarks["lbl11_msly1"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_msly1"].Text = "□";
            if (dr["jsj_msly"].ToString() == "2")
            {
                doc.Range.Bookmarks["lbl11_msly2"].Text = "■";
                doc.Range.Bookmarks["lbl11_dj"].Text = dr["jsj_msly_dj"].ToString();
            }
            else
            {
                doc.Range.Bookmarks["lbl11_msly2"].Text = "□";
            }
            if (dr["jsj_msly"].ToString() == "3")
                doc.Range.Bookmarks["lbl11_msly3"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_msly3"].Text = "□";

            //破格申报理由
            if (dr["pglb"].ToString() == "1")
                doc.Range.Bookmarks["lbl11_pglb1"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_pglb1"].Text = "□";

            if (dr["pglb"].ToString() == "2")
                doc.Range.Bookmarks["lbl11_pglb2"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_pglb2"].Text = "□";
            string str_pgtj = dr["pgtj"].ToString();
            string str_jtpgly = dr["jtpgly"].ToString();
            for (int i = 0; i < 3; i++)
            {
                if (str_pgtj.IndexOf(Convert.ToString(i + 1)) > 0)
                {
                    doc.Range.Bookmarks["lbl11_pgtj" + Convert.ToString(i + 1)].Text = "■";
                }
                else
                {
                    doc.Range.Bookmarks["lbl11_pgtj" + Convert.ToString(i + 1)].Text = "□";
                }
            }
            if (str_jtpgly != "" && str_jtpgly != null)
            {
                doc.Range.Bookmarks["lbl11_pgly5"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly4"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly3"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly2"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly1"].Text = str_jtpgly;
            }

        }
        catch
        { }
    }
    #endregion

    #region 设置word数据 正研级高工
    public static void SetInfoIntoWrod_zyjgg(Document doc, string sfzh)
    {
        try
        {
            DataView dv;
            int i_id;
            string str_sql = "select * from cpry where sfzh = '" + sfzh + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            //1
            doc.Range.Bookmarks["gzdw"].Text = dr["gzdw_mc"].ToString();
            doc.Range.Bookmarks["xm"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["xrzw"].Text = dr["xrzw"].ToString();
            doc.Range.Bookmarks["csgz"].Text = dr["csgz"].ToString();
            doc.Range.Bookmarks["sbzw"].Text = dr["sbzw"].ToString();
            doc.Range.Bookmarks["tbrq"].Text = dr["tbrq"].ToString();

            //2

            doc.Range.Bookmarks["xm_2"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["csny"].Text = dr["birth"].ToString();
            doc.Range.Bookmarks["xb"].Text = dr["xingbie"].ToString();

            doc.Range.Bookmarks["zgxl_mc"].Text = dr["zgxl_mc"].ToString();
            doc.Range.Bookmarks["zgxl_bysj"].Text = dr["zgxl_bysj"].ToString();
            doc.Range.Bookmarks["zgxl_zy"].Text = dr["zgxl_zy"].ToString();
            doc.Range.Bookmarks["zgxl_sydw"].Text = dr["zgxl_sydw"].ToString();

            doc.Range.Bookmarks["fhxl_mc"].Text = dr["fhxl_mc"].ToString();
            doc.Range.Bookmarks["fhxl_bysj"].Text = dr["fhxl_bysj"].ToString();
            doc.Range.Bookmarks["fhxl_zy"].Text = dr["fhxl_zy"].ToString();
            doc.Range.Bookmarks["fhxl_sydw"].Text = dr["fhxl_sydw"].ToString();

            doc.Range.Bookmarks["fhxw_mc"].Text = dr["fhxw_mc"].ToString();
            doc.Range.Bookmarks["fhxw_qdsj"].Text = dr["fhxw_qdsj"].ToString();
            doc.Range.Bookmarks["fhxw_zy"].Text = dr["fhxw_zy"].ToString();
            doc.Range.Bookmarks["fhxw_sydw"].Text = dr["fhxw_sydw"].ToString();

            doc.Range.Bookmarks["xrzw_2"].Text = dr["xrzw"].ToString();
            doc.Range.Bookmarks["pdsj"].Text = dr["pdsj"].ToString();
            doc.Range.Bookmarks["prsj"].Text = dr["prsj"].ToString();
            doc.Range.Bookmarks["gzjj"].Text = dr["gzjj"].ToString().Replace("&nbsp;", "");

            //3承担任务情况

            doc.Range.Bookmarks["lbl3_11"].Text = dr["cdrw_gg_gznr1"].ToString();
            //如果考核优秀年度大于6年，则只显示六年
            string str_kh = dr["cdrw_gg_khyx1"].ToString();
            int i_length = 25;
            if (str_kh.Length > 0)
            {
                str_kh = str_kh.Replace(",", "");
                if (str_kh.Length > i_length)
                {
                    str_kh = str_kh.Substring(0, i_length) + "…";
                }
                doc.Range.Bookmarks["lbl3_12"].Text = str_kh;
            }
            str_kh = dr["cdrw_gg_khcz1"].ToString();
            if (str_kh.Length > 0)
            {
                str_kh = str_kh.Replace(",", "");
                if (str_kh.Length > i_length)
                {
                    str_kh = str_kh.Substring(0, i_length) + "…";
                }
                doc.Range.Bookmarks["lbl3_13"].Text = str_kh;
            }
            str_kh = dr["cdrw_gg_khyx2"].ToString();
            if (str_kh.Length > 0)
            {
                str_kh = str_kh.Replace(",", "");
                if (str_kh.Length > i_length)
                {
                    str_kh = str_kh.Substring(0, i_length) + "…";
                }
                doc.Range.Bookmarks["lbl3_22"].Text = str_kh;
            }
            str_kh = dr["cdrw_gg_khcz2"].ToString();
            if (str_kh.Length > 0)
            {
                str_kh = str_kh.Replace(",", "");
                if (str_kh.Length > i_length)
                {
                    str_kh = str_kh.Substring(0, i_length) + "…";
                }
                doc.Range.Bookmarks["lbl3_23"].Text = str_kh;
            }
            doc.Range.Bookmarks["lbl3_21"].Text = dr["cdrw_gg_gznr2"].ToString();


            //研究生培养
            doc.Range.Bookmarks["lbl3_31"].Text = dr["pyyjs1"].ToString();
            doc.Range.Bookmarks["lbl3_32"].Text = dr["pyyjs2"].ToString();
            doc.Range.Bookmarks["lbl3_33"].Text = dr["pyyjs3"].ToString();
            doc.Range.Bookmarks["lbl3_34"].Text = dr["pyyjs4"].ToString();


            str_sql = "SELECT * from cdrwqk_gg where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);
            string str_1;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 7) break;
                i_id = i + 4;
                str_1 = "lbl3_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["gzsj"].ToString();
                str_1 = "lbl3_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["gznr"].ToString();
                str_1 = "lbl3_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["js"].ToString();
            }

            //3承担任务情况二
            str_sql = "SELECT rwmc,gznr,js,iif(gjjy = 'True','是','否') as jy from cdrwqk1_gg where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl41_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["rwmc"].ToString();
                str_1 = "lbl41_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["gznr"].ToString();
                str_1 = "lbl41_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["js"].ToString();
                str_1 = "lbl41_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jy"].ToString();
            }

            //4.承担项目情况
            str_sql = "SELECT * from cdxmqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl4_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ktmc"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ktly2"].ToString() + " " + dv.Table.Rows[i]["ktjb"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ktbh"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["qzsj"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jfs"].ToString();
                str_1 = "lbl4_" + i_id.ToString() + "6";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["drjs"].ToString();
            }


            //str_sql = "SELECT * from cdrwqk where sfzh = '" + sfzh + "' ;";
            //Session["cdrwqk"] = DBFun.GetDataView(str_sql);

            //三、任现职以来撰写的主要学术论著和报告情况（限10篇）
            str_sql = "SELECT * from lzbgqk where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl5_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lzmc"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zs"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["slqk"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["kwmc"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
                str_1 = "lbl5_" + i_id.ToString() + "6";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fbsj"].ToString();
            }



            //四、任现职以来取得的业绩成果

            //（一）获奖情况（限10项）
            str_sql = "SELECT * from hjqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl6_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjcgmc"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jljb"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjdj"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
                str_1 = "lbl6_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjsj"].ToString();
            }

            //（二）获得国家一级学会优秀论文奖情况（限3项）
            str_sql = "SELECT * from yxlw where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "lbl7_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lwmc"].ToString();
                str_1 = "lbl7_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjmc"].ToString();
                str_1 = "lbl7_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zzpm"].ToString();
            }


            //（三）论文（第一作者或通讯作者）被引用情况
            str_sql = "SELECT * from lwbyyqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 10) break;
                i_id = i + 1;
                str_1 = "lbl8_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lwmc"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zz"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fbsj"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["kwmc"].ToString();
                str_1 = "lbl8_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["tycs"].ToString();
            }


            //（四）获国家专利情况（限3项）
            str_sql = "SELECT * from hgjzlqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "lbl9_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zlmc"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zlh"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["sj"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zllx"].ToString();
                str_1 = "lbl9_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
            }



            //3.翻译论文、论著内容：
            str_sql = "SELECT * from fylw where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);
            decimal dec_total = 0;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "lbl10_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fylw"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["ywz"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["cbdw"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["cbsj"].ToString();
                str_1 = "lbl10_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zs"].ToString();
                dec_total += Convert.ToDecimal(dv.Table.Rows[i]["zs"].ToString());
            }
            doc.Range.Bookmarks["lbl10_total"].Text = dec_total.ToString();


            //五主要工作业绩
            //1.监测（观测）和预报工作评比情况（评比结果为第一名，限5项）
            str_sql = "SELECT * from qgjcybpb where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "lbl51_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["nd"].ToString();
                str_1 = "lbl51_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["grpm"].ToString();
                str_1 = "lbl51_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zmwjwh"].ToString();
            }
            //2荣获中国地震局地震监测预报、地震现场工作先进个人情况（限5项）
            str_sql = "SELECT * from xjgrch where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "lbl52_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yjmc"].ToString();
                str_1 = "lbl52_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["nd"].ToString();
                str_1 = "lbl52_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zmwjwh"].ToString();
            }

            //3. 作为主要技术负责人在短临预报方面的业绩（提出的可以证明的短临预报意见取得显著减灾实效，或获得中国地震局短临预报实现奖励，限5项）
            str_sql = "SELECT * from dlyb where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "lbl53_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["dzsj"].ToString();
                str_1 = "lbl53_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zynr"].ToString();
                str_1 = "lbl53_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zj"].ToString();
            }

            //4. 作为主持开发的仪器、软件情况（限3项）
            str_sql = "SELECT * from yqrj where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "lbl54_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yqrjmc"].ToString();
                str_1 = "lbl54_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jddw"].ToString();
                str_1 = "lbl54_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["nd"].ToString();
                str_1 = "lbl54_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yydw"].ToString();
            }


            //5.作为技术负责人完成的重大工程地震安全性评价情况（经国家地震安全性评定委员会评审通过，限3项）

            str_sql = "SELECT * from aqpj where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "lbl55_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmmc"].ToString();
                str_1 = "lbl55_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yydw"].ToString();
                str_1 = "lbl55_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["nd"].ToString();
                str_1 = "lbl55_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["wh"].ToString();
            }


            //代表性成果
            doc.Range.Bookmarks["lbl9_bt1"].Text = dr["dbxcg_title1"].ToString();
            doc.Range.Bookmarks["lbl9_nr1"].Text = dr["dbxcg_content1"].ToString().Replace("&nbsp;", "");
            doc.Range.Bookmarks["lbl9_fj1"].Text = dr["dbxcg_fj1"].ToString();
            doc.Range.Bookmarks["lbl9_bt2"].Text = dr["dbxcg_title2"].ToString();
            doc.Range.Bookmarks["lbl9_nr2"].Text = dr["dbxcg_content2"].ToString().Replace("&nbsp;", "");
            doc.Range.Bookmarks["lbl9_fj2"].Text = dr["dbxcg_fj2"].ToString();

            //外语水平
            doc.Range.Bookmarks["lbl10_kssj"].Text = dr["kssj"].ToString();
            doc.Range.Bookmarks["lbl10_yz"].Text = dr["yz"].ToString();
            doc.Range.Bookmarks["lbl10_jb"].Text = dr["jb"].ToString();
            doc.Range.Bookmarks["lbl10_zy"].Text = dr["zy"].ToString();
            doc.Range.Bookmarks["lbl10_fs"].Text = dr["fs"].ToString();
            doc.Range.Bookmarks["lbl10_msly"].Text = dr["wymsly"].ToString().Replace("&nbsp;", ""); 


            //考核年度
            str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
            int i_year = DateTime.Now.Year;
            try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
            catch { }
            i_year--;
            doc.Range.Bookmarks["lbl_ndkh3"].Text = i_year.ToString() + "年";
            i_year--;
            doc.Range.Bookmarks["lbl_ndkh2"].Text = i_year.ToString() + "年";
            i_year--;
            doc.Range.Bookmarks["lbl_ndkh1"].Text = i_year.ToString() + "年";
            doc.Range.Bookmarks["lbl10_khdj1"].Text = dr["ndkh1"].ToString();
            doc.Range.Bookmarks["lbl10_khdj2"].Text = dr["ndkh2"].ToString();
            doc.Range.Bookmarks["lbl10_khdj3"].Text = dr["ndkh3"].ToString();
            doc.Range.Bookmarks["lbl10_xcg"].Text = dr["chengguo"].ToString().Replace("&nbsp;", ""); ;

            //计算机水平
            doc.Range.Bookmarks["lbl11_km1"].Text = dr["jsj_km1"].ToString();
            doc.Range.Bookmarks["lbl11_km2"].Text = dr["jsj_km2"].ToString();
            doc.Range.Bookmarks["lbl11_km3"].Text = dr["jsj_km3"].ToString();
            doc.Range.Bookmarks["lbl11_km4"].Text = dr["jsj_km4"].ToString();
            if (dr["jsj_msly"].ToString() == "1")
                doc.Range.Bookmarks["lbl11_msly1"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_msly1"].Text = "□";
            if (dr["jsj_msly"].ToString() == "2")
            {
                doc.Range.Bookmarks["lbl11_msly2"].Text = "■";
                doc.Range.Bookmarks["lbl11_dj"].Text = dr["jsj_msly_dj"].ToString();
            }
            else
            {
                doc.Range.Bookmarks["lbl11_msly2"].Text = "□";
            }
            if (dr["jsj_msly"].ToString() == "3")
                doc.Range.Bookmarks["lbl11_msly3"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_msly3"].Text = "□";

            //破格申报理由
            if (dr["pglb"].ToString() == "1")
                doc.Range.Bookmarks["lbl11_pglb1"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_pglb1"].Text = "□";

            if (dr["pglb"].ToString() == "2")
                doc.Range.Bookmarks["lbl11_pglb2"].Text = "■";
            else
                doc.Range.Bookmarks["lbl11_pglb2"].Text = "□";
            string str_pgtj = dr["pgtj"].ToString();
            string str_jtpgly = dr["jtpgly"].ToString();
            for (int i = 0; i < 3; i++)
            {
                if (str_pgtj.IndexOf(Convert.ToString(i + 1)) > 0)
                {
                    doc.Range.Bookmarks["lbl11_pgtj" + Convert.ToString(i + 1)].Text = "■";
                }
                else
                {
                    doc.Range.Bookmarks["lbl11_pgtj" + Convert.ToString(i + 1)].Text = "□";
                }
            }
            if (str_jtpgly != "" && str_jtpgly != null)
            {
                doc.Range.Bookmarks["lbl11_pgly5"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly4"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly3"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly2"].Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
                str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
                doc.Range.Bookmarks["lbl11_pgly1"].Text = str_jtpgly;
            }

        }

        catch
        { }
    }
    #endregion

    //需要修改的部分 开始
    #region 设置word数据 二级研究员
    public static void SetInfoIntoWrod_erji(Document doc, string sfzh)
    {

        string str_1;

        try
        {
            DataView dv;
            Label lbl_Value;
            int i_id;
            string str_sql = "SELECT yourname,gwxl,xkfx_qt ,name as dw, xingbie, format(birth,'yyyy年MM月') as csny," +
                " zgxl,zgxw,xrgw, format(zgsj,'yyyy年MM月') as zg, format(prsj,'yyyy年MM月') as pr,qtwt,gzjj" +
                " FROM ej_cpry,t_dict" +
                " WHERE flm = 2 and dw = url and sfzh='" + sfzh + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            //1
            //例子 开始
            doc.Range.Bookmarks["lbl_gwxl"].Text = dr["gwxl"].ToString();
            //例子 结束
            //  lbl_gwxl.Text = dr["gwxl"].ToString();
            doc.Range.Bookmarks["lbl_xm"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["lbl_xkfx"].Text = dr["xkfx_qt"].ToString();
            doc.Range.Bookmarks["lbl_dw"].Text = dr["dw"].ToString();
            //2
            doc.Range.Bookmarks["lbl2_xm"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["lbl2_csny"].Text = dr["csny"].ToString();
            doc.Range.Bookmarks["lbl2_xb"].Text = dr["xingbie"].ToString();

            doc.Range.Bookmarks["lbl2_zgxl"].Text = dr["zgxl"].ToString();
            doc.Range.Bookmarks["lbl2_zgxw"].Text = dr["zgxw"].ToString();
            doc.Range.Bookmarks["lbl2_xrgw"].Text = dr["xrgw"].ToString();
            doc.Range.Bookmarks["lbl2_zgsj"].Text = dr["zg"].ToString();
            doc.Range.Bookmarks["lbl2_prsj"].Text = dr["pr"].ToString();
            doc.Range.Bookmarks["lbl2_xkfx"].Text = dr["xkfx_qt"].ToString();
            doc.Range.Bookmarks["lbl_qtwt"].Text = dr["qtwt"].ToString().Replace("&nbsp;", "");
            doc.Range.Bookmarks["gzjj"].Text = dr["gzjj"].ToString().Replace("&nbsp;", "");

            //
            //3承担项目情况

            str_sql = "SELECT * from ej_cdxmqk where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;

                /*例子
                str_1 = "lbl_cdxm_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmmc"].ToString();
                

                lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "1");
                lbl_Value.Text = dv.Table.Rows[i]["xmmc"].ToString();

                */
                str_1 = "lbl_cdxm_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmmc"].ToString();
                str_1 = "lbl_cdxm_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmlb"].ToString();
                str_1 = "lbl_cdxm_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmjf"].ToString();
                str_1 = "lbl_cdxm_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["brjs"].ToString();
                str_1 = "lbl_cdxm_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["qzsj"].ToString();


                /*  lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "4");
                  lbl_Value.Text = dv.Table.Rows[i]["brjs"].ToString();
                  lbl_Value = (Label)this.FindControl("lbl_cdxm_" + i_id.ToString() + "5");
                  lbl_Value.Text = dv.Table.Rows[i]["qzsj"].ToString();
            
                 */
            }

            //4.代表性论著情况
            str_sql = "SELECT tm,format(fbsj,'yyyy年MM月') as fb,kwmc,brpm from ej_dbxlz where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;

                str_1 = "lbl_dbxlz_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["tm"].ToString();

                str_1 = "lbl_dbxlz_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fb"].ToString();
                str_1 = "lbl_dbxlz_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["kwmc"].ToString();

                str_1 = "lbl_dbxlz_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["brpm"].ToString();


                /* lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "1");
                 lbl_Value.Text = dv.Table.Rows[i]["tm"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "2");
                 lbl_Value.Text = dv.Table.Rows[i]["fb"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "3");
                 lbl_Value.Text = dv.Table.Rows[i]["kwmc"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_dbxlz_" + i_id.ToString() + "4");
                 lbl_Value.Text = dv.Table.Rows[i]["brpm"].ToString();
                 */
            }


            //专利与成果转化情况
            str_sql = "SELECT * from ej_zlycgzh where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;

                str_1 = "lbl_zlcg_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zlmc"].ToString();

                str_1 = "lbl_zlcg_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zhjg"].ToString();

                /* lbl_Value = (Label)this.FindControl("lbl_zlcg_" + i_id.ToString() + "1");
                 lbl_Value.Text = dv.Table.Rows[i]["zlmc"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_zlcg_" + i_id.ToString() + "2");
                 lbl_Value.Text = dv.Table.Rows[i]["zhjg"].ToString();
                 */
            }



            //获奖情况
            str_sql = "SELECT * from ej_hjqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;

                str_1 = "lbl_hjqk_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["nd"].ToString();
                str_1 = "lbl_hjqk_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jlzl"].ToString();
                str_1 = "lbl_hjqk_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjcgmc"].ToString();
                str_1 = "lbl_hjqk_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jldj"].ToString();
                str_1 = "lbl_hjqk_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();

                /* lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "1");
                 lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "2");
                 lbl_Value.Text = dv.Table.Rows[i]["jlzl"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "3");
                 lbl_Value.Text = dv.Table.Rows[i]["hjcgmc"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "4");
                 lbl_Value.Text = dv.Table.Rows[i]["jldj"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "5");
                 lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
                 */
            }

            //国内外学术任职情况
            str_sql = "SELECT * from ej_xsrzqk where sfzh = '" + sfzh + "'  order by id;";
            dv = DBFun.GetDataView(str_sql);

            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;

                str_1 = "lbl_xsrz_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["rzzzmc"].ToString();
                str_1 = "lbl_xsrz_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["drzw"].ToString();
                str_1 = "lbl_xsrz_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["rzqzsj"].ToString();


                /* lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "1");
                 lbl_Value.Text = dv.Table.Rows[i]["rzzzmc"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "2");
                 lbl_Value.Text = dv.Table.Rows[i]["drzw"].ToString();
                 lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "3");
                 lbl_Value.Text = dv.Table.Rows[i]["rzqzsj"].ToString();
                 */
            }
        }

        catch
        { }
    }
    #endregion
    //需要修改的部分 结束

    #region 设置word数据 特殊津贴
    public static void SetInfoIntoWrod_tetie(Document doc, string sfzh)
    {
        try
        {
            DataView dv;
            int i_id;
            string str_sql = "SELECT yourname,gzdw_mc,dept,leibie," +
               " zjdm ,zjbs, xingbie,birth, format(birth,'yyyy年MM月DD日') as csrq,csd,zzmm," +
               " mz,whcd,xw, bysj, byxx,sxzy,cszy,jszc,gzsj,dwlb,dwxz,zgzt,xzzw,xzjb,ggqjb," +
               " gkhy,lxdh,yzbm,ys,gzbj,ttnf,ttje,tgnf,sbnf,hgnf,hcgl,lhjt,bdnf,jbzn, " +
               " gzjl,gxsj,lwzz,zxcg" +
               " FROM ts_cpry,t_dict" +
               " WHERE flm = 2 and gzdw = url and sfzh='" + sfzh + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            //1
            doc.Range.Bookmarks["xm"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["gzdw"].Text = dr["gzdw_mc"].ToString();
            doc.Range.Bookmarks["bm"].Text = dr["dept"].ToString();
            doc.Range.Bookmarks["lb"].Text = dr["leibie"].ToString();

            
            
            //2
            doc.Range.Bookmarks["zjdm"].Text = dr["zjdm"].ToString();
            doc.Range.Bookmarks["xm_1"].Text = dr["yourname"].ToString();
            doc.Range.Bookmarks["zjbs"].Text = dr["zjbs"].ToString();
            doc.Range.Bookmarks["xb"].Text = dr["xingbie"].ToString();
            doc.Range.Bookmarks["csrq"].Text = dr["birth"].ToString();
            doc.Range.Bookmarks["csd"].Text = dr["csd"].ToString();
            doc.Range.Bookmarks["zzmm"].Text = dr["zzmm"].ToString();

            doc.Range.Bookmarks["mz"].Text = dr["mz"].ToString();
            doc.Range.Bookmarks["whcd"].Text = dr["whcd"].ToString();
            doc.Range.Bookmarks["xw"].Text = dr["xw"].ToString();
            doc.Range.Bookmarks["bysj"].Text = dr["bysj"].ToString();
            doc.Range.Bookmarks["byxx"].Text = dr["byxx"].ToString();
            doc.Range.Bookmarks["sxzy"].Text = dr["sxzy"].ToString();
            doc.Range.Bookmarks["cszy"].Text = dr["cszy"].ToString();
            doc.Range.Bookmarks["jszc"].Text = dr["jszc"].ToString();
            doc.Range.Bookmarks["gzdw_1"].Text = dr["gzdw_mc"].ToString();
            doc.Range.Bookmarks["gzsj"].Text = dr["gzsj"].ToString();
            doc.Range.Bookmarks["dwlb"].Text = dr["dwlb"].ToString();
            doc.Range.Bookmarks["dwxz"].Text = dr["dwxz"].ToString();
            doc.Range.Bookmarks["zgzt"].Text = dr["zgzt"].ToString();
            doc.Range.Bookmarks["xzzw"].Text = dr["xzzw"].ToString();
            doc.Range.Bookmarks["xzjb"].Text = dr["xzjb"].ToString();
            doc.Range.Bookmarks["ggqjb"].Text = dr["ggqjb"].ToString();
            doc.Range.Bookmarks["gkhy"].Text = dr["gkhy"].ToString();
            doc.Range.Bookmarks["lxdh"].Text = dr["lxdh"].ToString();
            doc.Range.Bookmarks["yzbm"].Text = dr["yzbm"].ToString();
            doc.Range.Bookmarks["ys"].Text = dr["ys"].ToString();
            doc.Range.Bookmarks["gzbj"].Text = dr["gzbj"].ToString();
            doc.Range.Bookmarks["ttnf"].Text = dr["ttnf"].ToString();
            doc.Range.Bookmarks["ttje"].Text = dr["ttje"].ToString();
            doc.Range.Bookmarks["tgnf"].Text = dr["tgnf"].ToString();
            doc.Range.Bookmarks["sbnf"].Text = dr["sbnf"].ToString();
            doc.Range.Bookmarks["hgnf"].Text = dr["hgnf"].ToString();
            doc.Range.Bookmarks["hcgl"].Text = dr["hcgl"].ToString();
            doc.Range.Bookmarks["lhjt"].Text = dr["lhjt"].ToString();
            doc.Range.Bookmarks["bdnf"].Text = dr["bdnf"].ToString();
            doc.Range.Bookmarks["jbzn"].Text = dr["jbzn"].ToString();
            doc.Range.Bookmarks["gzjl"].Text = dr["gzjl"].ToString().Replace("&nbsp;", "").Replace(" ",""); 
            
            

            //3获奖情况
            str_sql = "SELECT * from ts_hjqk where sfzh = '" + sfzh + "' order by id ;";
            dv = DBFun.GetDataView(str_sql);
            string str_1 = "";
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 12) break;
                i_id = i + 1;
                str_1 = "lbl1_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jlzl"].ToString();
                str_1 = "lbl1_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjxm"].ToString();
                str_1 = "lbl1_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["jldj"].ToString();
                str_1 = "lbl1_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["pm"].ToString();
                str_1 = "lbl1_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["nd"].ToString();
            }            

            //4.专业水平情况
            //主要突出贡献事迹
            doc.Range.Bookmarks["gxsj"].Text = dr["gxsj"].ToString().Replace("&nbsp;", "").Replace(" ", ""); 
            //代表论文和著作
            doc.Range.Bookmarks["lwzz"].Text = dr["lwzz"].ToString().Replace("&nbsp;", "").Replace(" ", ""); 
            //最新成果
            doc.Range.Bookmarks["zxcg"].Text = dr["zxcg"].ToString().Replace("&nbsp;", "").Replace(" ", ""); 


            //5获奖情况

            str_sql = "SELECT * from ts_khqk where sfzh = '" + sfzh + "' order by id;";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 12) break;
                i_id = i + 1;
                str_1 = "lbl2_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["khnd"].ToString();
                str_1 = "lbl2_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["khnr"].ToString();
                str_1 = "lbl2_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["khjl"].ToString();
            }      
        }

        catch
        { }
    }
    #endregion


    #region 设置word数据 特殊津贴
    public static void SetInfoIntoWrod_tetie_zjtpb(Document doc, string sfzh)
    {
        try
        {
            DataView dv;
            int i_id;
            string str_sql = "select iif(fs_sftj='true','○','') as sftj,gzdw_mc,yourname,iif(fs_sftj='true',fs_pjys1,'') as tj_order from ts_cpry,zjry,t_dict " +
                             " where cpry_sfzh = sfzh and flm = 2 and gzdw = url and flag = 3 and zj_sfzh = '" +
                              sfzh + "' and edit_flag = false and ts_cpry.tj_flag = '推荐' and sh_flag = '通过' and t_dict.ts_tj_flag=true " +
                              " order by url,id asc ";
            
            dv = DBFun.GetDataView(str_sql);
            string str_1 = "";
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 32) break;
                i_id = i + 1;
                str_1 = "l_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["gzdw_mc"].ToString();
                str_1 = "l_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yourname"].ToString();
                str_1 = "l_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["sftj"].ToString();
                str_1 = "l_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["tj_order"].ToString();
            }

        }

        catch
        {
        }
    }
    #endregion


    #region 设置word数据 1
    public static void SetInfoIntoWrod_1(Document doc, string jsh)
    {
        try
        {
            DataView dv;
            string str_sql = "SELECT *" +
               " FROM t_teacher" +
               " WHERE jsh='" + jsh + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            doc.Range.Bookmarks["xmlb"].Text = dr["xmlb"].ToString();
            doc.Range.Bookmarks["ktmc"].Text = dr["ktmc"].ToString();
            doc.Range.Bookmarks["sqr"].Text = dr["jsm"].ToString();
            doc.Range.Bookmarks["szdw"].Text = dr["dept"].ToString();
            doc.Range.Bookmarks["lxdh"].Text = dr["lxdh"].ToString();
            doc.Range.Bookmarks["sqrq"].Text = dr["sqrq"].ToString();
            //1
            doc.Range.Bookmarks["xm"].Text = dr["jsm"].ToString();
            doc.Range.Bookmarks["xb"].Text = dr["xb"].ToString();
            doc.Range.Bookmarks["mz"].Text = dr["mz"].ToString();
            doc.Range.Bookmarks["csny"].Text = dr["csny"].ToString();
            doc.Range.Bookmarks["zc"].Text = dr["zc"].ToString();

            doc.Range.Bookmarks["zw"].Text = dr["zw"].ToString();
            doc.Range.Bookmarks["gznx"].Text = dr["gznx"].ToString();
            doc.Range.Bookmarks["xl"].Text = dr["xl"].ToString();
            doc.Range.Bookmarks["xw"].Text = dr["xw"].ToString();
            doc.Range.Bookmarks["yjzc"].Text = dr["yjzc"].ToString();
            doc.Range.Bookmarks["szbm"].Text = dr["dept"].ToString();
            doc.Range.Bookmarks["lxdh"].Text = dr["lxdh"].ToString();
            doc.Range.Bookmarks["email"].Text = dr["email"].ToString();
            int i_yjnx = Convert.ToInt16(dr["yjnx"]);
            doc.Range.Bookmarks["qssj"].Text = DateTime.Now.Year.ToString();
            doc.Range.Bookmarks["jzsj"].Text = Convert.ToString(DateTime.Now.Year + i_yjnx);

            doc.Range.Bookmarks["bg_1"].Text = dr["bg_1"].ToString();
            doc.Range.Bookmarks["bg_2"].Text = dr["bg_2"].ToString();
            doc.Range.Bookmarks["bg_3"].Text = dr["bg_3"].ToString();
            doc.Range.Bookmarks["bg_4"].Text = dr["bg_4"].ToString();

            doc.Range.Bookmarks["tsje"].Text = dr["xmjf_tsje"].ToString();
            doc.Range.Bookmarks["dyje"].Text = dr["xmjf_dyje"].ToString();
            doc.Range.Bookmarks["wyje"].Text = dr["xmjf_wyje"].ToString();
            doc.Range.Bookmarks["hyje"].Text = dr["xmjf_hyje"].ToString();
            doc.Range.Bookmarks["bmje"].Text = dr["xmjf_bmje"].ToString();
            doc.Range.Bookmarks["qtje"].Text = dr["xmjf_qtje"].ToString();
            doc.Range.Bookmarks["tsyj"].Text = dr["xmjf_tsyj"].ToString();
            doc.Range.Bookmarks["dyyj"].Text = dr["xmjf_dyyj"].ToString();
            doc.Range.Bookmarks["wyyj"].Text = dr["xmjf_wyyj"].ToString();
            doc.Range.Bookmarks["hyyj"].Text = dr["xmjf_hyyj"].ToString();
            doc.Range.Bookmarks["bmyj"].Text = dr["xmjf_bmyj"].ToString();
            doc.Range.Bookmarks["qtyj"].Text = dr["xmjf_qtyj"].ToString();
            doc.Range.Bookmarks["hj"].Text = Convert.ToString(Convert.ToInt16(dr["xmjf_tsje"]) +
                                                                Convert.ToInt16(dr["xmjf_dyje"]) +
                                                                Convert.ToInt16(dr["xmjf_wyje"]) +
                                                                Convert.ToInt16(dr["xmjf_hyje"]) +
                                                                Convert.ToInt16(dr["xmjf_bmje"]) +
                                                                Convert.ToInt16(dr["xmjf_qtje"]));

            //课题情况
            str_sql = "SELECT * from t_ktqk where jsh = '" + jsh + "'";
            dv = DBFun.GetDataView(str_sql);
            string str_1;
            int i_id = 0;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "ktqk_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmmc"].ToString();
                str_1 = "ktqk_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmbh"].ToString();
                str_1 = "ktqk_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmjb"].ToString();
                str_1 = "ktqk_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["sfjt"].ToString() + "/" + dv.Table.Rows[i]["zccy"].ToString();
            }

            //科研成果
            str_sql = "SELECT * from t_kycg where jsh = '" + jsh + "'";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 3) break;
                i_id = i + 1;
                str_1 = "kycg_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lwmc"].ToString();
                str_1 = "kycg_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fbbk"].ToString() + "/" + dv.Table.Rows[i]["fbrq"].ToString();
                str_1 = "kycg_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["brpm"].ToString();
            }

            //成员情况
            str_sql = "SELECT * from t_cyqk where jsh = '" + jsh + "'";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "cyqk_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xm"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zc"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["szbm"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["yjzc"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fg"].ToString();
            }

            //推荐人意见
            str_sql = "SELECT * from t_tjyj where jsh = '" + jsh + "'";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 2) break;
                i_id = i + 1;
                str_1 = "tjyj_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xm"].ToString();
                str_1 = "tjyj_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zc"].ToString();
                str_1 = "tjyj_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["szbm"].ToString();
                str_1 = "tjyj_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["tjyj"].ToString();
            }
        }
        catch
        { }
    }
    #endregion

    #region 设置word数据 教研
    public static void SetInfoIntoWrod_jy(Document doc, string as_appNo)
    {
        try
        {
            DataView dv;
            string str_sql = "SELECT * FROM t_teacher_list WHERE appNo='" + as_appNo + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            doc.Range.Bookmarks["zzlb"].Text = dr["zzlb"].ToString();
            doc.Range.Bookmarks["ktmc"].Text = dr["ktmc"].ToString();
            doc.Range.Bookmarks["sqr"].Text = dr["sqr"].ToString();
            doc.Range.Bookmarks["szdw"].Text = dr["szbm"].ToString();
            doc.Range.Bookmarks["lxdh"].Text = dr["lxdh"].ToString();
            doc.Range.Bookmarks["dzyx"].Text = dr["email"].ToString();
            doc.Range.Bookmarks["sqrq"].Text = dr["sqrq"].ToString();
            
            
            //1
            doc.Range.Bookmarks["ktmc_1"].Text = dr["ktmc"].ToString();
            doc.Range.Bookmarks["xmlb"].Text = dr["xmlb"].ToString();
            doc.Range.Bookmarks["sqbm"].Text = dr["sqbm"].ToString();

            int i_yjnx = Convert.ToInt16(dr["yjnx"]);
            string str_sqrq = dr["sqrq"].ToString();

            doc.Range.Bookmarks["qssj"].Text = str_sqrq.Substring(0, 7);
            doc.Range.Bookmarks["wcsj"].Text = Convert.ToString(Convert.ToInt16(str_sqrq.Substring(0, 4)) + i_yjnx) + str_sqrq.Substring(4, 3);
            
            doc.Range.Bookmarks["xm"].Text = dr["sqr"].ToString();
            doc.Range.Bookmarks["zczw"].Text = dr["zc"].ToString() + "/" + dr["zw"].ToString();
            doc.Range.Bookmarks["xwzy"].Text = dr["xw"].ToString() + "/" + dr["zyfx"].ToString();
            
            doc.Range.Bookmarks["lxyjmb_1"].Text = dr["lxyjmb_1"].ToString();
            doc.Range.Bookmarks["lxyjmb_2"].Text = dr["lxyjmb_2"].ToString();
            doc.Range.Bookmarks["lxyjmb_3"].Text = dr["lxyjmb_3"].ToString();
            doc.Range.Bookmarks["lxyjmb_4"].Text = dr["lxyjmb_4"].ToString();
            doc.Range.Bookmarks["lxyjmb_5"].Text = dr["lxyjmb_5"].ToString();


            doc.Range.Bookmarks["yjffjj_1"].Text = dr["yjffjj_1"].ToString();
            doc.Range.Bookmarks["yjffjj_2"].Text = dr["yjffjj_2"].ToString();
            

            doc.Range.Bookmarks["tsje"].Text = dr["xmjf_tsje"].ToString();
            doc.Range.Bookmarks["dyje"].Text = dr["xmjf_dyje"].ToString();
            doc.Range.Bookmarks["wyje"].Text = dr["xmjf_wyje"].ToString();
            doc.Range.Bookmarks["hyje"].Text = dr["xmjf_hyje"].ToString();
            doc.Range.Bookmarks["bmje"].Text = dr["xmjf_bmje"].ToString();
            doc.Range.Bookmarks["qtje"].Text = dr["xmjf_qtje"].ToString();
            doc.Range.Bookmarks["clje"].Text = dr["xmjf_clje"].ToString();
            doc.Range.Bookmarks["tsyj"].Text = dr["xmjf_tsyj"].ToString();
            doc.Range.Bookmarks["dyyj"].Text = dr["xmjf_dyyj"].ToString();
            doc.Range.Bookmarks["wyyj"].Text = dr["xmjf_wyyj"].ToString();
            doc.Range.Bookmarks["hyyj"].Text = dr["xmjf_hyyj"].ToString();
            doc.Range.Bookmarks["bmyj"].Text = dr["xmjf_bmyj"].ToString();
            doc.Range.Bookmarks["qtyj"].Text = dr["xmjf_qtyj"].ToString();
            doc.Range.Bookmarks["clyj"].Text = dr["xmjf_clyj"].ToString();
            doc.Range.Bookmarks["hj"].Text = Convert.ToString(Convert.ToInt16(dr["xmjf_tsje"]) +
                                                              Convert.ToInt16(dr["xmjf_dyje"]) +
                                                              Convert.ToInt16(dr["xmjf_wyje"]) +
                                                              Convert.ToInt16(dr["xmjf_hyje"]) +
                                                              Convert.ToInt16(dr["xmjf_bmje"]) + 
                                                              Convert.ToInt16(dr["xmjf_qtje"]) +
                                                              Convert.ToInt16(dr["xmjf_clje"]));

            //主要教学工作经历
            str_sql = "SELECT * from t_jxgzjl where appNo = '" + as_appNo + "' order by orderid asc ";
            dv = DBFun.GetDataView(str_sql);
            string str_1;
            int i_id = 0;
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "jxgzjl_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["rksj"].ToString();
                str_1 = "jxgzjl_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["kcmc"].ToString();
                str_1 = "jxgzjl_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["skdx"].ToString();
                str_1 = "jxgzjl_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xs"].ToString();
                str_1 = "jxgzjl_" + i_id.ToString() + "5";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["szdw"].ToString();
            }

            //主要教学改革和科学研究工作简历
            str_sql = "SELECT * from t_jgkyjl where appNo = '" + as_appNo + "' order by orderid asc ";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "jgkyjl_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["qzsj"].ToString();
                str_1 = "jgkyjl_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xmmc"].ToString();
                str_1 = "jgkyjl_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["lxdw"].ToString();
                str_1 = "jgkyjl_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["hjqk"].ToString();
            }

            //成员情况
            str_sql = "SELECT * from t_cyqk where appNo = '" + as_appNo + "' order by orderid asc ";
            dv = DBFun.GetDataView(str_sql);
            
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 5) break;
                i_id = i + 1;
                str_1 = "cyqk_" + i_id.ToString() + "1";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xm"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "2";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zy"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "3";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zc"].ToString();
                str_1 = "cyqk_" + i_id.ToString() + "4";
                doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["fg"].ToString();
            }
            str_sql = "select jb,count(jb) as num from (select  zc,iif(zc like '%教授%','高级',iif(zc in ('讲师','工程师'),'中级','初级')) as jb from t_cyqk where appNo = '" + as_appNo + "' ) as a group by jb";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (dv.Table.Rows[i]["jb"].ToString() == "高级") 
                    doc.Range.Bookmarks["gj"].Text = dv.Table.Rows[i]["num"].ToString();
                else if (dv.Table.Rows[i]["jb"].ToString() == "中级")
                    doc.Range.Bookmarks["zj"].Text = dv.Table.Rows[i]["num"].ToString();
                else if (dv.Table.Rows[i]["jb"].ToString() == "初级")
                    doc.Range.Bookmarks["cj"].Text = dv.Table.Rows[i]["num"].ToString();
                if (doc.Range.Bookmarks["gj"].Text == "")
                    doc.Range.Bookmarks["gj"].Text = "0";
                if (doc.Range.Bookmarks["zj"].Text == "")
                    doc.Range.Bookmarks["zj"].Text = "0";
                if (doc.Range.Bookmarks["cj"].Text == "")
                    doc.Range.Bookmarks["cj"].Text = "0";
            }
            str_sql = "select count(*) as num from t_cyqk where appNo = '" + as_appNo + "'";
            doc.Range.Bookmarks["zrs"].Text = DBFun.ExecuteScalar(str_sql).ToString();
            str_sql = " select xw,count(xw) as num from t_cyqk  where appNo='" + as_appNo + "' and xw in ('硕士','博士') group by xw";
            dv = DBFun.GetDataView(str_sql);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (dv.Table.Rows[i]["xw"].ToString() == "博士")
                    doc.Range.Bookmarks["bs"].Text = dv.Table.Rows[i]["num"].ToString();
                else if (dv.Table.Rows[i]["xw"].ToString() == "硕士")
                    doc.Range.Bookmarks["ss"].Text = dv.Table.Rows[i]["num"].ToString();
                if (doc.Range.Bookmarks["bs"].Text == "")
                    doc.Range.Bookmarks["bs"].Text = "0";
                if (doc.Range.Bookmarks["ss"].Text == "")
                    doc.Range.Bookmarks["ss"].Text = "0";
            }
            ////推荐人意见
            //str_sql = "SELECT * from t_tjyj where jsh = '" + jsh + "'";
            //dv = DBFun.GetDataView(str_sql);
            //for (int i = 0; i < dv.Table.Rows.Count; i++)
            //{
            //    if (i == 2) break;
            //    i_id = i + 1;
            //    str_1 = "tjyj_" + i_id.ToString() + "1";
            //    doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["xm"].ToString();
            //    str_1 = "tjyj_" + i_id.ToString() + "2";
            //    doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["zc"].ToString();
            //    str_1 = "tjyj_" + i_id.ToString() + "3";
            //    doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["szbm"].ToString();
            //    str_1 = "tjyj_" + i_id.ToString() + "4";
            //    doc.Range.Bookmarks[str_1].Text = dv.Table.Rows[i]["tjyj"].ToString();
            //}
        }
        catch
        { }
    }
    #endregion

}
