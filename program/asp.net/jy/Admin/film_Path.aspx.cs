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
namespace VOD
{
    namespace Admin
    {
        public partial class film_Path : System.Web.UI.Page
        {
            protected void Page_Load(object sender, EventArgs e)
            {
                pageload();
            }
            private void pageload()
            {
                //网页加载过程 
                CommFun.IsAdmin();
                if (!IsPostBack)
                {

                    string strqry;
                    string Action = Request.QueryString["Action"];
                    string id = Request.QueryString["ID"];
                    if (Action == "Edit")
                    {
                        //修改
                        strqry = "select * From T_Path where id=" + id;
                        DataView dv = DBFun.GetDataView(strqry);
                        Tb_PlayPath.Text = dv.Table.Rows[0]["PlayPath"].ToString();
                        tb_PlayPath2.Text = dv.Table.Rows[0]["PlayPath2"].ToString();
                        Tb_DownPath.Text = dv.Table.Rows[0]["downpath"].ToString();
                        Tb_Caption.Text = dv.Table.Rows[0]["caption"].ToString();
                        BtnAdd.Text = "保存";

                    }
                    if (Action == "Delete")
                    {
                        //删除
                        strqry = "Delete From T_Path where ID=" + id;
                        if (DBFun.ExecuteUpdate(strqry))
                        {
                            Response.Redirect(Request.UrlReferrer.ToString());
                        }

                    }


                    strqry = "select * From T_Path order by id desc";
                    Repeater1.DataSource = DBFun.GetDataView(strqry);
                    Repeater1.DataBind();

                }
            }
            protected void BtnAdd_Click(object sender, EventArgs e)
            {
                //添加或保存路径

                funAdd();
            }
            private void funAdd()
            {
                string strqry;
                if (BtnAdd.Text == "添加")
                {
                    strqry = string.Format("Insert Into T_Path (PlayPath,playpath2,downPath,Caption) Values ('{0}','{1}','{2}','{3}')",
                        Tb_PlayPath.Text,tb_PlayPath2.Text, Tb_DownPath.Text, Tb_Caption.Text);
                }
                else
                {
                    strqry = string.Format("Update T_Path Set PlayPath='{0}',playpath2='{1}',downPath='{2}',caption='{3}' where id = {4}",
                        Tb_PlayPath.Text,tb_PlayPath2.Text, Tb_DownPath.Text, Tb_Caption.Text, Request.QueryString["ID"]);
                }
                if (DBFun.ExecuteUpdate(strqry))
                {
                    Response.Write("<script>alert('数据" + BtnAdd.Text + "保存成功！');</script>");
                    //重新绑定数据                  
                    strqry = "select * From T_Path order by id desc";
                    Repeater1.DataSource = DBFun.GetDataView(strqry);
                    Repeater1.DataBind();


                }
            }
        }
    }
}