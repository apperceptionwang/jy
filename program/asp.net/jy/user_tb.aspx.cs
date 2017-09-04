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
using System.Data.OleDb;
using System.Drawing;

public partial class user : System.Web.UI.Page
{
    private DataView dv = new DataView();
    string str_sql;

    #region 页面加载
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["jsh"] = "2006030";
        //Session["jsm"] = "史磊";
        if (Session["jsh"] == null)
        {
            Response.Redirect("./SessionTimeOut.aspx?type=top");
        }
        //设置页面的所有控件为只读，不可用
        //foreach (Control ct in Page.Form.Controls)
        //{
        //    if (ct is TextBox)
        //    {
        //        TextBox tb = (TextBox)ct;
        //        tb.Enabled = false;
        //    }
        //    else if (ct is DropDownList)
        //    {

        //        DropDownList ddl = (DropDownList)ct;
        //        ddl.Enabled = false;
        //    }
        //}
        if (!IsPostBack)
        {
            try
            {
                lbl_type.Text = Request.QueryString["type"].ToLower();
            }
            catch { }
            //如果是查看模式，则不显示操作按钮
            if (lbl_type.Text == "view")
            {
                lbtn_PassWord.Visible = false;
                lbtn_dyyl.Visible = false;
                lbtn_commit.Visible = false;
                lbtn_quit.Visible = false;

                imgbtn_save.Visible = false;
                imgbtn_SaveNext.Visible = false;
                imgbtn_quit.Visible = false;
            }
            else
            {
                str_sql = "select Status from t_teacher_list where appNo = '" + Session["appNo"].ToString() + "'";
                string str_qry1 = " exec Q_Para_qzrq 1";
                if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) == 1 && Convert.ToInt16(DBFun.ExecuteScalar(str_qry1)) == 1)
                {
                    lbl_jsm.Text = Session["jsm"].ToString() + "，已登陆";
                }
                else
                {
                    lbl_jsm.Text = Session["jsm"].ToString() + "，已提交或截止日期已到";
                    imgbtn_save.Visible = false;
                    imgbtn_SaveNext.Visible = false;
                    lbtn_commit.Enabled = false;
                }
            }
            Session["msg"] = "yes";
            
            //初始化申请部门
            str_sql = "SELECT name,name from t_dict where flm=13 order by bm;";
            DBFun.FillDwList(ddlist_sqbm, str_sql);
            //初始化所在部门
            str_sql = "SELECT name,name from t_dict where flm=1 order by bm;";
            DBFun.FillDwList(ddlist_szbm, str_sql);
            //初始化职称
            str_sql = "SELECT name,name from Q_dict_flm12;";
            DBFun.FillDwList(ddlist_zclb, str_sql);
            ViewState["CurrentNum"] = 1;
            SetStatus();
            this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");
            this.lbtn_quit.Attributes.Add("onclick", "return   confirm   (\"退出后所有未保存的数据将会丢失，确定要退出吗？\");");
        }
    }
    #endregion

    #region 保存 保存下一步 安全退出 首页 翻页
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
        SetStatusNext();
    }

    protected void imgbtn_quit_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("./SessionTimeOut.aspx?type=topnomsg");
    }
    protected void lbtn_quit_Click(object sender, EventArgs e)
    {
        Response.Redirect("./SessionTimeOut.aspx?type=topnomsg");
    }
    protected void lbtn_1_Click(object sender, EventArgs e)
    {
        ViewState["CurrentNum"] = 1;
        SetStatus();
    }
    protected void lbtn_2_Click(object sender, EventArgs e)
    {
        ViewState["CurrentNum"] = 2;
        SetStatus();
    }
    protected void lbtn_3_Click(object sender, EventArgs e)
    {
        ViewState["CurrentNum"] = 3;
        SetStatus();
    }
    protected void lbtn_4_Click(object sender, EventArgs e)
    {
        ViewState["CurrentNum"] = 4;
        SetStatus();
    }
    protected void lbtn_5_Click(object sender, EventArgs e)
    {
        ViewState["CurrentNum"] = 5;
        SetStatus();
    }
    protected void lbtn_6_Click(object sender, EventArgs e)
    {
        ViewState["CurrentNum"] = 6;
        SetStatus();
    }
    #endregion

    #region 设置表格是否可见
    private void SetStatus()
    {
        HtmlTable tbl;
        LinkButton lbtn;
        int i_num = Convert.ToInt16(ViewState["CurrentNum"]);
        for (int i = 1; i <= 6; i++)
        {
            tbl = (HtmlTable)FindControl("Table" + i.ToString());
            lbtn = (LinkButton)FindControl("lbtn_" + i.ToString());
            tbl.Visible = (i == i_num);
            if (i == i_num)
            {
                lbtn.ForeColor = Color.Blue;
            }
            else
            {
                lbtn.ForeColor = Color.Black;
            }
        }
        bindData();
    }
    #endregion

    #region 设置下一个表格可见
    private void SetStatusNext()
    {
        int i_num = Convert.ToInt16(ViewState["CurrentNum"]);
        if (i_num < 6)
        {
            i_num++;
        }
        else
        {
            i_num = 1;
        }
        ViewState["CurrentNum"] = i_num;
        SetStatus();
        
    }
    #endregion

    #region 数据绑定
    private void bindData()
    {
        lbl_id.Text = "";
        if (Table1.Visible)
        {
            imgbtn_save.ImageUrl = "./img/save.gif";
            //str_qry = "select * from t_teacher_list where appyear=year(date()) and jsh =  '" + Session["jsh"].ToString() + "' ;";
            str_sql = "EXEC Q_Para_Teacher_List_By_sbh '" + Session["appNo"].ToString() + "'";
            //根据申请状态判断提交按钮状态
            DataRow dr = DBFun.GetDataRow(str_sql);
            //lbtn_commit.Enabled = Convert.ToBoolean(dr["edit_flag"]);
            try
            {
                try
                {
                    ddlist_zzlb.SelectedValue = dr["zzlb"].ToString();      //类别
                }
                catch
                {
                    ddlist_zzlb.SelectedIndex = 0;
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
                try
                {
                    ddlist_zclb.SelectedValue = dr["zclb"].ToString();      //类别
                }
                catch
                {
                    ddlist_zclb.SelectedIndex = 0;
                }
                try
                {
                    str_sql = "exec Q_Para_T_dict_By_name '" + ddlist_zclb.SelectedValue + "'";
                    DBFun.FillDwList(ddlist_zc, str_sql);
                    ddlist_zc.SelectedValue = dr["zc"].ToString();      //类别
                }
                catch
                {
                    ddlist_zc.SelectedIndex = 0;
                } 
                try
                {
                    ddlist_zw.SelectedValue = dr["zw"].ToString();      //类别
                }
                catch
                {
                    ddlist_zw.SelectedIndex = 0;
                }
                try
                {
                    ddlist_xw.SelectedValue = dr["xw"].ToString();      //类别
                }
                catch
                {
                    ddlist_xw.SelectedIndex = 0;
                }
                try
                {
                    ddlist_yjnx.SelectedValue = dr["yjnx"].ToString();      //类别
                }
                catch
                {
                    ddlist_yjnx.SelectedIndex = 0;
                }
                try
                {
                    ddlist_szbm.SelectedValue = dr["szbm"].ToString();      //类别
                }
                catch
                {
                    ddlist_szbm.SelectedIndex = 0;
                }

                if (dr["sqbm"].ToString() == "")
                {
                    ddlist_sqbm.SelectedIndex = 0;
                }

                tbx_xmmc.Text = dr["ktmc"].ToString();                  //专家代码
                tbx_xmfzr.Text = dr["sqr"].ToString();                  //专家代码
                //tbx_szbm.Text = dr["szbm"].ToString();                  //专家代码
                tbx_lxdh.Text = dr["lxdh"].ToString();                  //专家标识
                tbx_dzyx.Text = dr["email"].ToString();                 //专家标识
                txt_sqrq.Value = string.Format("{0:yyyy-MM-dd}", (dr["sqrq"]));                 //姓名
                tbx_zyfx.Text = dr["zyfx"].ToString();

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
                tbx_clje.Text = dr["xmjf_clje"].ToString();                  //专家代码
                tbx_clyj.Text = dr["xmjf_clyj"].ToString();                  //专家代码
                tbx_qtje.Text = dr["xmjf_qtje"].ToString();                  //专家代码
                tbx_qtyj.Text = dr["xmjf_qtyj"].ToString();                  //专家代码
                lbl_xmjf.Text = dr["xmjf"].ToString();                       //项目经费
            }
            catch { }
        }
        else if (Table2.Visible)
        {
            imgbtn_save.ImageUrl = "./img/save.gif";
            //str_qry = "SELECT * from t_teacher_list where appyear=year(date()) and jsh = '" + Session["jsh"].ToString() + "' ;";
            str_sql = "EXEC Q_Para_Teacher_List_By_sbh '" + Session["appNo"].ToString() + "'";

            DataRow dr = DBFun.GetDataRow(str_sql);
            tbx2_1.Text = dr["lxyjmb_1"].ToString();
            tbx2_2.Text = dr["lxyjmb_2"].ToString();
            tbx2_3.Text = dr["lxyjmb_3"].ToString();
            tbx2_4.Text = dr["lxyjmb_4"].ToString();
            tbx2_5.Text = dr["lxyjmb_5"].ToString();
        }
        //教学工作经历
        else if (Table3.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_sql = "SELECT * from t_jxgzjl where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc  ;";
            DBFun.FillGridView(str_sql, gv3, true);
            ViewState["sql3"] = str_sql;
            //第一行上移不可用，最后一行下移不可用
            if (gv3.Rows.Count != 0)
            {
                ((LinkButton)gv3.Rows[0].Cells[6].Controls[1]).Enabled = false;
                ((LinkButton)gv3.Rows[gv3.Rows.Count - 1].Cells[6].Controls[3]).Enabled = false;
            }
            tbx3_rksj.Focus();
            tbx3_rksj.Text = "";
            tbx3_kcmc.Text = "";
            tbx3_skdx.Text = "";
            tbx3_xs.Text = "";
            tbx3_szdw.Text = "";
        }
        //主要教学改革和科学研究工作简历
        else if (Table4.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_sql = "SELECT * from t_jgkyjl where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc ;";
            DBFun.FillGridView(str_sql, gv4, true);
            ViewState["sql4"] = str_sql;
            //第一行上移不可用，最后一行下移不可用
            if (gv4.Rows.Count != 0)
            {
                ((LinkButton)gv4.Rows[0].Cells[5].Controls[1]).Enabled = false;
                ((LinkButton)gv4.Rows[gv4.Rows.Count - 1].Cells[5].Controls[3]).Enabled = false;
            }
            tbx4_qzsj.Focus();
            tbx4_qzsj.Text = "";
            tbx4_xmmc.Text = "";
            tbx4_lxdw.Text = "";
            tbx4_hjqk.Text = "";
        }
        //课题组成员情况
        else if (Table5.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_sql = "SELECT * from t_cyqk where appNo = '" + Session["appNo"].ToString() + "' order by orderid asc ;";
            DBFun.FillGridView(str_sql, gv5, true);
            ViewState["sql5"] = str_sql;
            //第一行上移不可用，最后一行下移不可用
            if (gv5.Rows.Count != 0)
            {
                ((LinkButton)gv5.Rows[0].Cells[6].Controls[1]).Enabled = false;
                ((LinkButton)gv5.Rows[gv5.Rows.Count - 1].Cells[6].Controls[3]).Enabled = false;
            }
            tbx5_jsh.Focus();
            tbx5_jsh.Text = "";
            tbx5_xm.Text = "";
            tbx5_zc.Text = "";
            tbx5_zy.Text = "";
            ddlist5_xw.SelectedIndex = 0;
            tbx5_fg.Text = "";
        }
        else if (Table6.Visible)
        {
            imgbtn_save.ImageUrl = "./img/save.gif";
            str_sql = "EXEC Q_Para_Teacher_List_By_sbh '" + Session["appNo"].ToString() + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            tbx6_1.Text = dr["yjffjj_1"].ToString();
            tbx6_2.Text = dr["yjffjj_2"].ToString();
        }
    }
    #endregion

    #region 保存
    protected int Save()
    {
        //lbl_id.Text = "";
        if (Table1.Visible)
        {
            str_sql = " update t_teacher_list set " +
                      " zzlb='" + ddlist_zzlb.SelectedValue + "'," +//资助类别
                      " xmlb='" + ddlist_lb.SelectedValue + "'," +//项目类别
                      " ktmc='" + tbx_xmmc.Text + "'," +//项目名称
                      " szbm='" + ddlist_szbm.SelectedValue + "'," +//所在部门
                      " lxdh='" + tbx_lxdh.Text + "'," +//联系电话
                      " email='" + tbx_dzyx.Text + "'," +//联系电话
                      " sqrq='" + txt_sqrq.Value + "'," +//填表日期
                      " sqbm='" + ddlist_sqbm.SelectedValue + "', " +//申请部门
                      " zclb='" + ddlist_zclb.SelectedValue + "', " +//职称类别
                      " zc='" + ddlist_zc.SelectedValue + "', " +//职称
                      " zw='" + ddlist_zw.SelectedValue + "', " +//职务
                      " zyfx='" + tbx_zyfx.Text + "'," +//专业方向
                      " xw='" + ddlist_xw.SelectedValue + "', " +//学位
                      " yjnx=" + ddlist_yjnx.SelectedValue + ", " +//研究年限
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
                      " xmjf_clje=" + tbx_clje.Text + ", " +
                      " xmjf_clyj='" + tbx_clyj.Text + "', " +
                      " xmjf_qtje=" + tbx_qtje.Text + ", " +
                      " xmjf_qtyj='" + tbx_qtyj.Text + "', " +
                      " xmjf='" + lbl_xmjf.Text + "' " +
                      " where appNo = '" + Session["appNo"].ToString() + "'";
        }
        else if (Table2.Visible)
        {
            //string ls_content = tbx2_1.Text;
            //string ls_content = ftb2_1.HtmlStrippedText;

            //if (CommFun.StringCounter(tbx2_1.Text) > 1500)
            //{
            //    Response.Write("<script>alert('选题应在1500字以内！');</script>");
            //    return -1;
            //}
            //if (CommFun.StringCounter(tbx2_2.Text) > 1500)
            //{
            //    Response.Write("<script>alert('内容应在1500字以内！');</script>");
            //    return -1;
            //}
            //if (CommFun.StringCounter(tbx2_3.Text) > 800)
            //{
            //    Response.Write("<script>alert('预期价值应在800字以内！');</script>");
            //    return -1;
            //}
            str_sql = " update t_teacher_list set lxyjmb_1='" + tbx2_1.Text + "' , lxyjmb_2 = '" + tbx2_2.Text + "' , lxyjmb_3 = '" + tbx2_3.Text + "' , lxyjmb_4 = '" + tbx2_4.Text + "' , lxyjmb_5 = '" + tbx2_5.Text + "'" +
                      " where appNo = '" + Session["appNo"].ToString() + "'";
        }
        else if (Table3.Visible)
        {
            if (lbl_id.Text == "")
            {
                if (tbx3_rksj.Text == "") return 1;
                str_sql = "select count(*) from t_jxgzjl where appNo = '" + Session["appNo"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加 5 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_jxgzjl where appNo = '" + Session["appNo"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_jxgzjl (id,rksj,kcmc,skdx,xs,szdw,appNo,orderid) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}',{0});",
                         int_maxbm, tbx3_rksj.Text, tbx3_kcmc.Text, tbx3_skdx.Text, tbx3_xs.Text, tbx3_szdw.Text, Session["appNo"].ToString());
            }
            else
            {
                str_sql = string.Format("update t_jxgzjl set rksj='{0}',kcmc='{1}',skdx='{2}',xs='{3}',szdw='{4}' where appNo='{5}' and id={6} ",
                         tbx3_rksj.Text, tbx3_kcmc.Text, tbx3_skdx.Text, tbx3_xs.Text, tbx3_szdw.Text, Session["appNo"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table4.Visible)
        {
            //if (Convert.ToInt16(ddlist4_zrs.SelectedValue) < Convert.ToInt16(ddlist4_brpm.SelectedValue))
            //{
            //    Response.Write("<script>alert('本人排名应小于等于总人数！');</script>");
            //    return -1;
            //}
            if (tbx4_qzsj.Text == "") return 1;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from t_jgkyjl where appNo = '" + Session["appNo"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加 5 项！');</script>");
                    return -1;
                }

                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_jgkyjl where appNo = '" + Session["appNo"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_jgkyjl (id,qzsj,xmmc,lxdw,appNo,hjqk,orderid) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}',{0});",
                         int_maxbm, tbx4_qzsj.Text, tbx4_xmmc.Text, tbx4_lxdw.Text, Session["appNo"].ToString(), tbx4_hjqk.Text, int_maxbm);
            }
            else
            {
                str_sql = string.Format("update t_jgkyjl set qzsj='{0}',xmmc='{1}',lxdw='{2}',hjqk='{5}' where appNo='{3}' and id={4} ",
                         tbx4_qzsj.Text, tbx4_xmmc.Text, tbx4_lxdw.Text, Session["appNo"].ToString(), Convert.ToInt16(lbl_id.Text), tbx4_hjqk.Text);
            }
        }
        else if (Table5.Visible)
        {
            if (lbl_id.Text == "")
            {
                
                if (tbx5_xm.Text == "") return 1;
                //判断新添加人员是否为申报人本人，本人不需要添加为成员
                if (tbx5_xm.Text == Session["jsm"].ToString())
                {
                    Response.Write("<script>alert('您是申报人，不需要添加为项目成员！');</script>");
                    return -1;
                }
                //判断新添加人员是否为该项目成员
                str_sql = "select count(*) from t_cyqk where appNo = '" + Session["appNo"].ToString() + "' and cyjsh ='" + tbx5_jsh.Text.Trim() + "'";
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
                str_sql = "select count(*) from q_tj_list where jsh= '" + tbx5_jsh.Text.Trim() + "'";
                if (CommFun.JudgeRowCount(str_sql, 2))
                {
                    Response.Write("<script>alert('" + tbx5_xm.Text.Trim() + " 已经参与了 2 个项目，不能再参与项目了！');</script>");
                    return -1;
                }

                str_sql = "select count(*) from t_cyqk where appNo = '" + Session["appNo"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加 5 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from t_cyqk where appNo = '" + Session["appNo"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into t_cyqk (id,xm,zc,xw,zy,fg,jsh,cyjsh,orderid,appNo) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}','{7}',{0},'{8}');",
                         int_maxbm, tbx5_xm.Text, tbx5_zc.Text, ddlist5_xw.SelectedValue, tbx5_zy.Text, tbx5_fg.Text, Session["jsh"].ToString(), tbx5_jsh.Text.Trim(), Session["appNo"].ToString());
            }
            else
            {
                str_sql = string.Format("update t_cyqk set xm='{0}',zc='{1}',xw='{2}',zy='{3}',fg='{4}',cyjsh='{7}' where appNo='{5}' and id={6} ",
                         tbx5_xm.Text, tbx5_zc.Text, ddlist5_xw.SelectedValue, tbx5_zy.Text, tbx5_fg.Text, Session["appNo"].ToString(), Convert.ToInt16(lbl_id.Text),tbx5_jsh.Text.Trim(),tbx5_jsh.Text.Trim());
            }
        }
        else if (Table6.Visible)
        {
            str_sql = " update t_teacher_list set yjffjj_1='" + tbx6_1.Text + "' , yjffjj_2 = '" + tbx6_2.Text + "'" +
                      " where appNo = '" + Session["appNo"].ToString() + "'";
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
    protected void lbtn_commit_Click(object sender, EventArgs e)
    {
        Commit();
    }
    protected void Commit()
    {
        //判断申报人职称，如果是初级职称不允许提交
        str_sql = "select zclb from t_teacher_list where appNo='" + Session["appNo"].ToString() + "'";
        string str_zclb = DBFun.ExecuteScalar(str_sql).ToString();
        if (str_zclb == "" || str_zclb == "初级")
        {
            Response.Write("<script>alert('初级职称不可以申报项目');</script>");
            return;
        }
        //判断申报人是否有未结题项目，如有未结题项目，不可申报
        str_sql = "select count(*) from t_teacher_list where left(appNo,4) < year(date()) and xmbh is not null and  "+
            " Status <(select url from t_dict where flm = 11 and bm = 9 ) and "+
            "Status >=(select url from t_dict where flm = 11 and bm = 5 ) and mid(appNo,5)='" + Session["jsh"].ToString() + "'";
        if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= 1)
        {
            lbl_cjxm.Text = "您有尚未结题的项目，不能再申请项目了！";
            Response.Write("<script>alert('" + lbl_cjxm.Text + "');</script>");
            return;
        }

        //判断申报人是否参加本年度项目,参加一项可以申报，参加两项不能申报
        string str_name = "";
        str_sql = " exec 查询教师参加项目列表 '" + Session["jsh"].ToString() + "'";
        DataTable dt = DBFun.dataTable(str_sql);
        DataTable dt1;
        if (dt != null)
        {
            if (dt.Rows.Count > 1)
            {
                str_name = "";
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    str_name += " [ " + dt.Rows[i]["sqr"].ToString() + " ] ";
                }
                lbl_cjxm.Text = "您已经参与了" + str_name + "的项目，不能再申请项目了！";
                Response.Write("<script>alert('" + lbl_cjxm.Text + "');</script>");
                return;
            }
        }
        ////判断项目组成员是否已申报项目
        //str_qry = " select jsm from t_teacher ,t_teacher_list where t_teacher.jsh = t_teacher_list.jsh and t_teacher.jsh in " +
        //          " (SELECT cyjsh AS num FROM t_cyqk WHERE jsh='" + Session["jsh"].ToString() +
        //          "' ) and t_teacher_list.edit_flag = false ";
        //dt = DBFun.dataTable(str_qry);
        //if (dt.Rows.Count >= 1)
        //{
        //    str_name = "";
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        str_name += " [ " + dt.Rows[i]["jsm"].ToString() + " ] ";
        //    }
        //    lbl_cjxm.Text = str_name + "已经申报项目，不能再参加您的项目了！";
        //    Response.Write("<script>alert('" + lbl_cjxm.Text + "');</script>");
        //    return;
        //}    

        ////判断项目组成员参加项目数是否大于2
        //str_sql = " select cyjsh,sqr,xmzt from t_cyqk a ,t_teacher_list b where a.cyjsh = b.jsh and a.appyear=year(date()) and b.appyear=year(date()) and a.jsh = '" + Session["jsh"].ToString() + "'";
        ////str_sql = " select cyjsh,jsm from t_cyqk a ,t_teacher b where a.cyjsh = b.jsh and left(a.appNo,4)=year(date()) and a.jsh = '" + Session["jsh"].ToString() + "'";
        
        //dt = DBFun.dataTable(str_sql);
        //if (dt != null)
        //{
        //    str_name = "";
        //    for (int i = 0; i < dt.Rows.Count; i++)
        //    {
        //        if (dt.Rows[i]["xmzt"].ToString() == "申报")
        //        {
        //            str_sql = " exec 查询教师参加项目数量 '" + dt.Rows[i]["cyjsh"].ToString() + "'";
        //        }
        //        else if (dt.Rows[i]["xmzt"].ToString() == "在研")
        //        {
        //            str_sql = " exec 立项后查询教师参加项目数量 '" + dt.Rows[i]["cyjsh"].ToString() + "'";
        //        }
        //        dt1 = DBFun.dataTable(str_sql);
        //        if (dt1 != null)
        //        {
        //            if (Convert.ToInt16(dt1.Rows[0]["num"]) > 2)
        //            {
        //                str_name += " [ " + dt.Rows[i]["sqr"].ToString() + " ] ";
        //            }
        //        }
        //    }
        //    if (str_name != "")
        //    {
        //        lbl_cjxm.Text = str_name + "已经参加了两个项目，不能再参加您的项目了！";
        //        Response.Write("<script>alert('" + lbl_cjxm.Text + "');</script>");
        //        return;
        //    }
        //}
        //判断所需字段是否填写内容
        str_sql = " select email,ktmc,sqr,sqbm,lxdh,sqrq,zyfx,lxyjmb_1,lxyjmb_2,lxyjmb_3,lxyjmb_4,lxyjmb_5,yjffjj_1,yjffjj_2 from t_teacher_list " +
                  " where appNo = '" + Session["appNo"].ToString() + "'";
        dt = DBFun.dataTable(str_sql);
        string str_BlankColumn;
        for (int i = 0; i < dt.Columns.Count; i++)
        {
            if (dt.Rows[0][i].ToString() == "")
            {
                //获取数据列描述信息
                str_BlankColumn = SqlBackObject.GetColumnDescription("t_teacher_list", dt.Columns[i].ColumnName);
                Response.Write("<script>alert('[" + str_BlankColumn + "] 数据尚未填写!');</script>");
                return;
            }
        }
        //提交项目成员信息
        CommitInfoxmcy();

        str_sql = "update t_teacher_list set Status = 2 where appNo = '" + Session["appNo"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Session.RemoveAll();
            Response.Write("<script>alert('提交成功！');location.href = 'default.aspx';</script>");
        }
        else
        {
            Response.Write("<script>alert('提交失败！');</script>");
        }
    }
    #endregion

    #region 写入项目成员信息
    protected void CommitInfoxmcy()
    {
        str_sql = "exec Q_Para_Cyqk_By_appNo '" + Session["appNo"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        if (dv == null || dv.Table.Rows.Count == 0) return;

        string str_xmcy = "";
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            str_xmcy += "," + dv.Table.Rows[i]["xm"].ToString();
        }
        str_sql = "update t_teacher_list set xmcy = '" + str_xmcy.Substring(1) + "' where appNo = '" + Session["appNo"].ToString() + "'";
        DBFun.ExecuteSql(str_sql);
    }
    #endregion

    #region 编辑
    protected void gv_RowEditing(object sender, GridViewEditEventArgs e)
    {
        GridViewEdit(e.NewEditIndex);
    }
    protected void GridViewEdit(int RowIndex)
    {
        imgbtn_save.ImageUrl = "./img/save.gif";
        if (Table3.Visible)
        {
            str_sql = ViewState["sql3"].ToString();
            dv = DBFun.GetDataView(str_sql);
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx3_rksj.Focus();
            tbx3_rksj.Text = dv.Table.Rows[RowIndex]["rksj"].ToString();
            tbx3_kcmc.Text = dv.Table.Rows[RowIndex]["kcmc"].ToString();
            tbx3_skdx.Text = dv.Table.Rows[RowIndex]["skdx"].ToString();
            tbx3_xs.Text = dv.Table.Rows[RowIndex]["xs"].ToString();
            tbx3_szdw.Text = dv.Table.Rows[RowIndex]["szdw"].ToString();
            //try { ddlist3_zccy.SelectedValue = dv.Table.Rows[RowIndex]["zccy"].ToString(); }
            //catch { }
            //try { ddlist3_sfjt.SelectedValue = dv.Table.Rows[RowIndex]["sfjt"].ToString(); }
            //catch { }

        }
        else if (Table4.Visible)
        {
            str_sql = ViewState["sql4"].ToString();
            dv = DBFun.GetDataView(str_sql);
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx4_qzsj.Focus();
            tbx4_qzsj.Text = dv.Table.Rows[RowIndex]["qzsj"].ToString();
            tbx4_xmmc.Text = dv.Table.Rows[RowIndex]["xmmc"].ToString();
            tbx4_lxdw.Text = dv.Table.Rows[RowIndex]["lxdw"].ToString();
            tbx4_hjqk.Text = dv.Table.Rows[RowIndex]["hjqk"].ToString();
        }
        else if (Table5.Visible)
        {
            str_sql = ViewState["sql5"].ToString();
            dv = DBFun.GetDataView(str_sql);
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx5_xm.Focus();
            tbx5_jsh.Text = dv.Table.Rows[RowIndex]["cyjsh"].ToString();
            tbx5_xm.Text = dv.Table.Rows[RowIndex]["xm"].ToString();
            tbx5_zc.Text = dv.Table.Rows[RowIndex]["zc"].ToString();
            tbx5_zy.Text = dv.Table.Rows[RowIndex]["zy"].ToString();
            tbx5_fg.Text = dv.Table.Rows[RowIndex]["fg"].ToString();
            try { ddlist5_xw.SelectedValue = dv.Table.Rows[RowIndex]["xw"].ToString(); }
            catch { }
        }
    }
    #endregion

    #region 删除
    protected void gv_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        //如果未提交，可以删除；如果已经提交，则不执行删除命令
        str_sql = "select Status from t_teacher_list where appNo = '" + Session["appNo"].ToString() + "'";
        if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) == 1)
            GridViewDeleteRow(e.RowIndex);
    }
    protected void GridViewDeleteRow(int RowIndex)
    {
        string str_id = "";
        if (Table3.Visible)
        {
            str_sql = ViewState["sql3"].ToString();
            dv = DBFun.GetDataView(str_sql);
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_jxgzjl where id = " + str_id + " and appNo ='" + Session["appNo"].ToString() + "'";
        }
        else if (Table4.Visible)
        {
            str_sql = ViewState["sql4"].ToString();
            dv = DBFun.GetDataView(str_sql);
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_jgkyjl where id = " + str_id + " and appNo ='" + Session["appNo"].ToString() + "'";
        }
        else if (Table5.Visible)
        {
            str_sql = ViewState["sql5"].ToString();
            dv = DBFun.GetDataView(str_sql);
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from t_cyqk where id = " + str_id + " and appNo ='" + Session["appNo"].ToString() + "'";
        }
        if (!DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除失败！');</script>");
            return;
        }
        bindData();
    }
    #endregion

    #region 打印预览
    protected void lbtn_dyyl_Click(object sender, EventArgs e)
    {
        string sourcefile;
        Document doc;

        sourcefile = Server.MapPath("./templete/jy.doc");
        doc = new Document(sourcefile); //载入模板 
        PrivateFun.SetInfoIntoWrod_jy(doc, Session["appNo"].ToString());
        doc.Save(Server.MapPath("./exporttopdf/") + Session["jsm"].ToString() + Session["jsh"].ToString() + ".doc", SaveFormat.Doc); //保存为doc，并打开
        Response.Redirect("./exporttopdf/" + Session["jsm"].ToString() + Session["jsh"].ToString() + ".doc");
    }
    #endregion

    #region 根据教师号，查询姓名、职称、专业
    protected void tbx5_jsh_TextChanged(object sender, EventArgs e)
    {
        str_sql = "select jsm,szbm,zc,yjzc from t_teacher where jsh= '" + tbx5_jsh.Text + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null)
        {
            tbx5_xm.Text = "";
            tbx5_zc.Text = "";
            tbx5_zy.Text = "";
            ddlist5_xw.SelectedIndex = 0;
        }
        else
        {
            tbx5_xm.Text = dr["jsm"].ToString();
            tbx5_zc.Text = dr["zc"].ToString();
            tbx5_zy.Text = dr["yjzc"].ToString();
        }
    }
    #endregion

    #region 根据职称类别检索职称
    protected void ddlist_zclb_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str_qry = "exec Q_Para_T_dict_By_name '" + ddlist_zclb.SelectedValue + "'";
        DBFun.FillDwList(ddlist_zc, str_qry);
    }
    #endregion

    #region 修改密码
    protected void lbtn_PassWord_Click(object sender, EventArgs e)
    {
        Response.Redirect("admin/PassWord.aspx");
    }
    #endregion

    #region GridView调整顺序
    protected void move(int i_RowNum, string str_Direct,string as_Sql)
    {
        OleDbDataAdapter OleAdp = DBFun.UpdateDataSet(as_Sql);
        DataSet Ds = new DataSet();
        OleAdp.Fill(Ds, "t1");
        if (i_RowNum >= 0 && i_RowNum < Ds.Tables[0].Rows.Count)
        {
            if (str_Direct.ToUpper() == "UP")
            {
                if (i_RowNum == 0)
                {
                    Response.Write("<script>alert('已经是第一行，不能再上移了！');</script>");
                    return;
                }
                Ds.Tables[0].Rows[i_RowNum]["orderID"] = i_RowNum;
                Ds.Tables[0].Rows[i_RowNum - 1]["orderID"] = i_RowNum + 1;
            }
            else
            {
                if (i_RowNum == Ds.Tables[0].Rows.Count - 1)
                {
                    Response.Write("<script>alert('已经是最后一行，不能再下移了！');</script>");
                    return;
                }
                Ds.Tables[0].Rows[i_RowNum]["orderID"] = i_RowNum + 2;
                Ds.Tables[0].Rows[i_RowNum + 1]["orderID"] = i_RowNum + 1;
            }
        }


        //Ds.AcceptChanges();
        OleDbCommandBuilder odcb = new OleDbCommandBuilder(OleAdp);
        Ds.Tables[0].GetChanges();
        int i_return = OleAdp.Update(Ds, "t1");
        Ds.Tables[0].AcceptChanges();
        //DataView dv = new DataView();
        //dv.Table = Ds.Tables[0];
        //dv.Sort = "orderid asc";
        //gv_jxgzjl.DataSource = dv;
        //gv_jxgzjl.DataBind();
        //if (i_return != 0)
        //    Response.Write("<script>alert('成功！');</script>");
        //else
        //    Response.Write("<script>alert('失败！');</script>");
        odcb.Dispose();
        OleAdp.Dispose();
        Ds.Dispose();
        bindData();
    }
    #endregion

    #region 上移
    protected void gv_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        if (Table3.Visible)
        {
            str_sql = "SELECT * from t_jxgzjl where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc";
        }
        else if (Table4.Visible)
        {
            str_sql = "SELECT * from t_jgkyjl where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc";
        }
        else if (Table5.Visible)
        {
            str_sql = "SELECT * from t_cyqk where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc";
        }
        move(e.RowIndex, "UP",str_sql);
    }
    #endregion

    #region 下移
    protected void gv_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        if (Table3.Visible)
        {
            str_sql = "SELECT * from t_jxgzjl where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc";
        }
        else if (Table4.Visible)
        {
            str_sql = "SELECT * from t_jgkyjl where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc";
        }
        else if (Table5.Visible)
        {
            str_sql = "SELECT * from t_cyqk where appNo = '" + Session["appNo"].ToString() + "'  order by orderid asc";
        }
        move(e.RowIndex, "DOWN", str_sql);
    }
    #endregion

    #region GvidView鼠标移动变色等属性
    protected void gv_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            ////下面三句代码实现的效果：单击第一行数据时 弹出js对话框 显示该行第一个单元格内的数据
            //string cellvalue = e.Row.Cells[0].Text;
            //string js = string.Format("alert(\"{0}\");", cellvalue);
            //e.Row.Attributes.Add("onclick", js);

            //下面两句代码是添加鼠标效果，当鼠标移动到行上时，变颜色 
            //加粗代码《,this.style.fontWeight='Bold'》
            e.Row.Attributes.Add("onmouseover", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='" + ConfigurationManager.AppSettings.Get("onmouseoverColor") + "';");
            //当鼠标离开的时候 将背景颜色还原的以前的颜色 
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=currentcolor,this.style.fontWeight='';");
            //鼠标悬停的行显示手型
            e.Row.Attributes["style"] = "Cursor:hand"; 
            ////鼠标点击当前行变色
            //e.Row.Attributes.Add("onclick", "currentcolor=this.style.backgroundColor;this.style.backgroundColor='#B0E0E6'");

            ////给删除按钮增加确认功能
            //if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            //{
            //    ((LinkButton)e.Row.Cells[6].Controls[3]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除:\"" + e.Row.Cells[1].Text + "\"吗?')");
            //}
        }

        ////显示行号
        //if (e.Row.RowIndex != -1)
        //{
        //    int id = e.Row.RowIndex + 1 + (AspNetPager1.CurrentPageIndex - 1) * AspNetPager1.PageSize;
        //    e.Row.Cells[0].Text = id.ToString();
        //}

        ////数据绑定
        //if (e.Row.RowType == DataControlRowType.DataRow || GridView1.EditIndex != -1)
        //{

        //    DataRowView dr = (System.Data.DataRowView)e.Row.DataItem;
        //    DropDownList dw_class_ed = (DropDownList)e.Row.FindControl("dw_class_ed");
        //    if (dw_class_ed != null)
        //    {
        //        DBFun.FillDwList(dw_class_ed, "select ID,caption From T_Class");
        //        dw_class_ed.Items.FindByValue(dr["film_classid"].ToString()).Selected = true;
        //    }
        //    DropDownList dw_Template_ed = (DropDownList)e.Row.FindControl("dw_Template_ed");
        //    if (dw_Template_ed != null)
        //    {
        //        dw_Template_ed.Items.FindByValue(dr["templateID"].ToString()).Selected = true;
        //    }
        //    DropDownList dw_isopen_ed = (DropDownList)e.Row.FindControl("dw_isopen_ed");
        //    if (dw_isopen_ed != null)
        //    {
        //        dw_isopen_ed.Items.FindByValue(dr["isopen"].ToString()).Selected = true;
        //    }
        //}

    }
    #endregion

    #region 计算项目经费总金额
    protected void tbx_xmjf_TextChanged(object sender, EventArgs e)
    {

        int i_xmjf;
        try
        {
            i_xmjf = Convert.ToInt16(tbx_tsje.Text) +
                     Convert.ToInt16(tbx_bmje.Text) +
                     Convert.ToInt16(tbx_dyje.Text) +
                     Convert.ToInt16(tbx_wyje.Text) +
                     Convert.ToInt16(tbx_hyje.Text) +
                     Convert.ToInt16(tbx_clje.Text) +
                     Convert.ToInt16(tbx_qtje.Text);
        }
        catch
        {
            i_xmjf = 0;
        }
        lbl_xmjf.Text = i_xmjf.ToString();
    }
    #endregion
}