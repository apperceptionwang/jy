using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.IO;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
namespace VOD.Admin
{
    public partial class film_add : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CommFun.IsAdmin();           
            string strqry;
            if (!IsPostBack)
            {
                //服务器路径
                strqry = "select * From T_Path";

                DwPath.DataSource = DBFun.GetDataView(strqry).Table;
                DwPath.DataTextField = "Caption";
                DwPath.DataValueField = "id";
                
                DwPath.DataBind();
               
                
                //类型
                strqry = "select * From T_Class";
                DwClass.DataSource = DBFun.GetDataView(strqry);
                DwClass.DataTextField = "caption";
                DwClass.DataValueField = "ID";
                DwClass.DataBind();
            }

        }
        
        public string[] ReadFolder(string sFolder)
        {
            //读取文件夹内容

            try
            {
                string[] files = Directory.GetFiles(@sFolder);

                for (int i = 0; i < files.Length; i++)
                {
                    files[i] = files[i].Substring(files[i].LastIndexOf('\\') + 1);
                }
                return files;
            }
            catch
            {
                return null;
            }
        }
        protected void BtnAuto_Click(object sender, EventArgs e)
        {
            string[] folderfiles = ReadFolder(TbFilmPhyPath.Text);

            if (folderfiles == null)
            {
                LblRead.Text = "读取目录失败！";
                LblRead.Visible = true;
            }
            else
            {

                LblRead.Visible = false;
                if (uppath.Value == "") //取得影片文件夹值，为空则填入读取到的目录
                {
                    string folder = TbFilmPhyPath.Text;
                    int i = folder.LastIndexOf('\\');
                    if (i == folder.Length - 1)
                    {
                        folder = folder.Substring(0, i);
                        TbFilmPhyPath.Text = folder;    //文件夹最后的\去掉
                    }
                    folder = folder.Substring(folder.LastIndexOf('\\') + 1);
                    uppath.Value = folder;
                }

                string extname;         //文件扩展名
                string strupid = "";         //用于显示详细集数
                string strtype = "";
                int iJs = 0;             //集数
                string rm = "RMVB|RM|RAM|RA";
                string mp = "WMV|AVI|WMA|ASF";
                foreach (string filename in folderfiles)
                {
                    extname = filename.Substring(filename.LastIndexOf('.') + 1).ToUpper();
                    if (rm.IndexOf(extname) != -1 || mp.IndexOf(extname) != -1)
                    {
                        //读取到影片文件
                        if (strtype == "")  //判断类型
                        {
                            if (rm.IndexOf(extname) != -1)
                            {
                                Rbfilmtype.Items[0].Selected = true;
                                strtype = "RM";
                            }
                            else
                            {
                                strtype = "MP";
                                Rbfilmtype.Items[1].Selected = true;
                            }
                        }
                        iJs++;
                        strupid += "第" + iJs + "集：<input type=text name=urla" + iJs + " size=60  value=" + uppath.Value + "/" + filename + "><BR>";
                    }
                    if ("JPG|GIF|BMP|PNG".IndexOf(extname) != -1 )
                    {
                        //读取到图片
                        Tb_FilmPic.Text  = TbFilmPhyPath.Text + "\\" + filename;
                        img_Photo.Src = Tb_FilmPic.Text;
                        img_Photo.Attributes["style"] = "display='';";
                    }
                    if ("TXT|INI".IndexOf(extname) != -1 )
                    {
                        //读取到文本文件
                        try
                        {
                            StreamReader txtfile = new StreamReader(@TbFilmPhyPath.Text + "\\" + filename, System.Text.Encoding.GetEncoding("GB2312"));
                            string sgut = txtfile.ReadToEnd();
                            TbGut.Text = sgut;
                        }
                        catch
                        { }
                    }
                }
                upjs.Value = iJs.ToString();
                LblRead.Text = iJs.ToString();  //设置读取后的条数
                upid.InnerHtml = strupid;   //设置客户端显示
               
                TbFilmname.Text = uppath.Value;
            }

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //添加
            //保存图片


            
            string strsql;
            string NewID = "";
            string img_url = UploadPicFile(FileUpload1);
            if (img_url == "")
                img_url = "nopic.jpg";  //不上传图片，默认为无图片
            strsql = string.Format("insert Into T_films (PathID,Film_name,Other_name,Film_director,Film_Player,"
                + "Film_class,Film_classID,Film_from,film_Level,film_clear,film_money,film_Pic,film_gut,"
                + "playtype,filmisseq,Filmisgood1,"
                + "filmisGood2,FilePhyPath,FileFolder,AllowDown,ShowType,SearchKey) values ({0},'{1}','{2}','{3}','{4}',"
                + "'{5}',{6},{7},{8},{9},{10},'{11}','{12}',"
                + "{13},{14},{15},"
                + "{16},'{17}','{18}',{19},{20},'{21}')",
                DwPath.SelectedValue, TbFilmname.Text, TbOthername.Text, TbDirector.Text, TbPlayer.Text,
                DwClass.SelectedItem.Text, DwClass.SelectedItem.Value, DwFrom.SelectedItem.Value,
                DwLevel.Text, DwClear.Text, (TbMoney.Text == "" ? "0" : TbMoney.Text), img_url, TbGut.Text.Replace("'","''"),
                Rbfilmtype.Text, RbIsReq.Text, (CkbBest.Items[0].Selected ? 1 : 0), (CkbBest.Items[1].Selected ? 1 : 0),
                TbFilmPhyPath.Text, uppath.Value, Rb_AllowDown.Text, Rb_Showtype.Text, 
                (Tb_SearchKey.Text == "" ? TbFilmname.Text : Tb_SearchKey.Text) );
            try
            {
                if (DBFun.ExecuteUpdate(strsql))
                {
                    NewID = DBFun.SearchValue("select Max(ID) from T_films");

                    int ijs = 0;
                    for (int i = 1; i <= Convert.ToInt32(upjs.Value); i++)
                    {
                        strsql = string.Format("Insert Into [T_film_detail] (filename,filmid) values ('{0}',{1})",
                            Request["urla" + i], NewID);
                        if (DBFun.ExecuteUpdate(strsql))
                        {
                            ijs++;
                        }

                    }
                    strsql = string.Format("update T_films Set film_num = {0} where id={1}", ijs, NewID);
                    DBFun.ExecuteSql(strsql);
                    Response.Write("<script>alert('影片添加成功！');window.location.href='film_edit.aspx?Action=Edit&ID=" + NewID + "';</script>");

                }
            }
            catch
            {
                Response.Write("<script>alert('影片添加失败！请确认填写正确！');</script>");
            }
           
        }
        public string UploadPicFile(FileUpload  Fupload)
        {
            //文件上传
            try
            {
                if (Fupload.PostedFile.FileName == "" && Tb_FilmPic.Text == "")
                    return "";
                string dir = DateTime.Now.ToString("yyyyMM");
                if (!Directory.Exists(Server.MapPath("..\\Film_Poster\\") + dir))
                {
                    Directory.CreateDirectory(Server.MapPath("..\\Film_Poster\\") + dir);
                    if (!Directory.Exists(Server.MapPath("..\\Film_Poster\\") + dir))
                        return "";
                }
                Random rd = new System.Random();
                string filename;
                string extname;

                if (Fupload.PostedFile.FileName != "")
                {
                    extname = Fupload.FileName.Substring(Fupload.FileName.LastIndexOf(".") + 1).ToUpper();
                    if ("JPG|GIF|BMP|PNG".IndexOf(extname) == -1)
                    {
                        return "";
                    }

                    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + "." + extname;
                    Fupload.SaveAs(Server.MapPath("..\\Film_Poster\\") + filename);
                    return filename;
                }
                if (Tb_FilmPic.Text != "")
                {
                    extname = System.IO.Path.GetExtension(Tb_FilmPic.Text);
                    filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + extname;

                    System.IO.File.Copy(Tb_FilmPic.Text, Server.MapPath("..\\Film_Poster\\") + filename);
                    return filename;
                }
                return "";
            }
            catch
            { return ""; }
        }

       
}
}