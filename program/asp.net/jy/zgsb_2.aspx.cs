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

public partial class zgsb_2 : System.Web.UI.Page
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
            if (hdn_flag.Value != "admin")
            {
                string str_sql = "select count(*) from cpry where edit_flag = true and sfzh = '" + Session["sfzh"].ToString() + "'";
                if (DBFun.ExecuteScalar(str_sql).ToString() == "0")
                {
                    Response.Write("<script>alert('已经提交，不能再修改！');window.history.go(-1);</script>");
                    return;
                }

            }
            bindData();
            this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");   
        }
    }


    #region 数据绑定
    private void bindData()
    {
        string str_qry = "";
        
        str_qry = "SELECT * from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
        DataRow dr = DBFun.GetDataRow(str_qry);
        tbx2_xm.Text = dr["yourname"].ToString();
        tbx2_csny.Value = dr["birth"].ToString();
        
        if (dr["xingbie"].ToString() == "")
            ddlist2_xb.SelectedValue = "男";
        else
            ddlist2_xb.SelectedValue = dr["xingbie"].ToString();

        try
        {
            ddlist2_xl1.SelectedValue = dr["zgxl_mc"].ToString();
        }
        catch
        {
            ddlist2_xl1.SelectedIndex = 0;
        }
        tbx2_bysj1.Value = dr["zgxl_bysj"].ToString();
        tbx2_zy1.Text = dr["zgxl_zy"].ToString();
        tbx2_sydw1.Text = dr["zgxl_sydw"].ToString();

        try
        {
            ddlist2_xl2.SelectedValue = dr["fhxl_mc"].ToString();
        }
        catch
        {
            ddlist2_xl2.SelectedIndex = 0;
        }
        tbx2_bysj2.Value = dr["fhxl_bysj"].ToString();
        tbx2_zy2.Text = dr["fhxl_zy"].ToString();
        tbx2_sydw2.Text = dr["fhxl_sydw"].ToString();

        try { ddlist2_xw.SelectedValue = dr["fhxw_mc"].ToString(); }
        catch { ddlist2_xw.SelectedIndex = 0; }
            
        tbx2_qdsj.Value = dr["fhxw_qdsj"].ToString();
        tbx2_zy3.Text = dr["fhxw_zy"].ToString();
        tbx2_sydw3.Text = dr["fhxw_sydw"].ToString();
        tbx2_xrzw.Text = dr["xrzw"].ToString();
        tbx2_pdsj.Value = dr["pdsj"].ToString();
        tbx2_prsj.Value = dr["prsj"].ToString();
        img_photo.ImageUrl = "./photo/" + dr["photo"].ToString();
        ftb_gzjj.Text = dr["gzjj"].ToString();

       
        //str_qry = "select edit_flag from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        //bool b_EditFlag = Convert.ToBoolean(DBFun.ExecuteScalar(str_qry));
        //imgbtn_save.Visible = b_EditFlag;
        //imgbtn_confirm.Visible = b_EditFlag;
    }
    #endregion

    
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
            string str_sql = "select url from t_dict where flm=8 and bm in (7,8)";
            DataView dv = DBFun.dataView(str_sql);
            string str_UploadFileType = dv.Table.Rows[0]["url"].ToString();
            string str_UploadFileSize = dv.Table.Rows[1]["url"].ToString();
            if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
            {
                Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                return "";
            }
            if (Convert.ToInt16(str_UploadFileSize) * 1024 < Fupload.PostedFile.ContentLength)
            {
                Response.Write("<script>alert('不允许上传超过 " + str_UploadFileSize + " K的文件！');</script>");
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
        Response.Redirect("zgsb_1.aspx?flag=" + hdn_flag.Value);
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
        //if (Hidden1.Value == "admin")
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
        
        string ls_gzjj = ftb_gzjj.Text.Replace("'", "’");
        
        if (CommFun.StringCounter(ftb_gzjj.HtmlStrippedText) > 800)
        {
            Response.Write("<script>alert('业务工作简介限800字！');</script>");
            return;
        }
        CommFun.ReplaceZiHao(ref ls_gzjj, "10.5");
        
        //string str_pra = UploadFile(FileUpload_photo, "photo", Session["sfzh"].ToString());

        //if (str_pra == "") return;
        
        //if (str_pra == ",")
        //    str_pra = img_photo.ImageUrl.Substring(img_photo.ImageUrl.LastIndexOf("/") + 1);
        //else
        //    str_pra = str_pra.Substring(str_pra.LastIndexOf(",") + 1);
        
        str_sql = string.Format("update cpry set yourname = '{0}',birth = '{1}',xingbie = '{2}',zgxl_mc = '{3}',zgxl_bysj = '{4}'," +
            "zgxl_zy = '{5}',zgxl_sydw = '{6}',fhxl_mc = '{7}',fhxl_bysj = '{8}',fhxl_zy = '{9}',fhxl_sydw = '{10}'," +
            "fhxw_mc = '{11}',fhxw_qdsj = '{12}',fhxw_zy = '{13}',fhxw_sydw = '{14}',xrzw = '{15}',pdsj = '{16}',prsj = '{17}',gzjj='{18}' where sfzh = '{19}'",
            tbx2_xm.Text, tbx2_csny.Value, ddlist2_xb.SelectedValue, ddlist2_xl1.SelectedValue, tbx2_bysj1.Value, tbx2_zy1.Text, tbx2_sydw1.Text,
            ddlist2_xl2.SelectedValue, tbx2_bysj2.Value, tbx2_zy2.Text, tbx2_sydw2.Text, ddlist2_xw.SelectedValue, tbx2_qdsj.Value, tbx2_zy3.Text, tbx2_sydw3.Text,
            tbx2_xrzw.Text, tbx2_pdsj.Value, tbx2_prsj.Value, ftb_gzjj.HtmlStrippedText, Session["sfzh"].ToString());
       
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
            return;
        }
        bindData();
    }
    #endregion

    protected void imgbtn_SaveNext_Click(object sender, ImageClickEventArgs e)
    {
        string ls_gzjj = ftb_gzjj.Text.Replace("'", "’");
        if (CommFun.StringCounter(ftb_gzjj.HtmlStrippedText) > 800)
        {
            Response.Write("<script>alert('业务工作简介限800字！');</script>");
            return;
        }
        Save();
        //Response.Redirect("zgsb_3.aspx?flag=" + hdn_flag.Value);
        Response.Redirect("yjysb-1.aspx?tablename=Table3&flag=" + hdn_flag.Value);
    }
    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Save();
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        string str_qry;
        
        string str_pra = UploadFile(FileUpload_photo, "photo", Session["sfzh"].ToString());

        if (str_pra == "") return;

        if (str_pra == ",")
            str_pra = img_photo.ImageUrl.Substring(img_photo.ImageUrl.LastIndexOf("/") + 1);
        else
            str_pra = str_pra.Substring(str_pra.LastIndexOf(",") + 1);
        
        str_qry = string.Format("update cpry set photo = '{0}' where sfzh = '{1}'", str_pra, Session["sfzh"].ToString());

        DBFun.ExecuteUpdate(str_qry);
        str_qry = "SELECT * from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
        DataRow dr = DBFun.GetDataRow(str_qry);
        img_photo.ImageUrl = "./photo/" + dr["photo"].ToString();
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
