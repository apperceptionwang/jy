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

public partial class admin_LxZjyj : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region  页面加载
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
            //读取PageSize信息
            AspNetPager1.PageSize = Convert.ToInt16(ConfigurationManager.AppSettings.Get("PageSize"));
            bindData();
        }
    }
    #endregion

    #region 数据绑定
    protected void bindData()
    {
        str_sql = " SELECT appNo, a.ktmc, a.sqbm, a.sqr,c.name AS xmzt,a.id,yj3,iif(isnull(yj3) or yj3='','未修改','已修改') as sfxg," +
                  "        mid(appNo,5) as jsh, left(appNo,4) as appyear," +
                  "        cGroup1, a.id, pm, a.xmbh, zzlb " +
                  " FROM   t_teacher_list AS a, t_teacher AS b ,t_dict c " +
                  " WHERE  mid(a.appNo,5) = b.jsh and flm=11 and status = bm " +
                  " and    left(a.appNo,4) =year(date()) " +
            //"  and a.sqbm in (select name from t_dict where flm=13 and tj_flag) " +
                  " and    Status = (select url from t_dict where flm= 11 and bm = 5)";
        str_sql += " order by sqbm,a.sqr";

        dv = DBFun.GetDataView(str_sql);
        PagedDataSource pds = new PagedDataSource();
        pds.AllowPaging = true;
        pds.PageSize = AspNetPager1.PageSize;
        pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
        pds.DataSource = dv;
        GridView1.DataSource = pds;
        GridView1.DataBind();
        AspNetPager1.RecordCount = dv.Table.Rows.Count;
        ViewState["str_sql"] = str_sql;
        Cache["dv_detail"] = dv;
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 保存
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
        string strsql = string.Format("update t_teacher_list set yj3 = '" + ftb_content.Text.Replace("'", "’") + "' where appNo ='" + lbl_appNo.Text + "'");
        if (DBFun.ExecuteUpdate(strsql))
        {
            Response.Write("<script>alert('意见填写成功！');</script>");
            bindData();
        }
        else
        {
            Response.Write("<script>alert('意见填写失败！');</script>");
        }
    }
    #endregion

    #region 取消按钮
    protected void btn_cancel_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = false;
    }
    #endregion

    #region 换页
    protected void AspNetPager1_PageChanged(object sender, EventArgs e)
    {
        bindData();
    }
    #endregion

    #region 检查cache
    private void checkCache()
    {
        //检查缓存是否存在
        if (Cache["dv_detail"] == null)
        {
            //绑定数据,显示用户
            dv = DBFun.GetDataView(ViewState["str_sql"].ToString());
            AspNetPager1.RecordCount = dv.Table.Rows.Count;
            Cache.Insert("dv_detail", (DataView)dv, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0));
        }
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
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            e.Row.Attributes["style"] = "Cursor:hand";
        }
    }
    #endregion

    #region 查看/修改意见
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        string str_yjpj;
        bindData();
        TD_AddUser.Visible = true;
        int i_rownum = e.NewEditIndex + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        checkCache();
        dv = (DataView)Cache["dv_detail"];
        lbl_jsm.Text = GridView1.Rows[e.NewEditIndex].Cells[2].Text.ToString();
        lbl_appNo.Text = dv.Table.Rows[i_rownum]["appNo"].ToString();
        ftb_content.Text = dv.Table.Rows[i_rownum]["yj3"].ToString();
        if (ftb_content.Text == "")
        {
            str_sql = "exec Q_Para_LxZjyj_ByappNo '" + lbl_appNo.Text + "'";
            DataTable dt = DBFun.dataTable(str_sql);
            if (dt == null) return;
            for (int i = 0; i < dt.Rows.Count; i++)
            {
                str_yjpj = dt.Rows[i]["jypj"].ToString().Replace("'", "‘");
                if (str_yjpj == "") str_yjpj = "无";
                ftb_content.Text += dt.Rows[i]["UserName"] + ":<br/>" + str_yjpj + "<br/><br/>";
            }
        }
    }
    #endregion

    #region 批量显示专家意见
    protected void btn_BatchDisplayYj_Click(object sender, EventArgs e)
    {
        TD_AddUser.Visible = true;
        btn_confirm.Visible = false;
        str_sql = " select jsm,username,jypj " +
                  " from t_zjry1 a,t_teacher b,t_expert c " +
                  " where a.zjNo=c.loginname and mid(appNo,5)=b.jsh " +
                  " order by jsm,username ";
        //ExcelManager.Exp2Excel(this.Page, str_sql);
        DataTable dt = DBFun.dataTable(str_sql);
        if (dt == null) return;
        string str_jsmo = "", str_jsmn = "", str_yjpj;
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_jsmn = dt.Rows[i]["jsm"].ToString();
            if (str_jsmn != str_jsmo)
                ftb_content.Text += "被评人:" + dt.Rows[i]["jsm"].ToString() + "<br/><br/>";
            str_yjpj = dt.Rows[i]["jypj"].ToString().Replace("'", "‘");
            if (str_yjpj == "") str_yjpj = "无";
            ftb_content.Text += dt.Rows[i]["UserName"] + ":<br/>" + str_yjpj + "<br/><br/>";
            str_jsmo = str_jsmn;
        }
    }
    #endregion


}