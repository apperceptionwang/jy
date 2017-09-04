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

public partial class cpry_score_gg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Session["sfzh"] = "111111111111111";
        if (Session["sfzh"] == null)
        {
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = 'admin/admin_login.aspx?type=zgcpry';</script>");
            return;
        }
        if (!IsPostBack)
        {
            btn_Save.Visible = (Session["admin_id"] == null);
            bindData();
        }
       
    }

    protected int GetStringNum(string str_1, string str_2)
    {
        int i_Num = 0;
        int i_Index = 0;
        do {
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

    protected void bindData()
    {
        decimal[] list = new decimal[40];
        int i,j, k,l,m,n;
        //项目任务得分
        //1.负责某方面技术工作
        string str_sql = "select * from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        decimal d_total = 0;
        d_total = Convert.ToDecimal( GetStringNum(dr["cdrw_gg_khyx1"].ToString(), ",") * 0.3 + GetStringNum(dr["cdrw_gg_khcz1"].ToString(), ",") * 0.2);
        d_total += Convert.ToDecimal(GetStringNum(dr["cdrw_gg_khyx2"].ToString(), ",") * 0.2 + GetStringNum(dr["cdrw_gg_khcz2"].ToString(), ",") * 0.1);
        //if (dr["cdrw_gg_gznr1"].ToString() != "" && dr["cdrw_gg_khyx1"].ToString() != "无")
        //    d_total = Convert.ToDecimal(0.3);
        //else if (dr["cdrw_gg_gznr1"].ToString() != "" && dr["cdrw_gg_khcz1"].ToString() != "无")
        //    d_total = Convert.ToDecimal(0.2);
        //else
        //    d_total = Convert.ToDecimal(0);
        //if (dr["cdrw_gg_gznr1"].ToString() != "" && dr["cdrw_gg_khyx1"].ToString() != "无")
        //    d_total = Convert.ToDecimal(0.2);
        //else if (dr["cdrw_gg_gznr1"].ToString() != "" && dr["cdrw_gg_khcz1"].ToString() != "无")
        //    d_total = Convert.ToDecimal(0.1);
        //else
        //    d_total = Convert.ToDecimal(0);
        //if (dr["cdrw_gg_gzsj3"].ToString() != ""  && dr["cdrw_gg_khjg3"].ToString() == "已提交报告")
        //{
        //    if (dr["cdrw_gg_js3"].ToString() == "负责")
        //        d_total += Convert.ToDecimal(0.5);
        //    else
        //        d_total += Convert.ToDecimal(0.2);
        //}
        //if (dr["cdrw_gg_gzsj4"].ToString() != "") d_total += Convert.ToDecimal(0.1);

        str_sql = "select js,gjjy from cdrwqk1_gg where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
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
        Label1.Text = d_total.ToString();
        
        //6.研究生培养
        try
        {
            if (dr["pyyjs2"].ToString() == "") dr["pyyjs2"] = 0;
            if (dr["pyyjs4"].ToString() == "") dr["pyyjs4"] = 0;
            if (Convert.ToInt16(dr["pyyjs2"].ToString()) >= 1 || Convert.ToInt16(dr["pyyjs4"].ToString()) >= 1)
                Label3.Text = "1.0";
            else
                Label3.Text = "0";
        }
        catch {
            Label3.Text = "0";
        }
        //2.3.4
        str_sql = "select ktly1,ktjb,drjs from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
        dv = DBFun.GetDataView(str_sql);
        i = 0;
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_xmrw(Convert.ToInt16( dv.Table.Rows[i]["ktly1"]), dv.Table.Rows[i]["ktjb"].ToString(), dv.Table.Rows[i]["drjs"].ToString());
            Label2.Text += list[i].ToString() + "<br/>";
        }
        //foreach (decimal d in list)
        //{
        //    lbl1_1.Text += d.ToString()+"<br/>";
        //}
        

        //5.承担的工程项目
        str_sql = "select gzsj,gznr,js from cdrwqk_gg where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
        dv = DBFun.GetDataView(str_sql);
        //i = 0;
        for (j = 0; j < dv.Table.Rows.Count; j++)
        {
            list[i + j] = GetScore_gcxm(dv.Table.Rows[j]["gznr"].ToString(), dv.Table.Rows[j]["js"].ToString());
            Label2.Text += list[i+j].ToString() + "<br/>";
        }
        //在列表中加入1，6
        list[i+j] = Convert.ToDecimal(Label1.Text);
        list[i + j+1] = Convert.ToDecimal(Label3.Text);
        
        Sort(ref list);
        d_total = 0;

        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        Label4.Text = d_total.ToString();

        //论著报告
        str_sql = "select zs,slqk,pm from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 40; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_lzbg(dv.Table.Rows[i]["slqk"].ToString(), dv.Table.Rows[i]["pm"].ToString(), Convert.ToDecimal(dv.Table.Rows[i]["zs"]));
            Label5.Text += list[i].ToString() + "<br/>";
        }


        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        Label6.Text = d_total.ToString();

        //业绩成果
        //1.获奖情况
        str_sql = "select jljb,hjdj,pm,zrs from hjqk where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 40; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_yjcg(dv.Table.Rows[i]["jljb"].ToString(), dv.Table.Rows[i]["hjdj"].ToString(), Convert.ToInt16(dv.Table.Rows[i]["pm"]), Convert.ToInt16(dv.Table.Rows[i]["zrs"]));
            Label7.Text += list[i].ToString() + "<br/>";
        }
        //2.优秀论文

        str_sql = "select count(zzpm) from yxlw where sfzh = '" + Session["sfzh"].ToString() + "' and zzpm=1";
        int i_count = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
        for (j = 0; j < i_count; j++)
        {
            list[i+j] = Convert.ToDecimal(0.8);
            Label7.Text += list[j+i].ToString() + "<br/>";
        }

        //6.获国家专利情况
        str_sql = "select zllx from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "' and pm=1 order by id";
        dv = DBFun.GetDataView(str_sql);
        for (k = 0; k <  dv.Table.Rows.Count; k++)
        {
            if (dv.Table.Rows[k]["zllx"].ToString() == "技术发明专利")
                list[i+j+k] = Convert.ToDecimal(1.0);
            else
                list[i + j + k] = Convert.ToDecimal(0.5);

            Label10.Text += list[i + j + k].ToString() + "<br/>";
        }

        //4.在地震预报工作方面
        str_sql = "select zj from dlyb where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
        dv = DBFun.GetDataView(str_sql);
        for (l = 0; l < dv.Table.Rows.Count; l++)
        {
            if (dv.Table.Rows[l]["zj"].ToString() == "5～5.9级")
                list[i+j+k+l] = Convert.ToDecimal(1.0);
            else if (dv.Table.Rows[l]["zj"].ToString() == "6～6.9级")
                list[i + j + k + l] = Convert.ToDecimal(1.5);
            else if (dv.Table.Rows[l]["zj"].ToString() == "7级以上")
                list[i + j + k + l] = Convert.ToDecimal(2.0);
            Label8.Text += list[i + j + k + l].ToString() + "<br/>";
        }

        //5.监测预报评比及获得先进个人情况
        str_sql = "select grpm from qgjcybpb where sfzh = '" + Session["sfzh"].ToString() + "' order by id";
        dv = DBFun.GetDataView(str_sql);
        for (m = 0; m < dv.Table.Rows.Count; m++)
        {
            if (Convert.ToDecimal(dv.Table.Rows[m]["grpm"]) == 1)
                list[i + j + k + l+m] = Convert.ToDecimal(0.4);
            else if (Convert.ToDecimal(dv.Table.Rows[m]["grpm"]) >= 2 && Convert.ToDecimal(dv.Table.Rows[m]["grpm"]) <= Convert.ToDecimal(4))
                list[i + j + k + l + m] = Convert.ToDecimal(0.2);
            else
                list[i + j + k + l + m] = Convert.ToDecimal(0);
            Label9.Text += list[i + j + k + l + m].ToString() + "<br/>";
        }

        str_sql = "select count(*) from xjgrch where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (n = 0; n < Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); n++)
        {
            list[i + j + k + l + m+n] = Convert.ToDecimal(0.6);
            Label9.Text += list[i + j + k + l + m + n].ToString() + "<br/>";
        }
        


        //7.论文被引用情况
        //str_sql = "select top 1 iif(0.5+(tycs-5)*0.1>1.5,1.5,iif(tycs<5,0,0.5+(tycs-5)*0.1)) from lwbyyqk where sfzh = '" +
        //    Session["sfzh"].ToString() + "' and pm =1  order by tycs desc";
        str_sql = "select iif(isnull(sum(tycs)),0,iif(sum(tycs)<5,0,iif(sum(tycs)>15,15,sum(tycs))))*0.1 from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        decimal dec_yyqk = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        list[i + j + k + l + m + n + 1] = Convert.ToDecimal(dec_yyqk);
        Label11.Text = list[i + j + k + l + m + n + 1].ToString() + "<br/>";

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
        Label12.Text = list[i + j + k + l + m + n + 2].ToString();

        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        Label13.Text = d_total.ToString();

        dec_yyqk = Convert.ToDecimal(Label4.Text) + Convert.ToDecimal(Label6.Text) + Convert.ToDecimal(Label13.Text);
        Label14.Text = dec_yyqk.ToString();

        str_sql = "select reason from cpry where sfzh ='" + Session["sfzh"].ToString() + "'";
        tbx_Reason.Text = DBFun.ExecuteScalar(str_sql).ToString();
    }

    //计算项目情况得分
    protected decimal GetScore_xmrw(int i_ktly1,  string str_ktjb, string str_drjs)
    {
        decimal dec_Score = 0;
        string str_sql = "";
        string str_ly1 = "", str_ly2 = "";
        if (i_ktly1 >= 3 && i_ktly1 <= 9 || i_ktly1 > 110 && i_ktly1 < 120)
        {
            str_ly1 = "国家级";
            str_ly2 = "重大项目";
        }
        else if (i_ktly1 >= 11 && i_ktly1 <= 15 || i_ktly1 > 120 && i_ktly1 < 130)
        {
            str_ly1 = "国家级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 17 && i_ktly1 <= 23 || i_ktly1 > 130 && i_ktly1 < 140)
        {
            str_ly1 = "国家级";
            str_ly2 = "面上项目";
        }
        else if (i_ktly1 >= 26 && i_ktly1 <= 29 || i_ktly1 > 210 && i_ktly1 < 220)
        {
            str_ly1 = "省部级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 31 && i_ktly1 <= 34 || i_ktly1 > 220 && i_ktly1 < 230)
        {
            str_ly1 = "省部级";
            str_ly2 = "面上项目";
        }
        else if (i_ktly1 >= 37 && i_ktly1 <= 38 || i_ktly1 > 310 && i_ktly1 < 320)
        {
            str_ly1 = "厅局级";
            str_ly2 = "重点项目";
        }
        else if (i_ktly1 >= 40 && i_ktly1 <= 42 || i_ktly1 >= 320 && i_ktly1 < 330)
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
        if (str_jljb == "国家自然科学奖" || str_jljb == "国家技术发明奖" || str_jljb == "国家科技进步奖" ) str_jljb = "国家级科技奖";
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
    protected decimal GetScore_gcxm(string str_psjb, string str_js)
    {
        decimal dec_Score = 0;
        if (str_psjb == "通过国家地震安全性评定委员会会议评审项目" && str_js == "技术负责人")
        {
            dec_Score = Convert.ToDecimal( 0.5);
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

    protected void btn_Save_Click(object sender, EventArgs e)
    {
        string str_sql = "update cpry set reason = '" + tbx_Reason.Text + "' where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (DBFun.ExecuteUpdate(str_sql))
        {
            Response.Write("<script>alert('保存成功！');</script>");
        }
        else
        {
            Response.Write("<script>alert('保存失败！');</script>");
        }
    }
}
