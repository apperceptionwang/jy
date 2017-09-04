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

    public partial class Admin_zj_LxPf : System.Web.UI.Page
    {
        
        private DataView dvlist = new DataView();
        private string strqry ;
        protected void Page_Load(object sender, EventArgs e)
        {
            //加载
            CommFun.IsAdmin();
            strqry = "";
            if (!IsPostBack)
            {               
                
                strqry = "select * From T_Class";
                dwclass.DataSource = DBFun.GetDataView(strqry);
                dwclass.DataTextField = "caption";
                dwclass.DataValueField = "id";
                dwclass.DataBind();
                dw_NewClass.DataSource = dwclass.DataSource;
                dw_NewClass.DataTextField = "caption";
                dw_NewClass.DataValueField = "id";
                dw_NewClass.DataBind();
                ListItem lt= new ListItem();
                lt.Text = "--请选择--";
                lt.Value = "0";
                dwclass.Items.Add(lt);
                dwclass.Text = "0";
                strqry = "Select id,caption From T_Path order by id desc";
                DBFun.FillDwList(dw_ServerList, strqry);
                dw_ServerList.Items.Add(new ListItem("--请选择--", "0"));
                dw_ServerList.Text = "0";
                strqry = "select * From T_films order by id desc";

                
                if (Request.QueryString["FilmisSeq"]=="1")
                {
                    //连载中
                    strqry = "select * From T_films where filmisseq=1 order by id desc";                            
                                               
                }

                Session["strqry"] = strqry;
                //绑定数据
                dvlist = DBFun.GetDataView(strqry);           
                AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                Cache.Insert("dvlist", (DataView)dvlist, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0));
                bindData();
                                
            } 
            else
            {  //回发 
                string ctrlname = Page.Request.Params.Get("__EVENTTARGET");
                if (ctrlname.IndexOf("dw") != -1)
                {
                    //是由dropdwonlist 引发的
                    strqry = "select * From T_films where 1=1";
                    string filter = "";
                    if (dwclass.Text != "0")
                    {
                        filter += (" and film_classid=" + dwclass.Text);
                    }
                    if (dwfrom.Text != "0")
                    {
                        filter += (" and film_from = " + dwfrom.Text);
                    }
                    if (dwseecount.Text != "0")
                    {
                        filter += (" and see_count<=" + dwseecount.Text);
                    }
                    if (dw_ServerList.Text != "0")
                    {
                        filter += (" and pathid=" + dw_ServerList.Text);
                    }
                    if (dw_jointime.Text != "0")
                    {
                        filter += string.Format(" and join_time>=DateAdd('m',-{0},date())" , dw_jointime.Text);
                    }

                    filter += " order by id desc";
                    strqry += filter;
                    Session["strqry"] = strqry;
                    dvlist = DBFun.GetDataView(strqry);
                    AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                    Cache["dvlist"] = dvlist;
                    bindData();

                }
               
            
            }

        }       
        protected string GetQuyu(string id)
        {
            switch (id)
            {
                case "1":
                    return "欧美地区";
                case "2":
                    return "港台地区";
                case "3":
                    return "大陆地区";
                case "4":
                    return "日韩地区";
                case "5":
                    return "其它地区";
                default :
                    return "无法确定";
            }
        }
        protected void btnsearch_Click(object sender, EventArgs e)
        {
            //模糊查询
            
            strqry = string.Format("select * From T_films where film_name like '%{0}%' order by id desc", tbsearch.Text);
            Session["strqry"] = strqry;
            dvlist = DBFun.GetDataView(strqry);           
            AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
            Cache["dvlist"] = dvlist;
            bindData();
        }
        private void checkCache()
        {
            //检查缓存是否存在
            if (Cache["dvlist"] == null)
            {
               
                //绑定数据,显示用户
                dvlist = DBFun.GetDataView(Session["strqry"].ToString());
                AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                Cache.Insert("dvlist", (DataView)dvlist, null, System.Web.Caching.Cache.NoAbsoluteExpiration, new TimeSpan(0, 5, 0));
            }
        }
        private void bindData()
        {
            checkCache();
            PagedDataSource pds = new PagedDataSource();
            pds.AllowPaging = true;
            pds.PageSize = AspNetPager1.PageSize;
            pds.CurrentPageIndex = AspNetPager1.CurrentPageIndex - 1;
            pds.DataSource = (DataView)Cache["dvlist"];
            GridView1.DataSource = pds;
            GridView1.DataBind();
        }
        protected void AspNetPager1_PageChanged(object sender, EventArgs e)
        {
            bindData();
        }
        protected void dw_Operation_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        protected void btn_Ok_Click(object sender, EventArgs e)
        {
            //操作
            string strOpid = "";
            string strsql;
            
            for (int i = 0; i < GridView1.Rows.Count; i++)
            {
                CheckBox ckb = (CheckBox)GridView1.Rows[i].FindControl("sle");
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
                if (dw_Operation.Text == "0")
                {
                    //删除
                    strsql = string.Format("delete from T_films where id in {0}", strOpid);
                    if (DBFun.ExecuteUpdate(strsql))
                    {
                        strsql = string.Format("Delete From T_film_Detail where filmid in {0}", strOpid);
                        DBFun.ExecuteSql(strsql);  //删除实际文件路径
                        ltl_Msg.Text = "删除成功！";
                        dvlist = DBFun.GetDataView(Session["strqry"].ToString());
                        AspNetPager1.RecordCount = dvlist.Table.Rows.Count;
                        Cache["dvlist"] = dvlist;
                        bindData();
                    }
                }

            }

        }
}

