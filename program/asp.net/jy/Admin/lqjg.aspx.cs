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
using System.IO;

public partial class Admin_lqjg : System.Web.UI.Page
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
            try
            {
                while (reader1.Read())
                {
                    cbxlist_zk.Items.Add(reader1["地区"].ToString());
                    cbxlist_zk.Items[i].Selected = (reader1["录取完毕"].ToString() == "是");
                    i++;
                }
                reader1.Close();
                reader1.Dispose();
            }
            catch { }
        }
    }
    protected void btn_confirm_Click(object sender, EventArgs e)
    {
        if (UploadFile(FileUpload1) != "")
        {
            Response.Write("<script>alert('数据上传成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('数据上传失败！');</script>");
        }
    }

    #region 上传文件
    public string UploadFile(FileUpload Fupload)
    {
        //文件上传
        string str_ParentFolder;
        string dir;
        string filename;
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return "";

            str_ParentFolder = Server.MapPath(@"..\app_data\");

            //创建以教师id+课程id为名的文件夹
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "";
            }

            string extname;

            if (Fupload.PostedFile.FileName != "")
            {
                extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                //判断上传课件类型
                string str_UploadFileType = "xls";

                if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
                {
                    Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                    return "";
                }
                string str_sql;
                /*判断是否更名*/
                filename = "lqjg.xls";
               
                Fupload.PostedFile.SaveAs(str_ParentFolder + filename);
                str_sql = "select * from [lqjg$] ";
                DataTable dt =ExcelManager.GetXlsDataTable(str_ParentFolder + filename, str_sql);
                int j=0,k=0;
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_sql = "select count(*) from lqjg where 考生号 ='" + dt.Rows[i][0].ToString() + "'";
                    if ((int)DBFun.ExecuteScalar(str_sql) == 0)
                    {
                        str_sql = string.Format("insert into lqjg (考生号,身份证号,姓名,性别,系别,专业,是否寄出通知书) values ('{0}','{1}','{2}','{3}','{4}','{5}','{6}')",
                        dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString());
                        j++;
                    }
                    else
                    {
                        str_sql = string.Format("update lqjg set 身份证号='{1}',姓名='{2}',性别='{3}',系别='{4}',专业='{5}',是否寄出通知书='{6}' where 考生号='{0}'",
                        dt.Rows[i][0].ToString(), dt.Rows[i][1].ToString(), dt.Rows[i][2].ToString(), dt.Rows[i][3].ToString(), dt.Rows[i][4].ToString(), dt.Rows[i][5].ToString(), dt.Rows[i][6].ToString());
                        k++;
                    }
                    if (!DBFun.ExecuteUpdate(str_sql))
                    {
                        return "";
                    }
                    
                }
                str_sql = "select count(*) from lqjg where 考生号 <> ''";

                lbl_result.Text = "数据库中共有记录 "+DBFun.ExecuteScalar(str_sql).ToString()+" 条，本次新增了 "+j.ToString()+" 条记录，更新了 "+k.ToString()+" 条记录";
                Fupload.Dispose();
                return filename;
            }

            //用文件名上传的方式
            //if (tbx_Research.Text != "")
            //{
            //    extname = System.IO.Path.GetExtension(tbx_Research.Text);
            //    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + extname;

            //    System.IO.File.Copy(tbx_Research.Text, Server.MapPath(".\\kejian\\") + filename);
            //    return filename;
            //}
            return "";
        }
        catch
        {
            //File.Delete(Session["FilePath"].ToString());
            //Response.Write("<script>alert('文件上传失败！');</script>");
            return "";
        }
    }
    #endregion

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
        if (str_condition_yes == "")
        {
            if (DBFun.ExecuteUpdate(str_sql1))
            {
                Response.Write(@"<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(@"<script>alert('保存失败！');</script>");
            }
        }
        else if (str_condition_no == "")
        {
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write(@"<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(@"<script>alert('保存失败！');</script>");
            }
        }
        else
        {
            if (DBFun.ExecuteUpdate(str_sql) && DBFun.ExecuteUpdate(str_sql1))
            {
                Response.Write(@"<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(@"<script>alert('保存失败！');</script>");
            }
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

        if (str_condition_yes == "")
        {
            if (DBFun.ExecuteUpdate(str_sql1))
            {
                Response.Write(@"<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(@"<script>alert('保存失败！');</script>");
            }
        }
        else if (str_condition_no == "")
        {
            if (DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write(@"<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(@"<script>alert('保存失败！');</script>");
            }
        }
        else
        {
            if (DBFun.ExecuteUpdate(str_sql) && DBFun.ExecuteUpdate(str_sql1))
            {
                Response.Write(@"<script>alert('保存成功！');</script>");
            }
            else
            {
                Response.Write(@"<script>alert('保存失败！');</script>");
            }
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
