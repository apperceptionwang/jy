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

public partial class zgsb_pingshen : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = 'admin/admin_login.aspx?type=zgcpry';</script>");
            return;
        }
        if (!IsPostBack)
        {
            hdn_flag.Value = Request.QueryString["flag"];
            if (hdn_flag.Value != "admin")
            {
                string str_sql = "select count(*) from cpry where edit_flag = true and sfzh = '" + Session["sfzh"].ToString() + "'";
                if (DBFun.ExecuteScalar(str_sql).ToString() == "0")
                {
                    Response.Write("<script>alert('已经提交，不能再修改！');window.history.go(-1);</script>");
                    return;
                }
                
            }
            lbl_id.Text = "0";
            SetStatus(Table3);
            bindData_fs();
        }
    }

    #region 设置表格是否可见
    private void SetStatus(HtmlTable tbl_visible)
    {

        
        Table3.Visible = false;
        Table4.Visible = false;
        Table5.Visible = false;
        
        tbl_visible.Visible = true;
        bool b_visible = (hdn_flag.Value == "研究员");
        Table3_11.Visible = b_visible;
        //Table3_12.Visible = b_visible;
        Table3_21.Visible = !b_visible;
        //Table3_22.Visible = !b_visible;
        Table5_5.Visible = !b_visible;
        bindData();
    }
    #endregion

    #region 数据绑定
    private void bindData()
    {
        string str_qry = "";
        
        if (Table3.Visible)
        {
            str_qry = "SELECT * from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            
            if (hdn_flag.Value == "研究员")
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
                    tbx3_41.Text = dr["pyyjs1"].ToString();
                    tbx3_42.Text = dr["pyyjs2"].ToString();
                    tbx3_43.Text = dr["pyyjs3"].ToString();
                    tbx3_44.Text = dr["pyyjs4"].ToString();
                }
                FillGridView("cdrwqk", gv_cdrw);
                tbx3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
                tbx3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
                tbx3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
                lbl3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
                lbl3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
                lbl3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
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
        else if (Table5.Visible)
        {
            str_qry = "SELECT id,hjcgmc,jljb+' '+jlmc as jl,hjdj,pm,hjsj,NewFileName from hjqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            FillGridView(str_qry, "hjqk", gv_hjqk);
            FillGridView("yxlw", gv_yxlw);
            FillGridView("lwbyyqk", gv_lwbyyqk);
            FillGridView("hgjzlqk", gv_hgjzlqk);
            if (hdn_flag.Value == "正研级高级工程师")
            {
                FillGridView("qgjcybpb", gv5_1);
                FillGridView("xjgrch", gv5_2);
                FillGridView("dldzybyj", gv5_3);
                FillGridView("yqrj", gv5_4);
                FillGridView("aqpj", gv5_5);
            }
        }
        bindData_fs();
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

    #region  左边链接
   
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
        Response.Redirect("zgsb_1.aspx?flag=" + hdn_flag.Value);    
    }
    
    #endregion
  
    protected void rbtnlist3_1_SelectedIndexChanged(object sender, EventArgs e)
    {
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
        GridViewDownLoadFile("qgjcybpb", e.NewSelectedIndex);
    }
    protected void gv5_2_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewDownLoadFile("xjgrch", e.NewSelectedIndex);
    }
    protected void gv5_3_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewDownLoadFile("dldzybyj", e.NewSelectedIndex);
    }
    protected void gv5_4_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewDownLoadFile("yqrj", e.NewSelectedIndex);
    }
    protected void gv5_5_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewDownLoadFile("aqpj", e.NewSelectedIndex);
    }
    
  

    #region 分数绑定
    private void bindData_fs()
    {
        string str_qry = "";
        if (Table3.Visible)
        {
            if (Panel3_1.Visible)
            {
                str_qry = "SELECT iif(isnull(fs_cdrw1_type),'未审核','已审核'),format(iif(isnull(fs_cdrw1),0,fs_cdrw1)+iif(isnull(fs_cdrw2),0,fs_cdrw2),'0.#') " +
                    ",fs_cdrw1_type,iif(isnull(fs_cdrw2),'false','true') from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
                DataRow dr = DBFun.GetDataRow(str_qry);
                //lbl3_1.Text = dr[0].ToString();
                //lbl3_2.Text = dr[1].ToString();
                RadioButton rb = new RadioButton();

                rb = (RadioButton)this.FindControl(dr["fs_cdrw1_type"].ToString());
                if (rb != null)
                    rb.Checked = true;
                cbx3_1.Checked = Convert.ToBoolean(dr[3].ToString());
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

                str_qry = "SELECT iif(isnull(sh_flag),'未审核','已审核') as shenhe," +
                    " format(iif(isnull(fenshu1),0,fenshu1)+iif(isnull(fenshu2),0,fenshu2)+iif(isnull(fenshu3),0,fenshu3)+iif(isnull(istp),0,istp),'0.#') as fenshu," +
                    " fs1_type,fs2_type,fs3_type,iif(istp=0.3,'true','false') as istp_flag " +
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

                cbx4_istp.Checked = Convert.ToBoolean(dr["istp_flag"].ToString());
            }
        }
        else if (Table5.Visible)
        {
           
            if (Panel5.Visible)
            {
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
                rbtn5_21.Checked = false;
                rbtn5_22.Checked = false;

                str_qry = "SELECT iif(isnull(fenshu1),0,fenshu1),iif(isnull(fenshu2),0,fenshu2),fs1_type,iif(isnull(sh_flag),'未审核',sh_flag) from " +
                          hdn_table.Value + " where sfzh = '" + Session["sfzh"].ToString() + "' and id = " + lbl_id.Text;
                DataRow dr = DBFun.GetDataRow(str_qry);
                string str_rbtnid = dr["fs1_type"].ToString();
                RadioButton rb = new RadioButton();
                //if (Session["rb"] == null) Session["rb"] = rbtn5_1;
                //rb = (RadioButton)Session["rb"];
                //if (rb != null) rb.Checked = false;
                rb = (RadioButton)this.FindControl(str_rbtnid);
                if (rb != null) rb.Checked = true;
                //Session["rb"] = rb;
                //if (dr["fenshu2"].ToString() == null)
                tbx5.Text = dr[1].ToString();
            }
        }
        
    }
    #endregion
    

    #region 任务评分
    protected void btn3_1_Click(object sender, EventArgs e)
    {
        RadioButton rbutton = new RadioButton();
        string str_fenshu = "0";
        if (rbtn3_21.Checked)
            rbutton = rbtn3_21;
        else if (rbtn3_22.Checked)
            rbutton = rbtn3_22;
        else if (rbtn3_23.Checked)
            rbutton = rbtn3_23;
        str_fenshu = rbutton.Text;
        string str_rbtnid = rbutton.ID;
        if (str_fenshu == "0")
        {
            Response.Write("<script>alert('请选择一个分数！');</script>");
            return;
        }
        string str_fenshu_yjs = "0";
        if (cbx3_1.Checked) str_fenshu_yjs = "0.1";
        //string str_sql = "update cpry set fs_cdrw1 = " + str_fenshu + ",fs_cdrw1_type = '" + str_rbtnid + "',fs_cdrw2 = " + str_fenshu_yjs + " where sfzh = '" + Session["sfzh"].ToString()+"'";
        string str_sql = "update cpry set fs_cdrw1 = " + str_fenshu + ",fs_cdrw1_type = '" + str_rbtnid + "',fs_cdrw2 = " + str_fenshu_yjs + " where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            Panel3_1.Visible = false;
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
            ",fenshu3 = " + str_fenshu3 + ",fs3_type = '" + str_rbtnid3 + "' where sfzh = '" + Session["sfzh"].ToString() + "' id = " + lbl_id.Text;
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
        else if (rbtn5_21.Checked)
            rbutton = rbtn5_21;
        else if (rbtn5_22.Checked)
            rbutton = rbtn5_22;

        str_fenshu1 = rbutton.Text;
        string str_rbtnid = rbutton.ID;


        //str_fenshu2 = tbx5.Text;

        //if (str_fenshu1 == "0")
        //{
        //    Response.Write("<script>alert('请选择一个分数！');</script>");
        //    return;
        //}
        string str_sql = "update " + hdn_table.Value + " set sh_flag = '已审核',fenshu1 = " + str_fenshu1 +
                ",fs1_type = '" + str_rbtnid + //"',fenshu2 = " + str_fenshu2 +
                " where sfzh = '" + Session["sfzh"].ToString() + "' id = " + lbl_id.Text;

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
        hdn_table.Value = "hjqk";
        Panel5.Visible = true;
        bindData();
    }
    protected void gv_yxlw_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_yxlw.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_table.Value = "yxlw";
        Panel5.Visible = true;
        bindData();
    }
    protected void gv_lwbyyqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_lwbyyqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_table.Value = "lwbyyqk";
        Panel5.Visible = true;
        bindData();
    }
    protected void gv_hgjzlqk_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        lbl_id.Text = gv_hgjzlqk.Rows[e.NewSelectedIndex].Cells[1].Text;
        hdn_table.Value = "hgjzlqk";
        Panel5.Visible = true;
        bindData();
    }
    protected void btn5_1_Click(object sender, EventArgs e)
    {
        string str_fenshu2 = tbx5.Text;
        try
        {
            Convert.ToDouble(tbx5.Text);
        }
        catch
        {
            Response.Write("<script>alert('请输入数字！');</script>");
            return;
        }
        string str_sql = "update cpry set fs_lwbyyqk = " + str_fenshu2 +
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


    protected void btn3_Click(object sender, EventArgs e)
    {
        string str_sql = "";
        if (Table3.Visible == true)
        {
            //str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdrwqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            //int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            //str_sql = string.Format("insert into cdrwqk (id,rwmc,gznr,qzsj,zwjs,sfzh) " +
            //                 " values({0},'{1}','{2}','{3}','{4}','{5}');",
            //                 int_maxbm, tbx3_rwmc.Text, tbx3_gznr.Text, tbx3_qzrq.Text, tbx3_zwjs.Text, Session["sfzh"].ToString());
            if (hdn_flag.Value == "研究员")
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
}
