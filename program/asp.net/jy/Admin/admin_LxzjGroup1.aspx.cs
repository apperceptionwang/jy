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


public partial class admin_LxzjGroup1 : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!CommFun.IsAdmin(Session["admin_name"].ToString()))
        {
            Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
        }
        if (!IsPostBack)
        {
            str_sql = "exec Q_dict_flm3";
            DBFun.FillDwList(dw_group, str_sql);
            DBFun.FillDwList(ddlist_Group, str_sql);
            ddlist_Group.Items.Insert(0, "全部");
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
            this.GridView1.SelectedIndex = -1;
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = "select a.LoginName,UserName,szbm,zc,zy,jb,tj_flag,cGroup from t_Expert as a,t_ExpertList1 as b " +
            " where a.LoginName=b.LoginName and appyear=year(date()) ";
        if (ddlist_Group.SelectedIndex != 0)
        {
            str_sql += " and cGroup = '" + ddlist_Group.SelectedValue + "'";
        }
        if (ddlist_type.SelectedIndex != 0)
        {
            str_sql += " and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%'";
        }
        str_sql += " order by a.LoginName";
        ViewState["sql"] = str_sql;
        dv = DBFun.GetDataView(str_sql);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;

        //CommFun.Add_ConfirmAttrib(GridView1, "lbtn_del");
        RadioButtonList rbl_fnd;
        for (int i = 0; i < this.GridView1.Rows.Count; i++)
        {
            rbl_fnd = (RadioButtonList)this.GridView1.Rows[i].FindControl("rbl_tj");
            rbl_fnd.SelectedValue = dv.Table.Rows[i + GridView1.PageIndex * GridView1.PageSize]["tj_flag"].ToString();
        }
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion 

    #region 删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        str_sql = "delete from t_ExpertList1 where appyear=year(date()) and LoginName = '" + dv.Table.Rows[e.RowIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["LoginName"].ToString() + "'";

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('移除成功！');</script>");
            bindData();
        }
    }
    #endregion

    #region 把专家移动到组群
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[1].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("('" + id);
                else
                    strOpid += ("','" + id);
            }
        }
        strOpid += "')";
        if (strOpid == "')")
        {
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
            return;
        }
        else
        {
            //分组
            strsql = string.Format("update t_ExpertList1 set cGroup = '" + dw_group.SelectedValue + "' where appyear=year(date()) and LoginName in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('分组成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 移除专家分组
    protected void btn_drop_Click(object sender, EventArgs e)
    {
        string strOpid = "";
        string strsql;

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[1].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("('" + id);
                else
                    strOpid += ("','" + id);
            }
        }
        strOpid += "')";
        if (strOpid == "')")
        {
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
            return;
        }
        else
        {
            //分组
            strsql = string.Format("update t_ExpertList1 set cGroup = '' where appyear=year(date()) and LoginName in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('移除分组成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 确定
    protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        str_sql = ViewState["sql"].ToString();
        dv = DBFun.GetDataView(str_sql);
        RadioButtonList rbl_fnd;
        rbl_fnd = (RadioButtonList)this.GridView1.Rows[e.RowIndex].FindControl("rbl_tj");
        str_sql = "update t_ExpertList1 set tj_flag = " + rbl_fnd.SelectedValue + " where appyear=year(date()) and LoginName = '" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["LoginName"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('修改成功！');</script>");
            bindData();
        }
    }
    #endregion 

    #region 导入
    protected void btn_Add0_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin_zjImport.aspx?type=1");
    }
    #endregion

    #region 显示行号
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            int id = e.Row.RowIndex + 1 + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
            e.Row.Cells[0].Text = id.ToString();
        }
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //下面两句代码是添加鼠标效果，当鼠标移动到行上时，变颜色 
            //加粗代码《,this.style.fontWeight='Bold'》
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            e.Row.Attributes["style"] = "Cursor:hand"; //鼠标悬停的行显示手型

            //给删除按钮增加确认功能
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[11].Controls[3]).Attributes.Add("onclick", "javascript:return confirm('你确认要移除:\"" + e.Row.Cells[2].Text + "\"吗?')");
            }
        }
    }
    #endregion

    //以下暂未使用

    #region 新增用户
    protected void btn_Add_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = true;
        lbl_editflag.Text = "insert";
        tbx_admin_name.Text = "";
        tbx_user_name.Text = "";
        rbtnlist_xb.SelectedValue = "男";
        tbx_gzdw.Text = "";
        tbx_zc.Text = "";
        tbx_pwd_new.Text = "";
        tbx_sfzh.Text = "";
        tbx_sfzh.Enabled = true;
        tbx_admin_name.Focus();
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
        string str_pwd = tbx_pwd_new.Text.Trim();
        //tbx_sfzh.Text = tbx_admin_name.Text;

        if (lbl_editflag.Text == "insert")
        {
            //if (tbx_sfzh.Text.Length == 18)
            //{
            //    str_pwd = tbx_sfzh.Text.Substring(8, 6);
            //}
            //else
            //{
            //    str_pwd = tbx_sfzh.Text.Substring(6, 6);
            //}

            str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5");
            str_sql = "select count(*) from t_yszj where appyear=year(date()) and sfzh = '" + tbx_sfzh.Text.Trim() + "'";
            if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
            {
                Response.Write("<script>alert('该登录名已存在，请重新输入登录名！');</script>");
                return;
            }
            str_sql = string.Format("Insert Into t_yszj (zjdm,Username,sfzh,pwd,xingbie,gzdw,zc,phone,appyear) select '{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',url from t_dict where flm=8 and bm=6",
                                tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), tbx_sfzh.Text, str_pwd, rbtnlist_xb.SelectedValue, tbx_gzdw.Text, tbx_zc.Text, "");
        }
        else
        {
            if (str_pwd == null || str_pwd == "")
            {
                str_sql = string.Format("update t_yszj set loginname = '{0}',Username = '{1}',xingbie = '{2}',gzdw = '{3}',zc = '{4}',phone = '{5}'",
                                    tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), rbtnlist_xb.SelectedValue, tbx_gzdw.Text, tbx_zc.Text, "");
            }
            else
            {
                str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_pwd_new.Text, "MD5");
                str_sql = string.Format("update t_yszj set loginname = '{0}',Username = '{1}',pwd = '{2}',xingbie = '{3}',gzdw = '{4}',zc = '{5}',phone = '{6}'",
                                    tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), str_pwd, rbtnlist_xb.SelectedValue, tbx_gzdw.Text, tbx_zc.Text, "");
            }
            str_sql = str_sql + " where appyear = year(date()) and sfzh = '" + lbl_id.Text + "'";
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('用户信息保存成功！');</script>");
            bindData();
            TD_AddUser.Visible = false;
        }
        else
        {
            Response.Write("<script>alert('用户信息保存失败！');</script>");
        }
    }
    #endregion

    #region 两专家角色互换
    protected void btn_Change_Click(object sender, EventArgs e)
    {
        string strOldid = "";
        string strNewid = "";
        int i_count = 0;

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
        if (i_count != 2)
            Response.Write("<script>alert('选且只能选择两条记录！');</script>");
        else
        {
            //互换
            string strsql = " select sfzh from t_yszj where appyear=year(date()) and id in (" + strOldid + "," + strNewid + ") ;";
            DataTable dt = DBFun.dataTable(strsql);
            strOldid = dt.Rows[0][0].ToString();
            strNewid = dt.Rows[1][0].ToString();
            strsql = " select count(*) from zjry where zj_sfzh = '" + strOldid + "' ;";
            if (Convert.ToInt16(DBFun.ExecuteScalar(strsql)) > 0)
                strsql = " update zjry set zj_sfzh = '" + strNewid + "' where flag = " + lbl_type.Text + " and zj_sfzh = '" + strOldid + "'";
            else
                strsql = " update zjry set zj_sfzh = '" + strOldid + "' where flag = " + lbl_type.Text + " and zj_sfzh = '" + strNewid + "'";
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('互换成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 修改
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            str_sql = ViewState["sql"].ToString();
            dv = DBFun.GetDataView(str_sql);
            lbl_id.Text = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sfzh"].ToString();
            tbx_sfzh.Text = dv.Table.Rows[e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize]["sfzh"].ToString();
            tbx_sfzh.Enabled = false;
            //lbl_pwd.Text = dv.Table.Rows[e.NewEditIndex]["UserName"].ToString() + "的密码重设为：";
            TD_AddUser.Visible = true;
            lbl_editflag.Text = "update";
            str_sql = "select loginname,Username,xingbie,gzdw,zc,phone from t_ExpertList1 where appyear=year(date()) and sfzh = '" + lbl_id.Text + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            tbx_admin_name.Text = dr["loginname"].ToString();
            tbx_user_name.Text = dr["Username"].ToString();
            rbtnlist_xb.SelectedValue = dr["xingbie"].ToString();
            tbx_gzdw.Text = dr["gzdw"].ToString();
            tbx_zc.Text = dr["zc"].ToString();
            tbx_pwd_new.Text = "";
            tbx_admin_name.Focus();
        }
        catch { }
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
            //使用已有对应关系文件
            if (cbx_upload.Checked)
            {
                if (!File.Exists(str_ParentFolder + filename))
                {
                    return "文件不存在！";
                }
            }
            //上传新的对应关系文件
            else
            {
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
            }
            str_sql = "select * from [sheet1$] ";
            DataTable dt = ExcelManager.GetXlsDataTable(str_ParentFolder + filename, str_sql);
            int j = 0, k = 0;
            //string str_sfzh = "";
            //for (int i = 0; i < dt.Rows.Count; i++)
            //{
            //    str_sfzh = dt.Rows[i][3].ToString().Trim();
            //    if (!CommFun.IsCardCode(str_sfzh))
            //    {
            //        i = i + 2;
            //        return "第" + i.ToString() + "行身份证号错误！";
            //    }
            //    //if (dt.Rows[i][0].ToString().Trim() == "")
            //    //{
            //    //    i = i + 2;
            //    //    return "第" + i.ToString() + "行单位名称为空，请删除该行！";
            //    //}
            //}
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str_sql = "select count(*) from t_yszj where appyear=year(date()) and sfzh ='" + dt.Rows[i][3].ToString() + "'";
                string str_pwd = dt.Rows[i][3].ToString().Trim();
                //if (!IsCardCode(str_pwd))
                //{
                //    i=i+1;
                //    return "第"+i.ToString()+"行身份证号错误！";
                //}
                if (str_pwd.Length == 18)
                {
                    str_pwd = str_pwd.Substring(8, 6);
                }
                else
                {
                    str_pwd = str_pwd.Substring(6, 6);
                }
                str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5");
                if ((int)DBFun.ExecuteScalar(str_sql) == 0)
                {
                    str_sql = string.Format("insert into t_yszj (gzdw,username,xingbie,sfzh,csrq,xueli,byxx," +
                    "bysj,sxzy,zc,qdzgsj,xcszyly,sxzyly,pwd,zjdm) values " +
                    "('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}',{14},'{15}')",
                    dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(),
                    dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString(), dt.Rows[i][9].ToString(), dt.Rows[i][10].ToString(), dt.Rows[i][11].ToString(), dt.Rows[i][12].ToString(), str_pwd, dt.Rows[i][13].ToString());
                    j++;
                }
                else
                {
                    str_sql = string.Format("update t_yszj set gzdw='{0}',username='{1}',xingbie='{2}',sfzh='{3}',csrq='{4}',xueli='{5}'," +
                        " byxx='{6}',bysj='{7}',sxzy='{8}',zc='{9}',qdzgsj='{10}',xcszyly='{11}',sxzyly='{12}',pwd = '{13}',zjdm = '{14}' " +
                        " where appyear=year(date()) and  sfzh='{15}'",
                    dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(),
                    dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString(), dt.Rows[i][9].ToString(), dt.Rows[i][10].ToString(), dt.Rows[i][11].ToString(), dt.Rows[i][12].ToString(), str_pwd, dt.Rows[i][13].ToString(), dt.Rows[i][3].ToString());
                    k++;
                }
                if (!DBFun.ExecuteUpdate(str_sql))
                {
                    return "系统错误";
                }
            }
            str_sql = "select count(*) from t_yszj where appyear=year(date()) and sfzh <> ''";
            lbl_result.Visible = true;
            lbl_result.Text = "数据库中共有记录 " + DBFun.ExecuteScalar(str_sql).ToString() + " 条，本次新增了 " + j.ToString() + " 条记录，更新了 " + k.ToString() + " 条记录";
            Fupload.Dispose();
            if (lbl_type.Text == "2")
            {
                str_sql = " delete from zjry ";
                //DBFun.ExecuteUpdate(str_sql);
                //str_sql = " insert into zjry (appyear,zj_sfzh,cpry_sfzh,fs_sftj) " +
                //          " select 2,pszj.sfzh,ej_cpry.sfzh,'false' from pszj,ej_cpry where pszj.flag = 2;";
                if (!DBFun.ExecuteUpdate(str_sql))
                {
                    return "上传失败";
                }
            }
            return "上传成功";


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
        catch (IOException e)
        {
            return e.Message;
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    #endregion

}
