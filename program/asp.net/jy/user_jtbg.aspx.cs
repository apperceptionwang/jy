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

public partial class user : System.Web.UI.Page
{

    string str_sql;
    DataView dv;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["appNo"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!IsPostBack)
        {
            bingData();
        }

    }

    protected void bingData()
    {
        str_sql = "SELECT sqr,jtsq_dName,jtsq from t_teacher_list where appNo = '" + Session["appNo"].ToString() + "';";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        string str_sqr = dr["sqr"].ToString();
        string str_filename = dr["jtsq"].ToString();
        string str_extName = str_filename.Substring(str_filename.LastIndexOf(".")).ToUpper();
        string str_newfilename = "教研课题(结题申请)_" + str_sqr + str_extName;
        string str_MapPath = Server.MapPath("./结题申请/");
        if (!File.Exists(str_MapPath + str_filename))
        {
            Response.Write("<script>alert('文件不存在！');</script>");
            return;
        }
        File.Copy(str_MapPath + str_filename, str_MapPath + str_newfilename, true);
        hl_1.NavigateUrl = "./结题申请/" + str_newfilename;
    }

    protected void btn_upload_Click(object sender, EventArgs e)
    {
        string str_pra = UploadFile(fu_1, "结题申请", Session["appNo"].ToString());
        if (str_pra == "" || str_pra == ",")
            return;
        str_sql = string.Format("update t_teacher_list set jtsq = '{0}',jtsq_dName = '{1}' where appNo = '{2}'",
            str_pra.Substring(str_pra.IndexOf(",") + 1), str_pra.Substring(0, str_pra.IndexOf(",")), Session["appNo"].ToString());
        try
        {
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('保存成功！');</script>");
                bingData();
            }
            else
            {
                Response.Write("<script>alert('保存失败！');</script>");
            }
        }
        catch (Exception ee)
        {
            Response.Write("<script>alert('" + ee.Message.Replace("'", "|") + "');</script>");
        }
    }

    #region 上传文件
    public string UploadFile(FileUpload Fupload, string str_mulu, string str_appNo)
    {
        //文件上传
        string str_ParentFolder;//上传目录
        string str_NewFileName, str_OriginalFileName;//文件新名，原始名
        string extname;//文件扩展名
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return ",";
            str_ParentFolder = Server.MapPath(".\\" + str_mulu + "\\");
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "";
            }
            str_OriginalFileName = Fupload.FileName;
            extname = str_OriginalFileName.Substring(str_OriginalFileName.LastIndexOf(".") + 1).ToUpper();
            str_NewFileName = str_appNo + "." + extname;
            //判断上传文件类型
            string str_UploadFileType = ConfigurationManager.AppSettings.Get("UploadFileType");
            //string str_UploadFileSize = dv.Table.Rows[1]["url"].ToString();
            if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
            {
                Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                return "";
            }
            //if (Convert.ToDecimal(str_UploadFileSize) * Convert.ToDecimal(1024) < Fupload.PostedFile.ContentLength)
            //{
            //    Response.Write("<script>alert('不允许上传超过 " + str_UploadFileSize + "KB的文件！');</script>");
            //    return "";
            //}

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
            ViewState["FilePath"] = str_ParentFolder + "\\" + str_NewFileName;
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
            File.Delete(ViewState["FilePath"].ToString());
            Response.Write("<script>alert('文件上传失败！');</script>");
            return "";
        }
    }
    #endregion
        
}
