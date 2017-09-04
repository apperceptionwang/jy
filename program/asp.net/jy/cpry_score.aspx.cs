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

public partial class Admin_cpry_score : System.Web.UI.Page
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
    protected void bindData()
    {
        decimal[] list = new decimal[40];
        //项目任务得分
        //4.负责某方面技术工作
        string str_sql = "select cdrw_gznr1,cdrw_gznr2,cdrw_gznr3,pyyjs2,pyyjs4 from cpry where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataRow dr = DBFun.GetDataRow(str_sql);
        if (dr == null) return;
        if (dr["cdrw_gznr1"].ToString().Length > 2)
            lbl1_2.Text = "0.8";
        else if (dr["cdrw_gznr2"].ToString().Length > 2)
            lbl1_2.Text = "0.5";
        else if (dr["cdrw_gznr3"].ToString().Length > 2)
            lbl1_2.Text = "0.3";
        else
            lbl1_2.Text = "0";
        //5.研究生培养
        try
        {
            if (dr["pyyjs2"].ToString() == "") dr["pyyjs2"] = 0;
            if (dr["pyyjs4"].ToString() == "") dr["pyyjs4"] = 0;
            if (Convert.ToInt16(dr["pyyjs2"].ToString()) >= 1 || Convert.ToInt16(dr["pyyjs4"].ToString()) >= 1)
                lbl1_3.Text = "1.0";
            else
                lbl1_3.Text = "0";
        }
        catch{
            lbl1_3.Text = "0";
        }
        //1.2.3
        str_sql = "select ktly1,ktjb,drjs from cdxmqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        DataView dv = DBFun.GetDataView(str_sql);
        int i = 0;
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_xmrw(Convert.ToInt16( dv.Table.Rows[i]["ktly1"]), dv.Table.Rows[i]["ktjb"].ToString(), dv.Table.Rows[i]["drjs"].ToString());
            lbl1_1.Text += list[i].ToString() + "<br/>";
        }
        //foreach (decimal d in list)
        //{
        //    lbl1_1.Text += d.ToString()+"<br/>";
        //}
        list[i] = Convert.ToDecimal(lbl1_2.Text);
        list[i + 1] = Convert.ToDecimal(lbl1_3.Text);
        Sort(ref list);
        decimal d_total = 0;

        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        lbl1_total.Text = d_total.ToString();

        //论著报告
        str_sql = "select zs,slqk,pm from lzbgqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        dv = DBFun.GetDataView(str_sql);
        for (i = 0; i < 10; i++)
        {
            list[i] = 0;
        }
        for (i = 0; i < dv.Table.Rows.Count; i++)
        {
            list[i] = GetScore_lzbg(dv.Table.Rows[i]["slqk"].ToString(), dv.Table.Rows[i]["pm"].ToString(), Convert.ToDecimal( dv.Table.Rows[i]["zs"]));
            lbl2_1.Text += list[i].ToString() + "<br/>";
        }
        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        lbl2_total.Text = d_total.ToString();



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
            lbl3_1.Text += list[i].ToString() + "<br/>";
        }
        //2.优秀论文
        int j, k;
        str_sql = "select count(zzpm) from yxlw where sfzh = '" + Session["sfzh"].ToString() + "' and zzpm=1";
        int i_count = Convert.ToInt16(DBFun.ExecuteScalar(str_sql));
        for (j = i ; j < i+i_count; j++)
        {
            list[j] = Convert.ToDecimal(0.8);
            lbl3_1.Text += list[j].ToString() + "<br/>";
        }
        //3.获国家专利情况
        str_sql = "select zllx from hgjzlqk where sfzh = '" + Session["sfzh"].ToString() + "' and pm=1";
        dv = DBFun.GetDataView(str_sql);
        for (k = j; k < j+dv.Table.Rows.Count; k++)
        {
            if (dv.Table.Rows[k-j]["zllx"].ToString() == "技术发明专利")
                list[k] = Convert.ToDecimal(1.0);
            else
                list[k] = Convert.ToDecimal(0.5);
            
            lbl3_1.Text += list[k].ToString() + "<br/>";
        }

        //4.论文被引用情况
        //str_sql = "select top 1 iif(0.5+(tycs-5)*0.1>1.5,1.5,iif(tycs<5,0,0.5+(tycs-5)*0.1)) from lwbyyqk where sfzh = '" + 
        //    Session["sfzh"].ToString() + "' and pm =1  order by tycs desc";
        decimal dec_yyqk = 0;
        str_sql = "select count(*) from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
        if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) > 0)
        {
            str_sql = "select iif(sum(tycs)<5,0,iif(sum(tycs)>15,15,sum(tycs)))*0.1 from lwbyyqk where sfzh = '" + Session["sfzh"].ToString() + "'";
            dec_yyqk = Convert.ToDecimal(DBFun.ExecuteScalar(str_sql));
        }
        list[k+1] = Convert.ToDecimal(dec_yyqk);
        lbl3_2.Text = list[k+1].ToString() + "<br/>";
        
        Sort(ref list);
        d_total = 0;
        for (i = 0; i < 5; i++)
        {
            d_total += list[i];
        }
        lbl3_total.Text = d_total.ToString();
        dec_yyqk = Convert.ToDecimal(lbl1_total.Text) + Convert.ToDecimal(lbl2_total.Text) + Convert.ToDecimal(lbl3_total.Text);
        lbl_sum.Text = dec_yyqk.ToString();

        str_sql = "select reason from cpry where sfzh ='"+Session["sfzh"].ToString()+"'";
        tbx_Reason.Text = DBFun.ExecuteScalar(str_sql).ToString();
    }

    //计算项目情况得分
    protected decimal GetScore_xmrw(int i_ktly1, string str_ktjb, string str_drjs)
    {
        decimal dec_Score = 0;
        string str_sql = "";
        string str_ly1="", str_ly2="";
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
    protected decimal GetScore_lzbg(string str_slqk, string str_pm,decimal dec_zs)
    {
        decimal dec_Score = 0;
        if (str_pm == "1") 
            str_pm = "第一作者";
        else if (str_pm != "1")
            str_pm = "非第一作者";
        string str_sql = "select pwd from t_dict where name = '" + str_slqk  + "' and content = '" + str_pm + "'";
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
    protected decimal GetScore_yjcg(string str_jljb, string str_hjdj, int int_pm,int int_zrs)
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

    protected void btn_Save_Click(object sender, EventArgs e)
    {
        string str_sql = "update cpry set reason = '"+tbx_Reason.Text+"' where sfzh = '"+Session["sfzh"].ToString()+"'";
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
