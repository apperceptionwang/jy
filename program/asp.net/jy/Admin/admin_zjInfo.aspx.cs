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
using System.Data.OleDb;
using System.IO;


public partial class admin_zjInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!CommFun.IsAdmin(Session["admin_name"].ToString()))
        {
            Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
        }
        if (!IsPostBack)
        {
            bindData();
            //this.GridView1.Columns[7].Visible = true;
            //this.GridView1.SelectedIndex = -1;
        }
    }


    #region 数据绑定
    protected void bindData()
    {
        GridView1.PageSize = Convert.ToInt16(ddl_PageSize.SelectedValue);
        string str_sql = "select * from t_expert order by loginname ";
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
        CommFun.Add_ConfirmAttrib(GridView1, "lbtn_del");

    }
    #endregion

    #region 修改
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            DataView dv = (DataView)Session["dv_detail"];
            lbl_id.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["loginname"].ToString();
            tbx_LoginName.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["loginname"].ToString();
            tbx_LoginName.Enabled = false;
            //lbl_pwd.Text = dv.Table.Rows[e.NewEditIndex]["UserName"].ToString() + "的密码重设为：";
            TD_AddUser.Visible = true;
            lbl_editflag.Text = "update";
            string str_sql = "select loginname,Username,zy,szbm,zc,jb from t_Expert where loginname = '" + lbl_id.Text + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            tbx_LoginName.Text = dr["loginname"].ToString();
            tbx_UserName.Text = dr["Username"].ToString();
            tbx_szbm.Text = dr["szbm"].ToString();
            tbx_zc.Text = dr["zc"].ToString();
            tbx_jb.Text = dr["jb"].ToString();
            tbx_zy.Text = dr["zy"].ToString();
            tbx_pwd.Text = "";
        }
        catch { }
    }
    #endregion

    #region 删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "delete from t_Expert where loginname = '" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["loginname"].ToString() + "'";

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
    }
    #endregion

    #region 新增用户
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = true;
        lbl_editflag.Text = "insert";
        tbx_LoginName.Text = "";
        tbx_UserName.Text = "";
        tbx_szbm.Text = "";
        tbx_zc.Text = "";
        tbx_jb.Text = "";
        tbx_zy.Text = "";
        tbx_pwd.Text = "";
        tbx_LoginName.Enabled = true;
    }
    #endregion

    #region 取消
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        string str_pwd = tbx_pwd.Text.Trim();
        string str_sql = "";
        if (tbx_LoginName.Text == "")
        {
            Response.Write("<script>alert('登录名不能为空！');</script>");
            return;
        }
        if (lbl_editflag.Text == "insert")
        {
            str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5");
            str_sql = "select count(*) from t_Expert where LoginName = '" + tbx_LoginName.Text.Trim() + "'";
            if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
            {
                Response.Write("<script>alert('登录名已存在，请重新输入！');</script>");
                return;
            }
            str_sql = string.Format("Insert Into t_Expert (LoginName,Username,pwd,szbm,zc,jb,zy) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                             tbx_LoginName.Text.Trim(), tbx_UserName.Text.Trim(), str_pwd, tbx_szbm.Text, tbx_zc.Text, tbx_jb.Text, tbx_zy.Text);
        }
        else
        {
            if (str_pwd == null || str_pwd == "")
            {
                str_sql = string.Format("update t_Expert set loginname = '{0}',Username = '{1}',szbm = '{2}',zc = '{3}',jb = '{4}',zy = '{5}'",
                                   tbx_LoginName.Text.Trim(), tbx_UserName.Text.Trim(), tbx_szbm.Text, tbx_zc.Text, tbx_jb.Text, tbx_zy.Text);
            }
            else
            {
                str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_pwd.Text, "MD5");
                str_sql = string.Format("update t_Expert set loginname = '{0}',Username = '{1}',szbm = '{2}',zc = '{3}',jb = '{4}',zy = '{5}',pwd = '{6}'",
                                   tbx_LoginName.Text.Trim(), tbx_UserName.Text.Trim(), tbx_szbm.Text, tbx_zc.Text, tbx_jb.Text, tbx_zy.Text, str_pwd);
            }
            str_sql = str_sql + " where loginname = '" + lbl_id.Text + "'";
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
            bindData();
            TD_AddUser.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from t_Expert";
        if (ddlist_type.SelectedValue != "all")
        {
            str_sql = str_sql + " where " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%' ";
        }
        str_sql = str_sql + " order by loginname";         
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
    }
    #endregion
    
    #region 两专家角色互换
    protected void btn_Change_Click(object sender, EventArgs e)
    {
        string strOldid = "";
        string strNewid = "";
        int i_count=0;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");

            if (ckb.Checked)
            {
                if (strOldid == "")
                {
                    strOldid = GridView1.Rows[i].Cells[0].Text;
                }
                else
                {
                    strNewid = GridView1.Rows[i].Cells[0].Text;
                }
                i_count++;
            }
           
        }
        if (i_count != 2 )
            Response.Write("<script>alert('选且只能选择两条记录！');</script>");
        else
        {
            //互换
            string strsql = " select sfzh from t_pszj where appyear=year(date()) and sfzh in (" + strOldid + "," + strNewid + ") ;";
            DataTable dt = DBFun.dataTable(strsql);
            strOldid = dt.Rows[0][0].ToString();
            strNewid = dt.Rows[1][0].ToString();
            strsql = " select count(*) from zjry where zj_sfzh = '" + strOldid + "' ;";
            if (Convert.ToInt16(DBFun.ExecuteScalar(strsql)) > 0)
                strsql = " update zjry set zj_sfzh = '" + strNewid + "' where appyear=year(date()) and zj_sfzh = '" + strOldid + "'";
            else
                strsql = " update zjry set zj_sfzh = '" + strOldid + "' where appyear=year(date()) and zj_sfzh = '" + strNewid + "'";
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('互换成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 批量上传数据
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        string str_Return = UploadFile(FileUpload1);
        if (str_Return == "上传成功")
        {
            Response.Write("<script>alert('数据上传成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('数据上传失败，原因是：" + str_Return + "');</script>");
            lbl_result.Text = "数据上传失败，原因是：" + str_Return;
            return;
        }
        bindData();
    }
    #endregion

    #region 上传文件
    public string UploadFile(FileUpload Fupload)
    {
        //文件上传
        string str_ParentFolder;
        string filename;

        str_ParentFolder = Server.MapPath(@"..\app_data\");
        /*判断是否更名*/
        filename = "zhuanjia.xls";
        try
        {
            //上传新的对应关系文件
            if (Fupload.PostedFile.FileName == "")
                return "请选择要上传的数据！";
            //创建文件夹
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "创建文件夹失败！";
            }
            if (Fupload.PostedFile.FileName != "")
            {
                string extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                //判断上传类型
                string str_UploadFileType = "xls";

                if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
                {
                    return "<script>alert('不允许上传 " + extname + " 类型的文件！');</script>";
                }
                Fupload.PostedFile.SaveAs(str_ParentFolder + filename);
            }
            string str_sql;
            str_sql = "select * from [sheet1$] ";
            DataTable dt = ExcelManager.GetXlsDataTable(str_ParentFolder + filename, str_sql);
            int j = 0, k = 0;
            string str_pwd;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str_sql = "select count(*) from t_Expert where LoginName ='" + dt.Rows[i][0].ToString() + "'";
                str_pwd = dt.Rows[i][2].ToString();
                //如果密码为空，则设置登录名为密码
                if (str_pwd == "")
                    str_pwd = dt.Rows[i][0].ToString();

                str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5");
                if ((int)DBFun.ExecuteScalar(str_sql) == 0)
                {
                    str_sql = string.Format("insert into t_Expert (LoginName,UserName,pwd,szbm,zc,jb,zy) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                        dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), str_pwd, dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString());
                    j++;
                }
                else
                {
                    str_sql = string.Format("update t_Expert set UserName='{1}',pwd='{2}',szbm='{3}',zc='{4}',jb='{5}',zy='{6}' where LoginName='{0}'",
                    dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), str_pwd, dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString());
                    k++;
                }
                if (!DBFun.ExecuteUpdate(str_sql))
                {
                    return "系统错误";
                }
            }
            str_sql = "select count(*) from t_Expert where LoginName is not null";
            lbl_result.Visible = true;
            lbl_result.Text = "数据库中共有记录 " + DBFun.ExecuteScalar(str_sql).ToString() + " 条，本次新增了 " + j.ToString() + " 条记录，更新了 " + k.ToString() + " 条记录";
            Fupload.Dispose();
            //if (lbl_type.Text == "2")
            //{
            //    str_sql = " delete from zjry where flag = 2;";
            //    DBFun.ExecuteUpdate(str_sql);
                
            //    str_sql = " insert into zjry (flag,zj_sfzh,cpry_sfzh,fs_sftj) " +
            //              " select 2,pszj.sfzh,ej_cpry.sfzh,'false' from pszj,ej_cpry where pszj.flag = 2;";
            //    if (!DBFun.ExecuteUpdate(str_sql))
            //    {
            //        return "上传失败";
            //    }
            //}
            return "上传成功";
        }
        catch(IOException e)
        {
            return e.Message;
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    #endregion
    
    #region 换页
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.GridView1.PageIndex = e.NewPageIndex;
        this.bindData();
    }
    #endregion

    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        RadioButtonList rbl_fnd;
        rbl_fnd = (RadioButtonList)this.GridView1.Rows[e.RowIndex].FindControl("rbl_tj");
        string str_sql = "update t_pszj set tj_flag = " + rbl_fnd.SelectedValue+ " where appyear=year(date()) and sfzh = '" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('修改成功！');</script>");
            bindData();
        }
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        if (lbl_type.Text == "1")
            Response.Redirect("admin_zj_rylist.aspx?type=1&zj_sfzh=" + dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString());
        else if (lbl_type.Text == "2")
            Response.Redirect("../PrintPreview_erji_nprytpb.aspx?zjid=" + dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString());
        else if (lbl_type.Text == "3")
            Response.Redirect("../PrintPreview_ts_nprytpb.aspx?zjid=" + dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString());
        else if (lbl_type.Text == "4")
            Response.Redirect("admin_zj_rylist.aspx?type=4&zj_sfzh=" + dv.Table.Rows[e.NewSelectedIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString());

    }
    protected void ddl_PageSize_SelectedIndexChanged(object sender, EventArgs e)
    {
        GridView1.PageSize = Convert.ToInt16( ddl_PageSize.SelectedValue);
        bindData();
    }
    protected void btn_exp_Click(object sender, EventArgs e)
    {
        string filename = "导出.xls";
        ExcelManager.GridViewToExcel(GridView1,"application/ms-excel", filename );
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
}
