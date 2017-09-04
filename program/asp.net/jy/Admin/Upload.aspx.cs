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


public partial class Upload : System.Web.UI.Page
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
            bindData();
        }
    }
    protected void BtnAdd_Click(object sender, EventArgs e)
    {
         
        if (UploadFile(FileUpload1, TextBox1) == "") return ;
        if (UploadFile(FileUpload2, TextBox2) == "") return;
        if (UploadFile(FileUpload3, TextBox3) == "") return;
        if (UploadFile(FileUpload4, TextBox4) == "") return;
        if (UploadFile(FileUpload5, TextBox5) == "") return;

        Response.Write("<script>alert('文件上传成功！');</script>");
    }

    #region 上传文件
    public string UploadFile(FileUpload Fupload,TextBox tbx_Rename)
    {
        //文件上传
        string str_ParentFolder;
        string dir;
        string filename;
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return "";

            str_ParentFolder = Server.MapPath(@"..\uploadfile\");

            //创建以教师id+课程id为名的文件夹
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "";
            }
            
            string extname;

            if (Fupload.PostedFile.FileName != "")
            {
                extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                //判断上传课件类型
                string str_UploadFileType = ConfigurationManager.AppSettings.Get("UploadFileType").ToLower();

                if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
                {
                    Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                    return "";
                }
                string str_sql;
                /*判断是否更名*/
                if (tbx_Rename.Visible & tbx_Rename.Text.Trim() != "")
                {
                    filename = tbx_Rename.Text.Trim() +"."+ extname;
                }
                else
                {
                    filename = Fupload.FileName;
                }
                if (File.Exists(str_ParentFolder + filename))
                {
                    Response.Write("<script>alert('文件 " + filename + " 已存在！');</script>");
                    return "";
                }

                Fupload.PostedFile.SaveAs(str_ParentFolder  +filename);
                Session["FilePath"] = str_ParentFolder  + filename;
                str_sql = "Insert Into download (upfile ,shijian) Values ('" + filename+"','"+System.DateTime.Now.ToString()+"')";
                DBFun.ExecuteUpdate(str_sql);

                Fupload.Dispose();
                return filename;
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
        catch
        {
            File.Delete(Session["FilePath"].ToString());
            Response.Write("<script>alert('文件上传失败！');</script>");
            return ""; 
        }
    }
    #endregion


    protected void cbx_Rename_CheckedChanged(object sender, EventArgs e)
    {
        TextBox1.Visible = cbx_Rename.Checked;
        TextBox2.Visible = cbx_Rename.Checked;
        TextBox3.Visible = cbx_Rename.Checked;
        TextBox4.Visible = cbx_Rename.Checked;
        TextBox5.Visible = cbx_Rename.Checked;
    }

    protected void bindData()
    {
        DataView dv = DBFun.GetDataView("select id,iif(len(upfile)>35,left(upfile,35)+'…',upfile) as file,format(shijian,'yyyy-mm-dd') as sj from download order by shijian desc;");
        gv_detail.DataSource = dv;
        gv_detail.DataBind();
        Session["dv_detail"] = dv;
    }
    protected void gv_detail_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        string str_sql = "delete from download where id = " + dv.Table.Rows[e.RowIndex + gv_detail.PageIndex * gv_detail.PageSize]["id"].ToString();

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
            bindData();
        }
    }
    protected void gv_detail_RowEditing(object sender, GridViewEditEventArgs e)
    {
        DataView dv = (DataView)Session["dv_detail"];
        Response.Redirect("../uploadfile/" + dv.Table.Rows[e.NewEditIndex + gv_detail.PageIndex * gv_detail.PageSize]["upfile"].ToString());
    }
    protected void gv_detail_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        this.gv_detail.PageIndex = e.NewPageIndex;
        this.bindData();
    }
}
