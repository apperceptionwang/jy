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
    public partial class HotSearch : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    CommFun.IsAdmin();
                    
                    string strqry = "select * From T_HotSearch order by scount desc";
                    GridView1.DataSource = DBFun.GetDataView(strqry);
                    GridView1.DataBind();
                }
                catch (Exception ex)
                {
                    Response.Write("执行时出错！" + ex.Message);
                }
            }

        }
       
        protected void binddata()
        {
            
            string strqry = "select * From T_HotSearch order by scount desc";
            GridView1.DataSource = DBFun.GetDataView(strqry);
            GridView1.DataBind();

        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //更新
            int rowid = e.RowIndex;            
            string id = GridView1.DataKeys[rowid].Value.ToString();
            TextBox tb = (TextBox)GridView1.Rows[rowid].Cells[2].FindControl("tb_sCount");
            string strsql = string.Format("Update [T_HotSearch] set sCount={0} where id={1}",
                      tb.Text,id);
            if (DBFun.ExecuteUpdate(strsql))
            {
                lbl_msg.Text = "修改成功！";
            }
            GridView1.EditIndex = -1;
            binddata();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            binddata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //取消
            GridView1.EditIndex = -1;
            binddata();
        }
        protected void btn_Delete_Click(object sender, EventArgs e)
        {
            //删除           
            string strOpid = "";
            string strsql;

            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("ckb_Sle");
                string id = GridView1.DataKeys[i].Value.ToString();
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
                //删除                
                strsql = string.Format("delete from T_HotSearch where id in {0}", strOpid);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    lbl_msg.Text = "删除成功！";
                    binddata();
                }
            }
        }
       
}
}