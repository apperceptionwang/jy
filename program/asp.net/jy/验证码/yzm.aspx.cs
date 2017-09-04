using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class 验证码_yzm : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //生成的验证码被保存到session中
        if (Session["CheckCode"] != null)
        {
            string checkcode = Session["CheckCode"].ToString();
            if (this.TextBox1.Text == checkcode)
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('验证码输入正确!')", true);
            }
            else
            {
                ClientScript.RegisterClientScriptBlock(this.GetType(), "", "alert('验证码输入错误!')", true);
            }
        }

    }
}