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

public partial class zyjsej : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "000000000000001";
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=2");
            return;
        }
        if (!IsPostBack)
        {
            SetStatus(Table1);
        }
    }


    #region // 保存 保存下一步 上报提交 安全退出 首页 翻页
    protected void imgbtn_save_Click(object sender, ImageClickEventArgs e)
    {
        Save();
    }
    protected void imgbtn_SaveNext_Click(object sender, ImageClickEventArgs e)
    {
        Save();
        SetStatus();
    }
    protected void lbtn_commit_Click(object sender, EventArgs e)
    {
        Commit();
    }
    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=ejcpry");
    }
    protected void lbtn_quit_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=ejcpry");
    }
    protected void lbtn_shouye_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("default.aspx");
    }
    protected void lbtn_1_Click(object sender, EventArgs e)
    {
        SetStatus(Table1);
    }
    protected void lbtn_2_Click(object sender, EventArgs e)
    {
        SetStatus(Table2);
    }
    protected void lbtn_3_Click(object sender, EventArgs e)
    {
        SetStatus(Table3);
    }
    protected void lbtn_4_Click(object sender, EventArgs e)
    {
        SetStatus(Table4);
    }
    protected void lbtn_5_Click(object sender, EventArgs e)
    {
        SetStatus(Table5);
    }
    protected void lbtn_6_Click(object sender, EventArgs e)
    {
        SetStatus(Table6);
    }
    protected void lbtn_7_Click(object sender, EventArgs e)
    {
        SetStatus(Table7);
    }
    #endregion

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
        tbl_visible.Visible = true;

        bindData();
    }
    #endregion

    #region 设置下一个表格可见
    private void SetStatus()
    {
        HtmlTable tbl_visible = Table1;
        if (Table1.Visible)
            tbl_visible = Table2;
        else if (Table2.Visible)
            tbl_visible = Table3;
        else if (Table3.Visible)
            tbl_visible = Table4;
        else if (Table4.Visible)
            tbl_visible = Table5;
        else if (Table5.Visible)
            tbl_visible = Table6;
        else if (Table6.Visible)
            tbl_visible = Table7;
        else if (Table6.Visible)
            tbl_visible = Table7;
        SetStatus(tbl_visible);
    }
    #endregion

    #region 数据绑定
    private void bindData()
    {
        string str_qry = "";
        lbl_id.Text = "";
        if (Table1.Visible)
        {
            str_qry = "SELECT url,name from t_dict where flm=2 ;";
            DBFun.FillDwList(ddl_dw, str_qry);
            str_qry = "SELECT bm,name from t_dict where flm=7  ;";
            DBFun.FillDwList(ddl_xkfx, str_qry);
            str_qry = "select yourname,birth,xingbie,zgxl,zgxw,xrgw,zgsj,prsj,gwxl,dw,xkfx,xkfx_qt,qtwt,gzjj from ej_cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            ddl_dw.SelectedValue = dr["dw"].ToString();
            tbx_Name.Text = dr["yourname"].ToString();
            txt_csny.Value = dr["birth"].ToString();
            txt_zgsj.Value = dr["zgsj"].ToString();
            txt_prsj.Value = dr["prsj"].ToString();
            try 
            { 
                ddl_xb.SelectedValue = dr["xingbie"].ToString();
                ddl_xl.SelectedValue = dr["zgxl"].ToString();
                ddl_xw.SelectedValue = dr["zgxw"].ToString();
                ddl_xrgw.SelectedValue = dr["xrgw"].ToString();
                ddl_gwxl.SelectedValue = dr["gwxl"].ToString();
                ddl_dw.SelectedValue = dr["dw"].ToString();
                ddl_xkfx.SelectedValue = dr["xkfx"].ToString();
                tbx_xkfx.Text = dr["xkfx_qt"].ToString();
                tbx_gzjj.Text = dr["gzjj"].ToString();
            }
            catch { }
            tbx_xkfx.Visible = (ddl_xkfx.SelectedValue == "14");

        }
        else if (Table2.Visible)
        {
            str_qry = "SELECT * from ej_cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ej_cdxmqk"] = DBFun.FillGridView(str_qry, gv_cdxmqk, true);
            tbx2_xmmc.Focus();
            tbx2_xmmc.Text = "";
            tbx2_xmlb.Text = "";
            //ddl2_xmlb.SelectedIndex = 0;
            tbx2_xmjf.Text = "";
            ddl2_brjs.SelectedIndex = 0;
            txt2_1.Value = "";
            txt2_2.Value = "";
            tbx2_qzsj.Text = "";
        }
        else if (Table3.Visible)
        {
            str_qry = "SELECT * from ej_dbxlz where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ej_dbxlz"] = DBFun.FillGridView(str_qry, gv_dbxlz, true);
            tbx3_tm.Focus();
            tbx3_tm.Text = "";
            txt3.Value = "";
            tbx3_kwmc.Text = "";
            tbx3_brpm.Text = "";
        }
        else if (Table4.Visible)
        {
            str_qry = "SELECT * from ej_zlycgzh where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ej_zlycgzh"] = DBFun.FillGridView(str_qry, gv_zl, true);
            tbx4_zlmc.Focus();
            tbx4_zlmc.Text = "";
            tbx4_zhjg.Text = "";
        }
        else if (Table5.Visible)
        {
            str_qry = "SELECT * from ej_hjqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ej_hjqk"] = DBFun.FillGridView(str_qry, gv_hjqk, true);

            for (int i = DateTime.Today.Year; i >= 1980 ; i--)
            {
                ddl5_nd.Items.Add(i.ToString());
            }
            ddl5_nd.Focus();
            ddl5_nd.SelectedIndex = 0;
            ddl5_jlzl.SelectedIndex = 0;
            tbx5_hjcgmc.Text = "";
            //tbx5_jldj.Text = "";
            ddl5_jldj.SelectedIndex = 0;
            tbx5_pm.Text = "";
        }
        else if (Table6.Visible)
        {
            str_qry = "SELECT * from ej_xsrzqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ej_xsrzqk"] = DBFun.FillGridView(str_qry, gv_xsrzqk, true);
            tbx6_rzzzmc.Focus();
            tbx6_rzzzmc.Text = "";
            tbx6_drzw.Text = "";
            txt6_1.Value = "";
            txt6_2.Value = "";
            tbx6_qzsj.Text = "";
        }
        else if (Table7.Visible)
        {
            str_qry = "select qtwt from ej_cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            tbx7_qtwt.Text = dr["qtwt"].ToString();
        }
    }
    #endregion

    #region 保存
    protected void Save()
    {
        string str_sql = "";
        //lbl_id.Text = "";
        if (Table1.Visible)
        {
            if (CommFun.StringCounter(tbx_gzjj.Text) > 600)
            {
                Response.Write("<script>alert('主要工作业绩限600字！');</script>");
                return;
            }
            if (!tbx_xkfx.Visible) tbx_xkfx.Text = ddl_xkfx.SelectedItem.Text;
            str_sql = string.Format(" update ej_cpry set yourname='{0}',birth='{1}',xingbie='{2}',zgxl='{3}',zgxw='{4}',"+
                      " xrgw='{5}',zgsj='{6}',prsj='{7}',gwxl='{8}',"+
                      " dw='{9}',xkfx='{10}',xkfx_qt='{11}',gzjj='{13}' where sfzh = '{12}' ;",
                      tbx_Name.Text, txt_csny.Value, ddl_xb.SelectedValue, ddl_xl.SelectedValue, ddl_xw.SelectedValue,
                      ddl_xrgw.SelectedValue, txt_zgsj.Value, txt_prsj.Value, ddl_gwxl.SelectedValue,
                      ddl_dw.SelectedValue, ddl_xkfx.SelectedValue, tbx_xkfx.Text, Session["sfzh"].ToString(),tbx_gzjj.Text);
        }
        else if (Table2.Visible)
        {
            if (tbx2_xmmc.Text == "") return ;
            tbx2_qzsj.Text = txt2_1.Value + "～" + txt2_2.Value;

            if (CommFun.StringCounter(tbx2_xmlb.Text) > 14)
            {
                Response.Write("<script>alert('项目类别限14字！');</script>");
                return;
            }
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ej_cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加5项！');</script>");
                    return;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ej_cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

                if (tbx2_xmjf.Text == "") tbx2_xmjf.Text = "0";
                str_sql = string.Format("insert into ej_cdxmqk (id,xmmc,xmlb,xmjf,brjs,qzsj,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, tbx2_xmmc.Text, tbx2_xmlb.Text, tbx2_xmjf.Text,
                         ddl2_brjs.SelectedValue, tbx2_qzsj.Text, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ej_cdxmqk set xmmc='{0}',xmlb='{1}',xmjf='{2}',brjs='{3}',qzsj='{4}' where sfzh='{5}' and id={6} ",
                         tbx2_xmmc.Text, tbx2_xmlb.Text, tbx2_xmjf.Text,
                         ddl2_brjs.SelectedValue, tbx2_qzsj.Text, Session["sfzh"].ToString(),Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table3.Visible)
        {
            if (tbx3_tm.Text == "") return;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ej_dbxlz where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加5项！');</script>");
                    return;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ej_dbxlz where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into ej_dbxlz (id,tm,fbsj,kwmc,brpm,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}');",
                         int_maxbm, tbx3_tm.Text, txt3.Value, tbx3_kwmc.Text,tbx3_brpm.Text, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ej_dbxlz set tm='{0}',fbsj='{1}',kwmc='{2}',brpm='{3}' where sfzh='{4}' and id={5} ",
                         tbx3_tm.Text, txt3.Value, tbx3_kwmc.Text, tbx3_brpm.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table4.Visible)
        {
            if (tbx4_zlmc.Text == "") return;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ej_zlycgzh where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加5项！');</script>");
                    return;
                }

                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ej_zlycgzh where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into ej_zlycgzh (id,zlmc,zhjg,sfzh) " +
                         " values({0},'{1}','{2}','{3}');",
                         int_maxbm, tbx4_zlmc.Text, tbx4_zhjg.Text, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ej_zlycgzh set zlmc='{0}',zhjg='{1}' where sfzh='{2}' and id={3} ",
                         tbx4_zlmc.Text, tbx4_zhjg.Text, Session["sfzh"].ToString(),Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table5.Visible)
        {
            if (tbx5_hjcgmc.Text == "") return;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ej_hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加5项！');</script>");
                    return;
                }

                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ej_hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into ej_hjqk (id,nd,jlzl,hjcgmc,jldj,pm,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, ddl5_nd.SelectedValue, ddl5_jlzl.SelectedValue, tbx5_hjcgmc.Text,
                         ddl5_jldj.SelectedValue,tbx5_pm.Text, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ej_hjqk set nd='{0}',jlzl='{1}',hjcgmc='{2}',jldj='{3}',pm='{4}' where sfzh='{5}' and id={6} ",
                         ddl5_nd.SelectedValue, ddl5_jlzl.SelectedValue, tbx5_hjcgmc.Text,
                         ddl5_jldj.SelectedValue, tbx5_pm.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table6.Visible)
        {
            if (tbx6_rzzzmc.Text == "") return;
            tbx6_qzsj.Text = txt6_1.Value + "～" + txt6_2.Value;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ej_xsrzqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加5项！');</script>");
                    return;
                }

                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ej_xsrzqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into ej_xsrzqk (id,rzzzmc,drzw,rzqzsj,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}');",
                         int_maxbm, tbx6_rzzzmc.Text, tbx6_drzw.Text, tbx6_qzsj.Text, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ej_xsrzqk set rzzzmc='{0}',drzw='{1}',rzqzsj='{2}' where sfzh='{3}' and id={4} ",
                         tbx6_rzzzmc.Text, tbx6_drzw.Text, tbx6_qzsj.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table7.Visible)
        {
            str_sql = string.Format(" update ej_cpry set qtwt='{0}' where sfzh = '{1}' ;",
                      tbx7_qtwt.Text,  Session["sfzh"].ToString());
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            if (!Table7.Visible)
                Response.Write("<script>alert('保存成功！');</script>");
            else
                Response.Write("<script>alert('保存成功，申报材料已填写完毕，如需修改请点击相应模块！');</script>");
            bindData();
        }
        else
            Response.Write("<script>alert('保存失败！');</script>");
    }
    #endregion

    #region 提交
    protected void Commit()
    {
        string str_sql = string.Format("update ej_cpry set edit_flag = {0} where sfzh = '{1}'",
                      false, Session["sfzh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
            string str_url = "PrintPreview_erji.aspx";
            Response.Write("<script>alert('提交成功！');location.href = '" + str_url + "';</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        } 
    }
    #endregion

    #region 编辑
    protected void GridViewEdit(int RowIndex)
    {
        DataView dv;
        if (Table2.Visible)
        {
            dv = (DataView)Session["ej_cdxmqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx2_xmmc.Focus();
            tbx2_xmmc.Text = dv.Table.Rows[RowIndex]["xmmc"].ToString();
            tbx2_xmlb.Text = dv.Table.Rows[RowIndex]["xmlb"].ToString();
            tbx2_xmjf.Text = dv.Table.Rows[RowIndex]["xmjf"].ToString();
            try
            {
                ddl2_brjs.SelectedValue = dv.Table.Rows[RowIndex]["brjs"].ToString();
                txt2_1.Value = dv.Table.Rows[RowIndex]["qzsj"].ToString().Substring(0, dv.Table.Rows[RowIndex]["qzsj"].ToString().IndexOf("～"));
                txt2_2.Value = dv.Table.Rows[RowIndex]["qzsj"].ToString().Substring(dv.Table.Rows[RowIndex]["qzsj"].ToString().IndexOf("～") + 1); 
            }
            catch { }
        }
        else if (Table3.Visible)
        {
            dv = (DataView)Session["ej_dbxlz"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx3_tm.Focus();
            tbx3_tm.Text = dv.Table.Rows[RowIndex]["tm"].ToString();
            txt3.Value = dv.Table.Rows[RowIndex]["fbsj"].ToString();
            tbx3_kwmc.Text = dv.Table.Rows[RowIndex]["kwmc"].ToString();
            tbx3_brpm.Text = dv.Table.Rows[RowIndex]["brpm"].ToString();
        }
        else if (Table4.Visible)
        {
            dv = (DataView)Session["ej_zlycgzh"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx4_zlmc.Focus();
            tbx4_zlmc.Text = dv.Table.Rows[RowIndex]["zlmc"].ToString();
            tbx4_zhjg.Text = dv.Table.Rows[RowIndex]["zhjg"].ToString();
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["ej_hjqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            ddl5_nd.Focus();

            try { ddl5_nd.SelectedValue = dv.Table.Rows[RowIndex]["nd"].ToString(); }
            catch { }
            try { ddl5_jlzl.SelectedValue = dv.Table.Rows[RowIndex]["jlzl"].ToString(); }
            catch { }
            tbx5_hjcgmc.Text = dv.Table.Rows[RowIndex]["hjcgmc"].ToString();
            try { ddl5_jldj.SelectedValue = dv.Table.Rows[RowIndex]["jldj"].ToString(); }
            catch { }
            tbx5_pm.Text = dv.Table.Rows[RowIndex]["pm"].ToString();
        }
        else if (Table6.Visible)
        {
            dv = (DataView)Session["ej_xsrzqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx6_rzzzmc.Focus();
            tbx6_rzzzmc.Text = dv.Table.Rows[RowIndex]["rzzzmc"].ToString();
            tbx6_drzw.Text = dv.Table.Rows[RowIndex]["drzw"].ToString();
            txt6_1.Value = dv.Table.Rows[RowIndex]["rzqzsj"].ToString().Substring(0, dv.Table.Rows[RowIndex]["rzqzsj"].ToString().IndexOf("～"));
            txt6_2.Value = dv.Table.Rows[RowIndex]["rzqzsj"].ToString().Substring(dv.Table.Rows[RowIndex]["rzqzsj"].ToString().IndexOf("～") + 1); 
        }
    }
    #endregion

    #region 删除
    protected void GridViewDeleteRow(int RowIndex)
    {
        DataView dv;
        string str_sql = "", str_id="";
        if (Table2.Visible)
        {
            dv = (DataView)Session["ej_cdxmqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ej_cdxmqk where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table3.Visible)
        {
            dv = (DataView)Session["ej_dbxlz"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ej_dbxlz where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table4.Visible)
        {
            dv = (DataView)Session["ej_zlycgzh"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ej_zlycgzh where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["ej_hjqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ej_hjqk where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table6.Visible)
        {
            dv = (DataView)Session["ej_xsrzqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ej_xsrzqk where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败！');</script>");
            return;
        }
        bindData();
    }
    #endregion

    protected void ddl_xkfx_SelectedIndexChanged(object sender, EventArgs e)
    {
        tbx_xkfx.Visible = (ddl_xkfx.SelectedValue == "14");
        if (tbx_xkfx.Visible) tbx_xkfx.Text = "";
    }

    protected void gv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewEdit(e.NewEditIndex);
    }
    protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow(e.RowIndex);
    }
    protected void lbtn_PrintPreview_Click(object sender, EventArgs e)
    {
        string sourcefile = Server.MapPath("templete/erji.doc");
        Document doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_erji(doc, Session["sfzh"].ToString());
        
        doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/default.aspx?sfzh=" + Session["sfzh"].ToString());
    }

}
