using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Aspose.Words;
using System.Data;

public partial class tt_tjb_preview : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            bindData();
        }
    }
    #region 数据绑定
    protected void bindData()
    {
        DataView dv;
        Label lbl_Value;
        int i_id;
        string str_sql = "SELECT yourname,gzdw_mc,dept,leibie," +
            " zjdm ,zjbs, xingbie,birth, format(birth,'yyyy年MM月DD日') as csrq,csd,zzmm," +
            " mz,whcd,xw, bysj, byxx,sxzy,cszy,jszc,gzsj,dwlb,dwxz,zgzt,xzzw,xzjb,ggqjb," +
            " gkhy,lxdh,yzbm,ys,gzbj,ttnf,ttje,tgnf,sbnf,hgnf,hcgl,lhjt,bdnf,jbzn, " +
            " gzjl,gxsj,lwzz,zxcg" +
            " FROM ts_cpry,t_dict" +
            " WHERE flm = 2 and gzdw = url and sfzh='" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        //1
        //lbl1_zjdm.Text = " ";
        lbl_xm.Text = dr["yourname"].ToString();
        //lbl_dw.Text = dr["gzdw_mc"].ToString();
        //lbl_bm.Text = dr["dept"].ToString();
        //lbl_lb.Text = dr["leibie"].ToString();
        //2
        //lbl1_zjdm.Text = dr["zjdm"].ToString();
        //lbl1_xm.Text = dr["yourname"].ToString();
        //lbl1_zjbs.Text = dr["zjbs"].ToString();
        lbl1_xb.Text = dr["xingbie"].ToString();
        lbl1_csrq.Text = dr["birth"].ToString();
        lbl1_csd.Text = dr["csd"].ToString();
        lbl1_zzmm.Text = dr["zzmm"].ToString();

        lbl1_mz.Text = dr["mz"].ToString();
        lbl1_whcd.Text = dr["whcd"].ToString();
        lbl1_xw.Text = dr["xw"].ToString();
        lbl1_bysj.Text = dr["bysj"].ToString();
        lbl1_byxx.Text = dr["byxx"].ToString();
        lbl1_sxzy.Text = dr["sxzy"].ToString();
        lbl1_cszy.Text = dr["cszy"].ToString();
        lbl1_jszc.Text = dr["jszc"].ToString();
        lbl1_gzdw.Text = dr["gzdw_mc"].ToString();
        lbl1_gzsj.Text = dr["gzsj"].ToString();
        //lbl1_dwlb.Text = dr["dwlb"].ToString();
        //lbl1_dwxz.Text = dr["dwxz"].ToString();
        //lbl1_zgzt.Text = dr["zgzt"].ToString();
        //lbl1_xzzw.Text = dr["xzzw"].ToString();
        //lbl1_xzjb.Text = dr["xzjb"].ToString();
        //lbl1_ggqjb.Text = dr["ggqjb"].ToString();
        //lbl1_gkhy.Text = dr["gkhy"].ToString();
        //lbl1_lxdh.Text = dr["lxdh"].ToString();
        //lbl1_yzbm.Text = dr["yzbm"].ToString();
        //lbl1_ys.Text = dr["ys"].ToString();
        //lbl1_gzbj.Text = dr["gzbj"].ToString();
        //lbl1_ttnf.Text = dr["ttnf"].ToString();
        //lbl1_ttje.Text = dr["ttje"].ToString();
        //lbl1_tgnf.Text = dr["tgnf"].ToString();
        //lbl1_sbnf.Text = dr["sbnf"].ToString();
        //lbl1_hgnf.Text = dr["hgnf"].ToString();
        //lbl1_hcgl.Text = dr["hcgl"].ToString();
        //lbl1_lhjt.Text = dr["lhjt"].ToString();
        lbl1_bdnf.Text = dr["bdnf"].ToString();
        lbl1_jbzn.Text = dr["jbzn"].ToString();
        lbl1_gzjl.Text = dr["gzjl"].ToString();

        string str_text = dr["gzjl"].ToString();
        //string str_1 = "mso-bidi-font-size:";
        //string str_2 = "FONT-SIZE:";
        //string str_OldString;
        //string str_NewString = "18";
        //int i_index1 = 0;
        //int i_index2 = 0;
        //int i_lenth = 0;

        //i_index1 = str_text.IndexOf(str_1, i_index1) + 19;
        //if (i_index1 > 19)
        //{
        //    i_index2 = str_text.IndexOf("pt;", i_index1);
        //    if (i_index2 > 0)
        //    {
        //        i_lenth = i_index2 - i_index1;
        //        str_OldString = str_text.Substring(i_index1, i_lenth);
        //        str_text = str_text.Replace(str_OldString, str_NewString);
        //    }
        //    i_index1 = 0;
        //    i_index1 = str_text.IndexOf(str_2, i_index1) + 10;
        //    if (i_index1 > 10)
        //    {
        //        i_index2 = str_text.IndexOf("pt;", i_index1);
        //        if (i_index2 > 0)
        //        {
        //            i_lenth = i_index2 - i_index1;
        //            str_OldString = str_text.Substring(i_index1, i_lenth);
        //            str_text = str_text.Replace(str_OldString, str_NewString);
        //        }
        //    }
        //}
        lbl1_gzjl.Text = str_text;
        ftb2_1.Text = str_text;

        //3获奖情况

        str_sql = "SELECT * from ts_hjqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id;";
        //dv = DBFun.GetDataView(str_sql);

        DBFun.FillGridView(str_sql, gv_hjqk, true);
        //for (int i = 0; i < dv.Table.Rows.Count; i++)
        //{
        //    if (i == 12) break;
        //    i_id = i + 1;
        //    lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[i]["jlzl"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[i]["hjxm"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "3");
        //    lbl_Value.Text = dv.Table.Rows[i]["jldj"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "4");
        //    lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "5");
        //    lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
        //}

        //4.专业水平情况
        //主要突出贡献事迹
        lbl3_1.Text = dr["gxsj"].ToString();
        //代表论文和著作
        lbl3_2.Text = dr["lwzz"].ToString();
        //最新成果
        lbl3_3.Text = dr["zxcg"].ToString();

        ftb4_1.Text = dr["gxsj"].ToString();
        //代表论文和著作
        ftb4_2.Text = dr["lwzz"].ToString();
        //最新成果
        ftb4_3.Text = dr["zxcg"].ToString();


        //5获奖情况

        str_sql = "SELECT * from ts_khqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id;";
        //dv = DBFun.GetDataView(str_sql);
        DBFun.FillGridView(str_sql, gv_khqk, true);
        //for (int i = 0; i < dv.Table.Rows.Count; i++)
        //{
        //    if (i == 8) break;
        //    i_id = i + 1;
        //    lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[i]["khnd"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[i]["khnr"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "3");
        //    lbl_Value.Text = dv.Table.Rows[i]["khjl"].ToString();
        //}


        ////专利与成果转化情况
        //str_sql = "SELECT * from ej_zlycgzh where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        //dv = DBFun.GetDataView(str_sql);

        //for (int i = 0; i < dv.Table.Rows.Count; i++)
        //{
        //    if (i == 5) break;
        //    i_id = i + 1;
        //    lbl_Value = (Label)this.FindControl("lbl_zlcg_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[i]["zlmc"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_zlcg_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[i]["zhjg"].ToString();
        //}



        ////获奖情况
        //str_sql = "SELECT * from ej_hjqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id ;";
        //dv = DBFun.GetDataView(str_sql);

        //for (int i = 0; i < dv.Table.Rows.Count; i++)
        //{
        //    if (i == 5) break;
        //    i_id = i + 1;
        //    lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[i]["nd"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[i]["jlzl"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "3");
        //    lbl_Value.Text = dv.Table.Rows[i]["hjcgmc"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "4");
        //    lbl_Value.Text = dv.Table.Rows[i]["jldj"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_hjqk_" + i_id.ToString() + "5");
        //    lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
        //}

        ////国内外学术任职情况
        //str_sql = "SELECT * from ej_xsrzqk where sfzh = '" + Session["sfzh"].ToString() + "'  order by id;";
        //dv = DBFun.GetDataView(str_sql);

        //for (int i = 0; i < dv.Table.Rows.Count; i++)
        //{
        //    if (i == 5) break;
        //    i_id = i + 1;
        //    lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[i]["rzzzmc"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[i]["drzw"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl_xsrz_" + i_id.ToString() + "3");
        //    lbl_Value.Text = dv.Table.Rows[i]["rzqzsj"].ToString();
        //}

    }
    #endregion


    protected void btn_SaveToWord_Click(object sender, EventArgs e)
    {
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("./templete/tetie.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_tetie(doc, Session["sfzh"].ToString());


        doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/" + Session["sfzh"].ToString() + ".doc");
    }
    protected void btn_return_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin/zhuanjia_ry_list.aspx");
    }
}