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
namespace VOD.Admin
{
    public partial class film_edit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //网页加载
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
                

                string Action = Request.QueryString["Action"];
                string id = Request.QueryString["ID"];
                string pid = Request.QueryString["PID"];
                if (Action == "Edit" && id != null)
                {
                    //是示信息以供修改
                   
                    strqry = string.Format("select * From T_films where ID={0}", id);
                    DataRow dr = DBFun.GetDataView(strqry).Table.Rows[0];
                    DwPath.Text = dr["pathid"].ToString();                                    
                    TbFilmname.Text = dr["film_name"].ToString();
                    TbOthername.Text = dr["other_name"].ToString();
                    TbDirector.Text = dr["film_director"].ToString();
                    TbPlayer.Text = dr["film_player"].ToString();
                    DwClass.Text = dr["film_classid"].ToString();
                    DwFrom.Text = dr["film_from"].ToString();
                    DwLevel.Text = dr["film_level"].ToString();
                    DwClear.Text = dr["film_clear"].ToString();
                    CkbBest.Items[0].Selected = (dr["filmisgood1"].ToString() == "1");
                    CkbBest.Items[1].Selected = (dr["filmisgood2"].ToString() == "1");
                    TbMoney.Text = dr["film_money"].ToString();
                    Rbfilmtype.Text = dr["playtype"].ToString();
                    RbIsReq.Text = dr["filmisseq"].ToString();
                    TbPicUrl.Text = dr["film_pic"].ToString();
                    TbGut.Text = dr["film_gut"].ToString().Replace("<br>", "\n"); ;
                    TbFilmPhyPath.Text = dr["filePhypath"].ToString();
                    uppath.Value = dr["filefolder"].ToString();
                    Rb_AllowDown.Text = dr["AllowDown"].ToString();
                    Rb_Showtype.Text = dr["showType"].ToString();
                    Tb_SearchKey.Text = dr["SearchKey"].ToString();
                    img_pic.Src = "..\\film_poster\\" + dr["film_pic"].ToString();

                    //显示详细集数
                    strqry = string.Format("select * From T_Film_detail where filmid={0} order by id asc", id);
                    string strDetail = "";
                    DataView dv = DBFun.GetDataView(strqry);
                    for (int i = 0; i < dv.Table.Rows.Count; i++)
                    {
                        strDetail += "第" + (i + 1) + "集：<input type=text name=urla" + (i + 1) + " size=60  value=" + dv.Table.Rows[i]["filename"].ToString() + ">";
                        strDetail += "&nbsp;<a href=film_edit.aspx?Action=Delete&ID=" + dv.Table.Rows[i]["id"].ToString() + "&PID=" + id + ">删除</a><br/>";
                    }
                    Label2.Text = strDetail;
                   //InnerHtml = strDetail;
                   
                }
                if (Action == "Delete" && id != null)
                {
                    strqry = string.Format("Delete From [T_film_detail] where id={0}", id);
                    DBFun.ExecuteSql(strqry);
                    strqry = string.Format("Update [T_films] set film_num=film_num-1,filmupdatetime=#{1}# where id={0}", pid,DateTime.Now.ToString());
                    DBFun.ExecuteSql(strqry);
                    Response.Redirect("film_edit.aspx?Action=Edit&ID=" + pid);
                }

            }
        }
        protected void BtnAuto_Click(object sender, EventArgs e)
        {
            //修改
            
            string strsql;
            string id = Request.QueryString["id"];
            if (id == null ||id=="")
                return;
            string img_url = UploadPicFile(myfile);
            if (img_url == "")
                img_url = "nopic.jpg";  //不上传图片，默认为无图片
            strsql = string.Format("Update T_films set Pathid = {0},Film_name='{1}',Other_name='{2}',"
                + "Film_director='{3}',Film_Player='{4}',Film_class='{5}',Film_classID={6},Film_from={7}"
                + ",film_Level={8},film_clear={9},film_money={10},film_Pic='{11}',film_gut='{12}',"
                + "playtype={13},filmisseq={14},Filmisgood1={15},"
                + "filmisGood2={16},FilePhyPath='{17}',FileFolder='{18}',filmUpdatetime=#{19}#,"
                + "Allowdown={20},showtype={21},searchKey='{22}' where id={23}",
                DwPath.Text, TbFilmname.Text, TbOthername.Text, TbDirector.Text, TbPlayer.Text,
                DwClass.SelectedItem.Text, DwClass.SelectedItem.Value, DwFrom.SelectedItem.Value,
                DwLevel.Text, DwClear.Text, (TbMoney.Text == "" ? "0" : TbMoney.Text), img_url, TbGut.Text.Replace("'", "''"),
                Rbfilmtype.Text, RbIsReq.Text, (CkbBest.Items[0].Selected ? 1 : 0), (CkbBest.Items[1].Selected ? 1 : 0),
                TbFilmPhyPath.Text, uppath.Value, DateTime.Now.ToString(),Rb_AllowDown.Text,Rb_Showtype.Text,
                (Tb_SearchKey.Text == ""?TbFilmname.Text :Tb_SearchKey.Text),id);
            if (DBFun.ExecuteUpdate(strsql))
            {
                Response.Write("<script>alert('影片修改成功！');window.location.href='film_edit.aspx?Action=Edit&ID=" + id +"';</script>");
                
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //更新详细集
            string id = Request.QueryString["id"];
            if (id == null || id == "")
                return;
            
            string strsql;
            strsql = string.Format("select * From [T_film_detail] where filmid={0} order by id asc",id);
            DataView dv = DBFun.GetDataView(strsql);
            int idv = dv.Table.Rows.Count;
            
            
            for (int i = 1; i <= idv; i++)
            {
                //修改原有的，看有没有变化，变化的才改
                if (Request.Form["urla" + i] != dv.Table.Rows[i - 1]["filename"].ToString())
                {
                    strsql = string.Format("Update [T_film_detail] set filename='{0}' where id ={1}",
                        Request.Form["urla" + i], dv.Table.Rows[i - 1]["id"].ToString());
                    DBFun.ExecuteSql(strsql);
                }
               

            }
            Response.Write("<script>alert('影片修改成功！');window.location.href='film_edit.aspx?Action=Edit&ID=" + id + "';</script>");
        }
        protected void  Button2_Click(object sender, EventArgs e)
        {
            //添加
            string id = Request.QueryString["id"];
            if (id == null || id == "")
                return;
           
            string strqry = "";
            strqry = string.Format("Insert into [T_film_detail] (filename,filmid) values ('{0}',{1})",TbAdd.Text  ,id);
            DBFun.ExecuteSql(strqry);
            strqry = string.Format("Update [T_films] set film_num=film_num+1,filmupdatetime=#{1}# where id={0}", id,DateTime.Now.ToString());
            DBFun.ExecuteSql(strqry);
            Response.Redirect("film_Edit.aspx?Action=Edit&ID=" + id);
        }

        public string UploadPicFile(System.Web.UI.HtmlControls.HtmlInputFile  Fupload)
        {
            //文件上传
            if (Fupload.PostedFile.FileName == "" &&  TbPicUrl.Text == "")
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
                extname = Fupload.PostedFile.FileName.Substring(Fupload.PostedFile.FileName.LastIndexOf(".") + 1).ToUpper();
                if ("JPG|GIF|BMP|PNG".IndexOf(extname) == -1)
                {
                    return "";
                }

                filename = dir + "\\" + DateTime.Now.ToString("yyyyMM") + rd.Next(1000).ToString() + "." + extname;
                Fupload.PostedFile.SaveAs(Server.MapPath("..\\Film_Poster\\") + filename);
                return filename;
            }
            if (TbPicUrl.Text != "")
            {

                return TbPicUrl.Text;
            }
            return "";
        }
    }
}
