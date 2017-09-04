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

public partial class Admin_ej_zhuanjia : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            string str_sql = "select flag from master where admin_name = '" + Session["admin_name"].ToString() + "'";
            if ((int)DBFun.ExecuteScalar(str_sql) != 2)
            {
                Response.Write("<script>alert('您没有权限访问此页面！');location.href = './main.aspx';</script>");
                return;
            }
            str_sql = "select bm,name from t_dict where flm = 1";
            DBFun.FillDwList(dw_group, str_sql);
            bindData();
            this.GridView1.Columns[8].Visible = false;
            this.GridView1.Columns[7].Visible = false;
            this.GridView1.Columns[this.GridView1.Columns.Count - 4].Visible = false;
            this.GridView1.Columns[this.GridView1.Columns.Count - 2].Visible = false;
            this.GridView1.AllowSorting = false;
            this.GridView1.AllowPaging = false;
            this.GridView1.SelectedIndex = -1;
        }
    }

    #region 修改
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            DataView dv = (DataView)Session["dv_detail"];
            lbl_id.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
            tbx_sfzh.Text = dv.Table.Rows[e.NewEditIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString();
            tbx_sfzh.Enabled = false;
            //lbl_pwd.Text = dv.Table.Rows[e.NewEditIndex]["UserName"].ToString() + "的密码重设为：";
            TD_AddUser.Visible = true;
            lbl_editflag.Text = "update";
            string str_sql = "select loginname,Username,xingbie,gzdw,zc,phone from pszj where flag = 2 and sfzh = '" + lbl_id.Text + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            tbx_admin_name.Text = dr["loginname"].ToString();
            tbx_user_name.Text = dr["Username"].ToString();
            rbtnlist_xb.SelectedValue = dr["xingbie"].ToString();
            tbx_gzdw.Text = dr["gzdw"].ToString();
            tbx_zc.Text = dr["zc"].ToString();
            tbx_pwd_new.Text = "";
        }
        catch { }
    }
    #endregion

    #region 删除
    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "delete from pszj where flag = 2 and sfzh = '" + dv.Table.Rows[e.RowIndex + GridView1.PageIndex * GridView1.PageSize]["sfzh"].ToString() + "'";

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
        tbx_admin_name.Text = "";
        tbx_user_name.Text = "";
        rbtnlist_xb.SelectedValue = "男";
        tbx_gzdw.Text = "";
        tbx_zc.Text = "";
        tbx_pwd_new.Text = "";
        tbx_sfzh.Text = "";
        tbx_sfzh.Enabled = true;
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
        string str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(tbx_pwd_new.Text, "MD5");
        string str_sql = "";
        if (tbx_sfzh.Text == "")
        {
            Response.Write("<script>alert('身份证号不能为空！');</script>");
            return;
        }
        if (lbl_editflag.Text == "insert")
        {
            str_sql = "select count(*) from pszj where flag = 2 and sfzh = '" + tbx_sfzh.Text.Trim() + "'";
            if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
            {
                Response.Write("<script>alert('身份证号已存在，请确认输入的身份证号是否正确！');</script>");
                return;
            }
            str_sql = string.Format("Insert Into pszj (loginname,Username,sfzh,pwd,xingbie,gzdw,zc,phone,flag) Values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}',2)",
                             tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), tbx_sfzh.Text, str_pwd, rbtnlist_xb.SelectedValue, tbx_gzdw.Text, tbx_zc.Text, "");
        }
        else
        {
            if (str_pwd == null || str_pwd == "")
            {
                str_sql = string.Format("update pszj set loginname = '{0}',Username = '{1}',xingbie = '{2}',gzdw = '{3}',zc = '{4}',phone = '{5}'",
                                   tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), rbtnlist_xb.SelectedValue, tbx_gzdw.Text, tbx_zc.Text, "");
            }
            else
            {
                str_sql = string.Format("update pszj set loginname = '{0}',Username = '{1}',pwd = '{2}',xingbie = '{3}',gzdw = '{4}',zc = '{5}',phone = '{6}'",
                                   tbx_admin_name.Text.Trim(), tbx_user_name.Text.Trim(), str_pwd, rbtnlist_xb.SelectedValue, tbx_gzdw.Text, tbx_zc.Text, "");
            }
            str_sql = str_sql + " where flag = 2 and sfzh = " + lbl_id.Text;
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

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from pszj";
        if (ddlist_type.SelectedValue != "all")
        {
            str_sql = str_sql + " where flag = 2 and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%'";
        }
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
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
            string id = GridView1.Rows[i].Cells[0].Text;
            if (ckb.Checked)
            {
                if (strOpid == "")
                    strOpid += ("(" + id);
                else
                    strOpid += ("," + id);
            }
        }
        strOpid += ")";
        if (strOpid == ")")
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            strsql = string.Format("update pszj set fenlei = '" + dw_group.SelectedValue + "' where flag = 2 and id in {0}", strOpid);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('添加成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        string str_sql = "select * from pszj where flag = 2";
        DataView dv = DBFun.GetDataView(str_sql);
        GridView1.DataSource = dv;
        GridView1.DataBind();
        Session["dv_detail"] = dv;
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
        }
    }
    #endregion

    #region 上传文件
    public string UploadFile(FileUpload Fupload)
    {
        //文件上传
        string str_ParentFolder;
        string filename;
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return "请选择要上传的数据！";

            str_ParentFolder = Server.MapPath(@"..\app_data\");

            //创建文件夹
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "创建文件夹失败！";
            }

            string extname;

            if (Fupload.PostedFile.FileName != "")
            {
                extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                //判断上传类型
                string str_UploadFileType = "xls";

                if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
                {
                    return "<script>alert('不允许上传 " + extname + " 类型的文件！');</script>";
                }
                string str_sql;
                /*判断是否更名*/
                filename = "zhuanjia.xls";

                Fupload.PostedFile.SaveAs(str_ParentFolder + filename);
                str_sql = "select * from [sheet1$] ";
                DataTable dt = ExcelManager.GetXlsDataTable(str_ParentFolder + filename, str_sql);
                int j = 0, k = 0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_sql = "select count(*) from pszj where flag = 2 and sfzh ='" + dt.Rows[i][3].ToString() + "'";
                    string str_pwd = dt.Rows[i][3].ToString().Substring(dt.Rows[i][3].ToString().Length - 6);
                    str_pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(str_pwd, "MD5");
                    if ((int)DBFun.ExecuteScalar(str_sql) == 0)
                    {
                        str_sql = string.Format("insert into pszj (gzdw,username,xingbie,sfzh,csrq,xueli,byxx," +
                        "bysj,sxzy,zc,qdzgsj,xcszyly,sxzyly,pwd,flag) values " +
                        "('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}','{12}','{13}',2)",
                        dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(),
                        dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString(), dt.Rows[i][9].ToString(), dt.Rows[i][10].ToString(), dt.Rows[i][11].ToString(), dt.Rows[i][12].ToString(), str_pwd);
                        j++;
                    }
                    else
                    {
                        str_sql = string.Format("update pszj set gzdw='{0}',username='{1}',xingbie='{2}',sfzh='{3}',csrq='{4}',xueli='{5}'," +
                            " byxx='{6}',bysj='{7}',sxzy='{8}',zc='{9}',qdzgsj='{10}',xcszyly='{11}',sxzyly='{12}',pwd = '{13}' " +
                            " where flag = 2 and sfzh='{14}'",
                        dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString(),
                        dt.Rows[i][7].ToString(), dt.Rows[i][8].ToString(), dt.Rows[i][9].ToString(), dt.Rows[i][10].ToString(), dt.Rows[i][11].ToString(), dt.Rows[i][12].ToString(), str_pwd, dt.Rows[i][3].ToString());
                        k++;
                    }
                    if (!DBFun.ExecuteUpdate(str_sql))
                    {
                        return "系统错误";
                    }

                }
                str_sql = "select count(*) from pszj where flag = 2 and sfzh <> ''";
                lbl_result.Visible = true;
                lbl_result.Text = "数据库中共有记录 " + DBFun.ExecuteScalar(str_sql).ToString() + " 条，本次新增了 " + j.ToString() + " 条记录，更新了 " + k.ToString() + " 条记录";
                Fupload.Dispose();
                return "上传成功";
            }

            //用文件名上传的方式
            //if (tbx_Research.Text != "")
            //{
            //    extname = System.IO.Path.GetExtension(tbx_Research.Text);
            //    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + extname;

            //    System.IO.File.Copy(tbx_Research.Text, Server.MapPath(".\\kejian\\") + filename);
            //    return filename;
            //}
            return "";
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
    
    protected void Button1_Click(object sender, EventArgs e)
    {
        string filename = "导出.xls";
        ExcelManager.GridViewToExcel(GridView1, "application/ms-excel", filename);
    }
    public override void VerifyRenderingInServerForm(Control control)
    {
    }
}
