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

public partial class tsjtry : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "230103197803220939";
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=tscpry");
            return;
        }
        if (!IsPostBack)
        {
            SetStatus(Table1);
        }
        this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");"); 
    }


    #region // 保存 保存下一步 上报提交 安全退出 首页 翻页
    protected void imgbtn_save_Click(object sender, ImageClickEventArgs e)
    {
        Save();
    }
    protected void imgbtn_SaveNext_Click(object sender, ImageClickEventArgs e)
    {
        if (Save() == -1)
        {
            return;
        }
        SetStatus();
    }
    protected void lbtn_commit_Click(object sender, EventArgs e)
    {
        Commit();
    }
    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=tscpry");
    }
    protected void lbtn_quit_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=tscpry");
    }
    protected void lbtn_shouye_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("default.aspx");
    }
    protected void lbtn_1_Click(object sender, EventArgs e)
    {
        SetStatus(Table1);
    }
    protected void lbtn_2_Click(object sender, EventArgs e)
    {
        SetStatus(Table2);
    }
    protected void lbtn_3_Click(object sender, EventArgs e)
    {
        SetStatus(Table3);
    }
    protected void lbtn_4_Click(object sender, EventArgs e)
    {
        SetStatus(Table4);
    }
    protected void lbtn_5_Click(object sender, EventArgs e)
    {
        SetStatus(Table5);
    }
    #endregion

    #region 设置表格是否可见
    private void SetStatus(HtmlTable tbl_visible)
    {

        Table1.Visible = false;
        Table2.Visible = false;
        Table3.Visible = false;
        Table4.Visible = false;
        Table5.Visible = false;
        tbl_visible.Visible = true;

        bindData();
    }
    #endregion

    #region 设置下一个表格可见
    private void SetStatus()
    {
        HtmlTable tbl_visible = Table1;
        if (Table1.Visible)
            tbl_visible = Table2;
        else if (Table2.Visible)
            tbl_visible = Table3;
        else if (Table3.Visible)
            tbl_visible = Table4;
        else if (Table4.Visible)
            tbl_visible = Table5;
        SetStatus(tbl_visible);
    }
    #endregion

    #region 数据绑定
    private void bindData()
    {
        string str_qry = "";
        lbl_id.Text = "";
        if (Table1.Visible)
        {
            //民族
            str_qry = "、阿昌族、白族、保安族、布朗族、布依族、德昂族、东乡族、侗族、独龙族、俄罗斯族、鄂伦春族、鄂温克族、高山族、哈尼族、哈萨克族、赫哲族、回族、基诺族、京族、景颇族、柯尔克孜族、拉祜族、黎族、僳僳族、珞巴族、满族、毛南族、门巴族、蒙古族、苗族、仫佬族、纳西族、怒族、普米族、羌族、撒拉族、畲族、水族、塔吉克族、塔塔尔族、土族、土家族、佤族、维吾尔族、乌孜别克族、锡伯族、瑶族、彝族、朝鲜族、达斡尔族、傣族、仡佬族、裕固族、壮族、藏族、汉族";
            for (int i = 0; i < 56; i++)
            {
                ddlist_mz.Items.Add(str_qry.Substring(str_qry.LastIndexOf("、") + 1));
                str_qry = str_qry.Substring(0, str_qry.LastIndexOf("、"));
            }

            str_qry = "SELECT url from t_dict where flm = 8 and bm = 6";
            int i_year = DateTime.Now.Year;
            try
            {
                i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_qry));
            }
            catch
            {
            }
            ddlist_ttnf.Items.Clear();
            ddlist_ttnf.Items.Add("无"); 
            ddlist_tgnf.Items.Clear();
            ddlist_tgnf.Items.Add("无");
            ddlist_sbnf.Items.Clear();
            ddlist_sbnf.Items.Add("无");
            ddlist_hgnf.Items.Clear();
            ddlist_hgnf.Items.Add("无");
            ddlist_bdnf.Items.Clear();
            ddlist_bdnf.Items.Add("无");
            ddlist_jbzn.Items.Clear();
            ddlist_jbzn.Items.Add("无");
            for (int i = 0; i < 10; i++)
            {
                //ddlist_ttnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
                ddlist_tgnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
                ddlist_sbnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
                ddlist_hgnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
                ddlist_bdnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
                ddlist_jbzn.Items.Add(Convert.ToString(i_year - 1 - i) + "年");
                if (i == 9)
                {
                    ddlist_tgnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年以前");
                    ddlist_sbnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年以前");
                    ddlist_hgnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年以前");
                    ddlist_bdnf.Items.Add(Convert.ToString(i_year - 1 - i) + "年以前");
                    ddlist_jbzn.Items.Add(Convert.ToString(i_year - 1 - i) + "年以前");
                }
            }

            
            
            str_qry = "select * from ts_cpry where sfzh =  '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            try
            {
                tbx_bm.Text = dr["dept"].ToString();                    //部门
                ddlist_lb.SelectedValue = dr["leibie"].ToString();      //类别
                tbx_zjdm.Text = dr["zjdm"].ToString();                  //专家代码
                tbx_zjbs.Text = dr["zjbs"].ToString();                  //专家标识
                tbx_Name.Text = dr["yourname"].ToString();              //姓名
                txt_csrq.Value = dr["birth"].ToString();                //出生日期
                ddlist_xb.SelectedValue = dr["xingbie"].ToString();     //性别
                tbx_csd.Text = dr["csd"].ToString();                    //出生地
                ddlist_zzmm.SelectedValue = dr["zzmm"].ToString();      //政治面貌
                ddlist_mz.SelectedValue = dr["mz"].ToString();          //民族
                ddlist_whcd.SelectedValue = dr["whcd"].ToString();      //文化程度
                ddlist_xw.SelectedValue = dr["xw"].ToString();          //学位
                txt_bysj.Value = dr["bysj"].ToString();                 //毕业时间
                tbx_byxx.Text = dr["byxx"].ToString();                  //毕业学校
                tbx_sxzy.Text = dr["sxzy"].ToString();                  //所学专业
                tbx_cszy.Text = dr["cszy"].ToString();                  //从事专业
                ddlist_jszc.SelectedValue = dr["jszc"].ToString();      //技术职称
                tbx_gzdw.Text = dr["gzdw_mc"].ToString();               //工作单位
                txt_gzsj.Value = dr["gzsj"].ToString();                 //工作时间
                ddlist_dwlb.SelectedValue = dr["dwlb"].ToString();      //单位类别
                ddlist_dwxz.SelectedValue = dr["dwxz"].ToString();      //单位性质
                ddlist_zgzt.SelectedValue = dr["zgzt"].ToString();      //在岗状态
                ddlist_xzzw.SelectedValue = dr["xzzw"].ToString();      //行政职务
                ddlist_xzjb.SelectedValue = dr["xzjb"].ToString();      //行政级别
                ddlist_ggqjb.SelectedValue = dr["ggqjb"].ToString();    //工改前级别
                ddlist_gkhy.SelectedValue = dr["gkhy"].ToString();      //归口行业
                tbx_lxdh.Text = dr["lxdh"].ToString();                  //联系电话
                tbx_yzbm.Text = dr["yzbm"].ToString();                  //邮政编码
                ddlist_ys.SelectedValue = dr["ys"].ToString();          //院士
                tbx_gzbj.Text = dr["gzbj"].ToString();                  //跟踪标记
                ddlist_ttnf.SelectedValue = dr["ttnf"].ToString();      //特贴年份
                tbx_ttje.Text = "无";                                   //特贴金额
                ddlist_tgnf.SelectedValue = dr["tgnf"].ToString();      //突贡年份
                ddlist_sbnf.SelectedValue = dr["sbnf"].ToString();      //省部年份
                ddlist_hgnf.SelectedValue = dr["hgnf"].ToString();      //回国年份
                tbx_hcgl.Text = dr["hcgl"].ToString();                  //何处归来
                tbx_lhjt.Text = dr["lhjt"].ToString();                  //来华津贴
                ddlist_bdnf.SelectedValue = dr["bdnf"].ToString();      //博导年份
                ddlist_jbzn.SelectedValue = dr["jbzn"].ToString();      //进博站年
            }
            catch { }
        }
        else if (Table2.Visible)
        {
            str_qry = "SELECT gzjl from ts_cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            
            ftb2_1.Text = DBFun.ExecuteScalar(str_qry).ToString();
        }
        else if (Table3.Visible)
        {
            str_qry = "SELECT * from ts_hjqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ts_hjqk"] = DBFun.FillGridView(str_qry, gv_hjqk, true);
            
            for (int i = DateTime.Today.Year; i >= 1980; i--)
            {
                ddlist3_nd.Items.Add(i.ToString());
            }
            ddlist3_nd.Focus();
            ddlist3_nd.SelectedIndex = 0;
            ddlist3_jlzl.SelectedIndex = 0;
            tbx3_hjxm.Text = "";
            ddlist3_jldj.SelectedIndex = 0;
            tbx3_pm.Text = "";
        }
        else if (Table4.Visible)
        {
            str_qry = "SELECT gxsj,lwzz,zxcg from ts_cpry where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            ftb4_1.Focus=true;
            ftb4_1.Text = dr["gxsj"].ToString();
            ftb4_2.Text = dr["lwzz"].ToString();
            ftb4_3.Text = dr["zxcg"].ToString();
        }
        else if (Table5.Visible)
        {
            str_qry = "SELECT * from ts_khqk where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["ts_khqk"] = DBFun.FillGridView(str_qry, gv_khqk, true);

            for (int i = DateTime.Today.Year; i >= 1980; i--)
            {
                ddlist5_khnd.Items.Add(i.ToString());
            }
            ddlist5_khnd.Focus();
            ddlist5_khnd.SelectedIndex = 0;
            tbx5_khnr.Text = "";
            ddlist5_khjl.SelectedIndex = 0;
        }
    }
    #endregion

    #region 保存
    protected int Save()
    {
        string str_sql = "";
        //lbl_id.Text = "";
        if (Table1.Visible)
        {
            str_sql = " update ts_cpry set dept='" + tbx_bm.Text + "'," +
                      " leibie='"+ddlist_lb.SelectedValue+"',"+
                      //" zjdm='" + tbx_zjdm.Text + "'," +
                      //" zjbs='" + tbx_zjbs.Text + "'," +
                      " yourname='" + tbx_Name.Text + "'," +
                      " birth='" + txt_csrq.Value + "'," +
                      " xingbie='" + ddlist_xb.SelectedValue + "'," +
                      " csd='" + tbx_csd.Text + "', " +
                      " zzmm='" + ddlist_zzmm.SelectedValue + "', " +
                      " mz='" + ddlist_mz.SelectedValue + "', " +
                      " whcd='" + ddlist_whcd.SelectedValue + "', " +
                      " xw='" + ddlist_xw.SelectedValue + "', " +
                      " bysj='" + txt_bysj.Value + "'," +
                      " byxx='" + tbx_byxx.Text + "', " +
                      " sxzy='" + tbx_sxzy.Text + "', " +
                      " cszy='" + tbx_cszy.Text + "', " +
                      " jszc='" + ddlist_jszc.SelectedValue + "', " +
                      " gzdw_mc='" + tbx_gzdw.Text + "'," +
                      " gzsj='" + txt_gzsj.Value + "'," +
                      " dwlb='" + ddlist_dwlb.SelectedValue + "', " +
                      " dwxz='" + ddlist_dwxz.SelectedValue + "', " +
                      " zgzt='" + ddlist_zgzt.SelectedValue + "', " +
                      " xzzw='" + ddlist_xzzw.SelectedValue + "', " +
                      " xzjb='" + ddlist_xzjb.SelectedValue + "', " +
                      " ggqjb='" + ddlist_ggqjb.SelectedValue + "', " +
                      " gkhy='" + ddlist_gkhy.SelectedValue + "', " +
                      " lxdh='" + tbx_lxdh.Text + "'," +
                      " yzbm='" + tbx_yzbm.Text + "'," +
                      " ys='" + ddlist_ys.SelectedValue + "', " +
                      " gzbj='" + tbx_gzbj.Text + "'," +
                      " ttnf='" + ddlist_ttnf.SelectedValue + "', " +
                      " ttje='" + tbx_ttje.Text + "'," +
                      " tgnf='" + ddlist_tgnf.SelectedValue + "', " +
                      " sbnf='" + ddlist_sbnf.SelectedValue + "', " +
                      " hgnf='" + ddlist_hgnf.SelectedValue + "', " +
                      " hcgl='" + tbx_hcgl.Text + "'," +
                      " lhjt='" + tbx_lhjt.Text + "'," +
                      " bdnf='" + ddlist_bdnf.SelectedValue + "', " +
                      " jbzn='" + ddlist_jbzn.SelectedValue + "' " +
                      " where sfzh = '"+Session["sfzh"].ToString()+"'";

        }
        else if (Table2.Visible)
        {
            string ls_content = ftb2_1.Text.Replace("'", "’");
            if (CommFun.StringCounter(ftb2_1.HtmlStrippedText) > 600)
            {
                Response.Write("<script>alert('内容应在600字以内！');</script>");
                return -1;
            }
            str_sql = " update ts_cpry set gzjl='" + ls_content + "' " +
                      " where sfzh = '" + Session["sfzh"].ToString() + "'";
        }
        else if (Table3.Visible)
        {
            if (tbx3_hjxm.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ts_hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 12))
                {
                    Response.Write("<script>alert('最多只能增加 12 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ts_hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into ts_hjqk (id,jlzl,hjxm,jldj,pm,nd,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, ddlist3_jlzl.SelectedValue, tbx3_hjxm.Text, ddlist3_jldj.SelectedValue, tbx3_pm.Text,ddlist3_nd.SelectedValue, Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ts_hjqk set jlzl='{0}',hjxm='{1}',jldj='{2}',pm='{3}',nd='{4}' where sfzh='{5}' and id={6} ",
                         ddlist3_jlzl.SelectedValue, tbx3_hjxm.Text, ddlist3_jldj.SelectedValue, tbx3_pm.Text, ddlist3_nd.SelectedValue, Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table4.Visible)
        {
            string ls_content1 = ftb4_1.Text.Replace("'", "’");
            string ls_content2 = ftb4_2.Text.Replace("'", "’");
            string ls_content3 = ftb4_3.Text.Replace("'", "’");
            if (CommFun.StringCounter(ftb4_1.HtmlStrippedText) > 150)
            {
                Response.Write("<script>alert('主要突出贡献事迹 内容应在150字以内！');</script>");
                return -1;
            }
            if (CommFun.StringCounter(ftb4_2.HtmlStrippedText) > 600)
            {
                Response.Write("<script>alert('代表论文和著作 内容应在600字以内！');</script>");
                return -1;
            }
            if (CommFun.StringCounter(ftb4_3.HtmlStrippedText) > 600)
            {
                Response.Write("<script>alert('最新成果 内容应在600字以内！');</script>");
                return -1;
            }
            str_sql = " update ts_cpry set gxsj='" + ls_content1 + "'," +
                      " lwzz='" + ls_content2 + "'," +
                      " zxcg='" + ls_content3 + "' " +
                      " where sfzh = '" + Session["sfzh"].ToString() + "'";
        }
        else if (Table5.Visible)
        {
            if (tbx5_khnr.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from ts_khqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 8))
                {
                    Response.Write("<script>alert('最多只能增加 8 项！');</script>");
                    return -1;
                }

                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from ts_khqk where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into ts_khqk (id,khnd,khnr,khjl,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}');",
                         int_maxbm, ddlist5_khnd.SelectedValue,  tbx5_khnr.Text,ddlist5_khjl.SelectedValue,
                         Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update ts_khqk set khnd='{0}',khnr='{1}',khjl='{2}' where sfzh='{3}' and id={4} ",
                         ddlist5_khnd.SelectedValue, tbx5_khnr.Text, ddlist5_khjl.SelectedValue,
                         Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            if (!Table5.Visible)
                Response.Write("<script>alert('保存成功！');</script>");
            else
                Response.Write("<script>alert('保存成功，申报材料已填写完毕，如需修改请点击相应模块！');</script>");
            bindData();
            return 1;
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
            return -1;
        }
    }
    #endregion

    #region 提交
    protected void Commit()
    {
        string str_sql = string.Format("update ts_cpry set edit_flag = {0} where sfzh = '{1}'",
                      false, Session["sfzh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
            string str_url = "PrintPreview_ts.aspx";
            Response.Write("<script>alert('提交成功！');location.href = '" + str_url + "';</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        }
    }
    #endregion

    #region 编辑
    protected void GridViewEdit(int RowIndex)
    {
        DataView dv;
        if (Table3.Visible)
        {
            dv = (DataView)Session["ts_hjqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            ddlist3_nd.Focus();

            try { ddlist3_nd.SelectedValue = dv.Table.Rows[RowIndex]["nd"].ToString(); }
            catch { }
            try { ddlist3_jlzl.SelectedValue = dv.Table.Rows[RowIndex]["jlzl"].ToString(); }
            catch { }
            tbx3_hjxm.Text = dv.Table.Rows[RowIndex]["hjxm"].ToString();
            try { ddlist3_jldj.SelectedValue = dv.Table.Rows[RowIndex]["jldj"].ToString(); }
            catch { }
            tbx3_pm.Text = dv.Table.Rows[RowIndex]["pm"].ToString();
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["ts_khqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            ddlist5_khnd.Focus();
            try { ddlist5_khnd.SelectedValue = dv.Table.Rows[RowIndex]["khnd"].ToString(); }
            catch { }
            tbx5_khnr.Text = dv.Table.Rows[RowIndex]["khnr"].ToString();
            try { ddlist5_khjl.SelectedValue = dv.Table.Rows[RowIndex]["khjl"].ToString(); }
            catch { }
        }
    }
    #endregion

    #region 删除
    protected void GridViewDeleteRow(int RowIndex)
    {
        DataView dv;
        string str_sql = "", str_id = "";
        if (Table3.Visible)
        {
            dv = (DataView)Session["ts_hjqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ts_hjqk where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["ts_khqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from ts_khqk where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('删除失败！');</script>");
            return;
        }
        bindData();
    }
    #endregion

 

    protected void gv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewEdit(e.NewEditIndex);
    }
    protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        GridViewDeleteRow(e.RowIndex);
    }


    protected void txt_bysj_ServerChange(object sender, EventArgs e)
    {
        txt_bysj.Value = txt_bysj.Value.Substring(0, 7);
    }

}
