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
using System.Data.OleDb;

public partial class Admin_lqsf : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_name"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './admin_login.aspx';</script>");
            return;
        }
        if (!IsPostBack)
        {
            //本科录取省份
            string str_sql = "select 地区,录取完毕 from lqsf where 本专科='本科'";
            OleDbDataReader reader = DBFun.dataReader(str_sql);
            int i = 0;
            while (reader.Read())
            {
                cbxlist_bk.Items.Add(reader["地区"].ToString());
                cbxlist_bk.Items[i].Selected = (reader["录取完毕"].ToString() == "是");
                i++;
            }
            reader.Close();
            reader.Dispose();
            //专科录取省份
            str_sql = "select 地区,录取完毕 from lqsf where 本专科='专科'";
            OleDbDataReader reader1 = DBFun.dataReader(str_sql);
            i = 0;
            while (reader1.Read())
            {
                cbxlist_zk.Items.Add(reader1["地区"].ToString());
                cbxlist_zk.Items[i].Selected = (reader1["录取完毕"].ToString() == "是");
                i++;
            }
            reader1.Close();
            reader1.Dispose();
        }
    }

    protected void btn_bk_Click(object sender, EventArgs e)
    {
        string str_sql = "";
        string str_condition_yes = "";
        string str_condition_no = "";
        for (int i = 0; i < cbxlist_bk.Items.Count; i++)
        {
            if (cbxlist_bk.Items[i].Selected)
                str_condition_yes = str_condition_yes + "," + cbxlist_bk.Items[i].Text;
            else
                str_condition_no = str_condition_no + "," + cbxlist_bk.Items[i].Text;
        }
        str_sql = "update lqsf set 录取完毕 = '是' where 本专科='本科' and instr( '" + str_condition_yes + "',地区)>0 ";

        string str_sql1 = "update lqsf set 录取完毕 = '否' where 本专科='本科' and instr('" + str_condition_no + "',地区)>0";

        if (DBFun.ExecuteUpdate(str_sql) && DBFun.ExecuteUpdate(str_sql1))
        {
            Response.Write(@"<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write(@"<script>alert('保存失败！');</script>");
        }
    }
    protected void btn_zk_Click(object sender, EventArgs e)
    {
        string str_sql = "";
        string str_condition_yes = "";
        string str_condition_no = "";
        for (int i = 0; i < cbxlist_zk.Items.Count; i++)
        {
            if (cbxlist_zk.Items[i].Selected)
                str_condition_yes = str_condition_yes + "," + cbxlist_zk.Items[i].Text;
            else
                str_condition_no = str_condition_no + "," + cbxlist_zk.Items[i].Text;
        }
        str_sql = "update lqsf set 录取完毕 = '是' where 本专科='专科' and instr( '" + str_condition_yes + "',地区)>0 ";

        string str_sql1 = "update lqsf set 录取完毕 = '否' where 本专科='专科' and instr('" + str_condition_no + "',地区)>0";

        if (DBFun.ExecuteUpdate(str_sql) && DBFun.ExecuteUpdate(str_sql1))
        {
            Response.Write(@"<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write(@"<script>alert('保存失败！');</script>");
        }
    }
    protected void cbx_bk_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < cbxlist_bk.Items.Count; i++)
        {
            cbxlist_bk.Items[i].Selected = cbx_bk.Checked;
        }
    }
    protected void cbx_zk_CheckedChanged(object sender, EventArgs e)
    {
        for (int i = 0; i < cbxlist_zk.Items.Count; i++)
        {
            cbxlist_zk.Items[i].Selected = cbx_zk.Checked;
        }
    }
}
