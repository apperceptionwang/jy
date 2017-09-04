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
using Aspose.Words;

public partial class zgsb_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "230103197803220939";
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=zgcpry");
            return;
        }
        if (!IsPostBack)
        {
            hdn_flag.Value = Request.QueryString["flag"];
            //if (hdn_flag.Value != "admin")
            if (Session["admin_name"] == null)
            {
                string str_sql = "select count(*) from cpry where edit_flag = true and sfzh = '" + Session["sfzh"].ToString() + "'";
                if (DBFun.ExecuteScalar(str_sql).ToString() == "0")
                {
                    Response.Write("<script>alert('已经提交，不能再修改！');window.history.go(-1);</script>");
                    return;
                }
                bindData();
            }
            
            this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");   
        }
    }

    #region 数据绑定
    private void bindData()
    {
        
        string str_qry = "SELECT url,name from t_dict where flm=2 ;";
        DBFun.FillDwList(ddlist_gzdw, str_qry);
        str_qry = "SELECT gzdw,yourname,xrzw,csgz,sbzw,tbrq from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
        DataRow dr = DBFun.GetDataRow(str_qry);
        
        tbx_xm.Text = dr["yourname"].ToString();

        try { ddlist_gzdw.SelectedValue = dr["gzdw"].ToString(); }
        catch { ddlist_gzdw.SelectedIndex = 0; }

        try { ddlist_xrzw.SelectedValue = dr["xrzw"].ToString(); }
        catch { ddlist_xrzw.SelectedIndex = 0; }

        try { ddlist_sbzw.SelectedValue = dr["sbzw"].ToString(); }
        catch { ddlist_sbzw.SelectedIndex = 1; }

        lbl_tbrq.Value = dr["tbrq"].ToString();
        if (dr["tbrq"].ToString() == "") lbl_tbrq.Value = DateTime.Now.ToString("yyyy-MM-dd");

        if (ddlist_sbzw.SelectedValue == "研究员")
        {
            ddlist_csgz_yjy.Visible = true;
            ddlist_csgz_zyjgg.Visible = false;
            try { ddlist_csgz_yjy.SelectedValue = dr["csgz"].ToString(); }
            catch { ddlist_csgz_yjy.SelectedIndex = 0; }
        }
        else
        {
            ddlist_csgz_yjy.Visible = false;
            ddlist_csgz_zyjgg.Visible = true;
            try { ddlist_csgz_zyjgg.SelectedValue = dr["csgz"].ToString(); }
            catch { ddlist_csgz_zyjgg.SelectedIndex = 0; }
        }

    }
    #endregion

    
    #region  左边链接
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("zgsb_1.aspx?flag="+hdn_flag.Value);
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("zgsb_2.aspx?flag=" + hdn_flag.Value);
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_3.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table3&flag=" + hdn_flag.Value);
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_4.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table4&flag=" + hdn_flag.Value);
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_5.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table5&flag=" + hdn_flag.Value);
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_6.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table6&flag=" + hdn_flag.Value);
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_7.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table7&flag=" + hdn_flag.Value);
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_8.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table8&flag=" + hdn_flag.Value);
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        //Response.Redirect("zgsb_9.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table9&flag=" + hdn_flag.Value);
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("yjysb-1.aspx?tablename=Table10&flag=" + hdn_flag.Value);
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
        string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
        if (str_sbzw == "研究员")
            Response.Redirect("cpry_score.aspx");
        else
            Response.Redirect("cpry_score_gg.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = string.Format("update cpry set edit_flag = {0} where sfzh = '{1}'",
                    false, Session["sfzh"].ToString());
        //if (hdn_isadmin.Value == "admin")
        //{
        //    str_sql = string.Format("update cpry set sh_flag = '{0}' where sfzh = '{1}'",
        //            rbtnlist_sh.SelectedValue, Session["sfzh"].ToString());
        //}

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('提交成功！');location.href = 'admin/admin_login.aspx?type=zgcpry';</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        }
    }
    #endregion

    #region 保存
    protected void imgbtn_save_Click(object sender, ImageClickEventArgs e)
    {
        Save();
    }

    protected void Save()
    {
        string str_sql = "";
        if (Table1.Visible == true)
        {
            string str_csgz = ddlist_csgz_zyjgg.SelectedValue;
            if (ddlist_sbzw.SelectedValue == "研究员") str_csgz = ddlist_csgz_yjy.SelectedValue;
            
            str_sql = string.Format("update cpry set gzdw = '{0}',gzdw_mc = '{1}',yourname = '{2}',xrzw = '{3}',csgz = '{4}',"+
                                    "sbzw = '{5}',tbrq = '{6}' where sfzh = '{7}'",
                 ddlist_gzdw.SelectedValue, ddlist_gzdw.SelectedItem.Text, tbx_xm.Text.Replace(" ", ""), ddlist_xrzw.SelectedValue, str_csgz,
                 ddlist_sbzw.SelectedValue, lbl_tbrq.Value, Session["sfzh"].ToString());
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

    
    protected void imgbtn_SaveNext_Click(object sender, ImageClickEventArgs e)
    {
        Save();
        Response.Redirect("zgsb_2.aspx?flag=" + hdn_flag.Value);
    }
    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Save();
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }
    protected void ddlist_sbzw_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (ddlist_sbzw.SelectedValue == "研究员")
        {
            ddlist_csgz_yjy.Visible = true;
            ddlist_csgz_zyjgg.Visible = false;
        }
        else
        {
            ddlist_csgz_yjy.Visible = false;
            ddlist_csgz_zyjgg.Visible = true;
        }
    }


    protected void lbtn_quit_Click(object sender, EventArgs e)
    {
        Save();
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }

    protected void lbtn_commit_Click(object sender, EventArgs e)
    {
        Save();
        string str_sql = string.Format("update cpry set edit_flag = {0} where sfzh = '{1}'",
                    false, Session["sfzh"].ToString());
        //if (Hidden1.Value == "admin")
        //{
        //    str_sql = string.Format("update cpry set sh_flag = '{0}' where sfzh = '{1}'",
        //            rbtnlist_sh.SelectedValue, Session["sfzh"].ToString());
        //}

        if (DBFun.ExecuteUpdate(str_sql))
        {
            str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
            string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
            if (str_sbzw == "研究员")
                str_sbzw = "PrintPreview_yjy.aspx";
            else
                str_sbzw = "PrintPreview_zyjgg.aspx";
            Response.Write("<script>alert('提交成功！');location.href = '" + str_sbzw + "';</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        }

    }
    protected void lbtn_zpfs_Click(object sender, EventArgs e)
    {
        Save();
        string str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
        string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
        if (str_sbzw == "研究员")
            Response.Redirect("cpry_score.aspx");
        else
            Response.Redirect("cpry_score_gg.aspx");
    }
    protected void lbtn_shouye_Click(object sender, EventArgs e)
    {
        Save();
        Response.Redirect("default.aspx");
    }
    protected void lbtn_PrintPreview_Click(object sender, EventArgs e)
    {
        string sourcefile;
        string str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
        string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
        Document doc;
        if (str_sbzw == "研究员")
        {
            sourcefile = Server.MapPath("templete/yjy.doc");
            doc = new Document(sourcefile); //载入模板 
            PrivateFun.SetInfoIntoWrod_yjy(doc, Session["sfzh"].ToString());
        }
        else
        {
            sourcefile = Server.MapPath("templete/zyjgg.doc");
            doc = new Document(sourcefile); //载入模板 
            PrivateFun.SetInfoIntoWrod_zyjgg(doc, Session["sfzh"].ToString());
        }

        doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/default.aspx?sfzh=" + Session["sfzh"].ToString());
    }
}
