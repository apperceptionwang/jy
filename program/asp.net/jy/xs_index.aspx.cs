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
using Aspose.Words;

public partial class xs_index : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["jsh"] = "2006030";
        //Session["jsm"] = "史磊";
        if (Session["jsh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=zgcpry");
            return;
        }
        if (!IsPostBack)
        {
            lbl_jsm.Text = Session["jsm"].ToString() + "，已登陆";
            Session["msg"] = "yes";
            //Save();
            //系别
            string str_qry = "SELECT name,name from t_dict where flm=1 ;";
            DBFun.FillDwList(ddlist5_szbm, str_qry);
            DBFun.FillDwList(ddlist6_szbm, str_qry);
            DBFun.FillDwList(ddlist_sqbm, str_qry);
            CommFun.Add_mz(ddlist_mz);
            //ddlist_gznx.Items.Clear();
            //for (int i = 1; i <= 20; i++)
            //{
            //    ddlist_gznx.Items.Add(i.ToString());
            //}
            SetStatus(Table1);
        }
        this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");
        this.lbtn_quit.Attributes.Add("onclick", "return   confirm   (\"退出后所有未保存的数据将会丢失，确定要退出吗？\");");
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
        //提交前判断参加项目的数量

        //提交
        Commit();
    }
    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=jycpry");
    }
    protected void lbtn_quit_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=jycpry");
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
    protected void lbtn_6_Click(object sender, EventArgs e)
    {
        SetStatus(Table6);
    }
    #endregion

    #region 设置表格是否可见
    private void SetStatus(HtmlTable tbl_visible)
    {
        //if ((Table2.Visible || Table4.Visible) && !Table1.Visible && !Table3.Visible && !Table5.Visible)
        //{
        //    Save();
        //}
        Table1.Visible = false;
        Table2.Visible = false;
        Table3.Visible = false;
        Table4.Visible = false;
        Table5.Visible = false;
        Table6.Visible = false;
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
        else if (Table5.Visible)
            tbl_visible = Table6;
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
            imgbtn_save.ImageUrl = "./img/save.gif";

            str_qry = "select jsm,num from t_teacher,(" +
                          "  select count(*) as num,jsh from t_cyqk where xm='" + Session["jsm"].ToString() + "' " +
                          "  group by jsh) as cy where t_teacher.jsh = cy.jsh ";
            DataTable dt = DBFun.dataTable(str_qry);
            if (dt.Rows.Count > 1)
            {
                string str_name = "";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_name += " [ " + dt.Rows[i]["jsm"].ToString() + " ] ";
                }
                lbl_cjxm.Text = "您已经参与了" + str_name + "的项目，不能再申请项目了！";
                ddlist_sfsb.Enabled = false;
                return;

            }

            str_qry = "select * from t_teacher where jsh =  '" + Session["jsh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            try
            {
                try
                {
                    ddlist_sfsb.SelectedValue = dr["status_sb"].ToString();      //类别
                }
                catch
                {
                    ddlist_sfsb.SelectedIndex = 0;
                }
                try
                {
                    ddlist_lb.SelectedValue = dr["xmlb"].ToString();      //类别
                }
                catch
                {
                    ddlist_lb.SelectedIndex = 0;
                }
                try
                {
                    ddlist_sqbm.SelectedValue = dr["sqbm"].ToString();      //类别
                }
                catch
                {
                    ddlist_sqbm.SelectedIndex = 0;
                }
                if (dr["sqbm"].ToString() == "")
                {
                    ddlist_sqbm.SelectedIndex = 0;
                }

                tbx_xmmc.Text = dr["ktmc"].ToString();                  //专家代码
                tbx_xmfzr.Text = dr["jsm"].ToString();                  //专家代码
                tbx_szbm.Text = dr["szbm"].ToString();                  //专家代码
                tbx_lxdh.Text = dr["lxdh"].ToString();                  //专家标识
                txt_sqrq.Value = dr["sqrq"].ToString();              //姓名
                txt_csny.Value = dr["csny"].ToString();                    //出生地

                tbx_tsje.Text = dr["xmjf_tsje"].ToString();                  //专家代码
                tbx_tsyj.Text = dr["xmjf_tsyj"].ToString();                  //专家代码
                tbx_dyje.Text = dr["xmjf_dyje"].ToString();                  //专家代码
                tbx_dyyj.Text = dr["xmjf_dyyj"].ToString();                  //专家标识
                tbx_wyje.Text = dr["xmjf_wyje"].ToString();                  //专家代码
                tbx_wyyj.Text = dr["xmjf_wyyj"].ToString();                  //专家代码
                tbx_hyje.Text = dr["xmjf_hyje"].ToString();                  //专家代码
                tbx_hyyj.Text = dr["xmjf_hyyj"].ToString();                  //专家标识
                tbx_bmje.Text = dr["xmjf_bmje"].ToString();                  //专家代码
                tbx_bmyj.Text = dr["xmjf_bmyj"].ToString();                  //专家代码
                tbx_qtje.Text = dr["xmjf_qtje"].ToString();                  //专家代码
                tbx_qtyj.Text = dr["xmjf_qtyj"].ToString();                  //专家代码



                tbx_yjzc.Text = dr["yjzc"].ToString();          //学位


                tbx_email.Text = dr["email"].ToString();          //学位

                try
                {
                    ddlist_xb.SelectedValue = dr["xb"].ToString();      //政治面貌
                }
                catch
                {
                    ddlist_xb.SelectedIndex = 0;
                }
                try
                {
                    ddlist_mz.SelectedValue = dr["mz"].ToString();          //民族
                }
                catch
                {
                    ddlist_mz.SelectedIndex = 0;
                }
                try
                {
                    ddlist_zc.SelectedValue = dr["zc"].ToString();      //文化程度
                }
                catch
                {
                    ddlist_zc.SelectedIndex = 0;
                }
                try
                {
                    ddlist_zw.SelectedValue = dr["zw"].ToString();      //文化程度
                }
                catch
                {
                    ddlist_zw.SelectedIndex = 0;
                }
                try
                {
                    ddlist_gznx.SelectedValue = dr["gznx"].ToString();      //文化程度
                }
                catch
                {
                    ddlist_gznx.SelectedIndex = 0;
                }
                try
                {
                    ddlist_xl.SelectedValue = dr["xl"].ToString();      //文化程度
                }
                catch
                {
                    ddlist_xl.SelectedIndex = 0;
                }
                try
                {
                    ddlist_xw.SelectedValue = dr["xw"].ToString();      //文化程度
                }
                catch
                {
                    ddlist_xw.SelectedIndex = 0;
                }
                try
                {
                    ddlist_yjnx.SelectedValue = dr["yjnx"].ToString();      //文化程度
                }
                catch
                {
                    ddlist_yjnx.SelectedIndex = 0;
                }

            }
            catch { }
        }
        else if (Table2.Visible)
        {
            imgbtn_save.ImageUrl = "./img/save.gif";
            str_qry = "SELECT bg_1,bg_2,bg_3,bg_4 from t_teacher where jsh = '" + Session["jsh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            tbx2_1.Text = dr[0].ToString();
            tbx2_2.Text = dr[1].ToString();
            tbx2_3.Text = dr[2].ToString();
            tbx2_4.Text = dr[3].ToString();
        }
        else if (Table3.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from t_ktqk where jsh = '" + Session["jsh"].ToString() + "' ;";
            Session["t_ktqk"] = DBFun.FillGridView(str_qry, gv_ktqk, true);
            tbx3_xmmc.Focus();
            tbx3_xmmc.Text = "";
            tbx3_xmbh.Text = "";
            tbx3_xmjb.Text = "";
            ddlist3_sfjt.SelectedIndex = 0;
            ddlist3_zccy.SelectedIndex = 0;
        }
        else if (Table4.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from t_kycg where jsh = '" + Session["jsh"].ToString() + "' ;";
            Session["t_kycg"] = DBFun.FillGridView(str_qry, gv_kycg, true);
            tbx4_lwmc.Focus();
            tbx4_lwmc.Text = "";
            tbx4_fbbk.Text = "";
            ddlist4_brpm.SelectedIndex = 0;
            ddlist4_zrs.SelectedIndex = 0;
        }
        else if (Table5.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from t_cyqk where jsh = '" + Session["jsh"].ToString() + "' ;";
            Session["t_cyqk"] = DBFun.FillGridView(str_qry, gv_cyqk, true);
            tbx5_xm.Focus();
            tbx5_xm.Text = "";
            tbx5_zc.Text = "";
            tbx5_yjzc.Text = "";
            ddlist5_szbm.SelectedIndex = 0;
            tbx5_fg.Text = "";
        }
        else if (Table6.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from t_tjyj where jsh = '" + Session["jsh"].ToString() + "' ;";
            Session["t_tjyj"] = DBFun.FillGridView(str_qry, gv_tjyj, true);
            tbx6_xm.Focus();
            tbx6_xm.Text = "";
            tbx6_zc.Text = "";
            ddlist6_szbm.SelectedIndex = 0;
            tbx6_tjyj.Text = "";
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
            if (Convert.ToBoolean(ddlist_sfsb.SelectedValue))
            {
                str_sql = "select jsm,num from t_teacher,(" +
                          "  select count(*) as num,jsh from t_cyqk where xm='" + Session["jsm"].ToString() + "' " +
                          "  group by jsh) as cy where t_teacher.jsh = cy.jsh ";
                DataTable dt = DBFun.dataTable(str_sql);
                if (dt.Rows.Count > 1)
                {
                    string str_name = "";
                    for (int i = 0; i < dt.Rows.Count; i++)
                    {
                        str_name += " [ " + dt.Rows[i]["jsm"].ToString() + " ] ";
                    }
                    Response.Write("<script>alert('您已经参与了" + str_name + "的项目，不能再申请项目了！');</script>");
                    return -1;

                }
            }
            str_sql = " update t_teacher set " +
                      " status_sb=" + ddlist_sfsb.SelectedValue + "," +
                      " xmlb='" + ddlist_lb.SelectedValue + "'," +
                      " ktmc='" + tbx_xmmc.Text + "'," +
                      " lxdh='" + tbx_lxdh.Text + "'," +
                      " sqrq='" + txt_sqrq.Value + "'," +
                      " sqbm='" + ddlist_sqbm.SelectedValue + "', " +
                      " csny='" + txt_csny.Value + "', " +
                      " xb='" + ddlist_xb.SelectedValue + "', " +
                      " mz='" + ddlist_mz.SelectedValue + "', " +
                      " zc='" + ddlist_zc.SelectedValue + "', " +
                      " zw='" + ddlist_zw.SelectedValue + "', " +
                      " gznx='" + ddlist_gznx.SelectedValue + "', " +
                      " yjzc='" + tbx_yjzc.Text + "'," +
                      " xl='" + ddlist_xl.SelectedValue + "', " +
                      " xw='" + ddlist_xw.SelectedValue + "', " +
                      " email='" + tbx_email.Text + "', " +
                      " yjnx=" + ddlist_yjnx.SelectedValue + ", " +

                      " xmjf_tsje=" + tbx_tsje.Text + ", " +
                      " xmjf_tsyj='" + tbx_tsyj.Text + "', " +
                      " xmjf_dyje=" + tbx_dyje.Text + ", " +
                      " xmjf_dyyj='" + tbx_dyyj.Text + "', " +
                      " xmjf_wyje=" + tbx_wyje.Text + ", " +
                      " xmjf_wyyj='" + tbx_wyyj.Text + "', " +
                      " xmjf_hyje=" + tbx_hyje.Text + ", " +
                      " xmjf_hyyj='" + tbx_hyyj.Text + "', " +
                      " xmjf_bmje=" + tbx_bmje.Text + ", " +
                      " xmjf_bmyj='" + tbx_bmyj.Text + "', " +
                      " xmjf_qtje=" + tbx_qtje.Text + ", " +
                      " xmjf_qtyj='" + tbx_qtyj.Text + "' " +

                      " where jsh = '" + Session["jsh"].ToString() + "'";
        }
        else if (Table2.Visible)
        {
            //string ls_content = tbx2_1.Text;
            //string ls_content = ftb2_1.HtmlStrippedText;

            if (CommFun.StringCounter(tbx2_1.Text) > 1500)
            {
                Response.Write("<script>alert('选题应在1500字以内！');</script>");
                return -1;
            }
            if (CommFun.StringCounter(tbx2_2.Text) > 1500)
            {
                Response.Write("<script>alert('内容应在1500字以内！');</script>");
                return -1;
            }
            if (CommFun.StringCounter(tbx2_3.Text) > 800)
            {
                Response.Write("<script>alert('预期价值应在800字以内！');</script>");
                return -1;
            }
            str_sql = " update t_teacher set bg_1='" + tbx2_1.Text + "' , bg_2 = '" + tbx2_2.Text + "' , bg_3 = '" + tbx2_3.Text + "' , bg_4 = '" + tbx2_4.Text + "'" +
                      " where jsh = '" + Session["jsh"].ToString() + "'";
        }
        else if (Table3.Visible)
        {
            //if (tbx3_hjxm.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from t_ktqk where jsh = '" + Session["jsh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 3))
                {
                    Response.Write("<script>alert('最多只能增加 3 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_ktqk where jsh = '" + Session["jsh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_ktqk (id,xmmc,xmbh,xmjb,sfjt,zccy,jsh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, tbx3_xmmc.Text, tbx3_xmbh.Text, tbx3_xmjb.Text, ddlist3_sfjt.SelectedValue, ddlist3_zccy.SelectedValue, Session["jsh"].ToString());
            }
            else
            {
                str_sql = string.Format("update t_ktqk set xmmc='{0}',xmbh='{1}',xmjb='{2}',sfjt='{3}',zccy='{4}' where jsh='{5}' and id={6} ",
                         tbx3_xmmc.Text, tbx3_xmbh.Text, tbx3_xmjb.Text, ddlist3_sfjt.SelectedValue, ddlist3_zccy.SelectedValue, Session["jsh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table4.Visible)
        {
            //if (Convert.ToInt16(ddlist4_zrs.SelectedValue) < Convert.ToInt16(ddlist4_brpm.SelectedValue))
            //{
            //    Response.Write("<script>alert('本人排名应小于等于总人数！');</script>");
            //    return -1;
            //}
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from t_kycg where jsh = '" + Session["jsh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 3))
                {
                    Response.Write("<script>alert('最多只能增加 3 项！');</script>");
                    return -1;
                }

                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_kycg where jsh = '" + Session["jsh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_kycg (id,lwmc,fbbk,brpm,jsh,zrs) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}');",
                         int_maxbm, tbx4_lwmc.Text, tbx4_fbbk.Text, ddlist4_brpm.SelectedValue, Session["jsh"].ToString(), ddlist4_zrs.SelectedValue);
            }
            else
            {
                str_sql = string.Format("update t_kycg set lwmc='{0}',fbbk='{1}',brpm='{2}',zrs='{5}' where jsh='{3}' and id={4} ",
                         tbx4_lwmc.Text, tbx4_fbbk.Text, ddlist4_brpm.SelectedValue, Session["jsh"].ToString(), Convert.ToInt16(lbl_id.Text), ddlist4_zrs.SelectedValue);
            }
        }
        else if (Table5.Visible)
        {
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from t_cyqk where jsh = '" + Session["jsh"].ToString() + "' and xm ='" + tbx5_xm.Text.Trim() + "'";
                if (CommFun.JudgeRowCount(str_sql, 1))
                {
                    Response.Write("<script>alert('" + tbx5_xm.Text.Trim() + " 已经是该项目成员！');</script>");
                    return -1;
                }
                //str_sql = "select status_sb from t_teacher where jsm = '" + tbx5_xm.Text.Trim() + "'";
                //if (Convert.ToBoolean(DBFun.ExecuteScalar(str_sql)))
                //{
                //    str_sql = "select count(*) from t_cyqk where xm = '" + tbx5_xm.Text.Trim() + "'";
                //    if (CommFun.JudgeRowCount(str_sql, 1))
                //    {
                //        Response.Write("<script>alert('" + tbx5_xm.Text.Trim() + " 已经参与了 2 个项目，不能再参与项目了！');</script>");
                //        return -1;
                //    }
                //}
                //str_sql = "select count(*) from t_cyqk where xm = '" + tbx5_xm.Text.Trim() + "'";
                //if (CommFun.JudgeRowCount(str_sql, 2))
                //{
                //    Response.Write("<script>alert('" + tbx5_xm.Text.Trim() + " 已经参与了 2 个项目，不能再参与项目了！');</script>");
                //    return -1;
                //}
                str_sql = "select count(*) from q_tj_list where xm= '" + tbx5_xm.Text.Trim() + "'";
                if (CommFun.JudgeRowCount(str_sql, 2))
                {
                    Response.Write("<script>alert('" + tbx5_xm.Text.Trim() + " 已经参与了 2 个项目，不能再参与项目了！');</script>");
                    return -1;
                }

                str_sql = "select count(*) from t_cyqk where jsh = '" + Session["jsh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加 5 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_cyqk where jsh = '" + Session["jsh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_cyqk (id,xm,zc,szbm,yjzc,fg,jsh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, tbx5_xm.Text, tbx5_zc.Text, ddlist5_szbm.SelectedValue, tbx5_yjzc.Text, tbx5_fg.Text, Session["jsh"].ToString());
            }
            else
            {
                str_sql = string.Format("update t_cyqk set xm='{0}',zc='{1}',szbm='{2}',yjzc='{3}',fg='{4}' where jsh='{5}' and id={6} ",
                         tbx5_xm.Text, tbx5_zc.Text, ddlist5_szbm.SelectedValue, tbx5_yjzc.Text, tbx5_fg.Text, Session["jsh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table6.Visible)
        {
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from t_tjyj where jsh = '" + Session["jsh"].ToString() + "' and xm ='" + tbx6_xm.Text.Trim() + "'";
                if (CommFun.JudgeRowCount(str_sql, 1))
                {
                    Response.Write("<script>alert('" + tbx6_xm.Text.Trim() + " 已经是推荐人，请选择其他人员！');</script>");
                    return -1;
                }
                str_sql = "select count(*) from t_tjyj where jsh = '" + Session["jsh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 2))
                {
                    Response.Write("<script>alert('最多只能增加 2 位推荐人！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_tjyj where jsh = '" + Session["jsh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_tjyj (id,xm,zc,szbm,tjyj,jsh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}');",
                         int_maxbm, tbx6_xm.Text, tbx6_zc.Text, ddlist6_szbm.SelectedValue, tbx6_tjyj.Text, Session["jsh"].ToString());
            }
            else
            {
                str_sql = string.Format("update t_tjtj set xm='{0}',zc='{1}',szbm='{2}',tjyj='{3}' where jsh='{4}' and id={5} ",
                         tbx6_xm.Text, tbx6_zc.Text, ddlist6_szbm.SelectedValue, tbx6_tjyj.Text, Session["jsh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            if (Session["msg"].ToString() == "no")
            {
                Session["msg"] = "yes";
            }
            else
            {
                if (Table3.Visible || Table4.Visible || Table5.Visible || Table6.Visible)
                    Response.Write("<script>alert('添加成功！');</script>");
                else
                    Response.Write("<script>alert('保存成功！');</script>");
                //    Response.Write("<script>alert('保存成功，申报材料已填写完毕，如需修改请点击相应模块！');</script>");
            }
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
        string str_sql = string.Format("select not status_sb from t_teacher where jsh = '{0}'", Session["jsh"].ToString());
        string str_url = "#";
        if (Convert.ToBoolean(DBFun.ExecuteScalar(str_sql)))
        {
            Response.Write("<script>alert('您还未申报项目，不能提交！');location.href = '" + str_url + "';</script>");
            return;
        }
        str_sql = string.Format("update t_teacher set edit_flag = {0} where jsh = '{1}'",
                      false, Session["jsh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
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
        imgbtn_save.ImageUrl = "./img/save.gif";
        if (Table3.Visible)
        {
            dv = (DataView)Session["t_ktqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx3_xmmc.Focus();
            tbx3_xmmc.Text = dv.Table.Rows[RowIndex]["xmmc"].ToString();
            tbx3_xmbh.Text = dv.Table.Rows[RowIndex]["xmbh"].ToString();
            tbx3_xmjb.Text = dv.Table.Rows[RowIndex]["xmjb"].ToString();
            try { ddlist3_zccy.SelectedValue = dv.Table.Rows[RowIndex]["zccy"].ToString(); }
            catch { }
            try { ddlist3_sfjt.SelectedValue = dv.Table.Rows[RowIndex]["sfjt"].ToString(); }
            catch { }

        }
        else if (Table4.Visible)
        {
            dv = (DataView)Session["t_kycg"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx4_lwmc.Focus();
            tbx4_lwmc.Text = dv.Table.Rows[RowIndex]["lwmc"].ToString();
            tbx4_fbbk.Text = dv.Table.Rows[RowIndex]["fbbk"].ToString();
            try { ddlist4_brpm.SelectedValue = dv.Table.Rows[RowIndex]["brpm"].ToString(); }
            catch { }
            try { ddlist4_zrs.SelectedValue = dv.Table.Rows[RowIndex]["zrs"].ToString(); }
            catch { }
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["t_cyqk"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx5_xm.Focus();
            tbx5_xm.Text = dv.Table.Rows[RowIndex]["xm"].ToString();
            tbx5_zc.Text = dv.Table.Rows[RowIndex]["zc"].ToString();
            tbx5_yjzc.Text = dv.Table.Rows[RowIndex]["yjzc"].ToString();
            tbx5_fg.Text = dv.Table.Rows[RowIndex]["fg"].ToString();
            try { ddlist5_szbm.SelectedValue = dv.Table.Rows[RowIndex]["szbm"].ToString(); }
            catch { }
        }
        else if (Table6.Visible)
        {
            dv = (DataView)Session["t_tjyj"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx6_xm.Focus();
            tbx6_xm.Text = dv.Table.Rows[RowIndex]["xm"].ToString();
            tbx6_zc.Text = dv.Table.Rows[RowIndex]["zc"].ToString();
            tbx6_tjyj.Text = dv.Table.Rows[RowIndex]["tjyj"].ToString();
            try { ddlist6_szbm.SelectedValue = dv.Table.Rows[RowIndex]["szbm"].ToString(); }
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
            dv = (DataView)Session["t_ktqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_ktqk where id = " + str_id + " and jsh ='" + Session["jsh"].ToString() + "'";
        }
        else if (Table4.Visible)
        {
            dv = (DataView)Session["t_kycg"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_kycg where id = " + str_id + " and jsh ='" + Session["jsh"].ToString() + "'";
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["t_cyqk"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_cyqk where id = " + str_id + " and jsh ='" + Session["jsh"].ToString() + "'";
        }
        else if (Table6.Visible)
        {
            dv = (DataView)Session["t_tjyj"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_tjyj where id = " + str_id + " and jsh ='" + Session["jsh"].ToString() + "'";
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
        //txt_bysj.Value = txt_bysj.Value.Substring(0, 7);
    }
    protected void lbtn_dyyl_Click(object sender, EventArgs e)
    {
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("./templete/jy.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_1(doc, Session["jsh"].ToString());
        doc.Save(Server.MapPath("./exporttopdf/") + Session["jsm"].ToString() + Session["jsh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/" + Session["jsm"].ToString() + Session["jsh"].ToString() + ".doc");

        //doc.Save(Server.MapPath("./exporttopdf/") + Session["sfzh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        //Response.Redirect("./exporttopdf/default.aspx?sfzh=" + Session["jsh"].ToString());
    }
    protected void tbx5_xm_TextChanged(object sender, EventArgs e)
    {
        string str_sql = "select dept,zc,yjzc from t_teacher where jsm= '" + tbx5_xm.Text + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null)
        {
            tbx5_zc.Text = "";
            tbx5_yjzc.Text = "";
            ddlist5_szbm.SelectedIndex = 0;
        }
        else
        {
            tbx5_zc.Text = dr["zc"].ToString();
            tbx5_yjzc.Text = dr["yjzc"].ToString();
            ddlist5_szbm.SelectedValue = dr["dept"].ToString();
        }
    }

    protected void tbx6_xm_TextChanged(object sender, EventArgs e)
    {
        string str_sql = "select dept,zc,yjzc from t_teacher where jsm= '" + tbx6_xm.Text + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null)
        {
            tbx6_zc.Text = "";
            ddlist6_szbm.SelectedIndex = 0;
        }
        else
        {
            tbx6_zc.Text = dr["zc"].ToString();
            ddlist6_szbm.SelectedValue = dr["dept"].ToString();
        }
    }
}