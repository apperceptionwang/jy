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
using word = Microsoft.Office.Interop.Word;

public partial class user : System.Web.UI.Page
{
    string str_sql;
    DataView dv;

    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["appNo"] == null)
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        if (Session["xmbh"] == null)
        {
            Response.Write("<script>alert('尚未选择相应项目，请选择项目后再操作！');location.href = './user_main.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            bindData();
        }   
        
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = "SELECT Status,sqr,xmbh,zqbg_dName,zqbg from t_teacher_list where appNo = '" + Session["appNo"].ToString() + "';";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;

        string str_status = dr["Status"].ToString();
        cbx_1.Checked = (str_status == "6");

        string str_sqr = dr["sqr"].ToString();
        string str_xmbh = dr["xmbh"].ToString();
        string str_DocFilename = dr["zqbg"].ToString();
        string str_HtmlFilename, str_mulu;
        str_mulu = "./中期检查申请表/";
        if (str_DocFilename == "")
        {
            Response.Write("<script>alert('尚未上传期中检查申请表！');</script>");
            hl_1.ForeColor = System.Drawing.Color.Red;
            hl_1.Text = "尚未上传期中检查申请表";
            hl_1.NavigateUrl = "";
            return;
        }
        str_HtmlFilename = str_DocFilename.Substring(0,str_DocFilename.LastIndexOf("."))+".pdf";
        string str_MapPath = Server.MapPath(str_mulu);
        //if (!File.Exists(str_MapPath + str_filename))
        //{
        //    Response.Write("<script>alert('尚未上传期中检查申请表！');</script>");
        //    return;
        //}
        //File.Copy(str_MapPath + str_filename, str_MapPath + str_newfilename, true);
        hl_1.ForeColor = System.Drawing.Color.FromArgb(000066);
        hl_1.Text = "查看中级检查申请表";
        //string str_oldfilename = Server.MapPath(str_filename + ".doc");
        try
        {
            word.WdSaveFormat wdf = word.WdSaveFormat.wdFormatPDF;
            WordToal.Word2Format(str_MapPath + str_DocFilename, str_MapPath + str_HtmlFilename,wdf);
        }
        catch
        { }
        hl_1.NavigateUrl = str_mulu + str_HtmlFilename;
    }
    #endregion

    #region 申请中期检查
    protected void btn_ok_Click(object sender, EventArgs e)
    {
        string str_status;
        if (cbx_1.Checked )
            str_sql = "select url from t_dict where flm= 11 and bm = 6";
        else
            str_sql = "select url from t_dict where flm= 11 and bm = 5";
        str_status = DBFun.ExecuteScalar(str_sql).ToString();
        str_sql = string.Format("update t_teacher_list set Status = {0} where xmbh = '{1}'",
            str_status, Session["xmbh"].ToString());
        try
        {
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
        catch (Exception ee)
        {
            Response.Write("<script>alert('" + ee.Message + "，请与管理员联系。" + "');</script>"); 
            CommFun.error_record(Session["jsh"].ToString(), Session["jsm"].ToString(), ee.Message);
        }
    }
    #endregion

    #region 上传中期检查
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        str_sql = "SELECT sqr,xmbh,zqbg_dName,zqbg from t_teacher_list where appNo = '" + Session["appNo"].ToString() + "';";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;

        string str_sqr = dr["sqr"].ToString();
        string str_xmbh = dr["xmbh"].ToString();
        string str_FileName = "教研课题(中期检查申请表)_" + str_sqr + "_" + str_xmbh;
        string str_pra = CommFun.UploadFile(fu_1, "中期检查申请表", str_FileName);
        if (str_pra == "" || str_pra == ",")
            return;
        else if (str_pra.Substring(0, 5) == "不允许上传")
        {
            Response.Write("<script>alert('" + str_pra + "！');</script>");
            return;
        }
        str_sql = string.Format("update t_teacher_list set zqbg = '{0}',zqbg_dName = '{1}' where appNo = '{2}'",
            str_pra.Substring(str_pra.IndexOf(",") + 1), str_pra.Substring(0, str_pra.IndexOf(",")), Session["appNo"].ToString());
        try
        {
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
        catch (Exception ee)
        {
            Response.Write("<script>alert('" + ee.Message.Replace("'", "|") + "');</script>");
        }
    }
    #endregion
}
