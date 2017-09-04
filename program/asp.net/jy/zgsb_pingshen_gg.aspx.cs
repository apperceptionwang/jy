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
using System.IO;

public partial class zgsb_pingshen_gg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "230103197803220939";
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = 'admin/admin_login.aspx?type=zgcpry';</script>");
            return;
        }
        if (!IsPostBack)
        {
            Hidden1.Value = Request.QueryString["flag"];
            if (Hidden1.Value != "admin")
            {
                string str_sql = "select count(*) from cpry where edit_flag = true and sfzh = '" + Session["sfzh"].ToString() + "'";
                if (DBFun.ExecuteScalar(str_sql).ToString() == "0")
                {
                    Response.Write("<script>alert('已经提交，不能再修改！');window.history.go(-1);</script>");
                    return;
                }
                lbl_confirm.Visible = true;
                rbtnlist_sh.Visible = false;
            }
            lbl_id.Text = "0";
            SetStatus(Table1);
            bindData_fs();
        }
    }


    #region 设置表格是否可见
    private void SetStatus(HtmlTable tbl_visible)
    {

        Table1.Visible = false;
        Table2.Visible = false;
        Table3.Visible = false;
        Table4.Visible = false;
        Table5.Visible = false;
        Table6.Visible = false;
        Table7.Visible = false;
        Table8.Visible = false;
        Table9.Visible = false;
        tbl_visible.Visible = true;
        bool b_visible = (Hidden1.Value == "研究员");
        Table3_11.Visible = b_visible;
        Table3_12.Visible = false;
        Table3_21.Visible = !b_visible;
        Table3_22.Visible = false;
        Panel3_2.Visible = false;
        Panel4.Visible = false;
        Table5_5.Visible = !b_visible;
        Panel5.Visible = false;
        bindData();
    }
    #endregion


    #region 数据绑定
    private void bindData()
    {
        string str_qry = "";
        if (Table1.Visible)
        {
            str_qry = "SELECT url,name from t_dict where flm=2 ;";
            DBFun.FillDwList(ddlist_gzdw, str_qry);
            str_qry = "SELECT gzdw,yourname,xrzw,csgz,sbzw,tbrq from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            ddlist_gzdw.SelectedValue = dr["gzdw"].ToString();
            tbx_xm.Text = dr["yourname"].ToString();
            if (dr["xrzw"].ToString() == "")
                ddlist_xrzw.SelectedValue = "副研究员";
            else
                ddlist_xrzw.SelectedValue = dr["xrzw"].ToString();

            ddlist_csgz.SelectedValue = dr["csgz"].ToString();
            if (dr["sbzw"].ToString() == "")
                SetJSZW();
            else
                lbl_sbzw.Text = dr["sbzw"].ToString();
            lbl_tbrq.Text = dr["tbrq"].ToString();

        }
        if (Table2.Visible)
        {
            str_qry = "SELECT * from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            tbx2_xm.Text = dr["yourname"].ToString();
            tbx2_csny.Text = dr["birth"].ToString();
            if (dr["xingbie"].ToString() == "")
                ddlist2_xb.SelectedValue = "男";
            else
                ddlist2_xb.SelectedValue = dr["xingbie"].ToString();
            tbx2_xl1.Text = dr["zgxl_mc"].ToString();
            tbx2_bysj1.Text = dr["zgxl_bysj"].ToString();
            tbx2_zy1.Text = dr["zgxl_zy"].ToString();
            tbx2_sydw1.Text = dr["zgxl_sydw"].ToString();

            tbx2_xl2.Text = dr["fhxl_mc"].ToString();
            tbx2_bysj2.Text = dr["fhxl_bysj"].ToString();
            tbx2_zy2.Text = dr["fhxl_zy"].ToString();
            tbx2_sydw2.Text = dr["fhxl_sydw"].ToString();

            tbx2_xw.Text = dr["fhxw_mc"].ToString();
            tbx2_qdsj.Text = dr["fhxw_qdsj"].ToString();
            tbx2_zy3.Text = dr["fhxw_zy"].ToString();
            tbx2_sydw3.Text = dr["fhxw_sydw"].ToString();
            tbx2_xrzw.Text = dr["xrzw"].ToString();
            tbx2_pdsj.Text = dr["pdsj"].ToString();
            tbx2_prsj.Text = dr["prsj"].ToString();
            img_photo.ImageUrl = "./photo/" + dr["photo"].ToString();
            ftb_gzjj.Text = dr["gzjj"].ToString();

        }
        else if (Table3.Visible)
        {
            str_qry = "SELECT * from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            DataView dv;
            if (Hidden1.Value == "研究员")
            {
                tbx3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
                tbx3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
                tbx3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
                lbl3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
                lbl3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
                lbl3_3.Visible = (rbtnlist3_3.SelectedValue == "是");

                if (dr != null)
                {

                    if (dr["cdrw_mc1"].ToString() == "是")
                        rbtnlist3_1.SelectedValue = "是";
                    else
                        rbtnlist3_1.SelectedValue = "否";

                    if (dr["cdrw_mc2"].ToString() == "是")
                        rbtnlist3_2.SelectedValue = "是";
                    else
                        rbtnlist3_2.SelectedValue = "否";

                    if (dr["cdrw_mc3"].ToString() == "是")
                        rbtnlist3_3.SelectedValue = "是";
                    else
                        rbtnlist3_3.SelectedValue = "否";

                    tbx3_1.Text = dr["cdrw_gznr1"].ToString();
                    tbx3_2.Text = dr["cdrw_gznr2"].ToString();
                    tbx3_3.Text = dr["cdrw_gznr3"].ToString();
                    tbx3_41.Text = dr["cdrw_gznr3"].ToString();
                    tbx3_42.Text = dr["cdrw_gznr3"].ToString();
                    tbx3_43.Text = dr["cdrw_gznr3"].ToString();
                    tbx3_44.Text = dr["cdrw_gznr3"].ToString();
                }
                FillGridView("cdrwqk", gv_cdrw);
            }
            else
            {
                //str_sql = string.Format("update cpry set cdrw_gg_gzsj1 = '{0}',cdrw_gg_gznr1 = '{1}',cdrw_gg_js1 = '{2}',cdrw_gg_khjg1 = '{3}'," +
                //                        "cdrw_gg_gzsj2 = '{4}',cdrw_gg_gznr2 = '{5}',cdrw_gg_js2 = '{6}',cdrw_gg_khjg2 = '{7}'," +
                //                        "cdrw_gg_gzsj3 = '{8}',cdrw_gg_gznr3 = '{9}',cdrw_gg_js3 = '{10}',cdrw_gg_khjg3 = '{11}'," +
                //                        "cdrw_gg_gzsj4 = '{12}',cdrw_gg_gznr4 = '{13}',cdrw_gg_js4 = '{14}',cdrw_gg_khjg4 = '{15}'," +
                //                        " pyyjs1 = '{16}',pyyjs2 = '{17}',pyyjs3 = '{18}',pyyjs4 = '{19}' where sfzh = '{20}'",
                //             tbx3_gg_gzsj1.Text, ddlist3_gg_gznr1.SelectedValue, ddlist3_gg_js1.SelectedValue, ddlist3_gg_khjg1.SelectedValue,
                //             tbx3_gg_gzsj2.Text, ddlist3_gg_gznr2.SelectedValue, ddlist3_gg_js2.SelectedValue, ddlist3_gg_khjg2.SelectedValue,
                //             tbx3_gg_gzsj3.Text, ddlist3_gg_gznr3.SelectedValue, ddlist3_gg_js3.SelectedValue, ddlist3_gg_khjg3.SelectedValue,
                //             tbx3_gg_gzsj4.Text, tbx3_gg_gznr4.Text, tbx3_gg_js4.Text, tbx3_gg_khjg4.Text,
                //             tbx3_gg_yjs1.Text, tbx3_gg_yjs2.Text, tbx3_gg_yjs3.Text, tbx3_gg_yjs4.Text, Session["sfzh"].ToString());
                if (dr != null)
                {
                    tbx3_gg_gzsj1.Text = dr["cdrw_gg_gzsj1"].ToString();
                    tbx3_gg_gzsj2.Text = dr["cdrw_gg_gzsj2"].ToString();
                    tbx3_gg_gzsj3.Text = dr["cdrw_gg_gzsj3"].ToString();
                    tbx3_gg_gzsj4.Text = dr["cdrw_gg_gzsj4"].ToString();
                    tbx3_gg_gznr4.Text = dr["cdrw_gg_gznr4"].ToString();
                    tbx3_gg_js4.Text = dr["cdrw_gg_js4"].ToString();
                    tbx3_gg_khjg4.Text = dr["cdrw_gg_khjg4"].ToString();
                    tbx3_gg_yjs1.Text = dr["pyyjs1"].ToString();
                    tbx3_gg_yjs2.Text = dr["pyyjs2"].ToString();
                    tbx3_gg_yjs3.Text = dr["pyyjs3"].ToString();
                    tbx3_gg_yjs4.Text = dr["pyyjs4"].ToString();

                    if (dr["cdrw_gg_gznr1"].ToString() == "")
                        ddlist3_gg_gznr1.SelectedIndex = 0;
                    else
                        ddlist3_gg_gznr1.SelectedValue = dr["cdrw_gg_gznr1"].ToString();
                    if (dr["cdrw_gg_gznr2"].ToString() == "")
                        ddlist3_gg_gznr2.SelectedIndex = 0;
                    else
                        ddlist3_gg_gznr2.SelectedValue = dr["cdrw_gg_gznr2"].ToString();
                    if (dr["cdrw_gg_gznr3"].ToString() == "")
                        ddlist3_gg_gznr3.SelectedIndex = 0;
                    else
                        ddlist3_gg_gznr3.SelectedValue = dr["cdrw_gg_gznr3"].ToString();


                    if (dr["cdrw_gg_js1"].ToString() == "")
                        ddlist3_gg_js1.SelectedIndex = 0;
                    else
                        ddlist3_gg_js1.SelectedValue = dr["cdrw_gg_js1"].ToString();
                    if (dr["cdrw_gg_js2"].ToString() == "")
                        ddlist3_gg_js2.SelectedIndex = 0;
                    else
                        ddlist3_gg_js2.SelectedValue = dr["cdrw_gg_js2"].ToString();
                    if (dr["cdrw_gg_js3"].ToString() == "")
                        ddlist3_gg_js3.SelectedIndex = 0;
                    else
                        ddlist3_gg_js3.SelectedValue = dr["cdrw_gg_js3"].ToString();

                    if (dr["cdrw_gg_khjg1"].ToString() == "")
                        ddlist3_gg_khjg1.SelectedIndex = 0;
                    else
                        ddlist3_gg_khjg1.SelectedValue = dr["cdrw_gg_khjg1"].ToString();
                    if (dr["cdrw_gg_khjg2"].ToString() == "")
                        ddlist3_gg_khjg2.SelectedIndex = 0;
                    else
                        ddlist3_gg_khjg2.SelectedValue = dr["cdrw_gg_khjg2"].ToString();
                    if (dr["cdrw_gg_khjg3"].ToString() == "")
                        ddlist3_gg_khjg3.SelectedIndex = 0;
                    else
                        ddlist3_gg_khjg3.SelectedValue = dr["cdrw_gg_khjg3"].ToString();
                }

                FillGridView("cdrwqk", gv_cdrw);
            }
            //承担项目情况
            str_qry = "SELECT id,ktmc,qzsj,jfs,ktly+' '+ktjb+' '+ktbh as kt,drjs,NewFileName  from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            FillGridView(str_qry, "cdxmqk", gv_drxmqk);
        }
        else if (Table4.Visible)
        {
            str_qry = "SELECT id,lzmc,zs,slqk,kwmc,pm,fbsj,NewFileName from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            FillGridView(str_qry, "lzbgqk", gv_lzbgqk);
        }
        else if (Table5_5.Visible)
        {
            str_qry = "SELECT id,hjcgmc,jljb+' '+jlmc as jl,hjdj,pm,hjsj,NewFileName from hjqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            FillGridView(str_qry, "hjqk", gv_hjqk);
            FillGridView("yxlw", gv_yxlw);
            FillGridView("lwbyyqk", gv_lwbyyqk);
            FillGridView("hgjzlqk", gv_hgjzlqk);
            if (Hidden1.Value == "正研级高级工程师")
            {
                FillGridView("qgjcybpb", gv5_1);
                FillGridView("xjgrch", gv5_2);
                FillGridView("dldzybyj", gv5_3);
                FillGridView("yqrj", gv5_4);
                FillGridView("aqpj", gv5_5);
            }
        }
        else if (Table6.Visible)
        {
            str_qry = "SELECT chengguo,ndkh1,ndkh2,ndkh3 from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            if (dr != null)
            {
                ftb_chengguo.Text = dr["chengguo"].ToString();
                tbx6_ndkh1.Text = dr["ndkh1"].ToString();
                tbx6_ndkh2.Text = dr["ndkh2"].ToString();
                tbx6_ndkh3.Text = dr["ndkh3"].ToString();
            }
        }
        else if (Table7.Visible)
        {
            str_qry = "SELECT kssj,yz,jb,zy,fs,wymsly from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            tbx7_kssj.Text = dr["kssj"].ToString();
            tbx7_yz.Text = dr["yz"].ToString();
            tbx7_jb.Text = dr["jb"].ToString();
            tbx7_zy.Text = dr["zy"].ToString();
            tbx7_fs.Text = dr["fs"].ToString();
            ftb_wymsly.Text = dr["wymsly"].ToString();

            str_qry = "SELECT * from fylw where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["fylw"] = DBFun.GetDataView(str_qry);
            DataView dv = (DataView)Session["fylw"];
            gv_fylw.DataSource = dv;
            gv_fylw.DataBind();
        }
        else if (Table8.Visible)
        {
            str_qry = "SELECT jsj_km1,jsj_km2,jsj_km3,jsj_km4,jsj_msly,jsj_fujian from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            tbx8_km1.Text = dr["jsj_km1"].ToString();
            tbx8_km2.Text = dr["jsj_km2"].ToString();
            tbx8_km3.Text = dr["jsj_km3"].ToString();
            tbx8_km4.Text = dr["jsj_km4"].ToString();
            ftb_jsjmsly.Text = dr["jsj_msly"].ToString();
        }
        else if (Table9.Visible)
        {
            str_qry = "SELECT pglb,pgtj,jtpgly,sh_flag from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            string str_pglb = dr["pglb"].ToString();
            string str_pgtj = dr["pgtj"].ToString();
            string str_sh = dr["sh_flag"].ToString();

            if (str_sh == "通过" || str_sh == "未通过")
                rbtnlist_sh.SelectedValue = str_sh;
            ftb_jtpgly.Text = dr["jtpgly"].ToString();
            for (int i = 0; i < cbxlist_pglb.Items.Count; i++)
            {
                if (str_pglb.IndexOf(Convert.ToString(i + 1)) > 0)
                    cbxlist_pglb.Items[i].Selected = true;
            }
            for (int i = 0; i < cbxlist_pgtj.Items.Count; i++)
            {
                if (str_pgtj.IndexOf(Convert.ToString(i + 1)) > 0)
                    cbxlist_pgtj.Items[i].Selected = true;
            }

        }
        str_qry = "select edit_flag from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        bool b_EditFlag = Convert.ToBoolean(DBFun.ExecuteScalar(str_qry));
        imgbtn_save.Visible = false;
        imgbtn_confirm.Visible = b_EditFlag;
        imgbtn_pingfen.Visible = !b_EditFlag;
        bindData_fs();
    }
    #endregion

    #region 分数绑定
    private void bindData_fs()
    {
        string str_qry = "";
        if (Table3.Visible)
        {
            if (Panel3_1.Visible)
            {
                //string str_sql = "update cpry set fs_cdrw1_gg = '" + tbx3_cdrw1.Text + "',fs_cdrw2_gg = '" + tbx3_cdrw2.Text + "',fs_cdrw3_gg = '" + tbx3_cdrw3.Text +
                //         "', fs_cdrw4_gg = '" + tbx3_cdrw4.Text + "',fs_cdrw5_gg = '" + str_fenshu + "',fs_cdrw5_gg_type = '" + str_rbtnid +
                //         "', fs_cdrw6_gg = '" + str_fenshu_gjjy + "',fs_cdrw7_gg = '" + str_fenshu_yjs + "'" +
                //         " where sfzh = '" + Session["sfzh"].ToString() + "'";
                str_qry = "SELECT fs_cdrw1_gg,fs_cdrw2_gg,fs_cdrw3_gg,fs_cdrw4_gg,format(iif(isnull(fs_cdrw5_gg),0,fs_cdrw5_gg),'0.#') as fs5," +
                          " fs_cdrw5_gg_type,iif(isnull(fs_cdrw6_gg),'false','true'), iif(isnull(fs_cdrw7_gg),'false','true') " +
                          " from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
                DataRow dr = DBFun.GetDataRow(str_qry);
                tbx3_cdrw1.Text = dr[0].ToString();
                tbx3_cdrw2.Text = dr[1].ToString();
                tbx3_cdrw3.Text = dr[2].ToString();
                tbx3_cdrw4.Text = dr[3].ToString();
                RadioButton rb = new RadioButton();

                rb = (RadioButton)this.FindControl(dr["fs_cdrw5_gg_type"].ToString());
                if (rb != null) rb.Checked = (rb != null);
                cbx3_1.Checked = Convert.ToBoolean(dr[6].ToString());
                cbx3_2.Checked = Convert.ToBoolean(dr[7].ToString());
            }

            if (Panel3_2.Visible)
            {
                rbtn3_1.Checked = false;
                rbtn3_2.Checked = false;
                rbtn3_3.Checked = false;
                rbtn3_4.Checked = false;
                rbtn3_5.Checked = false;
                rbtn3_6.Checked = false;
                rbtn3_7.Checked = false;
                rbtn3_8.Checked = false;
                rbtn3_9.Checked = false;
                rbtn3_10.Checked = false;
                rbtn3_11.Checked = false;
                rbtn3_12.Checked = false;
                rbtn3_13.Checked = false;
                rbtn3_14.Checked = false;
                rbtn3_15.Checked = false;
                rbtn3_16.Checked = false;
                rbtn3_17.Checked = false;
                rbtn3_18.Checked = false;
                rbtn3_19.Checked = false;
                //string str_rbtn = "rbtn3_";
                //RadioButton rbtn = new RadioButton();
                //for (int i = 1; i < 20; i++)
                //{
                //    str_rbtn = str_rbtn + i.ToString();
                //    rbtn = (RadioButton)this.FindControl(str_rbtn);
                //    rbtn.Checked = false;
                //}
                str_qry = "select fs_type from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "' and id = " + lbl_id.Text;

                if (DBFun.ExecuteScalar(str_qry) == null)
                    return;

                string str_fsid = DBFun.ExecuteScalar(str_qry).ToString();
                if (str_fsid == null || str_fsid == "") return;
                RadioButton rb = new RadioButton();
                rb = (RadioButton)this.FindControl(str_fsid);
                if (rb != null) rb.Checked = true;
            }
        }
        else if (Table4.Visible)
        {
            if (Panel4.Visible)
            {
                rbtn4_1.Checked = false;
                rbtn4_2.Checked = false;
                rbtn4_3.Checked = false;
                rbtn4_4.Checked = false;
                rbtn4_5.Checked = false;
                rbtn4_6.Checked = false;
                rbtn4_7.Checked = false;
                rbtn4_8.Checked = false;
                rbtn4_11.Checked = false;
                rbtn4_12.Checked = false;
                rbtn4_13.Checked = false;
                rbtn4_21.Checked = false;
                rbtn4_22.Checked = false;
                rbtn4_31.Checked = false;
                rbtn4_32.Checked = false;

                str_qry = "SELECT iif(isnull(sh_flag),'未审核','已审核') as shenhe," +
                    " format(iif(isnull(fenshu1),0,fenshu1)+iif(isnull(fenshu2),0,fenshu2)+iif(isnull(fenshu3),0,fenshu3)+iif(isnull(istp),0,istp),'0.#') as fenshu," +
                    " fs1_type,fs2_type,fs3_type,fs4_type,iif(istp=0.3,'true','false') as istp_flag " +
                    " from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "' and  id = " + lbl_id.Text;
                DataRow dr = DBFun.GetDataRow(str_qry);
                string str_rbtnid = dr["fs1_type"].ToString();
                RadioButton rb = new RadioButton();
                rb = (RadioButton)this.FindControl(str_rbtnid);
                if (rb != null) rb.Checked = true;

                str_rbtnid = dr["fs2_type"].ToString();
                rb = (RadioButton)this.FindControl(str_rbtnid);
                if (rb != null) rb.Checked = true;

                str_rbtnid = dr["fs3_type"].ToString();
                rb = (RadioButton)this.FindControl(str_rbtnid);
                if (rb != null) rb.Checked = true;

                str_rbtnid = dr["fs4_type"].ToString();
                rb = (RadioButton)this.FindControl(str_rbtnid);
                if (rb != null) rb.Checked = true;

                cbx4_istp.Checked = Convert.ToBoolean(dr["istp_flag"].ToString());
            }
        }
        else if (Table5.Visible)
        {

            if (Panel5.Visible)
            {
                str_qry = "select fs_lwbyyqk,fs_yfxm from cpry  where sfzh = '" + Session["sfzh"].ToString() + "'";
                DataRow dr = DBFun.GetDataRow(str_qry);
                tbx5_1.Text = dr["fs_lwbyyqk"].ToString();
                tbx5_2.Text = dr["fs_yfxm"].ToString();

                rbtn5_1.Checked = false;
                rbtn5_2.Checked = false;
                rbtn5_3.Checked = false;
                rbtn5_4.Checked = false;
                rbtn5_5.Checked = false;
                rbtn5_6.Checked = false;
                rbtn5_7.Checked = false;
                rbtn5_8.Checked = false;
                rbtn5_9.Checked = false;
                rbtn5_10.Checked = false;
                rbtn5_11.Checked = false;
                rbtn5_12.Checked = false;
                rbtn5_13.Checked = false;
                rbtn5_14.Checked = false;
                rbtn5_15.Checked = false;
                rbtn5_16.Checked = false;
                rbtn5_17.Checked = false;
                rbtn5_18.Checked = false;
                rbtn5_19.Checked = false;
                rbtn5_20.Checked = false;
                rbtn5_24.Checked = false;
                rbtn5_25.Checked = false;

                str_qry = "SELECT iif(isnull(fenshu1),0,fenshu1),iif(isnull(fenshu2),0,fenshu2),fs1_type,iif(isnull(sh_flag),'未审核',sh_flag) from " +
                          hdn_flag.Value + " where sfzh = '" + Session["sfzh"].ToString() + "' and id = " + lbl_id.Text;
                dr = DBFun.GetDataRow(str_qry);
                string str_rbtnid = dr["fs1_type"].ToString();
                RadioButton rb = new RadioButton();
                //if (Session["rb"] == null) Session["rb"] = rbtn5_1;
                //rb = (RadioButton)Session["rb"];
                //if (rb != null) rb.Checked = false;
                rb = (RadioButton)this.FindControl(str_rbtnid);
                if (rb != null) rb.Checked = true;
                //Session["rb"] = rb;
                //if (dr["fenshu2"].ToString() == null)
                tbx5_1.Text = dr[1].ToString();
            }
        }

    }
    #endregion

    //FillGridView
    protected void FillGridView(string str_TableName, GridView gv_bind)
    {
        string str_qry = "SELECT * from " + str_TableName + " where sfzh = '" + Session["sfzh"].ToString() + "' ;";
        Session[str_TableName] = DBFun.GetDataView(str_qry);
        DataView dv = (DataView)Session[str_TableName];
        gv_bind.DataSource = dv;
        gv_bind.DataBind();
    }
    protected void FillGridView(string str_sql, string str_TableName, GridView gv_bind)
    {
        Session[str_TableName] = DBFun.GetDataView(str_sql);
        DataView dv = (DataView)Session[str_TableName];
        gv_bind.DataSource = dv;
        gv_bind.DataBind();
    }

    #region 上传文件
    public string UploadFile(FileUpload Fupload, string str_mulu, string str_maxid)
    {
        //文件上传
        string str_ParentFolder;
        string str_NewFileName, str_OriginalFileName;
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return ",";

            str_ParentFolder = Server.MapPath(".\\" + str_mulu + "\\");

            //创建以教师id+课程id为名的文件夹
            //string str_TeacherId, str_CourseId, str_FileType;
            //str_TeacherId = Session["TeacherID"].ToString();
            //str_CourseId = ddlist_Course.SelectedValue;
            //str_FileType = ddlist_Type.SelectedValue;
            //dir = str_TeacherId + "_" + str_CourseId;
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "";
            }
            //Random rd = new Random();

            string extname;


            extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
            str_OriginalFileName = Fupload.FileName;
            str_NewFileName = str_maxid + "." + extname;
            //判断上传课件类型
            string str_sql = "select url from t_dict where flm=8 and bm in (4,5)";
            DataView dv = DBFun.dataView(str_sql);
            string str_UploadFileType = dv.Table.Rows[0]["url"].ToString();
            string str_UploadFileSize = dv.Table.Rows[1]["url"].ToString();
            if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
            {
                Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                return "";
            }
            if (Convert.ToInt16(str_UploadFileSize) * 1024 * 1024 < Fupload.PostedFile.ContentLength)
            {
                Response.Write("<script>alert('不允许上传超过 " + str_UploadFileSize + "M的文件！');</script>");
                return "";
            }

            //string str_sql;
            //str_sql = " Select iif(Max(FileID),Max(FileID)+1,1) " +
            //          " From CourseTeacher " +
            //          " Where (CourseID=" + str_CourseId + ") AND (TeacherID = " + str_TeacherId + ");";
            //int i_MaxID = (int)DBFun.ExecuteScalar(str_sql);


            ///*判断是否更名*/
            //if (tbx_Rename.Visible & tbx_Rename.Text.Trim() != "")
            //{
            //    filename = tbx_Rename.Text.Trim() + "." + extname;
            //}
            //else
            //{
            //    filename = Fupload.FileName;
            //}
            //if (File.Exists(str_ParentFolder + dir + "\\" + filename))
            //{
            //    Response.Write("<script>alert('文件 " + filename + " 已存在！');</script>");
            //    return "";
            //}

            Fupload.PostedFile.SaveAs(str_ParentFolder + "\\" + str_NewFileName);
            //Session["FilePath"] = str_ParentFolder + "\\" + filename;
            //str_sql = "Insert Into CourseTeacher (CourseID ,TeacherID ,FileID,FilePath,FileName,FileType,Chapter,CreateDate) Values (" +
            //          str_CourseId + "," + str_TeacherId + "," + i_MaxID.ToString() + ",'" + dir + "','" + filename + "','" +
            //          str_FileType + "','" + tbx_Chapter.Text + "','" + System.DateTime.Today.ToLongDateString() + "')";
            //DBFun.ExecuteUpdate(str_sql);

            Fupload.Dispose();
            return str_OriginalFileName + "," + str_NewFileName;


            //用文件名上传的方式
            //if (tbx_Research.Text != "")
            //{
            //    extname = System.IO.Path.GetExtension(tbx_Research.Text);
            //    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + extname;

            //    System.IO.File.Copy(tbx_Research.Text, Server.MapPath(".\\kejian\\") + filename);
            //    return filename;
            //}
            //return "";
        }
        catch
        {
            File.Delete(Session["FilePath"].ToString());
            Response.Write("<script>alert('文件上传失败！');</script>");
            return "";
        }
    }
    #endregion

    #region  左边链接
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table1);
        lbl_tbrq.Text = DateTime.Now.ToString("yyyy年MM月dd日");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table2);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table3);
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table4);
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table5);
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table6);
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table7);
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table8);
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table9);
    }
    #endregion
    protected void btn_cdrw_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdrwqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        str_sql = string.Format("insert into cdrwqk (id,rwmc,gznr,qzsj,zwjs,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}');",
                         int_maxbm, tbx3_rwmc.Text, tbx3_gznr.Text, tbx3_qzrq.Text, tbx3_zwjs.Text, Session["sfzh"].ToString());

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_drxm_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select count(*) from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
        {
            Response.Write("<script>alert('最多只能增加10项！');</script>");
            return;
        }
        str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

        string str_pra = UploadFile(FileUpload3_cdxm, "cdxmqk/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into cdxmqk (id,ktmc,qzsj,jfs,ktly,ktjb,ktbh,drjs,sfzh,sh_flag,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}',{3},'{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}');",
                         int_maxbm, tbx3_ktmc.Text, tbx3_qzsj.Text, Convert.ToInt32(tbx3_jfs.Text), ddlist3_ktly.SelectedValue,
                         ddlist3_ktjb1.SelectedValue, tbx3_ktbh.Text, ddlist3_drjs.SelectedValue, Session["sfzh"].ToString(), "未审核",
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_lzbgqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select count(*) from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
        {
            Response.Write("<script>alert('最多只能增加10项！');</script>");
            return;
        }
        str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

        string str_pra = UploadFile(FileUpload4, "lzbgqk/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into lzbgqk (id,lzmc,zs,slqk,kwmc,pm,fbsj,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}',{2},'{3}','{4}',{5},'{6}','{7}','{8}','{9}');",
                         int_maxbm, tbx4_lzmc.Text, Convert.ToInt32(tbx4_zs.Text), ddlist4_slqk.SelectedValue, tbx4_kwmc.Text, Convert.ToInt32(tbx4_pm.Text),
                         tbx4_fbsj.Text, Session["sfzh"].ToString(), str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_hjqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select count(*) from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
        {
            Response.Write("<script>alert('最多只能增加10项！');</script>");
            return;
        }
        str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_hjqk, "hjqk/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        try
        {
            int int_pm = Convert.ToInt32(tbx51_pm.Text);
        }
        catch
        {
            Response.Write("<script>alert('排名只能输入数字！');</script>");
            return;
        }
        str_sql = string.Format("insert into hjqk (id,hjcgmc,jljb,jlmc,hjdj,pm,hjsj,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}','{9}');",
                         int_maxbm, tbx5_hjcgmc.Text, ddlist5_jljb.SelectedValue, tbx5_jlmc.Text, ddlist5_hjdj.SelectedValue,
                         Convert.ToInt32(tbx51_pm.Text), ddlist5_hjdj.SelectedValue, Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_lwbyyqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

        string str_pra = UploadFile(FileUpload5_lwyy, "lwyy/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        try
        {
            int int_pm = Convert.ToInt32(tbx5_tycs.Text);
        }
        catch
        {
            Response.Write("<script>alert('他引次数只能输入数字！');</script>");
            return;
        }
        str_sql = string.Format("insert into lwbyyqk (id,lwmc,zz,fbsj,kwmc,tycs,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}');",
                         int_maxbm, tbx5_lwmc.Text, tbx5_zz.Text, tbx5_fbsj.Text, tbx5_kwmc.Text, Convert.ToInt32(tbx5_tycs.Text), Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_hgjzlqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_hgjzlqk, "gjzl/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        try
        {
            int int_pm = Convert.ToInt32(tbx5_pm.Text);
        }
        catch
        {
            Response.Write("<script>alert('排名只能输入数字！');</script>");
            return;
        }
        str_sql = string.Format("insert into hgjzlqk (id,zlmc,zlh,sj,zllx,pm,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}');",
                         int_maxbm, tbx5_zlmc.Text, tbx5_zlh.Text, tbx5_sj.Text, ddlist5_zllx.SelectedValue, Convert.ToInt32(tbx5_pm.Text), Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_fylw_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from fylw where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload7_fylw, "fylw/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        try
        {
            int int_pm = Convert.ToInt32(tbx7_zs.Text);
        }
        catch
        {
            Response.Write("<script>alert('字数只能输入数字！');</script>");
            return;
        }
        str_sql = string.Format("insert into fylw (id,fylw,ywz,zs,cbdw,cbsj,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}',{3},'{4}','{5}','{6}','{7}','{8}');",
                         int_maxbm, tbx7_fylw.Text, tbx7_ywz.Text, Convert.ToInt32(tbx7_zs.Text), tbx7_cbdw.Text, tbx7_cbsj.Text, Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn_confirm_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = string.Format("update cpry set edit_flag = {0} where sfzh = '{1}'",
                    false, Session["sfzh"].ToString());
        if (Hidden1.Value == "admin")
        {
            str_sql = string.Format("update cpry set sh_flag = '{0}' where sfzh = '{1}'",
                    rbtnlist_sh.SelectedValue, Session["sfzh"].ToString());
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }

    #region  保存
    protected void imgbtn_save_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (Table1.Visible == true)
        {
            str_sql = string.Format("update cpry set gzdw = '{0}',yourname = '{1}',xrzw = '{2}',csgz = '{3}',sbzw = '{4}',tbrq = '{5}' where sfzh = '{6}'",
                 ddlist_gzdw.SelectedValue, tbx_xm.Text, ddlist_xrzw.SelectedValue, ddlist_csgz.SelectedValue, lbl_sbzw.Text, lbl_tbrq.Text, Session["sfzh"].ToString());
        }
        else if (Table2.Visible == true)
        {
            string ls_gzjj = ftb_gzjj.Text.Replace("'", "’");
            string str_pra = UploadFile(FileUpload_photo, "photo", Session["sfzh"].ToString());
            str_pra = str_pra.Substring(str_pra.IndexOf(",") + 1);
            if (str_pra == "") return;
            if (str_pra == ",")
            {
                str_pra = img_photo.ImageUrl.Substring(img_photo.ImageUrl.LastIndexOf("/") + 1);
            }

            str_sql = string.Format("update cpry set yourname = '{0}',birth = '{1}',xingbie = '{2}',zgxl_mc = '{3}',zgxl_bysj = '{4}'," +
                "zgxl_zy = '{5}',zgxl_sydw = '{6}',fhxl_mc = '{7}',fhxl_bysj = '{8}',fhxl_zy = '{9}',fhxl_sydw = '{10}'," +
                "fhxw_mc = '{11}',fhxw_qdsj = '{12}',fhxw_zy = '{13}',fhxw_sydw = '{14}',xrzw = '{15}',pdsj = '{16}',prsj = '{17}',gzjj='{18}',photo = '{19}' where sfzh = '{20}'",
                tbx2_xm.Text, tbx2_csny.Text, ddlist2_xb.SelectedValue, tbx2_xl1.Text, tbx2_bysj1.Text, tbx2_zy1.Text, tbx2_sydw1.Text,
                tbx2_xl2.Text, tbx2_bysj2.Text, tbx2_zy2.Text, tbx2_sydw2.Text, tbx2_xw.Text, tbx2_qdsj.Text, tbx2_zy3.Text, tbx2_sydw3.Text,
                tbx2_xrzw.Text, tbx2_pdsj.Text, tbx2_prsj.Text, ls_gzjj, str_pra, Session["sfzh"].ToString());
        }
        else if (Table3.Visible == true)
        {
            //str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdrwqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            //int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            //str_sql = string.Format("insert into cdrwqk (id,rwmc,gznr,qzsj,zwjs,sfzh) " +
            //                 " values({0},'{1}','{2}','{3}','{4}','{5}');",
            //                 int_maxbm, tbx3_rwmc.Text, tbx3_gznr.Text, tbx3_qzrq.Text, tbx3_zwjs.Text, Session["sfzh"].ToString());
            if (Hidden1.Value == "研究员")
            {
                str_sql = string.Format("update cpry set cdrw_mc1 = '{0}',cdrw_gznr1 = '{1}',cdrw_mc2 = '{2}',cdrw_gznr2 = '{3}',cdrw_mc3 = '{4}'," +
                                 "cdrw_gznr3 = '{5}', pyyjs1 = '{6}',pyyjs2 = '{7}',pyyjs3 = '{8}',pyyjs4 = '{9}' where sfzh = '{10}'",
                                 rbtnlist3_1.SelectedValue, tbx3_1.Text, rbtnlist3_2.SelectedValue, tbx3_2.Text, rbtnlist3_3.SelectedValue,
                                 tbx3_3.Text, tbx3_41.Text, tbx3_42.Text, tbx3_43.Text, tbx3_44.Text, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update cpry set cdrw_gg_gzsj1 = '{0}',cdrw_gg_gznr1 = '{1}',cdrw_gg_js1 = '{2}',cdrw_gg_khjg1 = '{3}'," +
                                        "cdrw_gg_gzsj2 = '{4}',cdrw_gg_gznr2 = '{5}',cdrw_gg_js2 = '{6}',cdrw_gg_khjg2 = '{7}'," +
                                        "cdrw_gg_gzsj3 = '{8}',cdrw_gg_gznr3 = '{9}',cdrw_gg_js3 = '{10}',cdrw_gg_khjg3 = '{11}'," +
                                        "cdrw_gg_gzsj4 = '{12}',cdrw_gg_gznr4 = '{13}',cdrw_gg_js4 = '{14}',cdrw_gg_khjg4 = '{15}'," +
                                        " pyyjs1 = '{16}',pyyjs2 = '{17}',pyyjs3 = '{18}',pyyjs4 = '{19}' where sfzh = '{20}'",
                             tbx3_gg_gzsj1.Text, ddlist3_gg_gznr1.SelectedValue, ddlist3_gg_js1.SelectedValue, ddlist3_gg_khjg1.SelectedValue,
                             tbx3_gg_gzsj2.Text, ddlist3_gg_gznr2.SelectedValue, ddlist3_gg_js2.SelectedValue, ddlist3_gg_khjg2.SelectedValue,
                             tbx3_gg_gzsj3.Text, ddlist3_gg_gznr3.SelectedValue, ddlist3_gg_js3.SelectedValue, ddlist3_gg_khjg3.SelectedValue,
                             tbx3_gg_gzsj4.Text, tbx3_gg_gznr4.Text, tbx3_gg_js4.Text, tbx3_gg_khjg4.Text,
                             tbx3_gg_yjs1.Text, tbx3_gg_yjs2.Text, tbx3_gg_yjs3.Text, tbx3_gg_yjs4.Text, Session["sfzh"].ToString());
            }
        }
        else if (Table6.Visible == true)
        {
            string ls_chengguo = ftb_chengguo.Text.Replace("'", "’");
            str_sql = string.Format("update cpry set chengguo = '{0}',ndkh1 = '{1}',ndkh2 = '{2}',ndkh3 = '{3}' where sfzh = '{4}'",
                ls_chengguo, tbx6_ndkh1.Text, tbx6_ndkh2.Text, tbx6_ndkh3.Text, Session["sfzh"].ToString());
        }
        else if (Table7.Visible == true)
        {
            string ls_wymsly = ftb_wymsly.Text.Replace("'", "’");
            str_sql = string.Format("update cpry set kssj = '{0}',yz = '{1}',jb = '{2}',zy = '{3}',fs = '{4}',wymsly = '{5}' where sfzh = '{6}'",
                tbx7_kssj.Text, tbx7_yz.Text, tbx7_jb.Text, tbx7_zy.Text, tbx7_fs.Text, ls_wymsly, Session["sfzh"].ToString());
        }
        else if (Table8.Visible == true)
        {
            string str_pra = UploadFile(FileUpload8_jsj, "jsj", Session["sfzh"].ToString());
            if (str_pra == "") return;
            string ls_msly = ftb_jsjmsly.Text.Replace("'", "’");
            str_sql = string.Format("update cpry set jsj_km1 = '{0}',jsj_km2 = '{1}',jsj_km3 = '{2}',jsj_km4 = '{3}',jsj_msly = '{4}'," +
                " jsj_fujian = '{5}' where sfzh = '{6}'",
                tbx8_km1.Text, tbx8_km2.Text, tbx8_km3.Text, tbx8_km4.Text, ls_msly, str_pra.Substring(str_pra.IndexOf(",") + 1), Session["sfzh"].ToString());
        }
        else if (Table9.Visible == true)
        {
            string str_pglb = "";
            for (int i = 0; i < cbxlist_pglb.Items.Count; i++)
            {
                if (cbxlist_pglb.Items[i].Selected)
                    str_pglb = str_pglb + ";" + Convert.ToString(i + 1);
            }
            string str_pgtj = "";
            for (int i = 0; i < cbxlist_pgtj.Items.Count; i++)
            {
                if (cbxlist_pgtj.Items[i].Selected)
                    str_pgtj = str_pgtj + ";" + Convert.ToString(i + 1);
            }
            string ls_pgly = ftb_jtpgly.Text.Replace("'", "’");
            str_sql = string.Format("update cpry set pglb = '{0}',pgtj = '{1}',jtpgly = '{2}'",
                str_pglb, str_pgtj, ls_pgly);
            if (Hidden1.Value == "admin")
            {
                str_sql = str_sql + ", sh_flag = '" + rbtnlist_sh.SelectedValue + "' ";
            }
            str_sql = str_sql + " where sfzh = '" + Session["sfzh"].ToString() + "'";
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }

    #endregion
   
    protected void ddlist3_ktly_SelectedIndexChanged(object sender, EventArgs e)
    {
        ddlist3_ktjb1.Visible = (ddlist3_ktly.SelectedIndex < 5);
        ddlist3_ktjb2.Visible = (ddlist3_ktly.SelectedIndex >= 5 && ddlist3_ktly.SelectedIndex <= 7);
    }
    protected void rbtnlist3_1_SelectedIndexChanged(object sender, EventArgs e)
    {
        tbx3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
        tbx3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
        tbx3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
        lbl3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
        lbl3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
        lbl3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
    }
    protected void imgbtn_yxlw_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yxlw where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

        string str_pra = UploadFile(FileUpload5_yxlw, "yxlw/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;

        str_sql = string.Format("insert into yxlw (id,lwmc,hjmc,zzpm,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, tbx52_lwmc.Text, tbx52_hjmc.Text, tbx52_zzpm.Text, Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
   
    protected void gv_drxmqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["cdxmqk"];
        string str_url = "./cdxmqk/" + dv.Table.Rows[e.NewEditIndex]["NewFileName"].ToString();
        Response.Redirect(str_url);
    }
    protected void gv_hjqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["hjqk"];
        string str_url = "./hjqk/" + dv.Table.Rows[e.NewEditIndex]["NewFileName"].ToString();
        Response.Redirect(str_url);
    }
    protected void gv_yxlw_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["yxlw"];
        string str_url = "./yxlw/" + dv.Table.Rows[e.NewEditIndex]["NewFileName"].ToString();
        Response.Redirect(str_url);
    }
    protected void gv_lwbyyqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["lwbyyqk"];
        string str_url = "./lwyy/" + dv.Table.Rows[e.NewEditIndex]["NewFileName"].ToString();
        Response.Redirect(str_url);
    }
    protected void gv_hgjzlqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["hgjzlqk"];
        string str_url = "./gjzl/" + dv.Table.Rows[e.NewEditIndex]["NewFileName"].ToString();
        Response.Redirect(str_url);
    }
    protected void ddlist_xrzw_SelectedIndexChanged(object sender, EventArgs e)
    {
        SetJSZW();
    }
    protected void SetJSZW()
    {
        if (ddlist_xrzw.SelectedValue == "副研究员")
            lbl_sbzw.Text = "研究员";
        else
            lbl_sbzw.Text = "正研级高级工程师";
    }

    protected void imgbtn5_1_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from qgjcybpb where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_1, "qgjcybpb/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into qgjcybpb (id,nd,grpm,zmwjwh,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, tbx5_1_nd.Text, tbx5_1_grpm.Text, tbx5_1_zmwjwh.Text, Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn5_2_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from xjgrch where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_2, "xjgrch/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into xjgrch (id,nd,zmwjwh,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}');",
                         int_maxbm, tbx5_2_nd.Text, tbx5_2_zmwjwh.Text, Session["sfzh"].ToString(),
                         str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn5_3_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from dldzybyj where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_3, "dldzybyj/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into dldzybyj (id,dznd,dzdd,dzzj,ybxg,js,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}');",
                         int_maxbm, tbx5_3_dznd.Text, tbx5_3_dzdd.Text, tbx5_3_dzzj.Text, ddlist5_3_ybxg.SelectedValue, ddlist5_3_js.SelectedValue,
                         Session["sfzh"].ToString(), str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn5_4_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yqrj where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_4, "yqrj/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into yqrj (id,yqrjmc,jdqk,jddw,tgyyqk,pm,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}');",
                         int_maxbm, tbx5_4_yqrjmc.Text, ddlist5_4_jdqk.SelectedValue, tbx5_4_jddw.Text, ddlist5_4_tgyyqk.SelectedValue,
                         tbx5_4_pm.Text, Session["sfzh"].ToString(), str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn5_5_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from aqpj where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        string str_pra = UploadFile(FileUpload5_5, "aqpj/" + Session["sfzh"].ToString(), int_maxbm.ToString());
        if (str_pra == "") return;
        str_sql = string.Format("insert into aqpj (id,xmmc,js,psqk,wh,sfzh,OriginalFileName,NewFileName) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}');",
                         int_maxbm, tbx5_5_xmmc.Text, ddlist5_5_js.SelectedValue, ddlist5_5_psqk.SelectedValue, tbx5_5_wh.Text,
                         Session["sfzh"].ToString(), str_pra.Substring(0, str_pra.IndexOf(",")), str_pra.Substring(str_pra.IndexOf(",") + 1));

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    protected void imgbtn3_cdrw_gg_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdrwqk_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
        int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
        str_sql = string.Format("insert into cdrwqk_gg (id,gzsj,gznr,js,khjg,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}');",
                         int_maxbm, tbx3_gzsj_gg.Text, tbx3_gznr_gg.Text, tbx3_js_gg.Text, tbx3_khjg_gg.Text, Session["sfzh"].ToString());

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    


    //GridViewDownLoadFile
    //文件下载
    #region  GridViewDownLoadFile
    protected void GridViewDownLoadFile(string str_TableName, int i_RowNum)
    {
        DataView dv = (DataView)Session[str_TableName];
        string str_url = "./" + str_TableName + "/" + Session["sfzh"].ToString() + "/" + dv.Table.Rows[i_RowNum]["NewFileName"].ToString();
        Response.Redirect(str_url);
    }
    #endregion

    protected void gv5_1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv5_1.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel5.Visible = true;
        bindData();
    }
    protected void gv5_2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv5_2.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel5.Visible = true;
        bindData();
    }
    protected void gv5_3_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv5_3.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel5.Visible = true;
        bindData();
    }
    protected void gv5_4_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv5_4.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel5.Visible = true;
        bindData();
    }
    protected void gv5_5_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv5_5.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel5.Visible = true;
        bindData();
    }
    protected void imgbtn_pingfen_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("zgsb_pingshen.aspx");
    }

   


    #region 任务评分
    protected void btn3_1_Click(object sender, EventArgs e)
    {
        RadioButton rbutton = new RadioButton();
        string str_fenshu = "0";
        if (rbtn3_cdrw1.Checked)
            rbutton = rbtn3_cdrw1;
        else if (rbtn3_cdrw2.Checked)
            rbutton = rbtn3_cdrw2;
        //else if (rbtn3_23.Checked)
        //    rbutton = rbtn3_23;
        str_fenshu = rbutton.Text;
        string str_rbtnid = rbutton.ID;
        if (str_fenshu == "0")
        {
            Response.Write("<script>alert('请选择一个分数！');</script>");
            return;
        }
        string str_fenshu_yjs = "0";
        if (cbx3_2.Checked) str_fenshu_yjs = "1.0";
        string str_fenshu_gjjy = "0";
        if (cbx3_1.Checked) str_fenshu_gjjy = "0.1";
        
        //string str_sql = "update cpry set fs_cdrw1 = " + str_fenshu + ",fs_cdrw1_type = '" + str_rbtnid + "',fs_cdrw2 = " + str_fenshu_yjs + " where sfzh = '" + Session["sfzh"].ToString()+"'";
        string str_sql = "update cpry set fs_cdrw1_gg = '" + tbx3_cdrw1.Text + "',fs_cdrw2_gg = '" + tbx3_cdrw2.Text + "',fs_cdrw3_gg = '" + tbx3_cdrw3.Text +
                         "', fs_cdrw4_gg = '" + tbx3_cdrw4.Text + "',fs_cdrw5_gg = '" + str_fenshu + "',fs_cdrw5_gg_type = '" + str_rbtnid +
                         "', fs_cdrw6_gg = '" + str_fenshu_gjjy + "',fs_cdrw7_gg = '" + str_fenshu_yjs + "'" +
                         " where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            //Panel3_1.Visible = false;
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
            return;
        }
    }
    #endregion


    #region 项目评分
    protected void btn3_2_Click(object sender, EventArgs e)
    {
        if (lbl_id.Text == "0")
        {
            Response.Write("<script>alert('请选择一条项目来评分！');</script>");
            return;
        }


        RadioButton rbutton = new RadioButton();
        string str_fenshu = "0";
        if (rbtn3_1.Checked)
            rbutton = rbtn3_1;
        else if (rbtn3_2.Checked)
            rbutton = rbtn3_2;
        else if (rbtn3_3.Checked)
            rbutton = rbtn3_3;
        else if (rbtn3_4.Checked)
            rbutton = rbtn3_4;
        else if (rbtn3_5.Checked)
            rbutton = rbtn3_5;
        else if (rbtn3_6.Checked)
            rbutton = rbtn3_6;
        else if (rbtn3_7.Checked)
            rbutton = rbtn3_7;
        else if (rbtn3_8.Checked)
            rbutton = rbtn3_8;
        else if (rbtn3_9.Checked)
            rbutton = rbtn3_9;
        else if (rbtn3_10.Checked)
            rbutton = rbtn3_10;
        else if (rbtn3_11.Checked)
            rbutton = rbtn3_11;
        else if (rbtn3_12.Checked)
            rbutton = rbtn3_12;
        else if (rbtn3_13.Checked)
            rbutton = rbtn3_13;
        else if (rbtn3_14.Checked)
            rbutton = rbtn3_14;
        else if (rbtn3_15.Checked)
            rbutton = rbtn3_15;
        else if (rbtn3_16.Checked)
            rbutton = rbtn3_16;
        else if (rbtn3_17.Checked)
            rbutton = rbtn3_17;
        else if (rbtn3_18.Checked)
            rbutton = rbtn3_18;
        else if (rbtn3_19.Checked)
            rbutton = rbtn3_19;

        str_fenshu = rbutton.Text;
        string str_rbtnid = rbutton.ID;
        //if (str_fenshu == "0")
        //{
        //    Response.Write("<script>alert('请选择一个分数！');</script>");
        //    return;
        //}

        string str_sql = "update cdxmqk set sh_flag = '已审核',fenshu = " + str_fenshu + ",fs_type = '" + str_rbtnid + "' where sfzh = '" + Session["sfzh"].ToString() + "' and id = " + lbl_id.Text;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            Panel3_2.Visible = false;
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");

        }
    }
    #endregion


    #region 论著报告评分
    protected void btn4_Click(object sender, EventArgs e)
    {
        if (lbl_id.Text == "0")
        {
            Response.Write("<script>alert('请选择一条项目来评分！');</script>");
            return;
        }
        RadioButton rbutton = new RadioButton();
        string str_fenshu1 = "0";
        string str_fenshu2 = "0";
        string str_fenshu3 = "0";
        string str_fenshu4 = "0";
        if (rbtn4_1.Checked)
            rbutton = rbtn4_1;
        else if (rbtn4_2.Checked)
            rbutton = rbtn4_2;
        else if (rbtn4_3.Checked)
            rbutton = rbtn4_3;
        else if (rbtn4_4.Checked)
            rbutton = rbtn4_4;
        else if (rbtn4_5.Checked)
            rbutton = rbtn4_5;
        else if (rbtn4_6.Checked)
            rbutton = rbtn4_6;
        else if (rbtn4_7.Checked)
            rbutton = rbtn4_7;
        else if (rbtn4_8.Checked)
            rbutton = rbtn4_8;
        str_fenshu1 = rbutton.Text;
        string str_rbtnid1 = rbutton.ID;

        if (rbtn4_11.Checked)
            rbutton = rbtn4_11;
        else if (rbtn4_12.Checked)
            rbutton = rbtn4_12;
        else if (rbtn4_13.Checked)
            rbutton = rbtn4_13;
        str_fenshu2 = rbutton.Text;
        string str_rbtnid2 = rbutton.ID;

        if (rbtn4_21.Checked)
            rbutton = rbtn4_21;
        else if (rbtn4_22.Checked)
            rbutton = rbtn4_22;
        str_fenshu3 = rbutton.Text;
        string str_rbtnid3 = rbutton.ID;

        if (rbtn4_31.Checked)
            rbutton = rbtn4_31;
        else if (rbtn4_32.Checked)
            rbutton = rbtn4_32;
        str_fenshu4 = rbutton.Text;
        string str_rbtnid4 = rbutton.ID;

        string str_istp = "0";
        if (cbx4_istp.Checked) str_istp = "0.3";

        //if (str_fenshu1 == "0")
        //{
        //    Response.Write("<script>alert('请选择一个分数！');</script>");
        //    return;
        //}

        string str_sql = "update lzbgqk set sh_flag = '已审核',fenshu1 = " + str_fenshu1 +
            ",fs1_type = '" + str_rbtnid1 + "',fenshu2 = " + str_fenshu2 +
            ",fs2_type = '" + str_rbtnid2 + "',istp = " + str_istp +
            ",fenshu3 = " + str_fenshu3 + ",fs3_type = '" + str_rbtnid3 + "'"+
            ",fenshu4 = " + str_fenshu4 + ",fs4_type = '" + str_rbtnid4 + "' where sfzh = '" + Session["sfzh"].ToString() + "' and id = " + lbl_id.Text;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            Panel4.Visible = false;
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");

        }
    }
    #endregion


    #region 业绩成果评分
    protected void btn5_Click(object sender, EventArgs e)
    {
        if (lbl_id.Text == "0")
        {
            Response.Write("<script>alert('请选择一条项目来评分！');</script>");
            return;
        }
        RadioButton rbutton = new RadioButton();
        string str_fenshu1 = "0";
        //string str_fenshu2 = "0";
        if (rbtn5_1.Checked)
            rbutton = rbtn5_1;
        else if (rbtn5_2.Checked)
            rbutton = rbtn5_2;
        else if (rbtn5_3.Checked)
            rbutton = rbtn5_3;
        else if (rbtn5_4.Checked)
            rbutton = rbtn5_4;
        else if (rbtn5_5.Checked)
            rbutton = rbtn5_5;
        else if (rbtn5_6.Checked)
            rbutton = rbtn5_6;
        else if (rbtn5_7.Checked)
            rbutton = rbtn5_7;
        else if (rbtn5_8.Checked)
            rbutton = rbtn5_8;
        else if (rbtn5_9.Checked)
            rbutton = rbtn5_9;
        else if (rbtn5_10.Checked)
            rbutton = rbtn5_10;
        else if (rbtn5_11.Checked)
            rbutton = rbtn5_11;
        else if (rbtn5_12.Checked)
            rbutton = rbtn5_12;
        else if (rbtn5_13.Checked)
            rbutton = rbtn5_13;
        else if (rbtn5_14.Checked)
            rbutton = rbtn5_14;
        else if (rbtn5_15.Checked)
            rbutton = rbtn5_15;
        else if (rbtn5_16.Checked)
            rbutton = rbtn5_16;
        else if (rbtn5_17.Checked)
            rbutton = rbtn5_17;
        else if (rbtn5_18.Checked)
            rbutton = rbtn5_18;
        else if (rbtn5_19.Checked)
            rbutton = rbtn5_19;
        else if (rbtn5_20.Checked)
            rbutton = rbtn5_20;
        else if (rbtn5_24.Checked)
            rbutton = rbtn5_24;
        else if (rbtn5_25.Checked)
            rbutton = rbtn5_25;

        str_fenshu1 = rbutton.Text;
        string str_rbtnid = rbutton.ID;


        //str_fenshu2 = tbx5.Text;

        //if (str_fenshu1 == "0")
        //{
        //    Response.Write("<script>alert('请选择一个分数！');</script>");
        //    return;
        //}
        string str_sql = "update " + hdn_flag.Value + " set sh_flag = '已审核',fenshu1 = " + str_fenshu1 +
                ",fs1_type = '" + str_rbtnid + //"',fenshu2 = " + str_fenshu2 +
                " where sfzh = '" + Session["sfzh"].ToString() + "' and id = " + lbl_id.Text;

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            Panel5.Visible = false;
            rbutton.Checked = false;
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");

        }
    }
    #endregion

    #region 论文被引用情况 7，8
    protected void btn5_1_Click(object sender, EventArgs e)
    {
        string str_fenshu = tbx5_1.Text;
        string str_fenshu2 = tbx5_2.Text;
        try
        {
            Convert.ToDouble(tbx5_1.Text);
            Convert.ToDouble(tbx5_2.Text);
        }
        catch
        {
            Response.Write("<script>alert('请输入数字！');</script>");
            return;
        }
        string str_sql = "update cpry set fs_lwbyyqk = " + str_fenshu + " ,fs_yfxm = " + str_fenshu2 +
                " where sfzh = '" + Session["sfzh"].ToString() + "'";

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");

        }
    }
    #endregion



    protected void gv_drxmqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_drxmqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel3_2.Visible = true;
        bindData();
    }
    protected void gv_lzbgqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_lzbgqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        Panel4.Visible = true;
        bindData();
    }
    protected void gv_hjqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_hjqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_flag.Value = "hjqk";
        Panel5.Visible = true;
        bindData();
    }
    protected void gv_yxlw_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_yxlw.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_flag.Value = "yxlw";
        Panel5.Visible = true;
        bindData();
    }
    protected void gv_lwbyyqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_lwbyyqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_flag.Value = "lwbyyqk";
        Panel5.Visible = true;
        bindData();
    }
    protected void gv_hgjzlqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_hgjzlqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_flag.Value = "hgjzlqk";
        Panel5.Visible = true;
        bindData();
    }
    
}
