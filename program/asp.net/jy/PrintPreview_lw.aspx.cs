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

public partial class PrintPreview_lw : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "123456789987654321";
        Page.EnableViewState = false;
        bindData();
    }

    #region 数据绑定
    protected void bindData()
    {
        DataView dv;
        Label lbl_Value;
        int i_id;
        string str_sql = "select cplb,yourname,xingbie,birth,mz,tjdw_mc,rxny,lwdbrq,xwhdrq,yjxk_dm,yjxk_mc,ejxk_dm,ejxk_mc,"+
            "iif(sfzsxkzy=False,'否','是') as sfzsxkzy_name," +
            "zsxkzy,lw_ctitle,lw_etitle,"+
            " iif(gdxwfs=0,'统招生',iif(gdxwfs=1,'联合培养',iif(gdxwfs=2,'在职攻读','其他'))) as gdxwfs_name ," +
            " lw_yjfx,lw_Cabstract,lw_Eabstract,lw_cxd,zdjs_xm,zdjs_csny,zdjs_xingbie,zdjs_zzxl," +
            " zdjs_zgxw,iif(zdjs_sfys=False,'否','是') as zdjs_sfys_name,zdjs_srbdny,zdjs_srsdny,zdjs_yjfx,zdjs_dsdh,zdjs_dsyx,"+
            " iif(zdjs_xzrs=0,'',zdjs_xzrs) as zdjs_xzrs_name ," +
            " iif(zdjs_zdss=0,'',zdjs_zdss) as zdjs_zdss_name ," +
            " iif(zdjs_zdbs=0,'',zdjs_zdbs) as zdjs_zdbs_name ," +
            " iif(zdjs_byss=0,'',zdjs_byss) as zdjs_byss_name ," +
            " iif(zdjs_bybs=0,'',zdjs_bybs) as zdjs_bybs_name ," +
            " jzbd_gzdw,xrzw,dwtjyj,name" +
            " from yxxwlw_cpry,t_dict where url=tjdw and sfzh = '" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        //1
        lbl_cplb.Text = dr["cplb"].ToString();
        lbl_xm.Text   = dr["yourname"].ToString();
        lbl_xb.Text = dr["xingbie"].ToString();
        lbl_csny.Text = dr["birth"].ToString();
        lbl_mz.Text = dr["mz"].ToString();
        lbl_tjdw.Text = dr["name"].ToString();
        lbl_rxny.Text = dr["rxny"].ToString();
        lbl_lwdbrq.Text = dr["lwdbrq"].ToString();
        lbl_hxwrq.Text = dr["xwhdrq"].ToString();
        lbl_yjxkdm.Text = dr["yjxk_dm"].ToString();
        lbl_yjxkmc.Text = dr["yjxk_mc"].ToString();
        lbl_ejxkdm.Text = dr["ejxk_dm"].ToString();
        lbl_ejxkmc.Text = dr["ejxk_mc"].ToString();
        lbl_sfzsxkzy.Text = dr["sfzsxkzy_name"].ToString();
       
        lbl_zsxkzy.Text = dr["zsxkzy"].ToString();
        lbl_ctitle.Text = dr["lw_ctitle"].ToString();
        lbl_etitle.Text = dr["lw_etitle"].ToString();
        lbl_yjfx.Text = dr["lw_yjfx"].ToString();
        lbl_gdxwfs.Text = dr["gdxwfs_name"].ToString();
        //3
        lbl3_Cabstract.Text = dr["lw_Cabstract"].ToString();
        lbl3_Eabstract.Text = dr["lw_Eabstract"].ToString();
        lbl3_cxd.Text = dr["lw_cxd"].ToString();
        //7
        lbl7_zdjs_xm.Text = dr["zdjs_xm"].ToString();
        lbl7_zdjs_csny.Text = dr["zdjs_csny"].ToString();
        lbl7_zdjs_xb.Text = dr["zdjs_xingbie"].ToString();
        lbl7_zdjs_zzxl.Text = dr["zdjs_zzxl"].ToString();
        lbl7_zdjs_zgxw.Text = dr["zdjs_zgxw"].ToString();
        lbl7_zdjs_sfys.Text = dr["zdjs_sfys_name"].ToString();
        lbl7_zdjs_srbdny.Text = dr["zdjs_srbdny"].ToString();
        lbl7_zdjs_srsdny.Text = dr["zdjs_srsdny"].ToString();
        lbl7_zdjs_yjfx.Text = dr["zdjs_yjfx"].ToString();
        lbl7_zdjs_dsdh.Text = dr["zdjs_dsdh"].ToString();
        lbl7_zdjs_dsyx.Text = dr["zdjs_dsyx"].ToString();

        lbl7_zdjs_xzrs.Text = dr["zdjs_xzrs_name"].ToString();
        lbl7_zdjs_zdss.Text = dr["zdjs_zdss_name"].ToString();
        lbl7_zdjs_zdbs.Text = dr["zdjs_zdbs_name"].ToString();
        lbl7_zdjs_byss.Text = dr["zdjs_byss_name"].ToString();
        lbl7_zdjs_bybs.Text = dr["zdjs_bybs_name"].ToString();
        lbl7_jzbd_gzdw.Text = dr["jzbd_gzdw"].ToString();
        lbl7_xrzw.Text = dr["xrzw"].ToString();
        lbl7_dwtjyj.Text = dr["dwtjyj"].ToString();

        //2本科至攻读学位期间履历
        str_sql = "SELECT * from yxxwlw_ll where sfzh = '" + Session["sfzh"].ToString() + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 6) break;
                i_id = i + 1;
                lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "1");
                lbl_Value.Text = dv.Table.Rows[i]["qzsj"].ToString();
                lbl_Value = (Label)this.FindControl("lbl2_" + i_id.ToString() + "2");
                lbl_Value.Text = dv.Table.Rows[i]["jl"].ToString();
            }
        }
        //4发表学术论文
        str_sql = "SELECT * from yxxwlw_lw where sfzh = '" + Session["sfzh"].ToString() + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 6) break;
                i_id = i + 1;
                lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "1");
                lbl_Value.Text = dv.Table.Rows[i]["tm"].ToString();
                lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "2");
                lbl_Value.Text = dv.Table.Rows[i]["kwmc"].ToString();
                lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "3");
                lbl_Value.Text = dv.Table.Rows[i]["kwqh"].ToString();
                lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "4");
                lbl_Value.Text = dv.Table.Rows[i]["fbsj"].ToString();
                lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "5");
                lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
                lbl_Value = (Label)this.FindControl("lbl4_" + i_id.ToString() + "6");
                lbl_Value.Text = dv.Table.Rows[i]["slqk"].ToString();
            }
        }
        //5出版专著
        str_sql = "SELECT * from yxxwlw_zz where sfzh = '" + Session["sfzh"].ToString() + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 4) break;
                i_id = i + 1;
                lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "1");
                lbl_Value.Text = dv.Table.Rows[i]["zzmc"].ToString();
                lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "2");
                lbl_Value.Text = dv.Table.Rows[i]["cbs"].ToString();
                lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "3");
                lbl_Value.Text = dv.Table.Rows[i]["cbsj"].ToString();
                lbl_Value = (Label)this.FindControl("lbl5_" + i_id.ToString() + "4");
                lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
            }
        }
        //6获奖成果
        str_sql = "SELECT * from yxxwlw_cg where sfzh = '" + Session["sfzh"].ToString() + "' order by id;";
        dv = DBFun.GetDataView(str_sql);
        if (dv != null)
        {
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                if (i == 4) break;
                i_id = i + 1;
                lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "1");
                lbl_Value.Text = dv.Table.Rows[i]["cgmc"].ToString();
                lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "2");
                lbl_Value.Text = dv.Table.Rows[i]["jlmc"].ToString();
                lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "3");
                lbl_Value.Text = dv.Table.Rows[i]["hjdj"].ToString();
                lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "4");
                lbl_Value.Text = dv.Table.Rows[i]["hjsj"].ToString();
                lbl_Value = (Label)this.FindControl("lbl6_" + i_id.ToString() + "5");
                lbl_Value.Text = dv.Table.Rows[i]["pm"].ToString();
            }
        }
        
    }
    #endregion
    protected void btn_SaveToWord_Click(object sender, EventArgs e)
    {
        Response.Redirect("PrintPreview_lw_save.aspx");
    }

}
