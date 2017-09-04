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

public partial class Admin_renshi_list : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx?type=renshi';</script>");
            return;
        }
        if (!CommFun.IsTimeOut("zgj", Session["admin_id"].ToString()))
        {
            Response.Write("<script>alert('您还未提交，不能再访问该页面！');window.history.go(-1);</script>");
            return;
        }
        bindData();
    }


    #region 数据绑定
    protected void bindData()
    {
        DataView dv;

        string str_sql = "select yourname,xingbie,"+
                       " iif( DateDiff('YYYY', CDate(iif(isnull(birth),now(),iif(birth='',now(),birth)) ), Format(Now(),'yyyy-mm-dd')"+
                        "                                 ) = 0,'', DateDiff('YYYY', CDate(iif(isnull(birth),now(),iif(birth='',now(),birth))),Format(Now(),'yyyy-mm-dd') "+
                       "                                  ) ) AS nianling, "+
                       " fhxl_mc,iif(isnull(fhxl_sydw),'',fhxl_sydw)+' '+iif(isnull(fhxl_bysj),'',fhxl_bysj) as xxsj ," +
                      "  xrzw,pdsj,sbzw,prsj,csgz,"+
                       " iif (pglb='1','破格',iif(pglb = '2','破格','符合')) as xlzl,"+
                      "  iif (wymsly='','符合',iif(isnull(wymsly),'符合','免试')) as wytj,"+
                      "  iif (jsj_msly='','符合',iif(isnull(jsj_msly),'符合','免试')) as jsjtj,"+
                      "  iif (scsbnd='无','符合',iif(isnull(scsbnd),'符合',scsbnd)) as sbnd"+
                      "  from cpry where gzdw =  '" + Session["admin_id"].ToString() + "' and edit_flag = false and tj_flag='推荐' order by ID asc";

        
        dv = DBFun.GetDataView(str_sql);
        
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            SetValue("lbl" + Convert.ToString(i + 1) + "_1", dv.Table.Rows[i]["yourname"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_2", dv.Table.Rows[i]["xingbie"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_3", dv.Table.Rows[i]["nianling"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_4", dv.Table.Rows[i]["fhxl_mc"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_5", dv.Table.Rows[i]["xxsj"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_6", dv.Table.Rows[i]["xrzw"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_7", dv.Table.Rows[i]["pdsj"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_8", dv.Table.Rows[i]["sbzw"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_9", dv.Table.Rows[i]["prsj"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_10", dv.Table.Rows[i]["csgz"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_11", dv.Table.Rows[i]["xlzl"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_12", dv.Table.Rows[i]["wytj"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_13", dv.Table.Rows[i]["jsjtj"].ToString());
            SetValue("lbl" + Convert.ToString(i + 1) + "_14", dv.Table.Rows[i]["sbnd"].ToString());
            //SetValue("lbl" + Convert.ToString(i + 1) + "_15", dv.Table.Rows[i]["yourname"].ToString());

        }
        
    }
    #endregion

    protected void SetValue(string str_fnd, string str_Value)
    {
        Label lbl_fnd;
        lbl_fnd = (Label)this.FindControl(str_fnd);
        if (lbl_fnd != null) lbl_fnd.Text = str_Value;
    }
}
