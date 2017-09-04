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

public partial class Admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        HttpResponse resp;
        resp = Page.Response;
        resp.ContentEncoding = System.Text.Encoding.GetEncoding("GB2312");
        resp.AppendHeader("Content-Disposition", "attachment;filename=1.xls" );
        string colHeaders = "";
        string str_sql = "select sfzh from cpry where sh_flag='通过' and edit_flag = false and tj_flag='推荐' order by gzdw asc, ID asc";
        DataView dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            colHeaders += PersonInfo(dv.Table.Rows[i]["sfzh"].ToString())+"\n\n";
        }

        resp.Write(colHeaders);
        //写缓冲区中的数据到HTTP头文件中
        resp.End();
    }

    #region 把日期型数据格式化为“yyyy年mm月”
    /// <summary>
    /// 把日期型数据格式化为“yyyy年mm月”
    /// </summary>
    /// <param name="str_date"></param>
    /// <returns></returns>
    protected string GetYearMonth(string str_date)
    {
        string str_yearmonth="";
        try
        {
            //str_yearmonth = Convert.ToDateTime(str_date).Year.ToString() + "年" + Convert.ToDateTime(str_date).Month.ToString() + "月";
            str_yearmonth = (Convert.ToDateTime(str_date)).ToString("yyyy年MM月");
        }
        catch { }
        return str_yearmonth;
    }
    #endregion

    #region 生成个人的所有信息的字符串
    /// <summary>
    /// 生成个人的所有信息的字符串
    /// </summary>
    /// <param name="str_sfzh">身份证号</param>
    /// <returns></returns>
    protected string PersonInfo(string str_sfzh)
    {
        string str_sql = "select * from cpry where sfzh = '"+str_sfzh+"'";
        DataRow dr = DBFun.GetDataRow(str_sql);

        DataView dv;
        //Label lbl_Value;
        int i_id;
        //str_sql = "select * from cdrwqk where sfzh = '"+str_sfzh+"'  order by id;";
        //dv = DBFun.GetDataView(str_sql);
        //for (int m = 0; m < dv.Table.Rows.Count; m++)
        //{
        //    if (m == 6) break;
        //    i_id = m + 5;
        //    lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "1");
        //    lbl_Value.Text = dv.Table.Rows[m]["rwmc"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "2");
        //    lbl_Value.Text = dv.Table.Rows[m]["gznr"].ToString();
        //    lbl_Value = (Label)this.FindControl("lbl3_" + i_id.ToString() + "3");
        //    lbl_Value.Text = dv.Table.Rows[m]["rwmc"].ToString();
        //}


        // typeid=="1"时导出为EXCEL格式文件；typeid=="2"时导出为XML格式文件

        string colHeaders = "中国地震局正高级专业技术职务任职资格" + "\t\n";
        colHeaders += "综 合 评 审 表" + "\t\n";
        colHeaders += "（适用于研究员评审）" + "\t\n";
        colHeaders += "工作单位：" + "\t" + dr["gzdw_mc"].ToString() + "\t\n";
        colHeaders += "姓    名：" + "\t" + dr["yourname"].ToString() + "\t\n";
        colHeaders += "现任专业" + "\t\n";
        colHeaders += "技术职务：" + "\t" + dr["xrzw"].ToString() + "\t\n";
        colHeaders += "申报专业" + "\t\n";
        colHeaders += "技术职务：" + "\t" + dr["sbzw"].ToString() + "\t\n";
        colHeaders += "从事工作：" + "\t" + dr["csgz"].ToString() + "\t\n";
        colHeaders += "填表日期：" + "\t" + dr["tbrq"].ToString() + "\t\n";
        colHeaders += "中国地震局人事教育和科技司制" + "\t\n";
        colHeaders += "二〇〇九年十月" + "\t\n";
        colHeaders += "\t\n";
        colHeaders += "\t\n";
        colHeaders += "一、个人简历和业务工作简介" + "\t\n";
        colHeaders += "姓  名" + "\t" + dr["yourname"].ToString() + "\t" +
                      "出生年月" + "\t\t" + GetYearMonth(dr["birth"].ToString())+
                      "\t" + "性  别" + "\t" + dr["xingbie"].ToString() + "\t\n";
        colHeaders += "最高学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\t\n";
        colHeaders += "\t" + dr["zgxl_mc"].ToString() + "\t" +
                      GetYearMonth(dr["zgxl_bysj"].ToString()) + 
                      "\t\t" + dr["zgxl_zy"].ToString() + "\t\t" + dr["zgxl_sydw"].ToString() + "\t\n";
        colHeaders += "符合申报条件的学历" + "\t" + "学历名称" + "\t" + "毕业时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\t\n";
        colHeaders += "\t" + dr["fhxl_mc"].ToString() +
                       GetYearMonth(dr["fhxl_bysj"].ToString()) +


                      "\t\t" + dr["fhxl_zy"].ToString() + "\t\t" + dr["fhxl_sydw"].ToString() + "\t\n";

        colHeaders += "合申报条件的学位符" + "\t" + "学位名称" + "\t" + "取得时间(年、月)" + "\t\t" + "专   业" + "\t\t" + "授予单位" + "\t\n";
        colHeaders += "\t" + dr["fhxw_mc"].ToString() + "\t" +
                      GetYearMonth(dr["fhxw_qdsj"].ToString()) +
                      "\t\t" + dr["fhxw_zy"].ToString() + "\t\t" + dr["fhxw_sydw"].ToString() + "\t\n";
        colHeaders += "现任技术职务" + "\t" + dr["xrzw"].ToString() + "\t\t" + "评定时间(年、月)" + "\t" +
                      GetYearMonth(dr["pdsj"].ToString()) +
                      "\t" + "聘任时间(年、月)" + "\t" +
                      GetYearMonth(dr["prsj"].ToString()) +
                      "\t\n";
        colHeaders += "业务工作简介：（限800字）" + "\n";
        ftb_content.Text = dr["gzjj"].ToString();
        colHeaders += ftb_content.HtmlStrippedText;
        colHeaders += "\t\n";
        colHeaders += "\t\n";
        colHeaders += "\t\n";
        colHeaders += "二、任现职以来承担的主要任务和项目情况" + "\t\n";
        colHeaders += "（一）承担任务情况" + "\t\n";
        colHeaders += "序号" + "\t" + "负责某方面工作情况" + "\t" + "具体内容" + "\t\n";
        colHeaders += "1" + "\t" + "全面主持强破坏性地震现场的考察、监测预报、震害评估、应急救援等工作" + "\t" + dr["cdrw_gznr1"].ToString() + "\t\n";
        colHeaders += "2" + "\t" + "主持所（省局）级综合震情监测、分析预报工作" + "\t" + dr["cdrw_gznr2"].ToString() + "\t\n";
        colHeaders += "3" + "\t" + "负责所（省局）级学科方法震情监测、分析预报工作" + "\t" + dr["cdrw_gznr3"].ToString() + "\t\n";
        colHeaders += "4" + "\t" + "培养研究生情况：" + "\t" + "协助培养博士生人数" + "\t" + dr["pyyjs1"].ToString() + "\t" + "毕业人数" + "\t" + dr["pyyjs2"].ToString() + "\t\n";
        colHeaders += "\t\t" + "培养硕士生人数" + "\t" + dr["pyyjs3"].ToString() + "\t" + "毕业人数" + "\t" + dr["pyyjs4"].ToString() + "\t\n";
        str_sql = "select * from cdrwqk where sfzh = '"+str_sfzh+"'  order by id;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 6) break;
            i_id = i + 5;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["rwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["gznr"].ToString() + "\t\n";
        }
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "（二）承担项目情况（限10项）" + "\t\n";
        colHeaders += "序号" + "\t" + "项 目 名 称" + "\t" + "来源" + "\t" + "编号" + "\t" + "起止时间（年、月）" +
                      "\t" + "经费数（万元）" + "担任何角色" + "\t\n";
        str_sql = "SELECT * from cdxmqk where sfzh = '"+str_sfzh+"' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktly2"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["ktbh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["qzsj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jfs"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["drjs"].ToString()) + "\t\n";
        }
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "三、任现职以来撰写的主要学术论著和报告情况（限10篇）" + "\t\n";
        colHeaders += "序号\t" + "论著或报告名称\t" + "字 数\t" + "收录情况\t" + " 刊物名称及期号或出版社名称或国际学术会议论文集名称\t" + "排 名\t" + "发表时间（年、月）\t\n";


        str_sql = "SELECT * from lzbgqk where sfzh = '"+str_sfzh+"'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lzmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zs"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["slqk"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\t\n";

        }
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += " 四、任现职以来取得的业绩成果" + "\t\n";
        colHeaders += "（一）获奖情况（限10项）" + "\t\n";
        colHeaders += "序号\t" + "获奖成果名称\t" + "奖励名称\t" + "获奖等级\t" + "排 名\t" + " 获奖时间\t\n";
        str_sql = "SELECT * from hjqk where sfzh = '"+str_sfzh+"' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjcgmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["jljb"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjdj"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["hjsj"].ToString()) + "\t\n";

        }
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "（二）获得国家一级学会优秀论文奖情况（限3项）\t\n";
        colHeaders += "序号\t" + "论文名称\t" + "获奖名称\t" + "作者排名\t\n";

        str_sql = "SELECT * from yxlw where sfzh = '"+str_sfzh+"'  order by id;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["hjmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zzpm"].ToString() + "\t\n";
        }
        colHeaders += "注：同一项成果获得不同级别的奖励，只填写获得最高级别奖励的情况，不得重复填写\t\n";
        colHeaders += "（三）论文（第一作者或通讯作者）被引用情况\t\n";
        colHeaders += "序号\t" + "论文名称\t" + "作者\t" + "发表时间\t" + "刊物名称、卷、期、页码\t" + "他引次数\t\n";

        str_sql = "SELECT * from lwbyyqk where sfzh = '"+str_sfzh+"' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 10) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["lwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zz"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["fbsj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["kwmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["tycs"].ToString() + "\t\n";
        }
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "（四）获国家专利情况（限3项）\t\n";
        colHeaders += "序号\t" + "专利名称\t" + "专利号\t" + "时间\t" + "专利类型\t" + "排名\t\n";
        str_sql = "SELECT * from hgjzlqk where sfzh = '"+str_sfzh+"' order by id ;";
        dv = DBFun.GetDataView(str_sql);

        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 3) break;
            i_id = i + 1;

            colHeaders += i_id.ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlmc"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += dv.Table.Rows[i]["zlh"].ToString() + "\t";
            colHeaders += GetYearMonth(dv.Table.Rows[i]["sj"].ToString()) + "\t";
            colHeaders += dv.Table.Rows[i]["pm"].ToString() + "\t\n";

        }
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "五、代表性成果（限2项）\t\n";
        colHeaders += "（一）代表性成果一\t\n";
        colHeaders += "标题\t" + dr["dbxcg_title1"].ToString() + "\t\n";
        ftb_content.Text = dr["dbxcg_content1"].ToString();
        colHeaders += "内容（限600字）" + ftb_content.HtmlStrippedText + "\t\n";
        colHeaders += "附件" + dr["dbxcg_fj1"].ToString() + "\t\n";
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "（二）代表性成果二\t\n";
        colHeaders += "标题\t" + dr["dbxcg_title2"].ToString() + "\t\n";
        ftb_content.Text = dr["dbxcg_content2"].ToString();
        colHeaders += "内容（限600字）" + ftb_content.HtmlStrippedText + "\t\n";
        colHeaders += "附件" + dr["dbxcg_fj2"].ToString() + "\t\n";
        colHeaders += "\t\n";
        colHeaders += "\t\n";

        colHeaders += "六、上次申报后取得的新成果（限200字）\t\n";
        ftb_content.Text = dr["chengguo"].ToString();
        colHeaders += ftb_content.HtmlStrippedText + "\t\n";
        colHeaders += "年  度  考  核  情 况\t\n";

        str_sql = "SELECT url from t_dict where flm = 8 and bm = 6";
        int i_year = DateTime.Now.Year;
        try { i_year = Convert.ToInt16(DBFun.ExecuteScalar(str_sql)); }
        catch { }
        i_year--;
        colHeaders += "考核年度\t" + i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\t";
        i_year--;
        colHeaders += i_year.ToString() + "年\t\n";
        colHeaders += "考核等级\t" + dr["ndkh1"].ToString() + "\t" + dr["ndkh2"].ToString() + "\t" + dr["ndkh3"].ToString() + "\t\n";

        colHeaders += "\t\n\t\n七、外语水平\n";
        colHeaders += "1. 参加全国专业技术人员职称外语等级考试情况：\n";
        colHeaders += "考试时间：\t" + dr["kssj"].ToString() + "\t语种：\t" + dr["yz"].ToString() + "\t级别：\t" + dr["jb"].ToString() + "\t专业：\t" + dr["zy"].ToString() + "\t分数：\t" + dr["fs"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由（限50字）：\n" + dr["wymsly"].ToString() + "\n";
        colHeaders += "3.翻译论文、论著内容：\n";
        colHeaders += "翻译论文或著作名称（限五项）\t\t原文种及翻译文种\t出版单位期刊名称\t出版时间\t字数（万）\n";


        str_sql = "SELECT * from fylw where sfzh = '"+str_sfzh+"' order by id ;";
        dv = DBFun.GetDataView(str_sql);
        decimal dec_total = 0;
        for (int i = 0; i < dv.Table.Rows.Count; i++)
        {
            if (i == 5) break;
            i_id = i + 1;
            colHeaders += i_id.ToString() + "\t" + dv.Table.Rows[i]["fylw"].ToString() + "\t" + dv.Table.Rows[i]["ywz"].ToString() + "\t"
            + dv.Table.Rows[i]["cbdw"].ToString() + "\t" + GetYearMonth(dv.Table.Rows[i]["cbsj"].ToString()) + "\t" + dv.Table.Rows[i]["zs"].ToString() + "\n";
            dec_total += Convert.ToDecimal(dv.Table.Rows[i]["zs"]);
        }
        colHeaders += "合计\t\t\t\t\t" + dec_total.ToString() + "\n";
        colHeaders += "八、计算机水平\n";
        colHeaders += "1.    参加全国专业技术人员计算机应用能力考试情况：\n";
        colHeaders += "通过科目1：\t" + dr["jsj_km1"].ToString() + "\t";
        colHeaders += "科目2：\t" + dr["jsj_km2"].ToString() + "\n";
        colHeaders += "科目3：\t" + dr["jsj_km3"].ToString() + "\t";
        colHeaders += "科目4：\t" + dr["jsj_km4"].ToString() + "\n";
        colHeaders += "2.如免试，免试理由：\n";
        if (dr["jsj_msly"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（1）计算机专业本科以上；\n";
        if (dr["jsj_msly"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（2）全国计算机专业资格考试" + dr["jsj_msly_dj"].ToString() + "级证书；\n";
        if (dr["jsj_msly"].ToString() == "3")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "（3）博士毕业；\n";

        colHeaders += "九、破格申报理由\n";
        colHeaders += "1.破格申报类别：\n";
        if (dr["pglb"].ToString() == "1")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "1、学历破格\t";
        if (dr["pglb"].ToString() == "2")
            colHeaders += "■";
        else
            colHeaders += "□";
        colHeaders += "2、资历破格\n";
        colHeaders += "2.破格申报条件：\n";
        if (dr["pgtj"].ToString() == "1")
            colHeaders += "■1.获得奖励\t□2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "2")
            colHeaders += "□1.获得奖励\t■2、发表论著\t□3承担重点项目\n";
        else if (dr["pgtj"].ToString() == "3")
            colHeaders += "□1.获得奖励\t□2、发表论著\t■3承担重点项目\n";
        colHeaders += "3.具体破格理由：\n";

        string str_pgly="";
        string str_jtpgly = dr["jtpgly"].ToString();
        if (str_jtpgly != "" && str_jtpgly != null)
        {
            str_pgly = "（3）作为项目负责人承担国家级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "项目。";
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（2）作为第一作者，有" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "篇学术论文被SCI、EI、ISTP收录；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "等奖，排名第" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + "；\n" + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "奖" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
            str_jtpgly = str_jtpgly.Substring(0, str_jtpgly.LastIndexOf("|"));
            str_pgly = "（1）获得国家级或省部级" + str_jtpgly.Substring(str_jtpgly.LastIndexOf("|") + 1) + str_pgly;
        }
        colHeaders += str_pgly;
        return colHeaders;
    }

    #endregion
}
