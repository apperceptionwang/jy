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
using System.IO;

public partial class lw_sb : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "111111111111111111";
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');</script>");
            Response.Redirect("admin/admin_login.aspx?type=lwcpry");
            return;
        }
        if (!IsPostBack)
        {
            SetStatus(Table1);
            Session["msg"] = "no";
            Save();
        }
        this.lbtn_commit.Attributes.Add("onclick", "return   confirm   (\"一旦提交就不可以在修改了，确定要提交吗？\");");
        this.btn_fj_del.Attributes.Add("onclick", "return   confirm   (\"确定要删除以上传附件？\");");
        
    }


    #region  保存 保存下一步 上报提交 安全退出 首页 翻页
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
        Response.Redirect("admin/admin_login.aspx?type=lwcpry");
    }
    protected void lbtn_quit_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Redirect("admin/admin_login.aspx?type=lwcpry");
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
    protected void lbtn_7_Click(object sender, EventArgs e)
    {
        SetStatus(Table7);
    }
    #endregion

    #region 设置表格是否可见
    private void SetStatus(HtmlTable tbl_visible)
    {
        //if ((Table1.Visible || Table3.Visible) && !Table1.Visible && !Table2.Visible && !Table4.Visible)
        //{
        //    Save();
        //}
        Table1.Visible = false;
        Table2.Visible = false;
        Table3.Visible = false;
        Table4.Visible = false;
        Table5.Visible = false;
        Table6.Visible = false;
        Table7.Visible = false;
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
        else if (Table6.Visible)
            tbl_visible = Table7;
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
            //民族
            str_qry = "、阿昌族、白族、保安族、布朗族、布依族、德昂族、东乡族、侗族、独龙族、俄罗斯族、鄂伦春族、鄂温克族、高山族、哈尼族、哈萨克族、赫哲族、回族、基诺族、京族、景颇族、柯尔克孜族、拉祜族、黎族、僳僳族、珞巴族、满族、毛南族、门巴族、蒙古族、苗族、仫佬族、纳西族、怒族、普米族、羌族、撒拉族、畲族、水族、塔吉克族、塔塔尔族、土族、土家族、佤族、维吾尔族、乌孜别克族、锡伯族、瑶族、彝族、朝鲜族、达斡尔族、傣族、仡佬族、裕固族、壮族、藏族、汉族";
            for (int i = 0; i < 56; i++)
            {
                ddlist_mz.Items.Add(str_qry.Substring(str_qry.LastIndexOf("、") + 1));
                str_qry = str_qry.Substring(0, str_qry.LastIndexOf("、"));
            }
            
             try
            {
                 //直属单位编码
                 str_qry = "SELECT url,name from t_dict where flm=11 ;";
                 DBFun.FillDwList(ddlist_tjdw, str_qry);
                 //一级学科编码
                 str_qry = "SELECT url,name from t_dict where flm=9 ;";
                 DBFun.FillDwList(ddlist_yjxkdm, str_qry);
                 
            }
            catch { }

            

//甘肃省地震局 and name in('地球物理研究所,地质研究所')
//湖北省地震局
//地震预测研究所
//工程力学研究所
//地壳应力研究所

            
            str_qry = "select * from yxxwlw_cpry where sfzh =  '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            try
            {
                rblist_cplb.SelectedValue = dr["cplb"].ToString();      //参评类别
                tbx_Name.Text = dr["yourname"].ToString();              //姓名
                ddlist_xb.SelectedValue = dr["xingbie"].ToString();     //性别
                txt_csny.Value = dr["birth"].ToString();                //出生年月
                ddlist_mz.SelectedValue = dr["mz"].ToString();          //民族
                ddlist_tjdw.SelectedValue = dr["tjdw"].ToString();      //推荐单位
                txt_rxny.Value = dr["rxny"].ToString();                 //入学年月
                txt_dbrq.Value = dr["lwdbrq"].ToString();               //论文答辩日期
                txt_hxwrq.Value = dr["xwhdrq"].ToString();              //获学位日期
                ddlist_yjxkdm.SelectedValue = dr["yjxk_dm"].ToString(); //一级学科代码
                //二级学科编码
                str_qry = "SELECT url,name from t_dict where flm= 10 and  url like '" + ddlist_yjxkdm.SelectedValue + "%'; ";
                DBFun.FillDwList(ddlist_ejxkdm, str_qry);

                ddlist_ejxkdm.SelectedValue = dr["ejxk_dm"].ToString(); //二级学科代码
                cbx_zsxkzy.Checked = Convert.ToBoolean(dr["sfzsxkzy"]); //是否自设学科专业
                tbx_zsxkzy.Visible = cbx_zsxkzy.Checked;
                tbx_zsxkzy.Text = dr["zsxkzy"].ToString();              //自设学科专业
                tbx_ctitle.Text = dr["lw_ctitle"].ToString();           //论文题目
                tbx_etitle.Text = dr["lw_etitle"].ToString();           //论文英文题目
                tbx_yjfx.Text = dr["lw_yjfx"].ToString();               //论文设计的研究方向
                ddlist_gdxwfs.SelectedValue = dr["gdxwfs"].ToString();  //攻读学位方式
            }
            catch { }
        }
        else if (Table2.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from yxxwlw_ll where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["yxxwlw_ll"] = DBFun.FillGridView(str_qry, gv_ll, true);

            tbx2_gzjl.Focus();
            tbx2_gzjl.Text = "";
            
        }
        else if (Table3.Visible)
        {
            imgbtn_save.ImageUrl = "./img/save.gif";
            str_qry = "SELECT lw_Cabstract,lw_Eabstract,lw_cxd,lw_fj_displayname from yxxwlw_cpry where sfzh = '" + Session["sfzh"].ToString() + "';";
            DataRow dr = DBFun.GetDataRow(str_qry);
            ftb3_1.Focus = true;
            try
            {
                ftb3_1.Text = dr["lw_Cabstract"].ToString();
                ftb3_2.Text = dr["lw_Eabstract"].ToString();
                ftb3_3.Text = dr["lw_cxd"].ToString();
                lbl_uploaded.Text = "已上传附件： “" + dr["lw_fj_displayname"].ToString()+"”";
            }
            catch { }
        }
        else if (Table4.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from yxxwlw_lw where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["yxxwlw_lw"] = DBFun.FillGridView(str_qry, gv_lw, true);

            tbx4_tm.Focus();
            tbx4_tm.Text = "";
            tbx4_kwmc.Text = "";
            tbx4_kwqh.Text = "";
            txt4_fbsj.Value = "";
            tbx4_pm.Text = "";
            ddlist4_slqk.SelectedIndex = 0;
        }
        else if (Table5.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from yxxwlw_zz where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["yxxwlw_zz"] = DBFun.FillGridView(str_qry, gv_zz, true);

            tbx5_zzmc.Focus();
            tbx5_zzmc.Text = "";
            tbx5_cbs.Text = "";
            txt5_cbsj.Value = "";
            tbx5_pm.Text = "";
        }
        else if (Table6.Visible)
        {
            imgbtn_save.ImageUrl = "./img/add.gif";
            str_qry = "SELECT * from yxxwlw_cg where sfzh = '" + Session["sfzh"].ToString() + "' ;";
            Session["yxxwlw_cg"] = DBFun.FillGridView(str_qry, gv_cg, true);

            tbx6_cgmc.Focus();
            tbx6_cgmc.Text = "";
            tbx6_jlmc.Text = "";
            try
            {
                ddlist6_jldj.SelectedIndex = 0;
            }
            catch { }
            txt6_hjsj.Value = "";
            tbx6_pm.Text = "";
        }
        else if (Table7.Visible)
        {
            imgbtn_save.ImageUrl = "./img/save.gif";
            str_qry = "select * from yxxwlw_cpry where sfzh =  '" + Session["sfzh"].ToString() + "' ;";
            DataRow dr = DBFun.GetDataRow(str_qry);
            try
            {
                tbx7_zdjs_xm.Text = dr["zdjs_xm"].ToString();                           //指导教师姓名
                txt7_zdjs_csny.Value = dr["zdjs_csny"].ToString();                      //出生年月
                ddlist7_zdjs_xingbie.SelectedValue = dr["zdjs_xingbie"].ToString();     //性别
                ddlist7_zdjs_zzxl.SelectedValue = dr["zdjs_zzxl"].ToString();           //最终学历
                ddlist7_zdjs_zgxw.SelectedValue = dr["zdjs_zgxw"].ToString();           //最高学位
                ddlist7_zdjs_sfys.SelectedValue = dr["zdjs_sfys"].ToString();           //是否院士
                Txt7_zdjs_srbdny.Value = dr["zdjs_srbdny"].ToString();                  //首任博导年月
                Txt7_zdjs_srsdny.Value = dr["zdjs_srsdny"].ToString();                  //首任硕导年月
                tbx7_zdjs_yjfx.Text = dr["zdjs_yjfx"].ToString();                       //研究方向
                tbx7_zdjs_dsdh.Text = dr["zdjs_dsdh"].ToString();                       //导师电话
                tbx7_zdjs_dsyx.Text = dr["zdjs_dsyx"].ToString();                       //导师邮箱

                if (dr["zdjs_xzrs"].ToString() == "0")
                    tbx7_zdjs_xzrs.Text = "";
                else
                    tbx7_zdjs_xzrs.Text = dr["zdjs_xzrs"].ToString();                   //协助指导的教师人数
                if (dr["zdjs_zdss"].ToString() == "0")
                    tbx7_zdjs_zdss.Text = "";
                else
                    tbx7_zdjs_zdss.Text = dr["zdjs_zdss"].ToString();                   //培养在读研究生数（含在职） 在读硕士
                if (dr["zdjs_zdbs"].ToString() == "0")
                    tbx7_zdjs_zdbs.Text = "";
                else
                    tbx7_zdjs_zdbs.Text = dr["zdjs_zdbs"].ToString();                   //在读博士
                if (dr["zdjs_byss"].ToString() == "0")
                    tbx7_zdjs_byss.Text = "";
                else
                    tbx7_zdjs_byss.Text = dr["zdjs_byss"].ToString();                   //培养已毕业研究生数 毕业硕士
                if (dr["zdjs_bybs"].ToString() == "0")
                    tbx7_zdjs_bybs.Text = "";
                else
                    tbx7_zdjs_bybs.Text = dr["zdjs_bybs"].ToString();                   //毕业博士
                
                tbx7_jzbd_gzdw.Text = dr["jzbd_gzdw"].ToString();                       //兼职博导工作单位名称
                tbx7_xrzw.Text = dr["xrzw"].ToString();                                 //现任职务

            }
            catch { }
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
            //判断入学日期 论文答辩日期 获学位日期 关系
            try
            {
                if (Convert.ToDateTime(txt_rxny.Value) > Convert.ToDateTime(txt_dbrq.Value) )                   
                {
                    Response.Write("<script>alert('入学日期应早于论文答辩日期！');</script>");
                    txt_rxny.Focus();
                    return 0;
                }
                else if (Convert.ToDateTime(txt_dbrq.Value) > Convert.ToDateTime(txt_hxwrq.Value))
                {
                    Response.Write("<script>alert('论文答辩日期应早于获得学位日期！');</script>");
                    txt_dbrq.Focus();
                    return 0;
                }
            }
            catch
            {
                if (txt_rxny.Value == "")
                {
                    Response.Write("<script>alert('入学日期 不能为空！');</script>");
                    txt_rxny.Focus();
                }
                else if (txt_dbrq.Value == "")
                {
                    Response.Write("<script>alert('论文答辩日期 不能为空！');</script>");
                    txt_dbrq.Focus();
                }
                else if (txt_hxwrq.Value == "")
                {
                    Response.Write("<script>alert('获得学位日期 不能为空！');</script>");
                    txt_hxwrq.Focus();
                }
                return 0;
            }


            str_sql = " update yxxwlw_cpry set cplb='" + rblist_cplb.SelectedValue + "'," +
                      " yourname='" + tbx_Name.Text + "'," +
                      " birth='" + txt_csny.Value + "'," +
                      " xingbie='" + ddlist_xb.SelectedValue + "'," +
                      " mz='" + ddlist_mz.SelectedValue + "', " +
                      //" tjdw='" + ddlist_tjdw.SelectedValue + "', " +
                      //" tjdw_mc='" + ddlist_tjdw.SelectedItem.Text + "', " +
                      " rxny='" + txt_rxny.Value + "', " +
                      " lwdbrq='" + txt_dbrq.Value + "', " +
                      " xwhdrq='" + txt_hxwrq.Value + "', " +
                      " yjxk_dm='" + ddlist_yjxkdm.SelectedValue + "'," +
                      " yjxk_mc='" + ddlist_yjxkdm.SelectedItem.Text + "', " +
                      " ejxk_dm='" + ddlist_ejxkdm.SelectedValue + "'," +
                      " ejxk_mc='" + ddlist_ejxkdm.SelectedItem.Text + "', " +
                      " sfzsxkzy=" + cbx_zsxkzy.Checked + ", " +
                      " zsxkzy='" + tbx_zsxkzy.Text + "', " +
                      " lw_ctitle='" + tbx_ctitle.Text + "', " +
                      " lw_etitle='" + tbx_etitle.Text + "', " +
                      " lw_yjfx='" + tbx_yjfx.Text + "'," +
                      " gdxwfs='" + ddlist_gdxwfs.SelectedValue + "'," +
                      " edit_rq='" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "' " +
                      " where sfzh = '" + Session["sfzh"].ToString() + "'";
          
        }
        else if (Table2.Visible)
        {
            if (tbx2_gzjl.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                try
                {
                    if (Convert.ToDateTime(Txt2_1.Value) > Convert.ToDateTime(Txt2_2.Value))
                    {
                        Response.Write("<script>alert('开始时间应早于结束时间！');</script>");
                        Txt2_2.Focus();
                        return 0;
                    }
                }
                catch
                {
                    Response.Write("<script>alert('起止时间不能为空！');</script>");
                    Txt2_1.Focus();
                    return 0;
                }
                tbx2_qzsj.Text = Txt2_1.Value + "～" + Txt2_2.Value;
                str_sql = "select count(*) from yxxwlw_ll where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加 5 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yxxwlw_ll where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into yxxwlw_ll (id,qzsj,jl,edit_rq,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}');",
                         int_maxbm, tbx2_qzsj.Text, tbx2_gzjl.Text, DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update yxxwlw_ll set qzsj='{0}',jl='{1}',edit_rq='{2}' where sfzh='{3}' and id={4} ",
                         tbx2_qzsj.Text, tbx2_gzjl.Text, DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table3.Visible)
        {
            string ls_content1 = ftb3_1.Text.Replace("'", "’");
            string ls_content2 = ftb3_2.Text.Replace("'", "’");
            string ls_content3 = ftb3_3.Text.Replace("'", "’");
            if (CommFun.StringCounter(ftb3_1.HtmlStrippedText) > 3000)
            {
                Response.Write("<script>alert('论文中文摘要 内容应在3000字以内！');</script>");
                return -1;
            }
            if (CommFun.StringCounter(ftb3_2.HtmlStrippedText) > 6000)
            {
                Response.Write("<script>alert('论文英文摘要 内容应在6000字以内！');</script>");
                return -1;
            }
            if (CommFun.StringCounter(ftb3_3.HtmlStrippedText) > 400)
            {
                Response.Write("<script>alert('学位论文的主要创新点 内容应在400字以内！');</script>");
                return -1;
            }
            str_sql = " update yxxwlw_cpry set lw_Cabstract='" + ls_content1 + "', " +
                      " lw_Eabstract = '" + ls_content2 + "', " +
                      " lw_cxd = '" + ls_content3 + "' " +
                      " where sfzh = '" + Session["sfzh"].ToString() + "'";
        }
        else if (Table4.Visible)
        {
            if (tbx4_tm.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from yxxwlw_lw where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 5))
                {
                    Response.Write("<script>alert('最多只能增加 5 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yxxwlw_lw where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into yxxwlw_lw (id,tm,kwmc,kwqh,fbsj,pm,slqk,edit_rq,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}','{8}');",
                         int_maxbm, tbx4_tm.Text, tbx4_kwmc.Text, tbx4_kwqh.Text, txt4_fbsj.Value, tbx4_pm.Text, 
                         ddlist4_slqk.SelectedValue, DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update yxxwlw_lw set tm='{0}',kwmc='{1}',kwqh='{2}',fbsj='{3}',pm='{4}',slqk='{5}',edit_rq = '{6}' where sfzh='{7}' and id={8} ",
                         tbx4_tm.Text, tbx4_kwmc.Text, tbx4_kwqh.Text, txt4_fbsj.Value, tbx4_pm.Text,
                         ddlist4_slqk.SelectedValue, DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table5.Visible)
        {
            if (tbx5_zzmc.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from yxxwlw_zz where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 3))
                {
                    Response.Write("<script>alert('最多只能增加 3 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yxxwlw_zz where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into yxxwlw_zz (id,zzmc,cbs,cbsj,pm,edit_rq,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}','{5}','{6}');",
                         int_maxbm, tbx5_zzmc.Text, tbx5_cbs.Text,txt5_cbsj.Value,tbx5_pm.Text,
                         DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update yxxwlw_zz set zzmc='{0}',cbs='{1}',cbsj='{2}',pm={3},edit_rq='{4}' where sfzh='{5}' and id={6} ",
                          tbx5_zzmc.Text, tbx5_cbs.Text, txt5_cbsj.Value, tbx5_pm.Text,
                          DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table6.Visible)
        {
            if (tbx6_cgmc.Text == "") return 0;
            if (lbl_id.Text == "")
            {
                str_sql = "select count(*) from yxxwlw_cg where sfzh = '" + Session["sfzh"].ToString() + "'";
                if (CommFun.JudgeRowCount(str_sql, 3))
                {
                    Response.Write("<script>alert('最多只能增加 3 项！');</script>");
                    return -1;
                }
                str_sql = "select iif(isnull(max(id)),1,max(id)+1) as maxid from yxxwlw_cg where sfzh = '" + Session["sfzh"].ToString() + "'";
                int int_maxbm = Convert.ToInt32(DBFun.ExecuteScalar(str_sql).ToString());
                str_sql = string.Format("insert into yxxwlw_cg (id,cgmc,jlmc,hjdj,hjsj,pm,edit_rq,sfzh) " +
                         " values({0},'{1}','{2}','{3}','{4}',{5},'{6}','{7}');",
                         int_maxbm, tbx6_cgmc.Text, tbx6_jlmc.Text, ddlist6_jldj.SelectedValue, txt6_hjsj.Value, tbx6_pm.Text,
                         DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString());
            }
            else
            {
                str_sql = string.Format("update yxxwlw_cg set cgmc='{0}',jlmc='{1}',hjdj='{2}',hjsj='{3}',pm={4},edit_rq='{5}' where sfzh='{6}' and id={7} ",
                         tbx6_cgmc.Text, tbx6_jlmc.Text, ddlist6_jldj.SelectedValue, txt6_hjsj.Value, tbx6_pm.Text,
                         DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"), Session["sfzh"].ToString(), Convert.ToInt16(lbl_id.Text));
            }
        }
        else if (Table7.Visible)
        {
            //判断首任博导时间与首任硕导时间关系
            try
            {
                if (Convert.ToDateTime(Txt7_zdjs_srsdny.Value) > Convert.ToDateTime(Txt7_zdjs_srbdny.Value))
                {
                    Response.Write("<script>alert('首任硕导年月应早于首任博导年月！');</script>");
                    Txt7_zdjs_srsdny.Focus();
                    return 0;
                }
            }
            catch
            {
                //if (Txt7_zdjs_srsdny.Value == "")
                //{
                //    Response.Write("<script>alert('首任硕导年月不能为空！');</script>");
                //    Txt7_zdjs_srsdny.Focus();
                //    return 0;
                //}
            }

            if (tbx7_zdjs_xzrs.Text == "") tbx7_zdjs_xzrs.Text = "0";
            if (tbx7_zdjs_zdss.Text == "") tbx7_zdjs_zdss.Text = "0";
            if (tbx7_zdjs_zdbs.Text == "") tbx7_zdjs_zdbs.Text = "0";
            if (tbx7_zdjs_byss.Text == "") tbx7_zdjs_byss.Text = "0";
            if (tbx7_zdjs_bybs.Text == "") tbx7_zdjs_bybs.Text = "0";

            str_sql = " update yxxwlw_cpry set zdjs_xm='" + tbx7_zdjs_xm.Text + "'," +
                      " zdjs_csny='" + txt7_zdjs_csny.Value + "'," +
                      " zdjs_xingbie='" + ddlist7_zdjs_xingbie.SelectedValue + "'," +
                      " zdjs_zzxl='" + ddlist7_zdjs_zzxl.SelectedValue + "'," +
                      " zdjs_zgxw='" + ddlist7_zdjs_zgxw.SelectedValue + "', " +
                      " zdjs_sfys=" + ddlist7_zdjs_sfys.SelectedValue + ", " +
                      " zdjs_srbdny='" + Txt7_zdjs_srbdny.Value + "', " +
                      " zdjs_srsdny='" + Txt7_zdjs_srsdny.Value + "', " +
                      " zdjs_yjfx='" + tbx7_zdjs_yjfx.Text + "', " +
                      " zdjs_dsdh='" + tbx7_zdjs_dsdh.Text + "'," +
                      " zdjs_dsyx='" + tbx7_zdjs_dsyx.Text + "', " +
                      " zdjs_xzrs=" + Convert.ToInt16(tbx7_zdjs_xzrs.Text) + ", " +
                      " zdjs_zdss=" + Convert.ToInt16(tbx7_zdjs_zdss.Text) + ", " +
                      " zdjs_zdbs=" + Convert.ToInt16(tbx7_zdjs_zdbs.Text) + ", " +
                      " zdjs_byss=" + Convert.ToInt16(tbx7_zdjs_byss.Text) + ", " +
                      " zdjs_bybs=" + Convert.ToInt16(tbx7_zdjs_bybs.Text) + ", " +
                      " jzbd_gzdw='" + tbx7_jzbd_gzdw.Text + "'," +
                      " xrzw='" + tbx7_xrzw.Text +"'," +
                      " edit_rq='" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "' " +
                      " where sfzh = '" + Session["sfzh"].ToString() + "'";

        }

        if (DBFun.ExecuteUpdate(str_sql))
        {
            if (Session["msg"].ToString() == "no")
            {
                Session["msg"] = "yes";
            }
            else
            {
                if (Table3.Visible || Table5.Visible)
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
        string str_sql = string.Format("update yxxwlw_cpry set edit_flag = {0} where sfzh = '{1}'",
                      false, Session["sfzh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
            string str_url = "PrintPreview_lw.aspx";
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
        if (Table2.Visible)
        {
            dv = (DataView)Session["yxxwlw_ll"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            Txt2_1.Focus();

            try { Txt2_1.Value = dv.Table.Rows[RowIndex]["qzsj"].ToString().Substring(0, dv.Table.Rows[RowIndex]["qzsj"].ToString().IndexOf("～")); }
            catch { }
            try { Txt2_2.Value = dv.Table.Rows[RowIndex]["qzsj"].ToString().Substring(dv.Table.Rows[RowIndex]["qzsj"].ToString().IndexOf("～") + 1); }
            catch { }
            tbx2_gzjl.Text = dv.Table.Rows[RowIndex]["jl"].ToString();

            imgbtn_save.ImageUrl = "./img/save.gif";
        }
        else if (Table4.Visible)
        {
            dv = (DataView)Session["yxxwlw_lw"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx4_tm.Focus();

            tbx4_tm.Text = dv.Table.Rows[RowIndex]["tm"].ToString();
            tbx4_kwmc.Text = dv.Table.Rows[RowIndex]["kwmc"].ToString();
            tbx4_kwqh.Text = dv.Table.Rows[RowIndex]["kwqh"].ToString();
            txt4_fbsj.Value =dv.Table.Rows[RowIndex]["fbsj"].ToString();
            tbx4_pm.Text = dv.Table.Rows[RowIndex]["pm"].ToString();
            ddlist4_slqk.SelectedValue = dv.Table.Rows[RowIndex]["slqk"].ToString();

            imgbtn_save.ImageUrl = "./img/save.gif";
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["yxxwlw_zz"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx5_zzmc.Focus();

            tbx5_zzmc.Text = dv.Table.Rows[RowIndex]["zzmc"].ToString();
            tbx5_cbs.Text = dv.Table.Rows[RowIndex]["cbs"].ToString();
            txt5_cbsj.Value = dv.Table.Rows[RowIndex]["cbsj"].ToString();
            tbx5_pm.Text = dv.Table.Rows[RowIndex]["pm"].ToString();

            imgbtn_save.ImageUrl = "./img/save.gif";
        }
        else if (Table6.Visible)
        {
            dv = (DataView)Session["yxxwlw_cg"];
            lbl_id.Text = dv.Table.Rows[RowIndex]["id"].ToString();
            tbx6_cgmc.Focus();
            try
            {
                tbx6_cgmc.Text = dv.Table.Rows[RowIndex]["cgmc"].ToString();
                tbx6_jlmc.Text = dv.Table.Rows[RowIndex]["jlmc"].ToString();
                ddlist6_jldj.SelectedValue = dv.Table.Rows[RowIndex]["hjdj"].ToString();
                txt6_hjsj.Value = dv.Table.Rows[RowIndex]["hjsj"].ToString();
                tbx6_pm.Text = dv.Table.Rows[RowIndex]["pm"].ToString();
            }
            catch { }
            imgbtn_save.ImageUrl = "./img/save.gif";
        }
    }
    #endregion

    #region 删除
    protected void GridViewDeleteRow(int RowIndex)
    {
        DataView dv;
        string str_sql = "", str_id = "";
        if (Table2.Visible)
        {
            dv = (DataView)Session["yxxwlw_ll"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from yxxwlw_ll where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table4.Visible)
        {
            dv = (DataView)Session["yxxwlw_lw"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from yxxwlw_lw where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table5.Visible)
        {
            dv = (DataView)Session["yxxwlw_zz"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from yxxwlw_zz where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
        }
        else if (Table6.Visible)
        {
            dv = (DataView)Session["yxxwlw_cg"];
            str_id = dv.Table.Rows[RowIndex]["id"].ToString();
            str_sql = "delete from yxxwlw_cg where id = " + str_id + " and sfzh ='" + Session["sfzh"].ToString() + "'";
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

    #region 上传文件
    public string UploadFile(FileUpload Fupload, string str_mulu, string str_maxid)
    {
        //文件上传
        string str_ParentFolder;
        string str_NewFileName, str_OriginalFileName;
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return ",";

            str_ParentFolder = Server.MapPath(".\\" + str_mulu + "\\");

            //创建文件夹
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "";
            }

            string extname;


            extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
            str_OriginalFileName = Fupload.FileName;
            str_NewFileName = str_maxid + "." + extname;
            //判断上传课件类型，大小
            string str_sql = "select url from t_dict where flm = 8 and bm in (4,5)";
            DataView dv = DBFun.dataView(str_sql);
            string str_UploadFileType = dv.Table.Rows[0]["url"].ToString();
            string str_UploadFileSize = dv.Table.Rows[1]["url"].ToString();
            if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
            {
                Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                return "";
            }
            if (Convert.ToDecimal(str_UploadFileSize) * Convert.ToDecimal(1024) < Fupload.PostedFile.ContentLength)
            {
                Response.Write("<script>alert('不允许上传超过 " + str_UploadFileSize + "KB的文件！');</script>");
                return "";
            }

            Fupload.PostedFile.SaveAs(str_ParentFolder + "\\" + str_NewFileName);
            Session["FilePath"] = str_ParentFolder + "\\" + str_NewFileName;
            Fupload.Dispose();
            return str_OriginalFileName + "," + str_NewFileName;
        }
        catch
        {
            File.Delete(Session["FilePath"].ToString());
            Response.Write("<script>alert('文件上传失败！');</script>");
            return "";
        }
    }
    #endregion

    //上传论文附件
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        string str_sql;
        string str_pra = UploadFile(fu10_2, "lw", Session["sfzh"].ToString());
        if (str_pra == "") return;

        if (str_pra == ",")
        {
            Response.Write("<script>alert('请选择要上传的附件！');</script>");
            return;
        }
        else
            str_sql = string.Format("update yxxwlw_cpry set lw_fj = '{0}',lw_fj_displayname = '{1}' where sfzh = '{2}'",
                str_pra.Substring(str_pra.IndexOf(",") + 1), str_pra.Substring(0, str_pra.IndexOf(",")), Session["sfzh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('附件上传成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('附件上传失败！');</script>");
        }
        bindData();
    }

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
        txt_rxny.Value = txt_rxny.Value.Substring(0, 7);
    }



    protected void cbx_zsxkzy_CheckedChanged(object sender, EventArgs e)
    {
        tbx_zsxkzy.Visible = cbx_zsxkzy.Checked;
        if (!cbx_zsxkzy.Checked)
            tbx_zsxkzy.Text = "";
    }
    protected void ddlist_yjxkdm_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str_qry = "SELECT url,name from t_dict where flm= 10 and  url like '"+ddlist_yjxkdm.SelectedValue+"%'; ";
        DBFun.FillDwList(ddlist_ejxkdm, str_qry);
    }

    //删除附件
    protected void btn_fj_del_Click(object sender, EventArgs e)
    {
        string str_sql = string.Format("update yxxwlw_cpry set lw_fj = '',lw_fj_displayname = '' where sfzh = '{0}'",
                Session["sfzh"].ToString());
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('附件删除成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('附件删除失败！');</script>");
        }
        bindData();
    }
}
