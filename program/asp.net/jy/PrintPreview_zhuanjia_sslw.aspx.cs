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

public partial class PrintPreview_zhuanjia_sslw : System.Web.UI.Page
{
    protected string str_sfzh;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        binddata();
    }

    protected void binddata()
    {
        str_sfzh = Request.QueryString["sfzh"];
        if (str_sfzh == "" || str_sfzh == null) return;
        string str_sql = "SELECT zjry.* ,yourname,lw_ctitle " +
                         "   FROM yxxwlw_cpry,zjry " +
                         "   WHERE sfzh=cpry_sfzh and flag = 4 and zj_sfzh = '" + Session["admin_id"].ToString() + "' and yxxwlw_cpry.sfzh = '" + str_sfzh + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        lbl_name.Text = dr["yourname"].ToString();
        lbl_ctitle.Text = dr["lw_ctitle"].ToString();
        lbl_fenshu_1.Text = dr["fs_pjys1"].ToString();
        lbl_fenshu_2.Text = dr["fs_pjys2"].ToString();
        lbl_fenshu_3.Text = dr["fs_pjys3"].ToString();
        lbl_fenshu_4.Text = dr["fs_pjys4"].ToString();
        lbl_fenshu_5.Text = dr["fs_pjys5"].ToString();
        lbl_fenshu_6.Text = dr["fs_pjys6"].ToString();
        //lbl_fenshu_sum.Text = dr["fs_pjys_sum"].ToString();
        lbl_pingjia.Text = dr["jypj"].ToString();
    }

    protected string get_fenshu(string str_fenshu)
    {
        //①②③⑤④⑥⑦⑧⑨
        string str_fs1 = "①②③⑤④⑥⑦⑧⑨";
        string str_fs = "123456789";
        str_fs = str_fs.Replace(str_fenshu, str_fs1.Substring(Convert.ToInt16(str_fenshu) - 1, 1));
        return str_fs;
    }
    protected void Button_Click(object sender, CommandEventArgs e)
    {
        switch (e.CommandName)
        {
            case "save":
                switch (listType.SelectedValue)
                {
                    case "excel":
                        OutPut("attachment;filename=out.xls", "application/ms-excel");
                        break;
                    case "word":
                        OutPut("attachment;filename=out.doc", "application/ms-word");
                        break;
                }
                break;
            case "open":
                switch (listType.SelectedValue)
                {
                    case "excel":
                        OutPut("online;filename=out.xls", "application/ms-excel");
                        break;
                    case "word":
                        OutPut("online;filename=out.doc", "application/ms-word");
                        break;
                }
                break;
        }
    }

    private void OutPut(string fileType, string strType)
    {
        Response.ContentType = "application/msword";
        Response.Charset = "utf-8";
        Response.ContentEncoding = System.Text.Encoding.GetEncoding("gb2312");//解决中文乱码之关   
        Response.AppendHeader("Content-Type", "Application/vnd.ms-word;   charset=gb2312");
        Response.AddHeader("Content-disposition", "attachment;   filename=" + str_sfzh + ".doc");


        //Response.Clear();
        //Response.Buffer = true;
        //Response.Charset = "GB2312";
        //Response.AppendHeader("Content-Disposition", fileType);
        //Response.ContentType = strType;
        //this.EnableViewState = false;
        //System.IO.StringWriter swOut = new System.IO.StringWriter();
        //HtmlTextWriter hTw = new HtmlTextWriter(swOut);
        //myGW.RenderControl(hTw);
        //Response.Write(swOut.ToString());
        //Response.End();
    }
}
