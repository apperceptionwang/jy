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
using System.Xml;
using System.IO;
using System.Data.OleDb;
using ICSharpCode.SharpZipLib.BZip2;

public partial class Admin_SetUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["admin_id"] == null)
        {
            Response.Redirect("../SessionTimeOut.aspx?type=top");
        }
        if (!CommFun.IsAdmin(Session["admin_name"].ToString()))
        {
            Response.Redirect("../SessionTimeOut.aspx?type=isnotadmin");
        }
        if (!IsPostBack)
        {
            bindData();
        }
    }


    #region 数据绑定
    protected void bindData()
    {
        DataRow dr;
        //教师申报截止日期
        string str_sql = "select url from t_dict where flm = 8 and bm = 3";
        tbx_lx11.Value = DBFun.ExecuteScalar(str_sql).ToString();
        //上传文件类型
        str_sql = "select url from t_dict where flm = 8 and bm = 4";
        tbx_filetype.Text = DBFun.ExecuteScalar(str_sql).ToString();
        //上传文件大小
        str_sql = "select url from t_dict where flm = 8 and bm = 5";
        tbx_filesize.Text = DBFun.ExecuteScalar(str_sql).ToString();
        //当前评审年度
        str_sql = "select url from t_dict where flm = 8 and bm = 6";
        tbx_year_now.Text = DBFun.ExecuteScalar(str_sql).ToString();
        //上传图片类型
        str_sql = "select url from t_dict where flm = 8 and bm = 7";
        tbx_PhotoType.Text = DBFun.ExecuteScalar(str_sql).ToString();
        //上传图片大小
        str_sql = "select url from t_dict where flm = 8 and bm = 8";
        tbx_PhotoSize.Text = DBFun.ExecuteScalar(str_sql).ToString();
        //起止日期
        str_sql = "select url,content from t_dict where flm = 10 and bm = 1";
        dr = DBFun.GetDataRow(str_sql);
        tbx_lx11.Value = dr["url"].ToString();
        tbx_lx12.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 2";
        dr = DBFun.GetDataRow(str_sql);
        tbx_lx21.Value = dr["url"].ToString();
        tbx_lx22.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 3";
        dr = DBFun.GetDataRow(str_sql);
        tbx_lx31.Value = dr["url"].ToString();
        tbx_lx32.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 4";
        dr = DBFun.GetDataRow(str_sql);
        tbx_lx41.Value = dr["url"].ToString();
        tbx_lx42.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 5";
        dr = DBFun.GetDataRow(str_sql);
        tbx_zq11.Value = dr["url"].ToString();
        tbx_zq12.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 6";
        dr = DBFun.GetDataRow(str_sql);
        tbx_zq21.Value = dr["url"].ToString();
        tbx_zq22.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 7";
        dr = DBFun.GetDataRow(str_sql);
        tbx_jt11.Value = dr["url"].ToString();
        tbx_jt12.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 8";
        dr = DBFun.GetDataRow(str_sql);
        tbx_jt21.Value = dr["url"].ToString();
        tbx_jt22.Value = dr["content"].ToString();
        str_sql = "select url,content from t_dict where flm = 10 and bm = 9";
        dr = DBFun.GetDataRow(str_sql);
        tbx_jt31.Value = dr["url"].ToString();
        tbx_jt32.Value = dr["content"].ToString();

        tbx_PageSize.Text = ConfigurationManager.AppSettings["PageSize"];
        //专家评审截止日期
        //str_sql = "select url from t_dict where flm = 8 and bm = 11";
        //tbx_jzrq3.Value = DBFun.ExecuteScalar(str_sql).ToString();
        //判断专家最大推荐人数是否存在 特殊津贴人员
        str_sql = "select count(*) from t_dict where flm = 8 and bm = 12";
        int i_count = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
        if (i_count == 0)
        {
            str_sql = "insert into t_dict (flm,bm,name,url) values (8,12,'最大推荐人数（特殊津贴人员）','15')";
            DBFun.ExecuteUpdate(str_sql);
        }
    }
    #endregion

    protected void btn_filetype_Click(object sender, EventArgs e)
    {
        save("4",tbx_filetype.Text);
    }
    protected void btn_filesize_Click(object sender, EventArgs e)
    {
        try 
        {
            Convert.ToInt16(tbx_filesize.Text);
            save("5",tbx_filesize.Text);
        }
        catch
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }

    protected void save(string str_bm,string str_Value)
    {
        string str_sql = "update t_dict set url = '" + str_Value + "' where flm = 8 and bm = " + str_bm;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }

    // public void ConfWriteValue(string key,string strValue)
    //{
    //    string XPath="/configuration/appSettings/add[@key='?']";
    //    XmlDocument doc = new XmlDocument();

    //    doc.Load( (HttpContext.Current.Server.MapPath("web.config")) );
    //    XmlNode addKey=doc.SelectSingleNode( (XPath.Replace("?",key)) );
    //    if(addKey == null)
    //    {
    //    throw new ArgumentException("没有找到的配置节");
    //    }
    //    addKey.Attributes["value"].InnerText=strValue;
    //    doc.Save(XPath);     
    //}
    protected void btn_year_now_Click(object sender, EventArgs e)
    {
        save("6", tbx_year_now.Text);
    }
    protected void btn_PhotoType_Click(object sender, EventArgs e)
    {
        save("7", tbx_PhotoType.Text);
    }
    protected void btn_PhotoSize_Click(object sender, EventArgs e)
    {
        save("8", tbx_PhotoSize.Text);
    }
    protected void btn_updateDB_Click(object sender, EventArgs e)
    {
        //insert into t_dict (flm,bm,name,content,pwd) values (5,17,'技术报告','第一作者','0.3') 
        //insert into t_dict (flm,bm,name,content,pwd) values (5,18,'技术报告','非第一作者','0.1')
        string str_sql = tbx_SQL.Text;
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('更新成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('更新失败！');</script>");
        }
        bindData();
    }
    protected void btn_calc_Click(object sender, EventArgs e)
    {
        string str_sql = "alter table cpry add column score_xmrw numeric,score_lzbg numeric,score_yjcg numeric";
        try { DBFun.ExecuteSql(str_sql); }
        catch { }

        str_sql = "select sfzh,sbzw from cpry,t_dict " +
            "where url=gzdw and edit_flag=false and cpry.tj_flag='推荐' and sh_flag='通过' and t_dict.tj_flag=true  order by gzdw asc, ID asc;";
        DataView dv = DBFun.dataView(str_sql);
        DataView dv_zj;
        
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            Session["sfzh"] = dv.Table.Rows[i]["sfzh"].ToString();
            string str_score = "";
            if (dv.Table.Rows[i]["sbzw"].ToString() == "研究员")
                str_score = GetScore_yjy();
            else
                str_score = GetScore_gg();
            string str_s1, str_s2, str_s3, str_s4;
            str_s1 = str_score.Substring(0, str_score.IndexOf(","));
            str_s2 = str_score.Substring(str_score.IndexOf(",") + 1, str_score.LastIndexOf(",") - str_score.IndexOf(",")-1);
            str_s3 = str_score.Substring(str_score.LastIndexOf(",") + 1);
            //计算专家评分
            string strqry = "select iif(isnull(fs_pjys_sum),'0',fs_pjys_sum) as fs_sum,zj_sfzh,cpry_sfzh,jypj,UserName,zjdm,iif(isnull(fs_pjys_sum),'否','是') as sfpj from zjry,pszj where sfzh = zj_sfzh and pszj.flag = 1 ";
            strqry = strqry + " and cpry_sfzh = '" + dv.Table.Rows[i]["sfzh"].ToString() + "'";
            dv_zj = DBFun.GetDataView(strqry);
            str_s4 = PrivateFun.Get_Score_zj(dv_zj);

            str_sql = "update cpry set score_xmrw = " + str_s1 + ",score_lzbg=" + str_s2 + ",score_yjcg=" + str_s3 + ",score_zj="+str_s4+" where sfzh = '" + Session["sfzh"].ToString() + "';";
            if (!DBFun.ExecuteUpdate(str_sql))
            {
                Response.Write("<script>alert('计算分数失败，请重新计算！');</script>");
                return;
            }
           
        }
        Response.Write("<script>alert('计算分数成功！');</script>");
    }

    #region // 计算得分
    protected string GetScore_yjy()
    {
        decimal[] list = new decimal[40];
        //项目任务得分
        //4.负责某方面技术工作
        string str_sql = "select cdrw_gznr1,cdrw_gznr2,cdrw_gznr3,pyyjs2,pyyjs4 from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        string str_12 = "", str_13 = "", str_total = "";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return "";
        if (dr["cdrw_gznr1"].ToString().Length > 2)
            str_12 = "0.8";
        else if (dr["cdrw_gznr2"].ToString().Length > 2)
            str_12 = "0.5";
        else if (dr["cdrw_gznr3"].ToString().Length > 2)
            str_12 = "0.3";
        else
            str_12 = "0";
        //5.研究生培养
        try
        {
            if (dr["pyyjs2"].ToString() == "") dr["pyyjs2"] = 0;
            if (dr["pyyjs4"].ToString() == "") dr["pyyjs4"] = 0;
            if (Convert.ToInt16(dr["pyyjs2"].ToString()) >= 1 || Convert.ToInt16(dr["pyyjs4"].ToString()) >= 1)
                str_13 = "1.0";
            else
                str_13 = "0";
        }
        catch
        {
            str_13 = "0";
        }
        //1.2.3
        str_sql = "select ktly1,ktjb,drjs from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataView dv = DBFun.GetDataView(str_sql);
        int i = 0;
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_xmrw(Convert.ToInt16(dv.Table.Rows[i]["ktly1"]), dv.Table.Rows[i]["ktjb"].ToString(), dv.Table.Rows[i]["drjs"].ToString());
            //lbl1_1.Text += list[i].ToString() + "<br/>";
        }
        //foreach (decimal d in list)
        //{
        //    lbl1_1.Text += d.ToString()+"<br/>";
        //}
        list[i] = Convert.ToDecimal(str_12);
        list[i + 1] = Convert.ToDecimal(str_13);
        Sort(ref list);
        decimal d_total = 0;

        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        str_total = d_total.ToString();

        //论著报告
        str_sql = "select zs,slqk,pm from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 40; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_lzbg(dv.Table.Rows[i]["slqk"].ToString(), dv.Table.Rows[i]["pm"].ToString(), Convert.ToDecimal(dv.Table.Rows[i]["zs"]));
            
        }
        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        str_total += ","+d_total.ToString();



        //业绩成果
        //1.获奖情况
        str_sql = "select jljb,hjdj,pm,zrs from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 40; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_yjcg(dv.Table.Rows[i]["jljb"].ToString(), dv.Table.Rows[i]["hjdj"].ToString(), Convert.ToInt16(dv.Table.Rows[i]["pm"]), Convert.ToInt16(dv.Table.Rows[i]["zrs"]));
            //lbl3_1.Text += list[i].ToString() + "<br/>";
        }
        //2.优秀论文
        int j, k;
        str_sql = "select count(zzpm) from yxlw where sfzh = '" + Session["sfzh"].ToString() + "' and zzpm=1";
        int i_count = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
        for (j = i; j < i + i_count; j++)
        {
            list[j] = Convert.ToDecimal(0.8);
            //lbl3_1.Text += list[j].ToString() + "<br/>";
        }
        //3.获国家专利情况
        str_sql = "select zllx from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "' and pm=1";
        dv = DBFun.GetDataView(str_sql);
        for (k = j; k < j + dv.Table.Rows.Count; k++)
        {
            if (dv.Table.Rows[k - j]["zllx"].ToString() == "技术发明专利")
                list[k] = Convert.ToDecimal(1.0);
            else
                list[k] = Convert.ToDecimal(0.5);

            //lbl3_1.Text += list[k].ToString() + "<br/>";
        }

        //4.论文被引用情况
        //str_sql = "select top 1 iif(0.5+(tycs-5)*0.1>1.5,1.5,iif(tycs<5,0,0.5+(tycs-5)*0.1)) from lwbyyqk where sfzh = '" + 
        //    Session["sfzh"].ToString() + "' and pm =1  order by tycs desc";
        str_sql = "select iif(sum(tycs)<5,0,iif(sum(tycs)>15,15,sum(tycs)))*0.1 from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        decimal dec_yyqk = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        list[k + 1] = Convert.ToDecimal(dec_yyqk);
        //lbl3_2.Text = list[k + 1].ToString() + "<br/>";

        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        str_total += ","+ d_total.ToString();
        return str_total;
        //dec_yyqk = Convert.ToDecimal(lbl1_total.Text) + Convert.ToDecimal(lbl2_total.Text) + Convert.ToDecimal(lbl3_total.Text);
        //lbl_sum.Text = dec_yyqk.ToString();

        //str_sql = "select reason from cpry where sfzh ='" + Session["sfzh"].ToString() + "'";
        //tbx_Reason.Text = DBFun.ExecuteScalar(str_sql).ToString();
    }

    //计算项目情况得分
    protected decimal GetScore_xmrw(int i_ktly1, string str_ktjb, string str_drjs)
    {
        decimal dec_Score = 0;
        string str_sql = "";
        string str_ly1 = "", str_ly2 = "";
        if (i_ktly1 >= 3 && i_ktly1 <= 9)
        {
            str_ly1 = "国家级";
            str_ly2 = "重大项目";
        }
        else if (i_ktly1 >= 11 && i_ktly1 <= 15)
        {
            str_ly1 = "国家级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 17 && i_ktly1 <= 23)
        {
            str_ly1 = "国家级";
            str_ly2 = "面上项目";
        }
        else if (i_ktly1 >= 26 && i_ktly1 <= 29)
        {
            str_ly1 = "省部级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 31 && i_ktly1 <= 34)
        {
            str_ly1 = "省部级";
            str_ly2 = "面上项目";
        }
        else if (i_ktly1 >= 37 && i_ktly1 <= 38)
        {
            str_ly1 = "厅局级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 40 && i_ktly1 <= 42)
        {
            str_ly1 = "厅局级";
            str_ly2 = "面上项目";
        }
        if (str_drjs == "主要参加者") str_sql = "select pwd from t_dict where name = '" + str_ly1 + "' and url = '" + str_ly2 + "' and content = '" + str_drjs + "' and initpwd = '参加'";
        else str_sql = "select pwd from t_dict where name = '" + str_ly1 + "' and url = '" + str_ly2 + "' and content = '" + str_drjs + "' and initpwd = '" + str_ktjb + "'";
        dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));

        return dec_Score;
    }

    //计算论著报告得分
    protected decimal GetScore_lzbg(string str_slqk, string str_pm, decimal dec_zs)
    {
        decimal dec_Score = 0;
        if (str_pm == "1")
            str_pm = "第一作者";
        else if (str_pm != "1")
            str_pm = "非第一作者";
        string str_sql = "select pwd from t_dict where name = '" + str_slqk + "' and content = '" + str_pm + "'";
        dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        //if (str_slqk == "SCI收录期刊" || str_slqk == "EI收录期刊" || str_slqk == "核心期刊" || str_slqk == "一般期刊")
        //    return dec_Score;
        if (str_slqk == "国际学术会议论文集" && str_pm == "第一作者")
        {
            str_sql = "select xdbg,istp from lzbgkq where sfzh = '" + Session["sfzh"].ToString() + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            if (dr == null) return dec_Score;
            if (Convert.ToBoolean(dr["xdbg"])) return Convert.ToDecimal(0.7);
            if (Convert.ToBoolean(dr["istp"]))
                dec_Score += Convert.ToDecimal(0.3);
        }
        else if (str_slqk == "专著" && dec_zs > 20)
        {
            str_sql = "select pwd from t_dict where name = '" + str_slqk + "' and content = '" + str_pm + "'";
            dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        }

        return dec_Score;
    }


    //计算业绩成果得分
    protected decimal GetScore_yjcg(string str_jljb, string str_hjdj, int int_pm, int int_zrs)
    {
        decimal dec_Score = 0;
        string str_pm = "";
        if (str_hjdj == "一等奖")
        {
            if (int_pm == 1)
                str_pm = "第一完成人";
            else if (int_pm <= 5 && int_pm >= 2)
                str_pm = "前三分之一完成人";
            else if (int_pm <= 15 && int_pm >= 6)
                str_pm = "其他主要完成人";
            else
                str_pm = "其他";
        }
        else if (str_hjdj == "二等奖")
        {
            if (int_pm == 1)
                str_pm = "第一完成人";
            else if (int_pm <= 3 && int_pm >= 2)
                str_pm = "前三分之一完成人";
            else if (int_pm <= 10 && int_pm >= 4)
                str_pm = "其他主要完成人";
            else
                str_pm = "其他";
            if (str_jljb == "中国地震局防震减灾优秀成果奖" && int_pm == 10) str_pm = "其他";
        }
        else if (str_hjdj == "三等奖")
        {
            if (int_pm == 1)
                str_pm = "第一完成人";
            else if (int_pm <= 5 && int_pm >= 2)
                str_pm = "其他主要完成人";
            else if (int_pm >= 6)
                str_pm = "其他";

        }
        if (str_jljb == "国家自然科学奖" || str_jljb == "国家技术发明奖" || str_jljb == "国家科技进步奖") str_jljb = "国家级科技奖";
        if (str_jljb == "中国地震局防震减灾优秀成果奖") str_jljb = "省部级";
        string str_sql = "select pwd from t_dict where name = '" + str_jljb + "' and url = '" + str_hjdj + "'" + " and content = '" + str_pm + "'";
        dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        //if (str_slqk == "SCI收录期刊" || str_slqk == "EI收录期刊" || str_slqk == "核心期刊" || str_slqk == "一般期刊")
        //    return dec_Score;
        //if (str_jljb == "中国地震局防震减灾优秀成果奖"  )
        //{
        //    dec_Score = Convert.ToDecimal(1.5);
        //}
        return dec_Score;
    }


    //用冒泡法排序
    protected void Sort(ref decimal[] list)
    {
        for (int i = 0; i < list.Length; i++)
        {
            for (int j = i; j < list.Length; j++)
            {
                if (list[i] < list[j])
                {
                    decimal temp = list[i];
                    list[i] = list[j];
                    list[j] = temp;
                }
            }
        }
    }


    protected int GetStringNum(string str_1, string str_2)
    {
        int i_Num = 0;
        int i_Index = 0;
        do
        {
            i_Index = str_1.IndexOf(str_2, i_Index);
            if (i_Index >= 0)
            {
                i_Num++;
                i_Index++;
            }
            else break;
        }
        while (i_Index >= 0);
        return i_Num;
    }

    protected string GetScore_gg()
    {
        decimal[] list = new decimal[40];
        int i, j, k, l, m, n;
        //项目任务得分
        //1.负责某方面技术工作
        string str_sql = "select * from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return "";
        decimal d_total = 0;
        d_total = Convert.ToDecimal(GetStringNum(dr["cdrw_gg_khyx1"].ToString(), ",") * 0.3 + GetStringNum(dr["cdrw_gg_khcz1"].ToString(), ",") * 0.2);
        d_total += Convert.ToDecimal(GetStringNum(dr["cdrw_gg_khyx2"].ToString(), ",") * 0.2 + GetStringNum(dr["cdrw_gg_khcz2"].ToString(), ",") * 0.1);
       
        str_sql = "select js,gjjy from cdrwqk1_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataView dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (dv.Table.Rows[i]["js"].ToString() == "负责人")
                d_total += Convert.ToDecimal(0.5);
            else
                d_total += Convert.ToDecimal(0.2);
            if (dv.Table.Rows[i]["gjjy"].ToString().ToLower() == "true")
                d_total += Convert.ToDecimal(0.1);
        }

        if (d_total > Convert.ToDecimal(1.5)) d_total = Convert.ToDecimal(1.5);
        string str_11 = d_total.ToString();

        //6.研究生培养
        string str_12 = "";
        try
        {
            if (dr["pyyjs2"].ToString() == "") dr["pyyjs2"] = 0;
            if (dr["pyyjs4"].ToString() == "") dr["pyyjs4"] = 0;
            if (Convert.ToInt16(dr["pyyjs2"].ToString()) >= 1 || Convert.ToInt16(dr["pyyjs4"].ToString()) >= 1)
                str_12 = "1.0";
            else
                str_12 = "0";
        }
        catch
        {
            str_12 = "0";
        }
        //2.3.4
        str_sql = "select ktly1,ktjb,drjs from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        i = 0;
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_xmrw_gg(Convert.ToInt16(dv.Table.Rows[i]["ktly1"]), dv.Table.Rows[i]["ktjb"].ToString(), dv.Table.Rows[i]["drjs"].ToString());
            //Label2.Text += list[i].ToString() + "<br/>";
        }
        //foreach (decimal d in list)
        //{
        //    lbl1_1.Text += d.ToString()+"<br/>";
        //}


        //5.承担的工程项目
        str_sql = "select gzsj,gznr,js from cdrwqk_gg where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        //i = 0;
        for (j = 0; j < dv.Table.Rows.Count; j++)
        {
            list[i + j] = GetScore_gcxm_gg(dv.Table.Rows[j]["gznr"].ToString(), dv.Table.Rows[j]["js"].ToString());
            //Label2.Text += list[i + j].ToString() + "<br/>";
        }
        //在列表中加入1，6
        list[i + j] = Convert.ToDecimal(str_11);
        list[i + j + 1] = Convert.ToDecimal(str_12);

        Sort(ref list);
        d_total = 0;

        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        string str_total = d_total.ToString();

        //论著报告
        str_sql = "select zs,slqk,pm from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 10; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_lzbg_gg(dv.Table.Rows[i]["slqk"].ToString(), dv.Table.Rows[i]["pm"].ToString(), Convert.ToDecimal(dv.Table.Rows[i]["zs"]));
            //Label5.Text += list[i].ToString() + "<br/>";
        }


        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        str_total += ","+d_total.ToString();

        //业绩成果
        //1.获奖情况
        str_sql = "select jljb,hjdj,pm,zrs from hjqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 40; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_yjcg_gg(dv.Table.Rows[i]["jljb"].ToString(), dv.Table.Rows[i]["hjdj"].ToString(), Convert.ToInt16(dv.Table.Rows[i]["pm"]), Convert.ToInt16(dv.Table.Rows[i]["zrs"]));
            //Label7.Text += list[i].ToString() + "<br/>";
        }
        //2.优秀论文

        str_sql = "select count(zzpm) from yxlw where sfzh = '" + Session["sfzh"].ToString() + "' and zzpm=1";
        int i_count = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
        for (j = 0; j < i_count; j++)
        {
            list[i + j] = Convert.ToDecimal(0.8);
            //Label7.Text += list[j + i].ToString() + "<br/>";
        }

        //6.获国家专利情况
        str_sql = "select zllx from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "' and pm=1";
        dv = DBFun.GetDataView(str_sql);
        for (k = 0; k < dv.Table.Rows.Count; k++)
        {
            if (dv.Table.Rows[k]["zllx"].ToString() == "技术发明专利")
                list[i + j + k] = Convert.ToDecimal(1.0);
            else
                list[i + j + k] = Convert.ToDecimal(0.5);

            //Label10.Text += list[i + j + k].ToString() + "<br/>";
        }

        //4.在地震预报工作方面
        str_sql = "select zj from dlyb where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (l = 0; l < dv.Table.Rows.Count; l++)
        {
            if (dv.Table.Rows[l]["zj"].ToString() == "5～5.9级")
                list[i + j + k + l] = Convert.ToDecimal(1.0);
            else if (dv.Table.Rows[l]["zj"].ToString() == "6～6.9级")
                list[i + j + k + l] = Convert.ToDecimal(1.5);
            else if (dv.Table.Rows[l]["zj"].ToString() == "7级以上")
                list[i + j + k + l] = Convert.ToDecimal(2.0);
            //Label8.Text += list[i + j + k + l].ToString() + "<br/>";
        }

        //5.监测预报评比及获得先进个人情况
        str_sql = "select grpm from qgjcybpb where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (m = 0; m < dv.Table.Rows.Count; m++)
        {
            if (Convert.ToDecimal(dv.Table.Rows[m]["grpm"]) == 1)
                list[i + j + k + l + m] = Convert.ToDecimal(0.4);
            else if (Convert.ToDecimal(dv.Table.Rows[m]["grpm"]) >= 2 && Convert.ToDecimal(dv.Table.Rows[m]["grpm"]) <= Convert.ToDecimal(4))
                list[i + j + k + l + m] = Convert.ToDecimal(0.2);
            else
                list[i + j + k + l + m] = Convert.ToDecimal(0);
            //Label9.Text += list[i + j + k + l + m].ToString() + "<br/>";
        }

        str_sql = "select count(*) from xjgrch where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (n = 0; n < Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); n++)
        {
            list[i + j + k + l + m + n] = Convert.ToDecimal(0.6);
            //Label9.Text += list[i + j + k + l + m + n].ToString() + "<br/>";
        }



        //7.论文被引用情况
        //str_sql = "select top 1 iif(0.5+(tycs-5)*0.1>1.5,1.5,iif(tycs<5,0,0.5+(tycs-5)*0.1)) from lwbyyqk where sfzh = '" +
        //    Session["sfzh"].ToString() + "' and pm =1  order by tycs desc";
        str_sql = "select iif(isnull(sum(tycs)),0,iif(sum(tycs)<5,0,iif(sum(tycs)>15,15,sum(tycs))))*0.1 from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        decimal dec_yyqk = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        list[i + j + k + l + m + n + 1] = Convert.ToDecimal(dec_yyqk);
        //Label11.Text = list[i + j + k + l + m + n + 1].ToString() + "<br/>";

        //8.研发仪器、软件或完成地震安平项目
        str_sql = "select count(*) from yqrj where sfzh = '" +
            Session["sfzh"].ToString() + "'";
        dec_yyqk = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) * Convert.ToDecimal(0.6);
        if (dec_yyqk > Convert.ToDecimal(1.8)) dec_yyqk = Convert.ToDecimal(1.8);
        decimal dec_aqpj = 0;
        str_sql = "select count(*) from aqpj where sfzh = '" +
            Session["sfzh"].ToString() + "'";
        dec_aqpj = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) * Convert.ToDecimal(0.4);
        if (dec_aqpj > Convert.ToDecimal(1.2)) dec_aqpj = Convert.ToDecimal(1.2);

        list[i + j + k + l + m + n + 2] = dec_yyqk + dec_aqpj;
        //Label12.Text = list[i + j + k + l + m + n + 2].ToString();

        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        str_total += ","+ d_total.ToString();
        return str_total;
        //dec_yyqk = Convert.ToDecimal(Label4.Text) + Convert.ToDecimal(Label6.Text) + Convert.ToDecimal(Label13.Text);
        //Label14.Text = dec_yyqk.ToString();

        //str_sql = "select reason from cpry where sfzh ='" + Session["sfzh"].ToString() + "'";
        //tbx_Reason.Text = DBFun.ExecuteScalar(str_sql).ToString();
    }

    //计算项目情况得分
    protected decimal GetScore_xmrw_gg(int i_ktly1, string str_ktjb, string str_drjs)
    {
        decimal dec_Score = 0;
        string str_sql = "";
        string str_ly1 = "", str_ly2 = "";
        if (i_ktly1 >= 3 && i_ktly1 <= 9)
        {
            str_ly1 = "国家级";
            str_ly2 = "重大项目";
        }
        else if (i_ktly1 >= 11 && i_ktly1 <= 15)
        {
            str_ly1 = "国家级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 17 && i_ktly1 <= 23)
        {
            str_ly1 = "国家级";
            str_ly2 = "面上项目";
        }
        else if (i_ktly1 >= 26 && i_ktly1 <= 29)
        {
            str_ly1 = "省部级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 31 && i_ktly1 <= 34)
        {
            str_ly1 = "省部级";
            str_ly2 = "面上项目";
        }
        else if (i_ktly1 >= 37 && i_ktly1 <= 38)
        {
            str_ly1 = "厅局级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 40 && i_ktly1 <= 42)
        {
            str_ly1 = "厅局级";
            str_ly2 = "面上项目";
        }
        if (str_drjs == "主要参加者") str_sql = "select pwd from t_dict where name = '" + str_ly1 + "' and url = '" + str_ly2 + "' and content = '" + str_drjs + "' and initpwd = '参加'";
        else str_sql = "select pwd from t_dict where name = '" + str_ly1 + "' and url = '" + str_ly2 + "' and content = '" + str_drjs + "' and initpwd = '" + str_ktjb + "'";
        dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        return dec_Score;
    }

    //计算论著报告得分
    protected decimal GetScore_lzbg_gg(string str_slqk, string str_pm, decimal dec_zs)
    {
        decimal dec_Score = 0;
        if (str_pm == "1")
            str_pm = "第一作者";
        else if (str_pm != "1")
            str_pm = "非第一作者";
        string str_sql = "select pwd from t_dict where name = '" + str_slqk + "' and content = '" + str_pm + "'";
        dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        //if (str_slqk == "SCI收录期刊" || str_slqk == "EI收录期刊" || str_slqk == "核心期刊" || str_slqk == "一般期刊")
        //    return dec_Score;
        if (str_slqk == "国际学术会议论文集" && str_pm == "第一作者")
        {
            str_sql = "select xdbg,istp from lzbgkq where sfzh = '" + Session["sfzh"].ToString() + "'";
            DataRow dr = DBFun.GetDataRow(str_sql);
            if (dr == null) return dec_Score;
            if (Convert.ToBoolean(dr["xdbg"])) return Convert.ToDecimal(0.7);
            if (Convert.ToBoolean(dr["istp"]))
                dec_Score += Convert.ToDecimal(0.3);
        }
        else if (str_slqk == "专著" && dec_zs > 20)
        {
            str_sql = "select pwd from t_dict where name = '" + str_slqk + "' and content = '" + str_pm + "'";
            dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        }

        return dec_Score;
    }

    //计算业绩成果得分
    protected decimal GetScore_yjcg_gg(string str_jljb, string str_hjdj, int int_pm, int int_zrs)
    {
        decimal dec_Score = 0;
        string str_pm = "";
        if (str_hjdj == "一等奖")
        {
            if (int_pm == 1)
                str_pm = "第一完成人";
            else if (int_pm <= 5 && int_pm >= 2)
                str_pm = "前三分之一完成人";
            else if (int_pm <= 15 && int_pm >= 6)
                str_pm = "其他主要完成人";
            else
                str_pm = "其他";
        }
        else if (str_hjdj == "二等奖")
        {
            if (int_pm == 1)
                str_pm = "第一完成人";
            else if (int_pm <= 3 && int_pm >= 2)
                str_pm = "前三分之一完成人";
            else if (int_pm <= 10 && int_pm >= 4)
                str_pm = "其他主要完成人";
            else
                str_pm = "其他";
            if (str_jljb == "中国地震局防震减灾优秀成果奖" && int_pm == 10) str_pm = "其他";
        }
        else if (str_hjdj == "三等奖")
        {
            if (int_pm == 1)
                str_pm = "第一完成人";
            else if (int_pm <= 5 && int_pm >= 2)
                str_pm = "其他主要完成人";
            else if (int_pm >= 6)
                str_pm = "其他";

        }
        if (str_jljb == "国家自然科学奖" || str_jljb == "国家技术发明奖" || str_jljb == "国家科技进步奖") str_jljb = "国家级科技奖";
        if (str_jljb == "中国地震局防震减灾优秀成果奖") str_jljb = "省部级";
        string str_sql = "select pwd from t_dict where name = '" + str_jljb + "' and url = '" + str_hjdj + "'" + " and content = '" + str_pm + "'";
        dec_Score = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        //if (str_slqk == "SCI收录期刊" || str_slqk == "EI收录期刊" || str_slqk == "核心期刊" || str_slqk == "一般期刊")
        //    return dec_Score;
        //if (str_jljb == "中国地震局防震减灾优秀成果奖")
        //{
        //    dec_Score = Convert.ToDecimal(1.5);
        //}
        return dec_Score;
    }

    //计算承担工程项目得分
    protected decimal GetScore_gcxm_gg(string str_psjb, string str_js)
    {
        decimal dec_Score = 0;
        if (str_psjb == "通过国家地震安全性评定委员会会议评审项目" && str_js == "技术负责人")
        {
            dec_Score = Convert.ToDecimal(0.5);
        }
        else if (str_psjb == "通过国家地震安全性评定委员会会议评审项目" && str_js == "分项负责人")
        {
            dec_Score = Convert.ToDecimal(0.2);
        }
        else if (str_psjb == "通过省局（所）级会议评审科技服务项目" && str_js == "技术负责人")
        {
            dec_Score = Convert.ToDecimal(0.2);
        }
        else// if (str_psjb == "通过省局（所）级会议评审科技服务项目" && str_js == "分项负责人")
        {
            dec_Score = Convert.ToDecimal(0);
        }

        return dec_Score;
    }
    #endregion

    //起止日期
    # region 起止时间 保存
    protected void btn_qzsj_Save_Click(object sender, EventArgs e)
    {
        string str_sql1 = "update t_dict set url = '" + tbx_lx11.Value + "',content = '" + tbx_lx12.Value + "' where flm = 10 and bm = 1";
        string str_sql2 = "update t_dict set url = '" + tbx_lx21.Value + "',content = '" + tbx_lx22.Value + "' where flm = 10 and bm = 2";
        string str_sql3 = "update t_dict set url = '" + tbx_lx31.Value + "',content = '" + tbx_lx32.Value + "' where flm = 10 and bm = 3";
        string str_sql4 = "update t_dict set url = '" + tbx_lx41.Value + "',content = '" + tbx_lx42.Value + "' where flm = 10 and bm = 4";
        string str_sql5 = "update t_dict set url = '" + tbx_zq11.Value + "',content = '" + tbx_zq12.Value + "' where flm = 10 and bm = 5";
        string str_sql6 = "update t_dict set url = '" + tbx_zq21.Value + "',content = '" + tbx_zq22.Value + "' where flm = 10 and bm = 6";
        string str_sql7 = "update t_dict set url = '" + tbx_jt11.Value + "',content = '" + tbx_jt12.Value + "' where flm = 10 and bm = 7"; 
        string str_sql8 = "update t_dict set url = '" + tbx_jt21.Value + "',content = '" + tbx_jt22.Value + "' where flm = 10 and bm = 8";
        string str_sql9 = "update t_dict set url = '" + tbx_jt31.Value + "',content = '" + tbx_jt32.Value + "' where flm = 10 and bm = 9";
        if (DBFun.ExecuteUpdate(str_sql1)
            && DBFun.ExecuteUpdate(str_sql2)
            && DBFun.ExecuteUpdate(str_sql3)
            && DBFun.ExecuteUpdate(str_sql4)
            && DBFun.ExecuteUpdate(str_sql5)
            && DBFun.ExecuteUpdate(str_sql6)
            && DBFun.ExecuteUpdate(str_sql7)
            && DBFun.ExecuteUpdate(str_sql8)
            && DBFun.ExecuteUpdate(str_sql9))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
        bindData();
    }
    #endregion

    protected void btn_Ok1_Click(object sender, EventArgs e)
    {
        save("3", tbx_lx11.Value);
    }
    protected void btn_Ok2_Click(object sender, EventArgs e)
    {
        //save("9", tbx_jzrq2.Value);
    }
    protected void btn_Ok3_Click(object sender, EventArgs e)
    {
        //save("11", tbx_jzrq3.Value);
    }
    //生成专家与参评人员对应关系，适用于专业技术二级 特殊津贴人员

    #region 生成专家与参评人员对应关系
    protected void dygx(string as_type)
    {
        string str_sql = "delete from zjry where flag = " + as_type ;
        if (!DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('删除失败！');</script>");
            return;
        }
        string str_TableName;
        str_TableName = "ej_cpry";
        if (as_type == "2")
        {
            str_TableName = "ej_cpry";
        }
        else if (as_type == "3")
        {
            str_TableName = "ts_cpry";
        }
            
        str_sql = "insert into zjry (flag,zj_sfzh,cpry_sfzh) " +
                        " select pszj.flag,pszj.sfzh," + str_TableName + ".sfzh from pszj," + str_TableName + " where pszj.flag =  " + as_type;
        if (!DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('生成失败，请重新生成！');</script>");
            return;
        }
        Response.Write("<script>alert('生成成功！');</script>");
    }
    #endregion

    protected void btn_ej_dygx_Click(object sender, EventArgs e)
    {
        dygx("2");
    }
    protected void btn_ts_dygx_Click(object sender, EventArgs e)
    {
        dygx("3");
    }

    #region 生成专家与参评人员对应关系
    //正高级
    protected void btn_upload_Click(object sender, EventArgs e)
    {
        string str_Return = UploadFile(FileUpload1,1);
        if (str_Return == "对应关系生成成功")
        {
            Response.Write("<script>alert('对应关系生成成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('对应关系生成失败，原因是：" + str_Return + "');</script>");
            lbl_result.Text = "对应关系生成失败，原因是：" + str_Return;
            return;
        }
        bindData();
    }
    
    #endregion

    #region 上传文件
    public string UploadFile(FileUpload Fupload,int id)
    {
        //文件上传
        string str_ParentFolder;
        string filename;
        str_ParentFolder = Server.MapPath(@"..\app_data\");
        filename = "dygx.xls";
        try
        {
            if (Fupload.PostedFile.FileName == "")
                return "请选择要上传的数据！";

            //创建文件夹
            if (!Directory.Exists(str_ParentFolder))
            {
                Directory.CreateDirectory(str_ParentFolder);
                if (!Directory.Exists(str_ParentFolder))
                    return "创建文件夹失败！";
            }
            string extname;
            if (Fupload.PostedFile.FileName != "")
            {
                extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                //判断上传类型
                string str_UploadFileType = "xls";

                if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
                {
                    return "<script>alert('不允许上传 " + extname + " 类型的文件！');</script>";
                }
            }
            Fupload.PostedFile.SaveAs(str_ParentFolder + filename);
            string str_sql;
            str_sql = "select * from [sheet1$] ";
            DataTable dt =ExcelManager.GetXlsDataTable(str_ParentFolder + filename, str_sql);
            DataTable dt_cpry;
            //定义行变量，循环每个专家
            int i = 0;
            //定义列变量，循环每个参评人员
            int j = 0;
            //专家身份证号
            string str_sfzh_zj;
            //参评人员身份证号
            string str_sfzh_cpry;
            //人员表名
            string str_cpryTableName = "t_teacher_list";
            str_sql = "delete * from t_zjry where appyear=year(date()) ";
            DBFun.ExecuteSql(str_sql);
            for (i = 0; i < dt.Rows.Count; i++)
            {
                str_sfzh_zj = dt.Rows[i][0].ToString();
                str_sql = " select jsh from " + str_cpryTableName + " where appyear=year(date()) and sqr in " +
                          " ('" + dt.Rows[i][1].ToString().Replace(",", "','") + "')";
                dt_cpry = DBFun.dataTable(str_sql);
                for (j = 0; j < dt_cpry.Rows.Count; j++)
                {
                    str_sfzh_cpry = dt_cpry.Rows[j][0].ToString();
                    str_sql = string.Format("insert into t_zjry (zj_sfzh,cpry_sfzh) values ( '{0}','{1}')",
                              str_sfzh_zj, str_sfzh_cpry);
                    if (!DBFun.ExecuteUpdate(str_sql))
                    {
                        return "系统错误";
                    }
                }
                
                
            }
            //str_sql = "select count(*) from t_zjry where appyear=year(date()) ";
            //lbl_result.Visible = true;
            //lbl_result.Text = "数据库中共有记录 " + DBFun.ExecuteScalar(str_sql).ToString() + " 条，更新了 " + j.ToString() + " 条记录";
            Fupload.Dispose();
            
            return "对应关系生成成功";
            

            //用文件名上传的方式
            //if (tbx_Research.Text != "")
            //{
            //    extname = System.IO.Path.GetExtension(tbx_Research.Text);
            //    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + extname;

            //    System.IO.File.Copy(tbx_Research.Text, Server.MapPath(".\\kejian\\") + filename);
            //    return filename;
            //}
            
        }
        catch (IOException e)
        {
            return e.Message;
        }
        catch (Exception e)
        {
            return e.Message;
        }
    }
    #endregion

    protected void btn_backupDB_Click(object sender, EventArgs e)
    {
        //创建文件夹
        //string str_ParentFolder = @"d:\数据库备份";
        string str_ParentFolder = Server.MapPath("../DataBak/");
        //string str_ParentFolder = Server.MapPath("../App_Data/");
        if (!Directory.Exists(str_ParentFolder))
        {
            Directory.CreateDirectory(str_ParentFolder);
            if (!Directory.Exists(str_ParentFolder))
            {
                Response.Write("<script>alert('创建文件夹失败！');</script>"); 
                return;
            }
        }

        SqlBackObject.Backup(System.Web.HttpContext.Current.Server.MapPath(ConfigurationManager.ConnectionStrings["DbPath"].ToString()),
                             str_ParentFolder+DateTime.Now.ToString("yyyy-MM-dd")+".mdb.bak");
        Response.Write("<script>alert('数据库备份成功！');</script>");
        Response.Redirect("../DataBak/"+ DateTime.Now.ToString("yyyy-MM-dd") + ".mdb.bak");
    }

    protected void btn_initDB_Click(object sender, EventArgs e)
    {
        string str_sql = "delete from aqpj ";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('创建文件夹成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('创建文件夹失败！');</script>");
        }
        
    }

    protected void btn_initDB0_Click(object sender, EventArgs e)
    {
        string str_sql = "select * from t_teacher1 ";
        string pwd;
        DataTable dt = DBFun.dataTable(str_sql);
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            str_sql = "select count(*) from t_teacher where jsh = '" + dt.Rows[i]["jsh"].ToString() + "' ";
            pwd = System.Web.Security.FormsAuthentication.HashPasswordForStoringInConfigFile(dt.Rows[i]["pwd"].ToString(), "MD5");
            if (DBFun.ExecuteScalar(str_sql).ToString() == "1")
            {
                str_sql = "update t_teacher set pwd = '" + pwd + "' where jsh = '" + dt.Rows[i]["jsh"].ToString() + "'";
            }
            else
            {
                str_sql = string.Format("insert into t_teacher (jsh,xsh,jsm,pwd) values ('{0}','{1}','{2}','{3}') ",
                    dt.Rows[i]["jsh"].ToString(),dt.Rows[i]["xsh"].ToString(),dt.Rows[i]["jsm"].ToString(),pwd);
            }
            if (DBFun.ExecuteUpdate(str_sql))
            {
                //Response.Write("<script>alert('创建文件夹失败！');</script>");
            }
            else
            {
                Response.Write("<script>alert('创建文件夹失败！');</script>");
            }
        }
    }

    protected void btn_PageSize_Click(object sender, EventArgs e)
    {
        CommFun.SetAppSettings("PageSize",tbx_PageSize.Text.Trim());
    }
}
