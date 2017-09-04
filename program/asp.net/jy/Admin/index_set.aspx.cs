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
    public partial class index_set : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                try
                {
                    CommFun.IsAdmin();
                    
                    DBFun.FillDwList(dw_class, "select ID,caption From T_Class");
                    string strqry = "select * From T_IndexPage";
                    GridView1.DataSource = DBFun.GetDataView(strqry);
                    GridView1.DataBind();
                   
                    
                    
                   
                }
                catch(Exception ex)
                {
                    Response.Write("执行时出错！"+ ex.Message );
                }
            }
        }
        
        protected string GetClassName(string id)
        {
            //取得类型名
            int selid;
            selid= dw_class.Items.IndexOf(dw_class.Items.FindByValue(id));
            return dw_class.Items[selid].Text;
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {               
           GridView1.EditIndex = e.NewEditIndex;
           binddata();
        }


        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //更新
            int rowid = e.RowIndex;
            
            DropDownList dw_class_ed = (DropDownList)GridView1.Rows[rowid].Cells[1].FindControl("dw_class_ed");
            DropDownList dw_Template_ed = (DropDownList)GridView1.Rows[rowid].Cells[3].FindControl("dw_Template_ed");
            DropDownList dw_isopen_ed = (DropDownList)GridView1.Rows[rowid].Cells[4].FindControl("dw_isopen_ed");
            TextBox tb_Imgurl_ed = (TextBox)GridView1.Rows[rowid].Cells[2].FindControl("tb_Imgurl_ed");
            
            string id = GridView1.DataKeys[rowid].Value.ToString();
            string strsql = string.Format("Update [T_indexPage] set film_classid={0},ImgUrl='{1}',templateid={2},isopen={3} where id={4}",
                        dw_class_ed.Text, tb_Imgurl_ed.Text, dw_Template_ed.Text, dw_isopen_ed.Text, id);
            if (DBFun.ExecuteUpdate(strsql))
            {
                lbl_msg.Text = "修改成功！";
            }
            GridView1.EditIndex = -1;
            binddata();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            //取消
            GridView1.EditIndex = -1;
            binddata();
        }
        protected void binddata()
        {
                      
            string strqry = "select * From T_IndexPage";
            GridView1.DataSource = DBFun.GetDataView(strqry);
            GridView1.DataBind();
        
        }
        protected string GetClassIsOpen(string IsOpen)
        {
            if (IsOpen == "0")
                return "<font color='red'><b>关闭</b></font>";
            else
                return "<font color='#009900'><b>开启</b></font>";
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //数据绑定
            if (e.Row.RowType == DataControlRowType.DataRow || GridView1.EditIndex != -1)
            {
                
                DataRowView  dr = (System.Data.DataRowView)e.Row.DataItem;
                DropDownList dw_class_ed = (DropDownList)e.Row.FindControl("dw_class_ed");
                if (dw_class_ed != null)
                {
                    DBFun.FillDwList(dw_class_ed, "select ID,caption From T_Class");
                    dw_class_ed.Items.FindByValue(dr["film_classid"].ToString()).Selected = true;
                }
                DropDownList dw_Template_ed = (DropDownList)e.Row.FindControl("dw_Template_ed");
                if (dw_Template_ed != null)
                {
                    dw_Template_ed.Items.FindByValue(dr["templateID"].ToString()).Selected = true;
                }
                DropDownList dw_isopen_ed = (DropDownList)e.Row.FindControl("dw_isopen_ed");
                if (dw_isopen_ed != null)
                {
                    dw_isopen_ed.Items.FindByValue(dr["isopen"].ToString()).Selected = true;
                }
            }
        }
        protected void btn_Add_Click(object sender, EventArgs e)
        {
            //添加
          
            string strsql = string.Format("Insert into [T_indexpage](film_classid,ImgUrl,templateid) values ({0},'{1}',{2})",
                dw_class.Text, tb_ImgUrl.Text, dw_TemplateID.Text);
            if (DBFun.ExecuteUpdate(strsql))
            {
                lbl_msg.Text = "添加成功！";
                binddata();
            }

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
                string newclassid = dw_class.Text;
                string newclass = dw_class.SelectedItem.Text;
                strsql = string.Format("delete from T_indexpage where id in {0}", strOpid);
                if (DBFun.ExecuteUpdate(strsql))
                {
                    lbl_msg.Text  = "删除成功！";
                    binddata();
                }
            }
        }
}
}