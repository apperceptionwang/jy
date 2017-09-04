using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SessionTimeOut : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session.Clear();
        string str_type = Request.QueryString["type"];
        if (str_type == null)
            Response.Write("<script>alert('页面失效，请您重新登录！');location.href = './default.aspx';</script>");
        else if (str_type == "top")
            Response.Write("<script>alert('页面失效，请您重新登录！');window.open('./default.aspx','_top')</script>");
        else if (str_type == "parent")
            Response.Write("<script>alert('页面失效，请您重新登录！');window.open('./default.aspx','_parent')</script>");
        else if (str_type == "nomsg")
            Response.Write("<script>location.href = './default.aspx';</script>");
        else if (str_type == "topnomsg")
            Response.Write("<script>window.open('./default.aspx','_top')</script>");
        else if (str_type == "isnotadmin")
            Response.Write("<script>alert('您无权访问该页面，请重新登录！');window.open('./default.aspx','_top')</script>");
        
    }
}