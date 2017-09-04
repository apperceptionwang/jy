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
using word = Microsoft.Office.Interop.Word;


public partial class admin_Zqjc1 : System.Web.UI.Page
{
    private DataView dv;
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
            string str_sql = "exec Q_dict_flm3";
            DBFun.FillDwList(ddlist_Group, str_sql);
            ddlist_Group.Items.Insert(0, "全部");
            bindData();
            this.GridView1.SelectedIndex = -1;
         }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " SELECT jsh, ktmc, sqbm, sqr" +
                         "   FROM t_Rws " +
                         "   WHERE appYear=year(date()) ";
        
        if (ddlist_type.SelectedIndex != 0)
        {
            str_sql += " and " + ddlist_type.SelectedValue + " like '%" + tbx_search.Text.Trim() + "%' ";
        }
        str_sql += " order by sqbm,sqr";
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
    }
    #endregion

    #region 查找
    protected void btn_search_Click(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 立项
    protected void btn_Ok_Click(object sender, EventArgs e)
    {
        string strOpid = "";

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[3].Text;
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
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            str_sql = string.Format("update t_teacher_list set xmzt = '在研' where appyear = year(date()) and jsh in {0}", strOpid);
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('立项成功！');</script>");
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

    #region 显示行号
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowIndex != -1)
        {
            int id = e.Row.RowIndex + 1 + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
            e.Row.Cells[0].Text = id.ToString();
        }
    }
    #endregion

    #region 取消立项
    protected void btn_qxlx_Click(object sender, EventArgs e)
    {
        string strOpid = "";

        for (int i = 0; i < GridView1.Rows.Count; i++)
        {
            CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("cbx_select");
            string id = GridView1.Rows[i].Cells[3].Text;
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
            Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
        else
        {
            //删除
            str_sql = string.Format("update t_teacher_list set xmzt = '申报' where appyear = year(date()) and jsh in {0}", strOpid);
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('立项成功！');</script>");
                bindData();
            }
        }
    }
    #endregion

    #region 生成任务书
    protected void btn_CreateRws_Click(object sender, EventArgs e)
    {
        str_sql = "delete from t_Rws where appYear=year(date())";
        DBFun.ExecuteSql(str_sql);
        str_sql = "exec C_Rws ";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('生成成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('生成失败！');</script>");
        }
    }
    #endregion

    #region 生成PDF
    protected void btn_CreatePDF_Click(object sender, EventArgs e)
    {
        string str_PdfFilename, str_mulu;
        string str_DocFilename ;
        str_mulu = "../中期检查申请表/";
        string str_MapPath = Server.MapPath(str_mulu);
        DirectoryInfo di = new DirectoryInfo(str_MapPath);
        FileInfo[] dis = di.GetFiles();//取目录中所有内容
        for (int i = 0; i < dis.Length; i++)
        {
            str_DocFilename = dis[i].Name;
            str_PdfFilename = str_DocFilename.Substring(0, str_DocFilename.LastIndexOf(".")) + ".pdf";
            try
            {
                word.WdSaveFormat wdf = word.WdSaveFormat.wdFormatPDF;
                WordToal.Word2Format(str_MapPath + str_DocFilename, str_MapPath + str_PdfFilename, wdf);
            }
            catch (Exception ee)
            {
                CommFun.error_record(Session["jsh"].ToString(), Session["jsm"].ToString(), ee.Message);
            }
        }
    }
    #endregion
}
