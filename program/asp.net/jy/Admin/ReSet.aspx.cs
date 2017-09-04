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
    public partial class ReSet : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                CommFun.IsAdmin();
            }
        }
        protected void btn_Reset_Click(object sender, EventArgs e)
        {           
            //全局数据库变量


            DataRow drw = DBFun.GetDataRow("Select * From T_Setup");

            //以下设置全局变量

            Hashtable AppSet = new Hashtable();
            
            AppSet.Add("WebSiteName", drw["SiteName"].ToString());            
            AppSet.Add("PointCheat", drw["PointCheat"].ToString());
            Application["AppSet"] = AppSet;
       
            // 用户类型
            DataView dvclass = DBFun.GetDataView("select * From T_Uclass");
            string[,] arUclass = new string[dvclass.Table.Rows.Count, 3];
            for (int j = 0; j < dvclass.Table.Rows.Count; j++)
            {
                arUclass[j, 0] = dvclass.Table.Rows[j]["Uidx"].ToString();
                arUclass[j, 1] = dvclass.Table.Rows[j]["Utype"].ToString();
                arUclass[j, 2] = dvclass.Table.Rows[j]["UcantBoard"].ToString();
            }
            Application["arUclass"] = arUclass;
            Response.Write("<Script>alert('操作成功 ！');</script>");  
              

            
        }
}
}