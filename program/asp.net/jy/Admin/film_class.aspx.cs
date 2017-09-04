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
namespace VOD.Admin
{
    public partial class film_class : System.Web.UI.Page
    {
        
         
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (!IsPostBack)
            {   CommFun.IsAdmin();
                string strqry = "select id,Caption From T_class";
                DBFun.FillDwList(dw_class, strqry);
                strqry = "Select * From T_Class";
                GridView1.DataSource = DBFun.GetDataView(strqry);
                GridView1.DataBind();

            }
        }
        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            string strOpid = "";
            string strsql;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
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
                strsql = string.Format("delete from T_Class where id in {0}", strOpid);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    Response.Write("<script>alert('删除成功！');</script>");                 
                    GridView1.DataSource = DBFun.GetDataView("select * From T_Class");
                    GridView1.DataBind();
                }
            }
        }
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            string strOpid = "";
            string strsql;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
                string id = GridView1.Rows[i].Cells[0].Text;
                if (ckb.Checked)
                {
                    if (strOpid == "")
                        strOpid += ("(" + id);
                    else
                        strOpid += ("," + id);
                    ckb.Checked = false;
                }
            }
            strOpid += ")";
            if (strOpid == ")")
                Response.Write("<script>alert('没有选中任何记录！');history.go(-1);</script>");
            else
            {
                //更新
                string newclassid = dw_class.Text;
                string newclass = dw_class.SelectedItem.Text;
                strsql = string.Format("Update T_Films set film_classid={0}, film_class='{1}' where film_classid in {2}",newclassid,newclass, strOpid);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    Response.Write(@"<script>alert('操作成功！');</script>");
                    
                }
            }
        }
        protected string GetNotLoginIn(string NotLogin)
        {
            if (NotLogin == "0")
                return "<font color='red'><b>否</b></font>";
            else
                return "<font color='#009900'><b>是</b></font>";
        }
        protected string GetClassIsOpen(string IsOpen)
        {
            if (IsOpen == "0")
                return "<font color='red'><b>关闭</b></font>";
            else
                return "<font color='#009900'><b>开启</b></font>";
        }
        protected string GetListSortType(string ListSortType)
        {
            if (ListSortType == "1")
                return "<font color='red'><b>按ID降序</b></font>";
            else if(ListSortType =="2")
                return "<font color='#009900'><b>按加入时间</b></font>";
            else
                return "<font color='blue'><b>按更新时间</b></font>";
        }
}
}