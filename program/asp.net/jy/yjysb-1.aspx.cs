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

public partial class yjysb_1 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=zgcpry");
            return;
        }
        //if (Table9.Visible) this.imgbtn_save.Attributes.Add("onclick", "return   confirm   (\"是否查看自评分数？\");");
        if (!IsPostBack)
        {
            string str_sql = "select sbzw from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
            Hidden1.Value = DBFun.ExecuteScalar(str_sql).ToString();
            if (Hidden1.Value != "admin")
            {
                str_sql = "select count(*) from cpry where edit_flag = true and sfzh = '" + Session["sfzh"].ToString() + "'";
                if (DBFun.ExecuteScalar(str_sql).ToString() == "0")
                {
                    Response.Write("<script>alert('已经提交，不能再修改！');window.history.go(-1);</script>");
                    return;
                }
                
                rbtnlist_sh.Visible = false;
            }
            string str_tablevisible = Request.QueryString["tablename"];
            HtmlTable tablevisible = (HtmlTable)this.FindControl(str_tablevisible);
            SetStatus(tablevisible);
            this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"提交后不可再修改，确定要提交吗？\");");
            
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
        Table10.Visible = false;
        tbl_visible.Visible = true;
        bool b_visible = (Hidden1.Value == "研究员");

        Table3_11.Visible = b_visible;
        //Table3_12.Visible = b_visible;
        //gv_cdrw.Visible = b_visible;
        lbl3_12.Visible = !b_visible;
        gv_cdrw_gg.Visible = !b_visible;
        Table3_21.Visible = !b_visible;
        lbl3_1.Visible = !b_visible;
        Table3_22.Visible = !b_visible;
        Table3_3.Visible = !b_visible;
        lbl_cdrw_yjy.Visible = (Hidden1.Value == "研究员");
        lbl_cdrw_gg.Visible = !(Hidden1.Value == "研究员");

        Table5_5.Visible = !b_visible;

        imgbtn_SaveNext.Visible = !(tbl_visible == Table9);

        if (tbl_visible == Table6 || tbl_visible == Table8 || tbl_visible == Table9 )
            imgbtn_save.Visible = true;
        else
            imgbtn_save.Visible = false;
        bindData();

    }
    #endregion

    #region 设置下一个表格可见
    private void SetStatus()
    {
        Save();
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
            tbl_visible = Table10;
        else if (Table10.Visible)
            tbl_visible = Table6;
        else if (Table6.Visible)
            tbl_visible = Table7;
        else if (Table7.Visible)
            tbl_visible = Table8;
        else if (Table8.Visible)
            tbl_visible = Table9;
        //else if (Table9.Visible)
        //{
        //    string str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
        //    string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
        //    if (str_sbzw == "研究员")
        //        Response.Redirect("cpry_score.aspx");
        //    else
        //        Response.Redirect("cpry_score_gg.aspx");
        //}
        
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

            tbx2_bysj1.Text = dr["zgxl_bysj"].ToString();
            tbx2_zy1.Text = dr["zgxl_zy"].ToString();
            tbx2_sydw1.Text = dr["zgxl_sydw"].ToString();

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
                tbx3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
                tbx3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
                tbx3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
                lbl3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
                lbl3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
                lbl3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
                FillGridView("cdrwqk", gv_cdrw);
                
            }
            else
            {
                str_qry = "SELECT url from t_dict where flm = 8 and bm = 6 ";
                int i_year = DateTime.Now.Year;
                try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_qry)); }
                catch { }
                int i;
                cbl3_1.Items.Clear();
                cbl3_2.Items.Clear();
                cbl3_3.Items.Clear();
                cbl3_4.Items.Clear();
                for (i = 0; i < 15; i++)
                {
                    i_year--;
                    cbl3_1.Items.Add(i_year.ToString() + "年");
                    cbl3_2.Items.Add(i_year.ToString() + "年");
                    cbl3_3.Items.Add(i_year.ToString() + "年");
                    cbl3_4.Items.Add(i_year.ToString() + "年");
                }
                if (dr != null)
                {
                    tbx3_gg_gznr1.Text = dr["cdrw_gg_gznr1"].ToString();
                    tbx3_gg_gznr2.Text = dr["cdrw_gg_gznr2"].ToString();
                    tbx3_gg_yjs1.Text = dr["pyyjs1"].ToString();
                    tbx3_gg_yjs2.Text = dr["pyyjs2"].ToString();
                    tbx3_gg_yjs3.Text = dr["pyyjs3"].ToString();
                    tbx3_gg_yjs4.Text = dr["pyyjs4"].ToString();

                    SetCBLData(cbl3_1, dr["cdrw_gg_khyx1"].ToString());
                    SetCBLData(cbl3_2, dr["cdrw_gg_khcz1"].ToString());
                    SetCBLData(cbl3_3, dr["cdrw_gg_khyx2"].ToString());
                    SetCBLData(cbl3_4, dr["cdrw_gg_khcz2"].ToString());
                }
                FillGridView("cdrwqk_gg", gv_cdrw_gg);
                str_qry = "select id,rwmc,gznr,js,iif(gjjy='true','是','否') as jy,gjjy from cdrwqk1_gg where sfzh = '" + Session["sfzh"].ToString() + "' order by id asc ";
                FillGridView(str_qry,"cdrwqk1_gg", gv_cdrw1_gg);
            }
            //承担项目情况

            str_qry = "SELECT id,ktmc,qzsj,jfs,ktly1,ktjb,ktbh,ktly2+'/'+ktjb+'/'+ktbh as kt,drjs,NewFileName,pzdw  from cdxmqk  where  sfzh = '" + Session["sfzh"].ToString() + "' order by id asc  ;";
            FillGridView(str_qry, "cdxmqk", gv_drxmqk);
            ddlist3_ktly1.Items.Clear();
            DBFun.FillDwList(ddlist3_ktly1, "select bm,name from t_dict where flm = 6 ");
            ddlist3_ktly1.SelectedIndex = 2;
            Get_ktjb();
        }
        else if (Table4.Visible)
        {
            str_qry = "SELECT id,lzmc,zs,slqk,kwmc,pm,fbsj,istp,xdbg,NewFileName from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'  order by id asc ;";
            FillGridView(str_qry, "lzbgqk", gv_lzbgqk);
        }
        else if (Table5.Visible)
        {
            str_qry = "SELECT id,hjcgmc,jljb+' '+jlmc as jl,hjdj,pm,hjsj,jljb,NewFileName from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'  order by id asc ;";
            FillGridView(str_qry, "hjqk", gv_hjqk);
            FillGridView("yxlw", gv_yxlw);
            FillGridView("lwbyyqk", gv_lwbyyqk);
            FillGridView("hgjzlqk", gv_hgjzlqk);
            if (Hidden1.Value == "正研级高级工程师")
            {
                FillGridView("qgjcybpb", gv5_1);
                FillGridView("xjgrch", gv5_2);
                FillGridView("dlyb", gv5_3);
                FillGridView("yqrj", gv5_4);
                FillGridView("aqpj", gv5_5);
            }
        }
        else if (Table6.Visible)
        {
            str_qry = "SELECT url from t_dict where flm = 8 and bm = 6";
            int i_year = DateTime.Now.Year;
            try
            {
                i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_qry));
            }
            catch 
            { 
            }
            ddl6_scsbnd.Items.Clear();
            ddl6_scsbnd.Items.Add("无");
            for (int i = 0; i < 10; i++)
            {
                ddl6_scsbnd.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
            }
            i_year--;
            lbl_ndkh3.Text = i_year.ToString();
            i_year--;
            lbl_ndkh2.Text = i_year.ToString();
            i_year--;
            lbl_ndkh1.Text = i_year.ToString();
            str_qry = "SELECT chengguo,ndkh1,ndkh2,ndkh3,scsbnd from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            if (dr != null)
            {
                ftb_chengguo.Text = dr["chengguo"].ToString();
                try { ddl6_ndkh1.SelectedValue = dr["ndkh1"].ToString(); }
                catch { ddl6_ndkh1.SelectedIndex =0;}
                try { ddl6_ndkh2.SelectedValue = dr["ndkh2"].ToString(); }
                catch { ddl6_ndkh2.SelectedIndex =0;}
                try { ddl6_ndkh3.SelectedValue = dr["ndkh3"].ToString(); }
                catch { ddl6_ndkh3.SelectedIndex = 0; }
                try { ddl6_scsbnd.SelectedValue = dr["scsbnd"].ToString(); }
                catch { ddl6_scsbnd.SelectedIndex = 0; }
                
            }
        }
        else if (Table7.Visible)
        {
            str_qry = "SELECT kssj,yz,jb,zy,fs,wymsly from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            txt7_kssj.Value = dr["kssj"].ToString();
            tbx7_yz.Text = dr["yz"].ToString();
            tbx7_jb.Text = dr["jb"].ToString();
            tbx7_zy.Text = dr["zy"].ToString();
            tbx7_fs.Text = dr["fs"].ToString();
            ftb_wymsly.Text = dr["wymsly"].ToString();

            str_qry = "SELECT * from fylw where sfzh = '" + Session["sfzh"].ToString() + "'  order by id asc ;";
            Session["fylw"] = DBFun.GetDataView(str_qry);
            DataView dv = (DataView)Session["fylw"];
            gv_fylw.DataSource = dv;
            gv_fylw.DataBind();
        }
        else if (Table8.Visible)
        {
            str_qry = "SELECT jsj_km1,jsj_km2,jsj_km3,jsj_km4,jsj_msly,jsj_fujian,jsj_msly_dj from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            tbx8_km1.Text = dr["jsj_km1"].ToString();
            tbx8_km2.Text = dr["jsj_km2"].ToString();
            tbx8_km3.Text = dr["jsj_km3"].ToString();
            tbx8_km4.Text = dr["jsj_km4"].ToString();
            try { ddlist8_msly.SelectedValue = dr["jsj_msly"].ToString(); }
            catch { ddlist8_msly.SelectedIndex = 0; }
            //try { ddlist8_dj.SelectedValue = dr["jsj_msly_dj"].ToString(); }
            //catch { ddlist8_dj.SelectedIndex = 0; }
            //lbl8_dj.Visible = (ddlist8_msly.SelectedIndex == 2);
            //ddlist8_dj.Visible = (ddlist8_msly.SelectedIndex == 2);
        }
        else if (Table9.Visible)
        {
            str_qry = "SELECT pglb,pgtj,jtpgly from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            string str_pglb = dr["pglb"].ToString();
            string str_pgtj = dr["pgtj"].ToString();
            string str_jtpgly = dr["jtpgly"].ToString();
            if (str_jtpgly == null || str_jtpgly == "") return;
            tbx9_5.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|")+1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            tbx9_4.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            tbx9_3.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            tbx9_2.Text = str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1);
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            tbx9_1.Text = str_jtpgly;
            cbxlist_pglb.SelectedIndex = Convert.ToInt16(str_pglb);
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
            TABLE9_1.Visible = (cbxlist_pglb.SelectedIndex > 0);
        }
        else if (Table10.Visible)
        {
            str_qry = "SELECT dbxcg_title1,dbxcg_content1,dbxcg_fj1,dbxcg_title2,dbxcg_content2,dbxcg_fj2,dbxcg_fj1_displayname,dbxcg_fj2_displayname from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            if (dr == null) return;
            tbx10_1.Text = dr["dbxcg_title1"].ToString();
            ftb10_1.Text = dr["dbxcg_content1"].ToString();
            lbtn10_1.Text = dr["dbxcg_fj1_displayname"].ToString();
            tbx10_2.Text = dr["dbxcg_title2"].ToString();
            ftb10_2.Text = dr["dbxcg_content2"].ToString();
            lbtn10_2.Text = dr["dbxcg_fj2_displayname"].ToString();
            lbtn10_11.Visible = (lbtn10_1.Text != "");
            lbtn10_21.Visible = (lbtn10_2.Text != "");
            //lbtn10_2.PostBackUrl = "dbxcg/" + dr["dbxcg_fj2"].ToString();
        }

        setButtonImageUrlSave();
        //str_qry = "select edit_flag from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        //bool b_EditFlag = Convert.ToBoolean(DBFun.ExecuteScalar(str_qry));
        //imgbtn_save.Visible = b_EditFlag;
        
        //imgbtn_pf.Visible = b_EditFlag;
        //imgbtn_pf.Visible = true;
    }
    #endregion

    //FillGridView
    #region FillGridView
    protected void FillGridView(string str_TableName, GridView gv_bind)
    {
        string str_qry = "SELECT * from " + str_TableName + " where sfzh = '" + Session["sfzh"].ToString() + "' order by id asc ;";
        Session[str_TableName] = DBFun.GetDataView(str_qry);
        DataView dv = (DataView)Session[str_TableName];
        gv_bind.DataSource = dv;
        gv_bind.DataBind();
        LinkButton lbtn;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            lbtn = (LinkButton)gv_bind.Rows[i].FindControl("LinkButton2");
            if (lbtn != null) lbtn.Attributes.Add("onclick", "return   confirm   (\"确定要删除吗？\");");   
            
        }
    }
    protected void FillGridView(string str_sql, string str_TableName, GridView gv_bind)
    {
        Session[str_TableName] = DBFun.GetDataView(str_sql);
        DataView dv = (DataView)Session[str_TableName];
        gv_bind.DataSource = dv;
        gv_bind.DataBind();
        LinkButton lbtn;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            lbtn = (LinkButton)gv_bind.Rows[i].FindControl("LinkButton2");
            if(lbtn !=null) lbtn.Attributes.Add("onclick", "return   confirm   (\"确定要删除吗？\");");
        }
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
            string str_sql = "select url from t_dict where flm=8 and bm in (4,5)";
            DataView dv = DBFun.dataView(str_sql);
            string str_UploadFileType = dv.Table.Rows[0]["url"].ToString();
            string str_UploadFileSize = dv.Table.Rows[1]["url"].ToString();
            if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
            {
                Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                return "";
            }
            if (Convert.ToDecimal(str_UploadFileSize) * Convert.ToDecimal(1024) < Fupload.PostedFile.ContentLength)
            {
                Response.Write("<script>alert('不允许上传超过 " + str_UploadFileSize + "KB的文件！');</script>");
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
            Session["FilePath"] = str_ParentFolder + "\\" + str_NewFileName;
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
        //SetStatus(Table1);
        //lbl_tbrq.Text = DateTime.Now.ToString("yyyy年MM月dd日");
        Response.Redirect("zgsb_1.aspx?flag=");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        //SetStatus(Table2);
        Response.Redirect("zgsb_2.aspx?flag=");
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
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        SetStatus(Table10);
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Save();
        string str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
        string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
        if (str_sbzw == "研究员")
            Response.Redirect("cpry_score.aspx");
        else
            Response.Redirect("cpry_score_gg.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
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
            Response.Write("<script>alert('提交成功！'); </script>");
            Session.RemoveAll();
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        }
        
    }
    #endregion


    //table3添加按钮 
    #region table3添加按钮
    protected void btn_cdrw_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),5,max(id)+1) as maxid from cdrwqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from cdrwqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 6)
            {
                Response.Write("<script>alert('最多只能增加10项！');</script>");
                return;
            }
            str_sql = string.Format("insert into cdrwqk (id,rwmc,gznr,qzsj,zwjs,sfzh) " +
                             " values({0},'{1}','{2}','{3}','{4}','{5}');",
                             int_maxbm, tbx3_rwmc.Text, tbx3_gznr.Text, tbx3_qzrq.Text, tbx3_zwjs.Text, Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("update cdrwqk set rwmc='{0}',gznr='{1}' where sfzh='{2}' and id={3} ",
                                    tbx3_rwmc.Text, tbx3_gznr.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx3_rwmc.Text = "";
            tbx3_rwmc.Focus();
            tbx3_gznr.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void imgbtn3_cdrw_gg_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),4,max(id)+1) as maxid from cdrwqk_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from cdrwqk_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 5)
            {
                Response.Write("<script>alert('最多只能增加5项！');</script>");
                return;
            }
            str_sql = string.Format("insert into cdrwqk_gg (id,gzsj,gznr,js,sfzh) " +
                             " values({0},'{1}','{2}','{3}','{4}');",
                             int_maxbm, tbx3_gzsj_gg.Text, ddl3_gznr_gg.SelectedValue, ddl3_khjg_gg.SelectedValue, Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("update cdrwqk_gg set gzsj='{0}',gznr='{1}',js='{2}' where sfzh='{3}' and id={4} ",
                                    tbx3_gzsj_gg.Text, ddl3_gznr_gg.SelectedValue, ddl3_khjg_gg.SelectedValue, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx3_gzsj_gg.Text = "";
            ddl3_gznr_gg.SelectedIndex = 0;
            ddl3_js_gg.SelectedIndex = 0;
            tbx3_gzsj_gg.Focus();
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void imgbtn3_cdrw1_gg_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdrwqk1_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from cdrwqk1_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
            {
                Response.Write("<script>alert('最多只能增加10项！');</script>");
                return;
            }
            str_sql = string.Format("insert into cdrwqk1_gg (id,rwmc,gznr,js,gjjy,sfzh) " +
                             " values({0},'{1}','{2}','{3}','{4}','{5}');",
                             int_maxbm, tbx3_dzmc_gg.Text, tbx3_xcgznr_gg.Text, ddl3_js_gg.SelectedValue, cbx3_gjjy_gg.Checked, Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("update cdrwqk1_gg set rwmc='{0}',gznr='{1}',js='{2}',gjjy='{3}' where sfzh='{4}' and id={5} ",
                                    tbx3_dzmc_gg.Text, tbx3_xcgznr_gg.Text, ddl3_js_gg.SelectedValue, cbx3_gjjy_gg.Checked, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx3_dzmc_gg.Text = "";
            tbx3_xcgznr_gg.Text = "";
            ddl3_js_gg.SelectedIndex = 0;
            cbx3_gjjy_gg.Checked = false;
            tbx3_dzmc_gg.Focus();
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void imgbtn_drxm_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        try
        {
            if (Convert.ToDateTime(Txt3_1.Value) > Convert.ToDateTime(Txt3_2.Value))
            {
                Response.Write("<script>alert('开始时间应早于结束时间！');</script>");
                Txt3_2.Focus();
                return;
            }
        }
        catch
        {
            Response.Write("<script>alert('起止时间不能为空！');</script>");
            Txt3_1.Focus();
            return;
        }
        tbx3_qzsj.Text = Txt3_1.Value + "～" + Txt3_2.Value;
        if (lbl_id.Text == "")
        {
            str_sql = "select count(*) from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
            {
                Response.Write("<script>alert('最多只能增加10项！');</script>");
                return;
            }
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            
            if (tbx3_jfs.Text == "") tbx3_jfs.Text = "0";
            str_sql = string.Format("insert into cdxmqk (id,ktmc,qzsj,jfs,ktly1,ktly2,ktjb,ktbh,drjs,sfzh,sh_flag,OriginalFileName,NewFileName,pzdw) " +
                     " values({0},'{1}','{2}',{3},'{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}');",
                     int_maxbm, tbx3_ktmc.Text, tbx3_qzsj.Text, Convert.ToDecimal(tbx3_jfs.Text), ddlist3_ktly1.SelectedValue, ddlist3_ktly1.SelectedItem.Text.Trim().Substring(3),
                     ddlist3_ktjb.SelectedValue, tbx3_ktbh.Text, ddlist3_drjs.SelectedValue, Session["sfzh"].ToString(), "未审核",
                     "", "",tbx3_pzdw.Text);
        }
        else
        {
            str_sql = string.Format("update cdxmqk set ktmc='{0}',qzsj='{1}',jfs={2},ktly1='{3}',ktly2='{4}',ktjb='{5}',ktbh='{6}',drjs='{7}',pzdw = '{8}' where sfzh='{9}' and id={10} ",
                                   tbx3_ktmc.Text, tbx3_qzsj.Text, Convert.ToDecimal(tbx3_jfs.Text), ddlist3_ktly1.SelectedValue, ddlist3_ktly1.SelectedItem.Text.Trim(),
                                   ddlist3_ktjb.SelectedValue, tbx3_ktbh.Text, ddlist3_drjs.SelectedValue, tbx3_pzdw.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx3_ktmc.Focus();
            tbx3_ktmc.Text = "";
            tbx3_ktbh.Text = "";
            Txt3_1.Value = "";
            Txt3_2.Value = "";
            tbx3_jfs.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }

    }
    #endregion

    //table4添加按钮 
    #region table4添加按钮
    protected void imgbtn_lzbgqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        bool b_istp, b_xdbg;
        b_istp = cbx4_istp.Checked;
        b_xdbg = cbx4_xdbg.Checked;
        if (lbl_id.Text == "")
        {
            str_sql = "select count(*) from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
            {
                Response.Write("<script>alert('最多只能增加10项！');</script>");
                return;
            }
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            

            if (tbx4_zs.Text == "")
                tbx4_zs.Text = "0";
            if (tbx4_pm.Text == "")
                tbx4_pm.Text = "0";
            str_sql = string.Format("insert into lzbgqk (id,lzmc,zs,slqk,kwmc,pm,fbsj,sfzh,istp,xdbg) " +
                            " values({0},'{1}',{2},'{3}','{4}',{5},'{6}','{7}',{8},{9});",
                            int_maxbm, tbx4_lzmc.Text, Convert.ToDecimal(tbx4_zs.Text), ddlist4_slqk.SelectedValue, tbx4_kwmc.Text, Convert.ToInt32(tbx4_pm.Text),
                            tbx4_fbsj.Value, Session["sfzh"].ToString(), b_istp, b_xdbg);
        }
        else
        {
            str_sql = string.Format("update lzbgqk set lzmc='{0}',zs={1},slqk='{2}',kwmc='{3}',pm={4},fbsj='{5}',istp={6},xdbg={7} where sfzh='{8}' and id={9} ",
                                    tbx4_lzmc.Text, Convert.ToDecimal(tbx4_zs.Text), ddlist4_slqk.SelectedValue, tbx4_kwmc.Text, Convert.ToInt32(tbx4_pm.Text),
                                    tbx4_fbsj.Value,b_istp, b_xdbg, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx4_lzmc.Focus();
            tbx4_lzmc.Text = "";
            tbx4_zs.Text = "";
            tbx4_kwmc.Text = "";
            cbx4_istp.Checked = false;
            cbx4_xdbg.Checked = false;
            tbx4_pm.Text = "";
            tbx4_fbsj.Value = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    #endregion

    //table5
    #region table5 添加按钮
    protected void imgbtn_hjqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";

        //国家奖一等奖15人，二等奖10人 （三等奖3人）
        //省局　一等15      二等9      三等奖7人 
        //地震局一等奖15人，二等奖9人，三等奖5人

        tbx5_zrs.Text = "15";//一等奖均为15人
        if (ddlist5_jljb.SelectedIndex <= 2)//国家级
        {
            if (ddlist5_hjdj.SelectedIndex == 1)
                tbx5_zrs.Text = "10";
            else if (ddlist5_hjdj.SelectedIndex == 2)
                tbx5_zrs.Text = "3";
        }
        else if (ddlist5_jljb.SelectedIndex == 3)//省部级
        {
            if (ddlist5_hjdj.SelectedIndex == 1)
                tbx5_zrs.Text = "9";
            else if (ddlist5_hjdj.SelectedIndex == 2)
                tbx5_zrs.Text = "7";
        }
        else if (ddlist5_jljb.SelectedIndex == 4)//地震局
        {
            if (ddlist5_hjdj.SelectedIndex == 1)
                tbx5_zrs.Text = "9";
            else if (ddlist5_hjdj.SelectedIndex == 2)
                tbx5_zrs.Text = "5";
        }
        if (lbl_id.Text == "")
        {
            str_sql = "select count(*) from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
            {
                Response.Write("<script>alert('最多只能增加10项！');</script>");
                return;
            }
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

            if (tbx51_pm.Text == "")
                tbx51_pm.Text = "0";
            str_sql = string.Format("insert into hjqk (id,hjcgmc,jljb,jlmc,hjdj,pm,hjsj,sfzh,zrs,NewFileName) " +
                             " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}',{8},'{9}');",
                             int_maxbm, tbx5_hjcgmc.Text, ddlist5_jljb.SelectedValue, tbx5_jlmc.Text, ddlist5_hjdj.SelectedValue,
                             Convert.ToInt32(tbx51_pm.Text), tbx5_hjsj.Value, Session["sfzh"].ToString(),
                             Convert.ToInt16(tbx5_zrs.Text), "");
        }
        else
        {
            str_sql = string.Format("update hjqk set hjcgmc='{0}',jljb='{1}',jlmc='{2}',hjdj='{3}',pm={4},hjsj='{5}',zrs={6} where sfzh='{7}' and id={8} ",
                                    tbx5_hjcgmc.Text, ddlist5_jljb.SelectedValue, tbx5_jlmc.Text, ddlist5_hjdj.SelectedValue,
                                    Convert.ToInt32(tbx51_pm.Text), tbx5_hjsj.Value,Convert.ToInt16(tbx5_zrs.Text), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx5_hjcgmc.Focus();
            tbx5_hjcgmc.Text = "";
            tbx51_pm.Text = "";
            tbx5_hjsj.Value = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }

    }
    protected void imgbtn_yxlw_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yxlw where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from yxlw where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 3)
            {
                Response.Write("<script>alert('最多只能增加3项！');</script>");
                return;
            }
            if (tbx52_zzpm.Text == "")
                tbx52_zzpm.Text = "0";
            str_sql = string.Format("insert into yxlw (id,lwmc,hjmc,zzpm,sfzh,OriginalFileName,NewFileName) " +
                             " values({0},'{1}','{2}',{3},'{4}','{5}','{6}');",
                             int_maxbm, tbx52_lwmc.Text, tbx52_hjmc.Text, Convert.ToInt16(tbx52_zzpm.Text), Session["sfzh"].ToString(),
                             "", "");
        }
        else
        {
            str_sql = string.Format("update yxlw set lwmc='{0}',hjmc='{1}',zzpm='{2}' where sfzh='{3}' and id={4} ",
                                    tbx52_lwmc.Text, tbx52_hjmc.Text, Convert.ToInt16(tbx52_zzpm.Text), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx52_lwmc.Focus();
            tbx52_lwmc.Text = "";
            tbx52_hjmc.Text = "";
            tbx52_zzpm.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void imgbtn_lwbyyqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

            str_sql = "select count(*) from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 10)
            {
                Response.Write("<script>alert('最多只能增加10项！');</script>");
                return;
            }
            if (ddlist5_zz.SelectedIndex < 2)
                tbx52_pm.Text = "1";
            else
                tbx52_pm.Text = "2";
            if (tbx5_tycs.Text == "")
                tbx5_tycs.Text = "0";
            str_sql = string.Format("insert into lwbyyqk (id,lwmc,zz,fbsj,kwmc,tycs,sfzh,pm,NewFileName) " +
                             " values({0},'{1}','{2}','{3}','{4}',{5},'{6}',{7},'{8}');",
                             int_maxbm, tbx5_lwmc.Text, ddlist5_zz.SelectedValue, tbx5_fbsj.Value, tbx5_kwmc.Text, Convert.ToInt32(tbx5_tycs.Text), Session["sfzh"].ToString(),
                             Convert.ToInt16(tbx52_pm.Text), "");
        }
        else
        {
            str_sql = string.Format("update lwbyyqk set lwmc='{0}',zz='{1}',fbsj='{2}',kwmc='{3}',tycs={4},pm = {5} where sfzh='{6}' and id={7} ",
                                    tbx5_lwmc.Text, ddlist5_zz.SelectedValue, tbx5_fbsj.Value, tbx5_kwmc.Text, Convert.ToInt16(tbx5_tycs.Text),Convert.ToInt16(tbx52_pm.Text), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx5_lwmc.Focus();
            tbx5_lwmc.Text = "";
            tbx5_fbsj.Value = "";
            tbx5_kwmc.Text = "";
            tbx5_tycs.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }

    }
    protected void imgbtn_hgjzlqk_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 3)
            {
                Response.Write("<script>alert('最多只能增加3项！');</script>");
                return;
            }
            if (tbx5_pm.Text == "")
                tbx5_pm.Text = "0";
            str_sql = string.Format("insert into hgjzlqk (id,zlmc,zlh,sj,zllx,pm,sfzh,OriginalFileName,NewFileName) " +
                             " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}');",
                             int_maxbm, tbx5_zlmc.Text, tbx5_zlh.Text, tbx5_sj.Value, ddlist5_zllx.SelectedValue, Convert.ToInt32(tbx5_pm.Text), Session["sfzh"].ToString(),
                             "", "");
        }
        else
        {
            str_sql = string.Format("update hgjzlqk set zlmc='{0}',zlh='{1}',sj='{2}',zllx='{3}',pm='{4}' where sfzh='{5}' and id={6} ",
                                    tbx5_zlmc.Text, tbx5_zlh.Text, tbx5_sj.Value, ddlist5_zllx.SelectedValue, Convert.ToInt32(tbx5_pm.Text), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx5_zlmc.Focus();
            tbx5_zlmc.Text = "";
            tbx5_zlh.Text = "";
            tbx5_sj.Value = "";
            tbx5_pm.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }

    protected void imgbtn5_1_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from qgjcybpb where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from qgjcybpb where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 5)
            {
                Response.Write("<script>alert('最多只能增加5项！');</script>");
                return;
            }
            if (tbx5_1_grpm.Text == "")
                tbx5_1_grpm.Text = "0";
            str_sql = string.Format("insert into qgjcybpb (id,nd,grpm,zmwjwh,sfzh,OriginalFileName,NewFileName) " +
                             " values({0},'{1}',{2},'{3}','{4}','{5}','{6}');",
                             int_maxbm, tbx5_1_nd.Text, Convert.ToInt32(tbx5_1_grpm.Text), tbx5_1_zmwjwh.Text, Session["sfzh"].ToString(),
                             "", "");
        }
        else
        {
            str_sql = string.Format("update qgjcybpb set nd='{0}',grpm={1},zmwjwh='{2}' where sfzh='{3}' and id={4} ",
                                    tbx5_1_nd.Text, Convert.ToInt32(tbx5_1_grpm.Text), tbx5_1_zmwjwh.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx5_1_nd.Focus();
            tbx5_1_nd.Text = "";
            tbx5_1_grpm.Text = "";
            tbx5_1_zmwjwh.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }

    }
    protected void imgbtn5_2_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from xjgrch where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from xjgrch where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 5)
            {
                Response.Write("<script>alert('最多只能增加5项！');</script>");
                return;
            }

            str_sql = string.Format("insert into xjgrch (id,yjmc,nd,zmwjwh,sfzh,OriginalFileName,NewFileName) " +
                             " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                             int_maxbm, tbx5_2_yjmc.Text, tbx5_2_nd.Text, tbx5_2_zmwjwh.Text, Session["sfzh"].ToString(),
                             "", "");
        }
        else
        {
            str_sql = string.Format("update xjgrch set yjmc='{0}',nd='{1}',zmwjwh='{2}' where sfzh='{3}' and id={4} ",
                                     tbx5_2_yjmc.Text, tbx5_2_nd.Text, tbx5_2_zmwjwh.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx5_2_nd.Focus();
            tbx5_2_nd.Text = "";
            tbx5_2_zmwjwh.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }

    }
    protected void imgbtn5_3_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from dlyb where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

            str_sql = "select count(*) from dlyb where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 5)
            {
                Response.Write("<script>alert('最多只能增加5项！');</script>");
                return;
            }
            str_sql = string.Format("insert into dlyb (id,dzsj,zynr,zj,sfzh) " +
                             " values({0},'{1}','{2}','{3}','{4}');",
                             int_maxbm, tbx5_3_dzsj.Text, tbx5_3_zynr.Text, ddlist5_3_zj.SelectedValue, Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("update dlyb set dzsj='{0}',zynr='{1}',zj='{2}' where sfzh='{3}' and id={4} ",
                                     tbx5_3_dzsj.Text, tbx5_3_zynr.Text,ddlist5_3_zj.SelectedValue, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");

            tbx5_3_dzsj.Focus();
            tbx5_3_dzsj.Text = "";
            tbx5_3_zynr.Text = "";
            ddlist5_3_zj.SelectedIndex = 0;
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void imgbtn5_4_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yqrj where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());

            str_sql = "select count(*) from yqrj where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 3)
            {
                Response.Write("<script>alert('最多只能增加3项！');</script>");
                return;
            }

            str_sql = string.Format("insert into yqrj (id,yqrjmc,jddw,nd,yydw,sfzh) " +
                             " values({0},'{1}','{2}','{3}','{4}','{5}');",
                             int_maxbm, tbx5_4_yqrjmc.Text, tbx5_4_jddw.Text, tbx5_4_nd.Text, tbx5_4_yydw.Text, Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("update yqrj set yqrjmc='{0}',jddw='{1}',nd='{2}',yydw='{3}' where sfzh='{4}' and id={5} ",
                                     tbx5_4_yqrjmc.Text, tbx5_4_jddw.Text, tbx5_4_nd.Text, tbx5_4_yydw.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");

            tbx5_4_yqrjmc.Focus();
            tbx5_4_yqrjmc.Text = "";
            tbx5_4_jddw.Text = "";
            tbx5_4_nd.Text = "";
            tbx5_4_yydw.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    protected void imgbtn5_5_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from aqpj where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from aqpj where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 3)
            {
                Response.Write("<script>alert('最多只能增加3项！');</script>");
                return;
            }
            str_sql = string.Format("insert into aqpj (id,xmmc,yydw,nd,wh,sfzh) " +
                             " values({0},'{1}','{2}','{3}','{4}','{5}');",
                             int_maxbm, tbx5_5_xmmc.Text, tbx5_5_yydw.Text, tbx5_5_nd.Text, tbx5_5_wh.Text,
                             Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("update aqpj set xmmc='{0}',yydw='{1}',nd='{2}',wh='{3}' where sfzh='{4}' and id={5} ",
                                     tbx5_5_xmmc.Text, tbx5_5_yydw.Text, tbx5_5_nd.Text, tbx5_5_wh.Text, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");

            tbx5_5_xmmc.Focus();
            tbx5_5_xmmc.Text = "";
            tbx5_5_yydw.Text = "";
            tbx5_5_nd.Text = "";
            tbx5_5_wh.Text = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }



    #endregion

    //table7
    #region table7 添加按钮
    protected void imgbtn_fylw_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql = "";
        if (lbl_id.Text == "")
        {
            str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from fylw where sfzh = '" + Session["sfzh"].ToString() + "'";
            int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            str_sql = "select count(*) from fylw where sfzh = '" + Session["sfzh"].ToString() + "'";
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 5)
            {
                Response.Write("<script>alert('最多只能增加5项！');</script>");
                return;
            }
            if (tbx7_zs.Text == "")
                tbx7_zs.Text = "0";
            str_sql = string.Format("insert into fylw (id,fylw,ywz,zs,cbdw,cbsj,sfzh,OriginalFileName,NewFileName) " +
                             " values({0},'{1}','{2}',{3},'{4}','{5}','{6}','{7}','{8}');",
                             int_maxbm, tbx7_fylw.Text, tbx7_ywz.Text, Convert.ToDecimal(tbx7_zs.Text), tbx7_cbdw.Text, tbx7_cbsj.Value, Session["sfzh"].ToString(),
                             "", "");
        }
        else
        {
            str_sql = string.Format("update fylw set fylw='{0}',ywz='{1}',zs={2},cbdw='{3}',cbsj='{4}' where sfzh='{5}' and id={6} ",
                                     tbx7_fylw.Text, tbx7_ywz.Text, Convert.ToDecimal(tbx7_zs.Text), tbx7_cbdw.Text, tbx7_cbsj.Value, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            tbx7_fylw.Focus();
            tbx7_fylw.Text = "";
            tbx7_ywz.Text = "";
            tbx7_zs.Text = "";
            tbx7_cbdw.Text = "";
            tbx7_cbsj.Value = "";
            bindData();
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    #endregion

    //table10
    #region table10 代表性成果添加、删除按钮
    protected void imgbtn10_1_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql;
        string str_pra = UploadFile(fu10_1, "dbxcg", Session["sfzh"].ToString() + "_1");
        if (str_pra == "") return;
        string ls_content = ftb10_1.Text.Replace("'", "’");
        CommFun.ReplaceZiHao(ref ls_content, "10.5");
        if (CommFun.StringCounter(ftb10_1.HtmlStrippedText) > 600)
        {
            Response.Write("<script>alert('内容应在600字以内！');</script>");
            return;
        }
        if (str_pra == ",")
            str_sql = string.Format("update cpry set dbxcg_title1 = '{0}',dbxcg_content1 = '{1}' where sfzh = '{2}'",
                tbx10_1.Text, ftb10_1.HtmlStrippedText, Session["sfzh"].ToString());
        else
            str_sql = string.Format("update cpry set dbxcg_title1 = '{0}',dbxcg_content1 = '{1}',dbxcg_fj1 = '{2}',dbxcg_fj1_displayname = '{3}' where sfzh = '{4}'",
                tbx10_1.Text, ftb10_1.HtmlStrippedText, str_pra.Substring(str_pra.IndexOf(",") + 1), str_pra.Substring(0, str_pra.IndexOf(",")), Session["sfzh"].ToString());
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

    protected void imgbtn10_1_del_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql;
        str_sql = "update cpry set dbxcg_title1 = '',dbxcg_content1 = '',dbxcg_fj1 = '',dbxcg_fj1_displayname = '' where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败！');</script>");
        }
        bindData();
    }


    protected void imgbtn10_2_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql;
        string str_pra = UploadFile(fu10_2, "dbxcg", Session["sfzh"].ToString() + "_2");
        if (str_pra == "") return;
        string ls_content = ftb10_2.Text.Replace("'", "’");
        CommFun.ReplaceZiHao(ref ls_content, "10.5");
        if (CommFun.StringCounter(ftb10_2.HtmlStrippedText) > 600)
        {
            Response.Write("<script>alert('内容应在600字以内！');</script>");
            return;
        }
        if (str_pra == ",")
            str_sql = string.Format("update cpry set dbxcg_title2 = '{0}',dbxcg_content2 = '{1}' where sfzh = '{2}'",
                tbx10_2.Text, ftb10_2.HtmlStrippedText, Session["sfzh"].ToString());
        else
            str_sql = string.Format("update cpry set dbxcg_title2 = '{0}',dbxcg_content2 = '{1}',dbxcg_fj2 = '{2}',dbxcg_fj2_displayname = '{3}' where sfzh = '{4}'",
                tbx10_2.Text, ftb10_2.HtmlStrippedText, str_pra.Substring(str_pra.IndexOf(",") + 1), str_pra.Substring(0, str_pra.IndexOf(",")), Session["sfzh"].ToString());
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

    protected void imgbtn10_2_del_Click(object sender, ImageClickEventArgs e)
    {
        string str_sql;
        str_sql = "update cpry set dbxcg_title2 = '',dbxcg_content2 = '',dbxcg_fj2 = '',dbxcg_fj2_displayname = '' where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败！');</script>");
        }
        bindData();
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
        //if (Table1.Visible == true)
        //{
        //    str_sql = string.Format("update cpry set gzdw = '{0}',yourname = '{1}',xrzw = '{2}',csgz = '{3}',sbzw = '{4}',tbrq = '{5}' where sfzh = '{6}'",
        //         ddlist_gzdw.SelectedValue, tbx_xm.Text, ddlist_xrzw.SelectedValue, ddlist_csgz.SelectedValue, lbl_sbzw.Text, lbl_tbrq.Text, Session["sfzh"].ToString());
        //}
        //else if (Table2.Visible == true)
        //{
        //    string ls_gzjj = ftb_gzjj.Text.Replace("'", "’");
        //    CommFun.ReplaceZiHao(ref ls_gzjj, "10.5");
        //    string str_pra = UploadFile(FileUpload_photo, "photo", Session["sfzh"].ToString());

        //    if (str_pra == "") return;
        //    //str_pra = str_pra.Substring(str_pra.IndexOf(",") + 1);
        //    if (str_pra == ",")
        //    {
        //        str_pra = img_photo.ImageUrl.Substring(img_photo.ImageUrl.LastIndexOf("/") + 1);
        //    }
        //    else
        //    {
        //        str_pra = str_pra.Substring(str_pra.LastIndexOf("/") + 1);
        //    }

        //    str_sql = string.Format("update cpry set yourname = '{0}',birth = '{1}',xingbie = '{2}',zgxl_mc = '{3}',zgxl_bysj = '{4}'," +
        //        "zgxl_zy = '{5}',zgxl_sydw = '{6}',fhxl_mc = '{7}',fhxl_bysj = '{8}',fhxl_zy = '{9}',fhxl_sydw = '{10}'," +
        //        "fhxw_mc = '{11}',fhxw_qdsj = '{12}',fhxw_zy = '{13}',fhxw_sydw = '{14}',xrzw = '{15}',pdsj = '{16}',prsj = '{17}',gzjj='{18}',photo = '{19}' where sfzh = '{20}'",
        //        tbx2_xm.Text, tbx2_csny.Text, ddlist2_xb.SelectedValue, "史磊", tbx2_bysj1.Text, tbx2_zy1.Text, tbx2_sydw1.Text,
        //        "史磊", tbx2_bysj2.Text, tbx2_zy2.Text, tbx2_sydw2.Text, tbx2_xw.Text, tbx2_qdsj.Text, tbx2_zy3.Text, tbx2_sydw3.Text,
        //        tbx2_xrzw.Text, tbx2_pdsj.Text, tbx2_prsj.Text, ls_gzjj, str_pra, Session["sfzh"].ToString());
        //}
        if (Table3.Visible == true)
        {
            //str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from cdrwqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            //int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
            //str_sql = string.Format("insert into cdrwqk (id,rwmc,gznr,qzsj,zwjs,sfzh) " +
            //                 " values({0},'{1}','{2}','{3}','{4}','{5}');",
            //                 int_maxbm, tbx3_rwmc.Text, tbx3_gznr.Text, tbx3_qzrq.Text, tbx3_zwjs.Text, Session["sfzh"].ToString());
            if (Hidden1.Value == "研究员")
            {
                if (CommFun.StringCounter(tbx3_1.Text) > 20 || CommFun.StringCounter(tbx3_2.Text) > 20 || CommFun.StringCounter(tbx3_3.Text) > 20)
                {
                    Response.Write("<script>alert('工作内容或情况应在20字以内！');</script>");
                    return;
                }
                str_sql = string.Format("update cpry set cdrw_mc1 = '{0}',cdrw_gznr1 = '{1}',cdrw_mc2 = '{2}',cdrw_gznr2 = '{3}',cdrw_mc3 = '{4}'," +
                                 "cdrw_gznr3 = '{5}', pyyjs1 = '{6}',pyyjs2 = '{7}',pyyjs3 = '{8}',pyyjs4 = '{9}' where sfzh = '{10}'",
                                 rbtnlist3_1.SelectedValue, tbx3_1.Text, rbtnlist3_2.SelectedValue, tbx3_2.Text, rbtnlist3_3.SelectedValue,
                                 tbx3_3.Text, tbx3_41.Text, tbx3_42.Text, tbx3_43.Text, tbx3_44.Text, Session["sfzh"].ToString());
            }
            else
            {
                if (CompareCBLData(cbl3_1, cbl3_2) || CompareCBLData(cbl3_3, cbl3_4))
                {
                    Response.Write("<script>alert('同一年度考核结果不能同时选择 优秀 和 称职 ！');</script>");
                    return;
                }
                
                str_sql = string.Format("update cpry set cdrw_gg_gznr1 = '{0}',cdrw_gg_khyx1 = '{1}',cdrw_gg_khcz1 = '{2}'," +
                                        "cdrw_gg_gznr2 = '{3}',cdrw_gg_khyx2 = '{4}',cdrw_gg_khcz2 = '{5}'," +
                                        " pyyjs1 = '{6}',pyyjs2 = '{7}',pyyjs3 = '{8}',pyyjs4 = '{9}' where sfzh = '{10}'",
                             tbx3_gg_gznr1.Text, GetCBLData(cbl3_1), GetCBLData(cbl3_2),
                             tbx3_gg_gznr2.Text, GetCBLData(cbl3_3), GetCBLData(cbl3_4),
                             tbx3_gg_yjs1.Text, tbx3_gg_yjs2.Text, tbx3_gg_yjs3.Text, tbx3_gg_yjs4.Text, Session["sfzh"].ToString());
            }
        }
        else if (Table4.Visible == true) return;
        else if (Table5.Visible == true) return;
        else if (Table6.Visible == true)
        {
            string ls_chengguo = ftb_chengguo.Text.Replace("'", "’");
            CommFun.ReplaceZiHao(ref ls_chengguo, "10.5");
            if (CommFun.StringCounter(ftb_chengguo.HtmlStrippedText) > 200)
            {
                Response.Write("<script>alert('内容应在200字以内！');</script>");
                return;
            }
            string str_sbnd = ddl6_scsbnd.SelectedValue;

            str_sql = string.Format("update cpry set chengguo = '{0}',ndkh1 = '{1}',ndkh2 = '{2}',ndkh3 = '{3}',scsbnd = '{4}' where sfzh = '{5}'",
                ftb_chengguo.HtmlStrippedText, ddl6_ndkh1.SelectedValue, ddl6_ndkh2.SelectedValue, ddl6_ndkh3.SelectedValue, str_sbnd, Session["sfzh"].ToString());
        }
        else if (Table7.Visible == true)
        {	
            string ls_wymsly = ftb_wymsly.Text.Replace("'", "’");
            CommFun.ReplaceZiHao(ref ls_wymsly, "10.5");
            if (CommFun.StringCounter(ftb_wymsly.HtmlStrippedText) > 50)
            {
                Response.Write("<script>alert('内容应在50字以内！');</script>");
                return;
            }
            str_sql = string.Format("update cpry set kssj = '{0}',yz = '{1}',jb = '{2}',zy = '{3}',fs = '{4}',wymsly = '{5}' where sfzh = '{6}'",
                txt7_kssj.Value, tbx7_yz.Text, tbx7_jb.Text, tbx7_zy.Text, tbx7_fs.Text, ftb_wymsly.HtmlStrippedText, Session["sfzh"].ToString());
        }
        else if (Table8.Visible == true)
        {
            //string str_pra = UploadFile(FileUpload8_jsj, "jsj", Session["sfzh"].ToString());
            //if (str_pra == "") return;
            string ls_msly = ddlist8_msly.SelectedValue;
            str_sql = string.Format("update cpry set jsj_km1 = '{0}',jsj_km2 = '{1}',jsj_km3 = '{2}',jsj_km4 = '{3}',jsj_msly = '{4}'," +
                " jsj_msly_dj = '{5}' where sfzh = '{6}'",
                tbx8_km1.Text, tbx8_km2.Text, tbx8_km3.Text, tbx8_km4.Text, ls_msly, ddlist8_dj.SelectedValue, Session["sfzh"].ToString());
        }
        else if (Table9.Visible == true)
        {
            string str_pglb = "";
            for (int i = 0; i < cbxlist_pglb.Items.Count; i++)
            {
                if (cbxlist_pglb.Items[i].Selected)
                    str_pglb = Convert.ToString(i);
            }
            string str_pgtj = "";
            for (int i = 0; i < cbxlist_pgtj.Items.Count; i++)
            {
                if (cbxlist_pgtj.Items[i].Selected)
                    str_pgtj = str_pgtj + "|" + Convert.ToString(i + 1);
            }
            string ls_pgly = tbx9_1.Text + "|" + tbx9_2.Text + "|" + tbx9_3.Text + "|" + tbx9_4.Text + "|" + tbx9_5.Text;
            str_sql = string.Format("update cpry set pglb = '{0}',pgtj = '{1}',jtpgly = '{2}'",
                str_pglb, str_pgtj, ls_pgly);
            if (Hidden1.Value == "admin")
            {
                str_sql = str_sql + ", sh_flag = '" + rbtnlist_sh.SelectedValue + "' ";
            }
            str_sql = str_sql + " where sfzh = '" + Session["sfzh"].ToString() + "'";
        }
        else if (Table10.Visible == true) return;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            if (!Table9.Visible) Response.Write("<script>alert('保存成功！');</script>");
            else
            {
                Response.Write("<script>alert('保存成功，申报材料已填写完毕，如需修改请点击相应模块！');</script>");
                //this.imgbtn_save.Attributes.Add("onclick", "return   confirm   (\"是否查看自评分数？\");");
                //str_sql = "select sbzw from cpry where sfzh='" + Session["sfzh"].ToString() + "'";
                //string str_sbzw = DBFun.ExecuteScalar(str_sql).ToString();
                //if (str_sbzw == "研究员")
                //    Response.Write("<script> location.href = 'cpry_score.aspx';</script>");
                //else
                //    Response.Write("<script> location.href = 'cpry_score_gg.aspx';</script>");
            }
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    #endregion


    #region GridViewDeleteRow
    protected void GridViewDeleteRow(string str_TableName, GridView gv_Delete, int i_RowNum)
    {
        //string str_id = gv_Delete.Rows[i_RowNum].Cells[1].Text;
        DataView dv  = (DataView)Session[str_TableName];
        string str_id = dv.Table.Rows[i_RowNum]["id"].ToString();
        string str_sql = "delete from " + str_TableName + " where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败！');</script>");
        }
        bindData();
    }
    protected void gv_cdrw_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("cdrwqk", gv_cdrw, e.RowIndex);
    }
    protected void gv_drxmqk_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("cdxmqk", gv_drxmqk, e.RowIndex);
    }
    protected void gv_lzbgqk_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("lzbgqk", gv_lzbgqk, e.RowIndex);
    }
    protected void gv_hjqk_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("hjqk", gv_hjqk, e.RowIndex);
    }
    protected void gv_lwbyyqk_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("lwbyyqk", gv_lwbyyqk, e.RowIndex);
    }
    protected void gv_hgjzlqk_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("hgjzlqk", gv_hgjzlqk, e.RowIndex);
    }
    protected void gv_fylw_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("fylw", gv_fylw, e.RowIndex);
    }
    protected void gv_cdrw_gg_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("cdrwqk_gg", gv_cdrw_gg, e.RowIndex);
    }
    protected void gv_cdrw1_gg_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("cdrwqk1_gg", gv_cdrw1_gg, e.RowIndex);
    }
    protected void gv5_1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("qgjcybpb", gv5_1, e.RowIndex);
    }
    protected void gv5_2_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("xjgrch", gv5_2, e.RowIndex);
    }
    protected void gv5_3_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("dlyb", gv5_3, e.RowIndex);
    }
    protected void gv5_4_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("yqrj", gv5_4, e.RowIndex);
    }
    protected void gv5_5_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("aqpj", gv5_5, e.RowIndex);
    }
    protected void gv_yxlw_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow("yxlw", gv_yxlw, e.RowIndex);
    }
    #endregion


   
    protected void rbtnlist3_1_SelectedIndexChanged(object sender, EventArgs e)
    {
        tbx3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
        tbx3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
        tbx3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
        lbl3_1.Visible = (rbtnlist3_1.SelectedValue == "是");
        lbl3_2.Visible = (rbtnlist3_2.SelectedValue == "是");
        lbl3_3.Visible = (rbtnlist3_3.SelectedValue == "是");
        if (!tbx3_1.Visible) tbx3_1.Text = "";
        if (!tbx3_2.Visible) tbx3_2.Text = "";
        if (!tbx3_3.Visible) tbx3_3.Text = "";
    }

    #region 编辑按钮

    private void setButtonImageUrlSave()
    {
        imgbtn_cdrw.ImageUrl = "./img/add.gif";
        imgbtn3_cdrw_gg.ImageUrl = "./img/add.gif";
        imgbtn3_cdrw1_gg.ImageUrl = "./img/add.gif";
        imgbtn_drxm.ImageUrl = "./img/add.gif";
        imgbtn_lzbgqk.ImageUrl = "./img/add.gif";
        imgbtn_hjqk.ImageUrl = "./img/add.gif";
        imgbtn_yxlw.ImageUrl = "./img/add.gif";
        imgbtn_lwbyyqk.ImageUrl = "./img/add.gif";
        imgbtn_hgjzlqk.ImageUrl = "./img/add.gif";
        imgbtn5_1.ImageUrl = "./img/add.gif";
        imgbtn5_2.ImageUrl = "./img/add.gif";
        imgbtn5_3.ImageUrl = "./img/add.gif";
        imgbtn5_4.ImageUrl = "./img/add.gif";
        imgbtn5_5.ImageUrl = "./img/add.gif";
        imgbtn_fylw.ImageUrl = "./img/add.gif";
    }
    protected void gv_cdrw_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["cdrwqk"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx3_rwmc.Text = dv.Table.Rows[e.NewEditIndex]["rwmc"].ToString();
        tbx3_gznr.Text = dv.Table.Rows[e.NewEditIndex]["gznr"].ToString();
        tbx3_rwmc.Focus();
        imgbtn_cdrw.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_cdrw_gg_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["cdrwqk_gg"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx3_gzsj_gg.Text = dv.Table.Rows[e.NewEditIndex]["gzsj"].ToString();
        try { ddl3_gznr_gg.SelectedValue = dv.Table.Rows[e.NewEditIndex]["gznr"].ToString(); }
        catch { ddl3_gznr_gg.SelectedIndex = 0; }
        try { ddl3_khjg_gg.SelectedValue = dv.Table.Rows[e.NewEditIndex]["js"].ToString(); }
        catch { ddl3_khjg_gg.SelectedIndex = 0; }
        tbx3_gzsj_gg.Focus();
        imgbtn3_cdrw_gg.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_cdrw1_gg_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["cdrwqk1_gg"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx3_dzmc_gg.Text = dv.Table.Rows[e.NewEditIndex]["rwmc"].ToString();
        tbx3_xcgznr_gg.Text = dv.Table.Rows[e.NewEditIndex]["gznr"].ToString();
        try { ddl3_js_gg.SelectedValue = dv.Table.Rows[e.NewEditIndex]["js"].ToString(); }
        catch { ddl3_js_gg.SelectedIndex = 0; }
        cbx3_gjjy_gg.Checked = Convert.ToBoolean( dv.Table.Rows[e.NewEditIndex]["gjjy"].ToString());
        tbx3_dzmc_gg.Focus();
        imgbtn3_cdrw1_gg.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_drxmqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["cdxmqk"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx3_ktmc.Text = dv.Table.Rows[e.NewEditIndex]["ktmc"].ToString();
        try { ddlist3_ktly1.SelectedValue = dv.Table.Rows[e.NewEditIndex]["ktly1"].ToString(); }
        catch { ddlist3_ktly1.SelectedIndex = 0; }
        Get_ktjb();
        try { ddlist3_ktjb.SelectedValue = dv.Table.Rows[e.NewEditIndex]["ktjb"].ToString(); }
        catch { ddlist3_ktjb.SelectedIndex = 0; }
        tbx3_ktbh.Text = dv.Table.Rows[e.NewEditIndex]["ktbh"].ToString();
        tbx3_pzdw.Text = dv.Table.Rows[e.NewEditIndex]["pzdw"].ToString();
        try { Txt3_1.Value = dv.Table.Rows[e.NewEditIndex]["qzsj"].ToString().Substring(0, dv.Table.Rows[e.NewEditIndex]["qzsj"].ToString().IndexOf("～")); }
        catch { }
        try { Txt3_2.Value = dv.Table.Rows[e.NewEditIndex]["qzsj"].ToString().Substring(dv.Table.Rows[e.NewEditIndex]["qzsj"].ToString().IndexOf("～") + 1); }
        catch { }
        tbx3_jfs.Text = dv.Table.Rows[e.NewEditIndex]["jfs"].ToString();
        try { ddlist3_drjs.SelectedValue = dv.Table.Rows[e.NewEditIndex]["drjs"].ToString(); }
        catch { ddlist3_drjs.SelectedIndex = 0; }
        tbx3_ktmc.Focus();
        imgbtn_drxm.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_lzbgqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["lzbgqk"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx4_lzmc.Text = dv.Table.Rows[e.NewEditIndex]["lzmc"].ToString();
        tbx4_zs.Text = dv.Table.Rows[e.NewEditIndex]["zs"].ToString();
        try { ddlist4_slqk.SelectedValue = dv.Table.Rows[e.NewEditIndex]["slqk"].ToString(); }
        catch { ddlist4_slqk.SelectedIndex = 0; }
        tbx4_kwmc.Text = dv.Table.Rows[e.NewEditIndex]["kwmc"].ToString();
        cbx4_istp.Checked = Convert.ToBoolean(dv.Table.Rows[e.NewEditIndex]["istp"].ToString());
        cbx4_xdbg.Checked = Convert.ToBoolean(dv.Table.Rows[e.NewEditIndex]["xdbg"].ToString());
        tbx4_pm.Text = dv.Table.Rows[e.NewEditIndex]["pm"].ToString();
        tbx4_fbsj.Value = dv.Table.Rows[e.NewEditIndex]["fbsj"].ToString();
        tbx4_lzmc.Focus();
        imgbtn_lzbgqk.ImageUrl = "./img/mht793(1).gif";
    }

    protected void gv_hjqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["hjqk"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_hjcgmc.Text = dv.Table.Rows[e.NewEditIndex]["hjcgmc"].ToString();
        try { ddlist5_jljb.SelectedValue = dv.Table.Rows[e.NewEditIndex]["jljb"].ToString(); }
        catch { ddlist5_jljb.SelectedIndex = 0; }
        try { ddlist5_hjdj.SelectedValue = dv.Table.Rows[e.NewEditIndex]["hjdj"].ToString(); }
        catch { ddlist5_hjdj.SelectedIndex = 0; }
        tbx51_pm.Text = dv.Table.Rows[e.NewEditIndex]["pm"].ToString();
        tbx5_hjsj.Value = dv.Table.Rows[e.NewEditIndex]["hjsj"].ToString();
        tbx5_hjcgmc.Focus();
        imgbtn_hjqk.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_yxlw_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["yxlw"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx52_lwmc.Text = dv.Table.Rows[e.NewEditIndex]["lwmc"].ToString();
        tbx52_hjmc.Text = dv.Table.Rows[e.NewEditIndex]["hjmc"].ToString();
        tbx52_zzpm.Text = dv.Table.Rows[e.NewEditIndex]["zzpm"].ToString();
        tbx52_lwmc.Focus();
        imgbtn_yxlw.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_lwbyyqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["lwbyyqk"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_lwmc.Text = dv.Table.Rows[e.NewEditIndex]["lwmc"].ToString();
        try { ddlist5_zz.SelectedValue = dv.Table.Rows[e.NewEditIndex]["zz"].ToString(); }
        catch { ddlist5_zz.SelectedIndex = 0; }
        tbx5_fbsj.Value = dv.Table.Rows[e.NewEditIndex]["fbsj"].ToString();
        tbx5_kwmc.Text = dv.Table.Rows[e.NewEditIndex]["kwmc"].ToString();
        tbx5_tycs.Text = dv.Table.Rows[e.NewEditIndex]["tycs"].ToString();
        tbx5_lwmc.Focus();
        imgbtn_lwbyyqk.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_hgjzlqk_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["hgjzlqk"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_zlmc.Text = dv.Table.Rows[e.NewEditIndex]["zlmc"].ToString();
        tbx5_zlh.Text = dv.Table.Rows[e.NewEditIndex]["zlh"].ToString();
        try { ddlist5_zllx.SelectedValue = dv.Table.Rows[e.NewEditIndex]["zllx"].ToString(); }
        catch { ddlist5_zllx.SelectedIndex = 0; }
        tbx5_sj.Value = dv.Table.Rows[e.NewEditIndex]["sj"].ToString();
        tbx5_pm.Text = dv.Table.Rows[e.NewEditIndex]["pm"].ToString();
        tbx5_zlmc.Focus();
        imgbtn_hgjzlqk.ImageUrl = "./img/mht793(1).gif";

    }
    protected void gv5_1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["qgjcybpb"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_1_nd.Text = dv.Table.Rows[e.NewEditIndex]["nd"].ToString();
        tbx5_1_grpm.Text = dv.Table.Rows[e.NewEditIndex]["grpm"].ToString();
        tbx5_1_zmwjwh.Text = dv.Table.Rows[e.NewEditIndex]["zmwjwh"].ToString();
        tbx5_1_nd.Focus();
        imgbtn5_1.ImageUrl = "./img/mht793(1).gif"; 
    }
    protected void gv5_2_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["xjgrch"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_2_yjmc.Text = dv.Table.Rows[e.NewEditIndex]["yjmc"].ToString();
        tbx5_2_nd.Text = dv.Table.Rows[e.NewEditIndex]["nd"].ToString();
        tbx5_2_zmwjwh.Text = dv.Table.Rows[e.NewEditIndex]["zmwjwh"].ToString();
        tbx5_2_yjmc.Focus();
        imgbtn5_2.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv5_3_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dlyb"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_3_dzsj.Text = dv.Table.Rows[e.NewEditIndex]["dzsj"].ToString();
        tbx5_3_zynr.Text = dv.Table.Rows[e.NewEditIndex]["zynr"].ToString();
        try { ddlist5_3_zj.SelectedValue = dv.Table.Rows[e.NewEditIndex]["zj"].ToString(); }
        catch { ddlist5_3_zj.SelectedIndex = 0; }
        tbx5_3_dzsj.Focus();
        imgbtn5_3.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv5_4_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["yqrj"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_4_yqrjmc.Text = dv.Table.Rows[e.NewEditIndex]["yqrjmc"].ToString();
        tbx5_4_jddw.Text = dv.Table.Rows[e.NewEditIndex]["jddw"].ToString();
        tbx5_4_nd.Text = dv.Table.Rows[e.NewEditIndex]["nd"].ToString();
        tbx5_4_yydw.Text = dv.Table.Rows[e.NewEditIndex]["yydw"].ToString();
        tbx5_4_yqrjmc.Focus();
        imgbtn5_4.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv5_5_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["aqpj"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx5_5_xmmc.Text = dv.Table.Rows[e.NewEditIndex]["xmmc"].ToString();
        tbx5_5_yydw.Text = dv.Table.Rows[e.NewEditIndex]["yydw"].ToString();
        tbx5_5_nd.Text = dv.Table.Rows[e.NewEditIndex]["nd"].ToString();
        tbx5_5_wh.Text = dv.Table.Rows[e.NewEditIndex]["wh"].ToString();
        tbx5_5_xmmc.Focus();
        imgbtn5_5.ImageUrl = "./img/mht793(1).gif";
    }
    protected void gv_fylw_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["fylw"];
        lbl_id.Text = dv.Table.Rows[e.NewEditIndex]["id"].ToString();
        tbx7_fylw.Text = dv.Table.Rows[e.NewEditIndex]["fylw"].ToString();
        tbx7_ywz.Text = dv.Table.Rows[e.NewEditIndex]["ywz"].ToString();
        tbx7_zs.Text = dv.Table.Rows[e.NewEditIndex]["zs"].ToString();
        tbx7_cbdw.Text = dv.Table.Rows[e.NewEditIndex]["cbdw"].ToString();
        tbx7_cbsj.Value = dv.Table.Rows[e.NewEditIndex]["cbsj"].ToString();
        tbx7_fylw.Focus();
        imgbtn_fylw.ImageUrl = "./img/mht793(1).gif"; 
    }
#endregion

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
        GridViewDownLoadFile("dlyb", e.NewSelectedIndex);
    }
    protected void gv5_4_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewDownLoadFile("yqrj", e.NewSelectedIndex);
    }
    protected void gv5_5_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        GridViewDownLoadFile("aqpj", e.NewSelectedIndex);
    }


    protected void imgbtn_SaveNext_Click(object sender, ImageClickEventArgs e)
    {
        string ls_chengguo = ftb_chengguo.Text.Replace("'", "’");
        if (CommFun.StringCounter(ftb_chengguo.HtmlStrippedText) > 200)
        {
            Response.Write("<script>alert('内容应在200字以内！');</script>");
            return;
        }
        SetStatus();
    }
    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Save();
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=zgcpry");
    }

    protected void lbtn10_2_Click(object sender, EventArgs e)
    {
        string str_qry = "SELECT dbxcg_title1,dbxcg_content1,dbxcg_fj1,dbxcg_title2,dbxcg_content2,dbxcg_fj2 from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
        DataRow dr = DBFun.GetDataRow(str_qry);
        if (dr == null) return;
        //tbx10_1.Text = dr["dbxcg_title1"].ToString();
        //ftb10_1.Text = dr["dbxcg_content1"].ToString();
        //lbtn10_1.PostBackUrl = "dbxcg/" + dr["dbxcg_fj1"].ToString();
        //tbx10_2.Text = dr["dbxcg_title2"].ToString();
        //ftb10_2.Text = dr["dbxcg_content2"].ToString();
        //lbtn10_2.PostBackUrl = "dbxcg/" + dr["dbxcg_fj2"].ToString();
        Response.Redirect("dbxcg/" + dr["dbxcg_fj2"].ToString());
    }
    protected void lbtn10_1_Click(object sender, EventArgs e)
    {
        string str_qry = "SELECT dbxcg_title1,dbxcg_content1,dbxcg_fj1,dbxcg_title2,dbxcg_content2,dbxcg_fj2 from cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
        DataRow dr = DBFun.GetDataRow(str_qry);
        if (dr == null) return;
        Response.Redirect("dbxcg/" + dr["dbxcg_fj1"].ToString());
    }

    #region 设置 任现职以来承担的项目任务和项目情况 年份
    protected string GetCBLData(CheckBoxList cbl_GetData)
    {
        string str_Data="";
        for (int i = 0 ; i < cbl_GetData.Items.Count; i++)
        {
            if (cbl_GetData.Items[i].Selected) str_Data += "," + cbl_GetData.Items[i].Value;
        }
        return str_Data;
    }
    protected void SetCBLData(CheckBoxList cbl_SetData,string str_Data)
    {
        int i_index = 0;
        string str_Value;
        for (int i = 0; i < cbl_SetData.Items.Count; i++)
        {
            str_Value = cbl_SetData.Items[i].Value;
            i_index = str_Data.IndexOf(str_Value);
            cbl_SetData.Items[i].Selected = (i_index >= 0);
        }
    }
    //比较年度评审结果为优秀 称职的年份是否重复
    protected bool CompareCBLData(CheckBoxList cbl_1, CheckBoxList cbl_2)
    {
        for (int i = 0; i < cbl_1.Items.Count; i++)
        {
            if (cbl_1.Items[i].Selected && cbl_2.Items[i].Selected)
            {
                return true;
            }
        }
        return false;
    }
    
    #endregion

    protected void ddlist3_ktly1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string [] str_list =  new string[10];
        str_list[0] = "1";
        str_list[1] = "2";
        str_list[2] = "10";
        str_list[3] = "16";
        str_list[4] = "24";
        str_list[5] = "25";
        str_list[6] = "30";
        str_list[7] = "35";
        str_list[8] = "36";
        str_list[9] = "39";
        for (int i  = 0 ; i < 10 ; i++)
        {
            if (ddlist3_ktly1.SelectedValue == str_list[i])
            {
                Response.Write("<script>alert('请选择具体课题来源！');</script>");
                ddlist3_ktly1.Focus();
                return;
            }
        }
        Get_ktjb();
        ddlist3_ktjb.Focus();
    }

    //初始化课题级别
    #region 初始化课题级别

    protected void Get_ktjb()
    {
        string str_sql = "select url from t_dict where flm = 6 and bm = " + ddlist3_ktly1.SelectedValue;
        string str_jb = DBFun.ExecuteScalar(str_sql).ToString();

        int i_Num = 0;
        int i_Index = 0;
        ddlist3_ktjb.Items.Clear();
        do
        {
            i_Index = str_jb.IndexOf("|", i_Index);
            if (i_Index >= 0)
            {
                i_Num++;
                i_Index++;
                ddlist3_ktjb.Items.Add(str_jb.Substring(i_Index, 2));
            }
            else break;
        }
        while (i_Index >= 0);
    }
    #endregion

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
        Session.RemoveAll();
        Response.Redirect("default.aspx");
    }






    protected void cbxlist_pglb_SelectedIndexChanged(object sender, EventArgs e)
    {
        TABLE9_1.Visible = (cbxlist_pglb.SelectedIndex > 0);
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
