using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Security.Cryptography;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using Hardware;
using System.Text.RegularExpressions;
using System.IO;
using System.Xml;
using System.Text;
using System.Collections.Generic;
using System.Net;
using System.Net.Sockets;


    /// <summary>
    /// CommFun 的摘要说明
    /// </summary>
    public class CommFun
    {
        public CommFun()
        {
            //
            // TODO: 在此处添加构造函数逻辑
            //
        }
       
        public static string GetLimitChar(string txt, int lenght)
        {
            //取得自定义长度的字符串  中文123456789
            
            string outputtext = "";
            if (txt.Length > lenght)
            {
                //int tempnum = 0;
                int tempnum1 = 0;
                int tempnum2 = 0;
                byte[] byitem =System.Text.ASCIIEncoding.ASCII.GetBytes(txt);
                for (int i = 0; i < txt.Length; i++)
                {

                    if ((int)byitem[i] != 63) tempnum1++; else tempnum2++;
                    
                    if (tempnum2*2 + tempnum1  >= lenght*2) break;
                    
                }
                outputtext = txt.Substring(0, tempnum2 + tempnum1);
                outputtext += "…";

            }
            else
            {
                outputtext = txt;
            }
            return outputtext; 
        }

        /// <summary>
        /// 判断人事管理部门是否有权登陆页面，根据是否提交
        /// </summary>
        /// <param name="str_type">人事部门登陆页面类型 zgj 正高级 ej 专业技术二级</param>
        /// <param name="str_adminid">人事部门ID</param>
        /// <returns>bool  true 不允许登陆 FALSE 允许登陆</returns>
        public static bool IsTimeOut(string str_type, string str_adminid)
        {
            string str_sql = "";
            bool b_flag = false;
            if (str_type == "zgj")
            {
                str_sql = "select tj_flag from t_dict where flm = 2 and url = '" + str_adminid + "'";
            }
            else if (str_type == "ej")
            {
                str_sql = "select ej_tj_flag from t_dict where flm = 2 and url = '" + str_adminid + "'";
            }
            else if (str_type == "ts")
            {
                str_sql = "select ts_tj_flag from t_dict where flm = 2 and url = '" + str_adminid + "'";
            }
            else if (str_type == "lw")
            {
                str_sql = "select tj_flag from t_dict where flm = 11 and url = '" + str_adminid + "'";
            }
            else if (str_type == "h")
            {
                str_sql = "select h_tj_flag from t_dict where flm = 11 and url = '" + str_adminid + "'";
            }
			else if (str_type == "jy")
            {
                str_sql = "select tj_flag from t_dict where flm = 13 and url = '" + str_adminid + "'";
            }
            b_flag = Convert.ToBoolean(DBFun.ExecuteScalar(str_sql));
            return b_flag;
        }
        public static bool IsAdmin(string str_AdminName)
        {
            string str_sql = "select count(*) from master where admin_name = '" + str_AdminName + "'";
            bool b_flag = Convert.ToInt16(DBFun.ExecuteScalar(str_sql))==1;
            return b_flag;
        }
        public static void IsAdmin()
        {
            //查看是否为超级管理员
            string Ip = HttpContext.Current.Request.UserHostAddress;
            //if (ConfigurationManager.AppSettings["ServerIP"].ToString() != Ip)
            //if (ConfigurationManager.AppSettings["ServerIP"].ToString().IndexOf(Ip) == -1)
            if (1==2)
            {
                HttpContext.Current.Response.Write("<script>alert('你没有权限进入本页操作！');history.go(-1);</script>");
                HttpContext.Current.Response.End();
            }
            if (!CommFun.HasReg())
            {
                HttpContext.Current.Response.Write("软件未得到授权！请与开发商联系注册本系统。");
                HttpContext.Current.Response.End();
            }


        }
        public string GetIDList(string strqry)
        {
            //取得符合条件的ID列表
            
            
            string strOpid = "(0";
            //string strsql;
            DataView dv = DBFun.GetDataView(strqry);
            for (int i = 0; i < dv.Table.Rows.Count; i++)
            {
                strOpid += ("," + dv.Table.Rows[i][0].ToString());
            }
            strOpid += ")";
            return strOpid;
            
        }
        public int SearchInArr(string[] arStr, string strFind)
        {
            //在字符数组中查找值
            int index = -1;
            for (int i = 0; i < arStr.Length; i++)
            {
                
                if (arStr[i] == strFind)
                {
                    index = i;
                    break;
                }
            }
            return index;
        }
        public static string GetQuyu(string id)
        {
            switch (id)
            {
                case "1":
                    return "欧美地区";
                case "2":
                    return "港台地区";
                case "3":
                    return "大陆地区";
                case "4":
                    return "日韩地区";
                case "5":
                    return "其它地区";
                default:
                    return "无法确定";
               
            }
        }
        
        public static void ViewVar()
        {

           
            
            if (System.Web.HttpContext.Current.Application["AppSet"] == null)
            {


                DataRow drw = DBFun.GetDataRow("Select * From T_Setup");

                //以下设置全局变量
                
                Hashtable AppSet = new Hashtable();               
                AppSet.Add("WebSiteName", drw["sitename"].ToString());

                AppSet.Add("PointCheat", drw["PointCheat"].ToString());
                
               // System.Web.HttpContext.Current.Session.Timeout = Convert.ToInt32(syssetting[7]);
                System.Web.HttpContext.Current.Application["AppSet"] = AppSet;
            }
            if (System.Web.HttpContext.Current.Application["arUclass"] == null)
            {
                // 用户类型
                DataView dvclass = DBFun.GetDataView("select * From T_Uclass");
                string[,] arUclass = new string[dvclass.Table.Rows.Count, 3];
                for (int j = 0; j < dvclass.Table.Rows.Count; j++)
                {
                    arUclass[j, 0] = dvclass.Table.Rows[j]["Uidx"].ToString();
                    arUclass[j, 1] = dvclass.Table.Rows[j]["Utype"].ToString();
                    arUclass[j, 2] = dvclass.Table.Rows[j]["UcantBoard"].ToString();
                }
                System.Web.HttpContext.Current.Application["arUclass"] = arUclass;
            }

        }
        private  static bool HasReg()
        {
            //检查是否已注册
            try
            {
                string hardcode = "";
                Hardware.HardwareInfo hd = new Hardware.HardwareInfo();
                hardcode = hd.GetCpuID();
                MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
                byte[] hdcode1 = System.Text.Encoding.UTF8.GetBytes(hardcode + "new");
                byte[] hdcode2 = md5.ComputeHash(hdcode1);
                md5.Clear();
                hardcode = Convert.ToBase64String(hdcode2).Replace("=", "");
                string regcode = ConfigurationManager.AppSettings["RegCode"].ToString();
                if (GetRegCode(hardcode) != regcode)
                {
                    return false;
                }
                else
                {
                    return true;
                }
            }
            catch
            {
                return false;
            }
        }
        
        private static string GetRegCode(string MacCode)
        {
            string stra = MacCode.Substring(16);
            string[] arstr = new string[4]{MacCode.Substring(1, 5),
                MacCode.Substring(6, 5),MacCode.Substring(11, 5),MacCode.Substring(16,5)};
            string str5 = "";
            MD5CryptoServiceProvider md5 = new MD5CryptoServiceProvider();
            byte[] hdcode;
            byte[] regcode;
            for (int i = 0; i < arstr.Length; i++)
            {
                hdcode = System.Text.Encoding.UTF8.GetBytes(arstr[i] + "string");
                regcode = md5.ComputeHash(hdcode);
                str5 += Convert.ToBase64String(regcode).Replace("=", "");
            }
            md5.Clear();
            return str5;
        }

        


        /// <summary>
        /// 计算文字中字符数
        /// </summary>
        /// <param name="s">要计算长度的字符串</param>
        /// <returns>返回字符总数</returns>

        #region 计算文字中字符数
        public static int StringCounter(string s)
        {
            s = s.Replace("&nbsp;", " ");
            s = s.Replace("\r\n", "");
            string str1 = "abcdefghijklmnopqrstuvwxyz";
            string str2 = "0123456789";
            int L = 0;//字母个数 
            int N = 0;//数字个数 
            int O = 0;//其他字符 
            int sp = 0;//空格字数
            int C = 0;//汉字字数
            int T = 0;//总数
            string casestr = "";
            for (int i = 0; i < s.Length; i++)
            {
                casestr = s.Substring(i, 1);
                if (str1.IndexOf(casestr) != -1)
                {
                    L = L + 1;
                }
                else if (str1.ToUpper().IndexOf(casestr) != -1)
                {
                    L = L + 1;
                }
                else if (str2.IndexOf(casestr) != -1)
                {
                    N = N + 1;
                }
                else if (casestr == " ")
                {
                    sp = sp + 1;
                }
                else if (validateName(casestr))
                {
                    C = C + 1;
                }
                else
                {
                    O = O + 1;

                }

            }
            T = L + N + sp + C + O;
            //Response.Write("字母数：" + L);
            //Response.Write("");
            //Response.Write("数字数：" + N);
            //Response.Write("");
            //Response.Write("空格数：" + sp);
            //Response.Write("");
            //Response.Write("汉字数：" + C);
            //Response.Write("");
            //Response.Write("其他字符数：" + O);
            //Response.Write("");
            //Response.Write("总字符数：" + T);
            return T - sp ;
        }

        public static bool validateName(string str)
        {
            return Regex.IsMatch(str, "^[\u4E00-\u9FA5]{0,}$");//判断汉字
        }
        #endregion

        /// <summary>
        /// 替换文字中字号
        /// </summary>
        /// 
        /// <returns>替换后的文字</returns>
        /// 
        #region 替换文字中字号
        public static void ReplaceZiHao(ref string as_string, string as_zihao)
        {
            int li_begin = 0, li_end = 0, i = 0;
            do
            {
                li_begin = Convert.ToInt16(as_string.IndexOf("FONT-SIZE:", li_end));
                if (li_begin < 0) break;
                li_end = Convert.ToInt16(as_string.IndexOf("pt", li_begin));
                string ls_sub = as_string.Substring(li_begin, li_end - li_begin);
                if (ls_sub.Length <= 15)
                {
                    as_string = as_string.Replace(ls_sub, "FONT-SIZE:" + as_zihao);
                }
                //Response.Write("<script>alert('" + i.ToString() + "');</script>");
            }
            while (li_begin > 0);
        }
        #endregion

        #region 取得中文 日期 +星期
        public static string GetDateTime()
        {
            //设置日期
            string ls_week = "";
            string ls_today = DateTime.Today.DayOfWeek.ToString();
            if (ls_today.ToLower() == "monday")
                ls_week = "星期一";
            else if (ls_today.ToLower() == "tuesday")
                ls_week = "星期二";
            else if (ls_today.ToLower() == "wednesday")
                ls_week = "星期三";
            else if (ls_today.ToLower() == "thursday")
                ls_week = "星期四";
            else if (ls_today.ToLower() == "friday")
                ls_week = "星期五";
            else if (ls_today.ToLower() == "saturday")
                ls_week = "星期六";
            else if (ls_today.ToLower() == "sunday")
                ls_week = "星期日";
            return DateTime.Today.ToLongDateString() + " " + ls_week;
        }
        #endregion

        #region 计算访问量
        public static DataRow Counter(Boolean BUpdate)
        {
            //string UserIP = Request.UserHostAddress.ToString();
            string strsql = "";
            if (!BUpdate)
            {
                strsql = "Select TotalBrowser,TodayBrowser From T_counter";
                DataRow dr = DBFun.GetDataRow(strsql);
                return dr;
            }
            string strqry = "select * From T_counter";
            DataRow drw = DBFun.GetDataRow(strqry);
            if (drw["TodayDate"].ToString() != DateTime.Today.ToString())
            {
                //新的一天
                if ((int)drw["topip"] < (int)drw["todayip"])
                {
                    //刷新最高访问量
                    strsql = string.Format("Update [T_counter] Set topip={0},topdate=#{1}#", drw["todayip"].ToString(), drw["TodayDate"].ToString());
                    DBFun.ExecuteSql(strsql);
                }
                strsql = string.Format("Update [T_Counter] Set todayip=0,todaybrowser=0,daynum=daynum+1,todaydate=#{0}#,"
                    + "yesterdayip={1},yesterdaybrowser={2}", DateTime.Today.ToString(), drw["todayip"].ToString(), drw["todaybrowser"].ToString());
                DBFun.ExecuteSql(strsql);
                strsql = string.Format("Insert Into [T_counterMore] (vtime,vip,browser) values(#{0}#,{1},{2})",
                    DateTime.Today.AddDays(-1).ToString(), drw["todayip"].ToString(), drw["todaybrowser"].ToString());
                DBFun.ExecuteSql(strsql);
                strsql = string.Format("Delete From T_counterMore where vtime<=#{0}#", DateTime.Today.AddDays(-15).ToString());
                DBFun.ExecuteSql(strsql);
                strsql = "Delete From T_Online";
                DBFun.ExecuteSql(strsql);
            }
            else
            {
                //统计开始
                strsql = "Update T_Counter Set todaybrowser=todaybrowser+1,totalbrowser=totalbrowser+1";
                DBFun.ExecuteSql(strsql);
                //strqry = string.Format("Select IP From [T_Online] where ip='{0}'", UserIP);
                if (!DBFun.SearchTable(strqry))
                {
                    //新用户访问
                    //strsql = string.Format("Insert Into [T_Online] (sessionid,userid,ip) values('{0}','{1}','{2}')",
                    //    Session.SessionID.ToString(), Session["Userid"].ToString(), UserIP);
                    //DBFun.ExecuteSql(strsql);
                    strsql = "Update T_counter Set todayip=todayip+1,totalip=totalip+1";
                    DBFun.ExecuteSql(strsql);

                }

            }
            string str_sql;
            str_sql = "Select TotalBrowser,TodayBrowser From T_counter";
            drw = DBFun.GetDataRow(str_sql);
            return drw;
        }
        #endregion
        
        /// <summary>
        /// 判断SQL语句的行数JudgeRowCount
        /// </summary>
        /// <param name="str_sql">判断行数的SQL语句</param>
        /// <param name="MaxRowCount">最大行数</param>
        /// <returns>FALSE 没有超过最大行数  TRUE 超过了最大行数</returns>
        #region 判断SQL语句的行数
        public static bool JudgeRowCount(string str_sql, int MaxRowCount)
        {
            if (Convert.ToInt16(DBFun.ExecuteScalar(str_sql)) >= MaxRowCount)
                return true;
            else
                return false;
        }
        #endregion

        #region 给GridView中每一行的LinkButton添加删除确认属性
        /// <summary>
        /// 给GridView中每一行的LinkButton添加删除确认属性
        /// </summary>
        /// <param name="gv">GridView</param>
        /// <param name="str_lbtn_del">LinkButton的名字</param>
        public static void Add_ConfirmAttrib(GridView gv,string str_lbtn_del)
        {
            LinkButton lbtn;
            try
            {
                for (int i = 0; i < gv.Rows.Count; i++)
                {
                    lbtn = (LinkButton)gv.Rows[i].FindControl(str_lbtn_del);
                    lbtn.Attributes.Add("onclick", "return   confirm   (\"是否删除？\");");
                }
            }
            catch { }
        }
        #endregion


        #region 给单独的LinkButton添加删除确认属性
        /// <summary>
        /// 给单独的LinkButton添加删除确认属性
        /// </summary>
        /// <param name="lbtn_del">LinkButton的名字</param>
        public static void Add_ConfirmAttrib( LinkButton lbtn_del)
        {
            lbtn_del.Attributes.Add("onclick", "return   confirm   (\"是否删除？\");");
        }
        #endregion

        #region 冒泡法排序 大>小
        public static void Sort(ref decimal[] list)
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
        #endregion

        #region 民族
        public static void Add_mz(DropDownList ddlist_mz)
        {
            string str_qry = "、阿昌族、白族、保安族、布朗族、布依族、德昂族、东乡族、侗族、独龙族、俄罗斯族、鄂伦春族、鄂温克族、高山族、哈尼族、哈萨克族、赫哲族、回族、基诺族、京族、景颇族、柯尔克孜族、拉祜族、黎族、僳僳族、珞巴族、满族、毛南族、门巴族、蒙古族、苗族、仫佬族、纳西族、怒族、普米族、羌族、撒拉族、畲族、水族、塔吉克族、塔塔尔族、土族、土家族、佤族、维吾尔族、乌孜别克族、锡伯族、瑶族、彝族、朝鲜族、达斡尔族、傣族、仡佬族、裕固族、壮族、藏族、汉族";
            ddlist_mz.Items.Clear();
            for (int i = 0; i < 56; i++)
            {
                ddlist_mz.Items.Add(str_qry.Substring(str_qry.LastIndexOf("、") + 1));
                str_qry = str_qry.Substring(0, str_qry.LastIndexOf("、"));
            }
        }
        #endregion

        private static string MoneyNum = "零一二三四五六七八九";
        private static string MoneyUnit = "十百千万十百千亿";
        private static string CashUnit = "元角分整";
        private static string[] BeforeReplace = new string[] {  MoneyNum[0].ToString() + MoneyNum[0].ToString(),
                                                                MoneyUnit[7].ToString() + MoneyNum[0].ToString() + MoneyUnit[3].ToString() ,
                                                                MoneyNum[0].ToString() + MoneyUnit[3].ToString(),
                                                                MoneyNum[0].ToString() + MoneyUnit[7].ToString(),
                                                                MoneyUnit[7].ToString() + MoneyUnit[3].ToString(),
                                                                MoneyNum[0].ToString() + MoneyNum[0].ToString(),
                                                                MoneyNum[0].ToString() + CashUnit[1].ToString() + MoneyNum[0].ToString() + CashUnit[2].ToString(),
                                                                MoneyNum[0].ToString() + CashUnit[2].ToString()
                                                             };
        private static string[] AfterReplace = new string[] {  MoneyNum[0].ToString(),
                                                                MoneyUnit[7].ToString() + MoneyNum[0].ToString(),
                                                                MoneyUnit[3].ToString() + MoneyNum[0].ToString(),
                                                                MoneyUnit[7].ToString() + MoneyNum[0].ToString(),
                                                                MoneyUnit[7].ToString() + MoneyNum[0].ToString(),
                                                                MoneyNum[0].ToString(),
                                                                String.Empty,
                                                                String.Empty
                                                             };

        /**//// <summary>
        /// 字符串替换方法，另外一种是以 4 个数字为基础的递归方法
        /// Create By HJ 2007-10-21
        /// </summary>
        /// <param name="moneyNum"></param>
        /// <returns></returns>
        public static string getCash(decimal moneyNum)
        {
            string intNum, point;
            /**////取整数部分
            intNum = Convert.ToString(Math.Floor(moneyNum));       
            /**////取小数部分
            point = Convert.ToString(Math.Floor(moneyNum * 100));  
            point = point.Substring(point.Length - 2);

            /**////计算整数部分
            for (int i = 0; i < MoneyNum.Length; i++)
            {
                intNum = intNum.Replace(i.ToString(), MoneyNum[i].ToString());
            }
            int intNumLength = intNum.Length;
            for (int i = intNumLength - 1; i > 0; i--)
            {   /**////根据位数把单位加上
                ///如果是零则不加单位，但是 万  和  亿 需要加上
                if (intNum[i - 1] == MoneyNum[0] && (intNumLength - i + 7) % 8 != 3 && (intNumLength - i + 7) % 8 != 7) continue;
                intNum = intNum.Insert(i, MoneyUnit[(intNumLength - i + 7) % 8].ToString());
            }

            /**////加上 角 和 分 的单位
            intNum += CashUnit[0].ToString() + MoneyNum.Substring(Convert.ToInt16(point[0].ToString()), 1) + CashUnit[1].ToString() + MoneyNum.Substring(Convert.ToInt16(point[1].ToString()), 1) + CashUnit[2].ToString();

            /**////替换  零零 -> 零  亿零万  ->  亿零，零万  ->  万零，零亿 -> 亿零，亿万 -> 亿零，零角零分 - > ""，零分 - > ""，零零 -> 零，再调用一次，确保 亿零万 替换后的情况
            for (int i = 0; i < BeforeReplace.Length; i++)
            { 
                while(intNum.IndexOf(BeforeReplace[i])>-1)
                {
                    intNum = intNum.Replace(BeforeReplace[i], AfterReplace[i]);
                }
            }

            /**////最后的 零 去掉
            if (intNum.EndsWith(MoneyNum[0].ToString())) intNum = intNum.Substring(0, intNum.Length - 1);

            return intNum + CashUnit[3].ToString();
        }

        /// <summary>
        /// C#中将数字日期转换为中文日期
        /// 下面的代码可以将数字日期如：2005-12-30转换为“二〇〇五年十二月三十日”
        /// </summary>
        /// <param name="strDate"></param>
        /// <returns></returns>
        #region 数字日期转换为中文日期
        public static string Baodate2Chinese(string strDate)
         {
             char[] strChinese = new char[] {
                 '〇','一','二','三','四','五','六','七','八','九','十'
             };
             StringBuilder result = new StringBuilder();
 
             // 依据正则表达式判断参数是否正确
             Regex theReg = new Regex(@"(\d{2}|\d{4})(\/|-)(\d{1,2})(\/|-)(\d{1,2})");
             if (theReg.Match(strDate).Length != 0)
             {
                 // 将数字日期的年月日存到字符数组str中
                 string[] str = null;
                 if (strDate.Contains("-"))
                 {
                     str = strDate.Split('-');
                 }
                 else if (strDate.Contains("/"))
                 {
                     str = strDate.Split('/');
                 }
 
                 // str[0]中为年，将其各个字符转换为相应的汉字
                 for (int i = 0; i < str[0].Length; i++)
                 {
                     result.Append(strChinese[int.Parse(str[0][i].ToString())]);
                 }
                 result.Append("年");
 
                 // 转换月
                 int month = int.Parse(str[1]);
                 int MN1 = month / 10;
                 int MN2 = month % 10;
 
                 if (MN1 > 1)
                 {
                     result.Append(strChinese[MN1]);
                 }
                 if (MN1 > 0)
                 {
                     result.Append(strChinese[10]);
                 }
                 if (MN2 != 0)
                 {
                     result.Append(strChinese[MN2]);
                 }
                 result.Append("月");
 
                 // 转换日
                 int day = int.Parse(str[2]);
                 int DN1 = day / 10;
                 int DN2 = day % 10;
 
                 if (DN1 > 1)
                 {
                     result.Append(strChinese[DN1]);
                 }
                 if (DN1 > 0)
                 {
                     result.Append(strChinese[10]);
                 }
                 if (DN2 != 0)
                 {
                     result.Append(strChinese[DN2]);
                 }
                 result.Append("日");
             }
             else
             {
                 throw new ArgumentException();
             }
 
             return result.ToString();
         }
        #endregion

        #region 上传文件
        public static string UploadFile(FileUpload Fupload, string str_mulu, string str_maxid)
        {
            //文件上传
            string str_ParentFolder, str_FilePath="";
            string str_NewFileName, str_OriginalFileName;
            try
            {
                if (Fupload.PostedFile.FileName == "")
                    return ",";
                str_ParentFolder = HttpContext.Current.Server.MapPath(".\\" + str_mulu + "\\");

                //创建以教师id+课程id为名的文件夹
                //string str_TeacherId, str_CourseId, str_FileType;
                //str_TeacherId = Session["TeacherID"].ToString();
                //str_CourseId = ddlist_Course.SelectedValue;
                //str_FileType = ddlist_Type.SelectedValue;
                //dir = str_TeacherId + "_" + str_CourseId;
                if (!Directory.Exists(str_ParentFolder))
                {
                    Directory.CreateDirectory(str_ParentFolder);
                    if (!Directory.Exists(str_ParentFolder))
                        return "";
                }
                //Random rd = new Random();

                string extname;


                extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                str_OriginalFileName = Fupload.FileName;
                str_NewFileName = str_maxid + "." + extname;
                //判断上传课件类型
                string str_sql = "select url from t_dict where flm=8 and bm in (4,5)";
                DataView dv = DBFun.dataView(str_sql);
                string str_UploadFileType = dv.Table.Rows[0]["url"].ToString();
                string str_UploadFileSize = dv.Table.Rows[1]["url"].ToString();
                if (str_UploadFileType.IndexOf(extname.ToLower()) == -1)
                {
                    //Response.Write("<script>alert('不允许上传 " + extname + " 类型的文件！');</script>");
                    return "不允许上传 " + extname + " 类型的文件！";
                }
                if (Convert.ToDecimal(str_UploadFileSize) * Convert.ToDecimal(1024) < Fupload.PostedFile.ContentLength)
                {
                    //Response.Write("<script>alert('不允许上传超过 " + str_UploadFileSize + "KB的文件！');</script>");
                    return "不允许上传超过 " + str_UploadFileSize + "KB的文件！";
                }

                //string str_sql;
                //str_sql = " Select iif(Max(FileID),Max(FileID)+1,1) " +
                //          " From CourseTeacher " +
                //          " Where (CourseID=" + str_CourseId + ") AND (TeacherID = " + str_TeacherId + ");";
                //int i_MaxID = (int)DBFun.ExecuteScalar(str_sql);


                ///*判断是否更名*/
                //if (tbx_Rename.Visible & tbx_Rename.Text.Trim() != "")
                //{
                //    filename = tbx_Rename.Text.Trim() + "." + extname;
                //}
                //else
                //{
                //    filename = Fupload.FileName;
                //}
                //if (File.Exists(str_ParentFolder + dir + "\\" + filename))
                //{
                //    Response.Write("<script>alert('文件 " + filename + " 已存在！');</script>");
                //    return "";
                //}

                Fupload.PostedFile.SaveAs(str_ParentFolder + str_NewFileName);
                str_FilePath = str_ParentFolder + str_NewFileName;
                //str_sql = "Insert Into CourseTeacher (CourseID ,TeacherID ,FileID,FilePath,FileName,FileType,Chapter,CreateDate) Values (" +
                //          str_CourseId + "," + str_TeacherId + "," + i_MaxID.ToString() + ",'" + dir + "','" + filename + "','" +
                //          str_FileType + "','" + tbx_Chapter.Text + "','" + System.DateTime.Today.ToLongDateString() + "')";
                //DBFun.ExecuteUpdate(str_sql);

                Fupload.Dispose();
                return str_OriginalFileName + "," + str_NewFileName;


                //用文件名上传的方式
                //if (tbx_Research.Text != "")
                //{
                //    extname = System.IO.Path.GetExtension(tbx_Research.Text);
                //    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + extname;

                //    System.IO.File.Copy(tbx_Research.Text, Server.MapPath(".\\kejian\\") + filename);
                //    return filename;
                //}
                //return "";
            }
            catch( Exception e)
            {
                File.Delete(str_FilePath);
                //Response.Write("<script>alert('文件上传失败！');</script>");
                return "文件上传失败！";
            }
        }
        #endregion


        #region 获得url最后的文件名

        public static string GetFileName()
        {
            string str_FileName = HttpContext.Current.Request.Url.ToString().Substring(HttpContext.Current.Request.Url.ToString().LastIndexOf('/') + 1);
            //if (s.IndexOf("?") > -1) s = s.Substring(0, s.IndexOf("?"));
            str_FileName = Path.GetFileName(str_FileName);
            return str_FileName;
        }
        #endregion

        /// <summary>
        ///判断字符串是否为身份证号
        /// </summary>
        /// <param name="strCardCode">输入的字符串</param>
        /// <returns>bool:是否为身份证号</returns>
        #region 判断字符串是否为身份证号
        public static bool IsCardCode(string strCardCode)
        {
            bool isRight = true;
            if (strCardCode.Length != 18 && strCardCode.Length != 15)
                return false;
            else if (strCardCode.Length == 15)
            {
                try
                {
                    Convert.ToInt64(strCardCode);
                }
                catch
                {
                    return false;
                }

            }
            else if (strCardCode.Length == 18)
            {
                string[] prov ={"11","12","13","14","15","21","22","23","31","32","33","34","35","36","37","41","42","43","44","45","46","50",
                    "51","52","53","54","61","62","63","64","65","81","82"};
                string s1 = strCardCode.Substring(0, 2);
                string s2 = strCardCode.Substring(0, 17);
                string s3 = strCardCode.Substring(6, 8);
                string s4 = s2.Substring(16, 1);
                try
                {
                    Convert.ToInt64(s2);
                }
                catch
                {
                    return false;
                }
                int iPos = 0;
                for (iPos = 0; iPos < prov.Length; iPos++)
                {
                    if (prov[iPos] == s1)
                        break;
                }
                if (iPos >= prov.Length)
                {
                    return false;
                }
                if (Convert.ToInt32(s3.Substring(0, 4)) < 1910 || Convert.ToInt32(s3.Substring(0, 4)) > (DateTime.Now.Year - 10))
                {
                    return false;
                }
                if (Convert.ToInt32(s3.Substring(4, 4).Substring(0, 2)) == 0 || Convert.ToInt32(s3.Substring(4, 4).Substring(0, 2)) > 12)
                {
                    return false;
                }
                int iTmp = Convert.ToInt32(s3.Substring(4, 4).Substring(2, 2));
                if (iTmp == 0 || iTmp > 31)
                {
                    return false;
                }
                if (strCardCode.Substring(17, 1).ToUpper() != "X")
                {
                    try
                    {
                        Convert.ToInt32(strCardCode.Substring(17, 1));
                    }
                    catch
                    {
                        return false;
                    }
                }
            }
            return isRight;
        }
        #endregion
		
        #region  修改AppSettings中的Value
        public static void SetAppSettings(string sKey,string sValue)
        {
            
            XmlDocument xmlDoc = new XmlDocument();
            xmlDoc.Load(AppDomain.CurrentDomain.SetupInformation.ConfigurationFile);
            foreach (XmlElement element in xmlDoc.DocumentElement)
            {
                if (element.Name.Equals("appSettings"))
                {
                    foreach (XmlNode node in element.ChildNodes)
                    {
                        try
                        {
                            if (node.Attributes[0].Value.Equals(sKey))
                            {
                                node.Attributes[1].Value = sValue;
                            }
                        }
                        catch { }
                    }
                }
            }
            xmlDoc.Save(AppDomain.CurrentDomain.SetupInformation.ConfigurationFile);
            ConfigurationManager.RefreshSection("appSettings");
        }
        #endregion

        public static void error_record(string str_jsh,string str_jsm,string errText)
        {
            System.Net.IPAddress[] addressList = Dns.GetHostByName(Dns.GetHostName()).AddressList;
            string nativeIP, serverIP;
            if (addressList.Length > 1)
            {
                nativeIP = addressList[0].ToString();
                serverIP = addressList[1].ToString();
            }
            else
            {
                nativeIP = addressList[0].ToString();
                serverIP = "Break the line...";
            }
            string str_content = "时间：" + DateTime.Now.ToString() + '\r' + '\n' +
                                 "登陆账号：" + str_jsh + '\r' + '\n' +
                                 "姓名：" + str_jsm + '\r' + '\n' +
                                 "IP：" + nativeIP + "|" + serverIP + '\r' + '\n' +
                                 "IP：" + HttpContext.Current.Request.ServerVariables["REMOTE_ADDR"] + '\r' + '\n' +
                                 "错误原因：" + errText + '\r' + '\n';
            string time = System.DateTime.Now.ToShortTimeString();
            string text = str_content.Replace(" ", "").Replace("&nbsp;", "");
            string sss = "log.txt";
            //指定路径
            //sss = "d:\\" + sss;
            sss = HttpContext.Current.Request.PhysicalApplicationPath + sss;
            //如果文件a.txt存在就打开，不存在就新建 .append 是追加写
            //File.Delete(sss);
            FileStream fst = new FileStream(sss, FileMode.Append);
            //写数据到a.txt格式
            StreamWriter swt = new StreamWriter(fst, System.Text.Encoding.GetEncoding("utf-8"));
            //写入
            //swt.WriteLine(time + '\r' + '\n' + "写" + text);
            swt.WriteLine(text);
            swt.Close();
            fst.Close();
        }

    }
