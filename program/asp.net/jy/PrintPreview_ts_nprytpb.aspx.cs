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
using Aspose.Words;

public partial class PrintPreview_ts_nprytpb : System.Web.UI.Page
{
    string str_zjid;
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["admin_id"] = "11";
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin/admin_login.aspx?type=tszj';</script>");
            return;
        }
        str_zjid = Request.QueryString["zjid"];
        //str_zjid = "230103197803220939";
        bindData();
    }

    protected void bindData()
    {
        string str_sql = "select iif(fs_sftj='true','○','') as sftj,gzdw_mc,yourname,fs_pjys1 as tj_order from ts_cpry,zjry,t_dict " +
            " where cpry_sfzh = sfzh and flm = 2 and gzdw = url and flag = 3 and zj_sfzh = '" +
               str_zjid + "' and edit_flag = false and ts_cpry.tj_flag = '推荐' and sh_flag = '通过' and t_dict.ts_tj_flag=true " +
               " order by url,id asc ";
        //"where cpry_sfzh = sfzh and flag = 2 and zj_sfzh = '" +
        //Session["admin_id"].ToString() + "' and edit_flag = false and tj_flag = '推荐' and sh_flag = '通过' order by dw,id";
        DataTable dt = DBFun.dataTable(str_sql);
        Label lbl_Value;
        int i_id;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (i == 32) break;
            i_id = i + 1;

            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_1");
            lbl_Value.Text = dt.Rows[i]["gzdw_mc"].ToString();


            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_2");
            lbl_Value.Text = dt.Rows[i]["yourname"].ToString();

            lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_3");
            lbl_Value.Text = dt.Rows[i]["sftj"].ToString();

            if (dt.Rows[i]["sftj"].ToString() == "○")
            {
                lbl_Value = (Label)this.FindControl("lbl" + i_id.ToString() + "_4");
                lbl_Value.Text = dt.Rows[i]["tj_order"].ToString();
            }
        }
    }
    protected void btn_SaveToWord_Click(object sender, EventArgs e)
    {
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("./templete/tt_zjtpb.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_tetie_zjtpb(doc, str_zjid);


        doc.Save(Server.MapPath("./exporttopdf/") + str_zjid + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/" + str_zjid + ".doc");
    }

}
