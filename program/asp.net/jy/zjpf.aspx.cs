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

public partial class zjpf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["zjid"] = 2;
        //Session["sfzh"] = "230103197803220939";
        if (Session["zjid"] == null || Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = 'admin/admin_login.aspx?type=zgcpry';</script>");
            return;
        }
        if (!IsPostBack)
        {
            bindData();
        }
    }
    protected void ddlist_1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DropDownList ddlist_pjys ;
        int i_sum=0;
        for (int i = 1 ; i <= 6 ; i++)
        {
            ddlist_pjys = (DropDownList)this.FindControl("ddlist_"+i.ToString());
            i_sum += Convert.ToInt16(ddlist_pjys.SelectedValue);
        }
        lbl_sum.Text = i_sum.ToString();
    }


    #region 数据绑定
    private void bindData()
    {
        string str_qry = "";

        str_qry = "SELECT zjry.* ,yourname from zjry ,cpry where cpry.sfzh = zjry.sfzh and "+
                  " zjid = "+Session["zjid"].ToString()+" and  zjry.sfzh = '" + Session["sfzh"].ToString() +"'";
        
                  
        DataRow dr = DBFun.GetDataRow(str_qry);
        if (dr == null) return;

        lbl_xm.Text = dr["yourname"].ToString();
        try{ddlist_1.SelectedValue = dr["fs_pjys1"].ToString();}
        catch{ddlist_1.SelectedIndex = 0;}
        try { ddlist_2.SelectedValue = dr["fs_pjys2"].ToString(); }
        catch { ddlist_2.SelectedIndex = 0; }
        try { ddlist_3.SelectedValue = dr["fs_pjys3"].ToString(); }
        catch { ddlist_3.SelectedIndex = 0; }
        try { ddlist_4.SelectedValue = dr["fs_pjys4"].ToString(); }
        catch { ddlist_4.SelectedIndex = 0; }
        try { ddlist_5.SelectedValue = dr["fs_pjys5"].ToString(); }
        catch { ddlist_5.SelectedIndex = 0; }
        try { ddlist_6.SelectedValue = dr["fs_pjys6"].ToString(); }
        catch { ddlist_6.SelectedIndex = 0; }
        try { rbtnList_1.SelectedValue = dr["fs_sftj"].ToString(); }
        catch { }
        lbl_sum.Text = dr["fs_pjys_sum"].ToString();
        lbl_date.Text = dr["psrq"].ToString();
        ftb_jypj.Text = dr["jypj"].ToString();
    }
    #endregion


    #region 保存
    protected void imgbtn_save_Click(object sender, ImageClickEventArgs e)
    {
        Save();
    }

    protected void Save()
    {
        DropDownList ddlist_pjys;
        for (int i = 1; i <= 6; i++)
        {
            ddlist_pjys = (DropDownList)this.FindControl("ddlist_" + i.ToString());
            if (Convert.ToInt16(ddlist_pjys.SelectedValue) == 0)
            {
                Response.Write("<script>alert('第 " + i.ToString() + " 项数据没有选择！');</script>");
                return;
            }
            ddlist_pjys.Focus();
        }
        if (rbtnList_1.SelectedValue == null || rbtnList_1.SelectedValue == "")
        {
            Response.Write("<script>alert('请选择是否推荐申请人！');</script>");
            return;
        }

        string str_sql = "SELECT count(*) from zjry where sfzh = '" + Session["sfzh"].ToString() +
                         "' and zjid = "+Session["zjid"].ToString();
        string ls_jypj = ftb_jypj.Text.Replace("'", "’");
        
        if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
        {
            str_sql = string.Format("update zjry set fs_pjys1 = '{0}',fs_pjys2 = '{1}',fs_pjys3 = '{2}'," +
            "fs_pjys4 = '{3}',fs_pjys5 = '{4}',fs_pjys6 = '{5}',fs_pjys_sum = '{6}',fs_sftj = '{7}',jypj = '{8}'," +
            "psrq = '{9}' where zjid = {10} and sfzh = '{11}'",
            ddlist_1.SelectedValue, ddlist_2.SelectedValue, ddlist_3.SelectedValue,
            ddlist_4.SelectedValue, ddlist_5.SelectedValue, ddlist_6.SelectedValue,lbl_sum.Text,rbtnList_1.SelectedValue, ls_jypj,
            DateTime.Now.ToString("yyyy年MM月dd日"),Convert.ToInt16( Session["zjid"]), Session["sfzh"].ToString());
        }
        else
        {
            str_sql = string.Format("insert into zjry (zjid,sfzh,fs_pjys1,fs_pjys2,fs_pjys3,fs_pjys4,fs_pjys5,fs_pjys6," +
            "fs_pjys_sum,fs_sftj,jypj,psrq) values ({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}','{9}','{10}','{11}')",
            Convert.ToInt16(Session["zjid"]), Session["sfzh"].ToString(), ddlist_1.SelectedValue, ddlist_2.SelectedValue, ddlist_3.SelectedValue,
            ddlist_4.SelectedValue, ddlist_5.SelectedValue, ddlist_6.SelectedValue, lbl_sum.Text, rbtnList_1.SelectedValue, ls_jypj,
            DateTime.Now.ToString("yyyy年MM月dd日"));
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
            return;
        }
        bindData();
    }
    #endregion
}
