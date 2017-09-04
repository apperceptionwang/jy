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
    public partial class film_classAddEdit : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //
                CommFun.IsAdmin();
                
                string Action = Request.QueryString["Action"];
                string ID = Request.QueryString["ID"];
                if (Action == null)
                {
                    ltl_Title.Text = "新添影片类型";
                    btn_Ok.Text = "添加";
                    
                }
                else if (Action == "Edit")
                {
                    ltl_Title.Text = "编辑影片类型";
                    btn_Ok.Text = "确认修改";
                    ReadFromDb(ID);
                }
                else if (Action == "Delete")
                {
                    DeleteFromDb(ID);
                }
            }
        }
        private void ReadFromDb(string ID)
        {
            //读取数据并显示
            string strqry = string.Format("select * From T_class where id={0}", ID);
            DataRow dr = DBFun.GetDataRow(strqry);
            if (dr == null)
            {
                Response.Write("<Script>alert('读取失败！');history.go(-1);</script>");
                Response.End();
            }
            else
            {
                tb_Caption.Text = dr["caption"].ToString();
                tb_ListImg.Text = dr["ListImg"].ToString();
                tb_ListPageSize.Text = dr["ListPageSize"].ToString();
                tb_ListSamePageSize.Text = dr["listSamepageSize"].ToString();
                tb_Cidx.Text = dr["cidx"].ToString();
                rbl_CIsOpen.Text = dr["CIsOpen"].ToString();
                rbl_ListSortType.Text = dr["ListSortType"].ToString();
                rbl_NotLogin.Text = dr["NotLoginIn"].ToString();
                tb_CSort.Text = dr["CSort"].ToString();

            }
        }
        private void DeleteFromDb(string ID)
        {
            //删除一个记录
            string strsql = string.Format("Delete From T_class where id={0}", ID);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('删除成功！');");
                Response.Redirect(Request.UrlReferrer.ToString());
            }

        }
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //保存            
            if (btn_Ok.Text == "添加")
            {
                try
                {
                    string strsql = string.Format("Insert into T_class(Caption,ListImg,Listpagesize,ListSamePageSize,Cidx,"
                                            + "CIsOpen,ListsortType,NotLoginIn,CSort) "
                                            + " values('{0}','{1}',{2},{3},{4},{5},{6},{7},{8})",
                                            tb_Caption.Text,tb_ListImg.Text,tb_ListPageSize.Text,tb_ListSamePageSize.Text,tb_Cidx.Text,
                                            rbl_CIsOpen.Text,rbl_ListSortType.Text,rbl_NotLogin.Text,tb_CSort.Text);
                    if (DBFun.ExecuteUpdate(strsql))
                    {
                        Response.Write("<script>alert('数据添加成功！');window.location.href='film_classAddEdit.aspx?Action=Edit&id=" + DBFun.SearchValue("select Max(id) from T_class") + "';</script>");
                    }
                    else
                        Response.Write("<scritp>alert('添加失败！请检查是否填写正确。');</script>");

                }
                catch (Exception ex)
                {
                    Response.Write(@"<script>alert('添加失败！请检查是否填写正确！" + ex.Message + "');</script>");

                }
            }
            else if (btn_Ok.Text == "确认修改")
            {
                try
                {
                    string strsql = string.Format("Update T_class Set Caption='{0}',ListImg='{1}',Listpagesize={2},ListSamePageSize={3},Cidx={4},"
                                            + "CIsOpen={5},ListsortType={6},NotLoginIn={7} ,Csort={8} where id={9}",
                                            tb_Caption.Text,tb_ListImg.Text,tb_ListPageSize.Text,tb_ListSamePageSize.Text,tb_Cidx.Text,
                                            rbl_CIsOpen.Text,rbl_ListSortType.Text,rbl_NotLogin.Text,tb_CSort.Text, Request.QueryString["ID"]);
                    if (DBFun.ExecuteUpdate(strsql))
                    {
                        Response.Write("<script>alert('数据修改成功！');document.reload();</script>");
                    }
                    else
                        Response.Write("<scritp>alert('保存失败！请检查是否填写正确。');</script>");

                }
                catch
                {
                    Response.Write("<script>alert('保存失败！请检查是否填写正确！');</script>");

                }
            }
        }
        
}
}