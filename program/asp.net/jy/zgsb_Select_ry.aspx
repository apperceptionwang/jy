<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zgsb_Select_ry.aspx.cs" Inherits="zgsb_select_ry" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEaD><TITLE>中国地震局 人事管理平台 评审1</TITLE>
<METa http-equiv=Content-Type content="text/html; charset=gb2312">
<STYLE>TD {
	FONT-SIZE: 9pt; LINE-HEIGHT: 140%
}
BODY {
	FONT-SIZE: 9pt; BaCKGROUND-IMaGE: url(images/bg.gif); LINE-HEIGHT: 140%
}
a:link {
	COLOR: #0033cc; TEXT-DECORaTION: none
}
a:visited {
	COLOR: #0033cc; TEXT-DECORaTION: none
}
a:active {
	COLOR: #ff0000; TEXT-DECORaTION: none
}
a:hover {
	COLOR: #000000; TEXT-DECORaTION: underline
}
</STYLE>
<STYLE type=text/css>
  BODY {
	MARGIN-TOP: 10px
}
  </STYLE>
<SCRIPT language=javascript>
function showdetail(id)
{
 window.open("detail.asp?id="+id,"detail","width=400,height=370,resizable=no,scrollbars=yes,menubar=no,status=no");
}
</SCRIPT>

<METa content="MSHTML 6.00.6000.16809" name=GENERaTOR>
</HEaD>  
<BODY text=#000000 bgColor=#ffffff leftMargin=0><form id="Form1" method="post" runat="server">

  <TABLE cellSpacing=0 cellPadding=0 width=670 align=center border=0>
    <TBODY>
      <TR>
        <TD><IMG height=79 src="./img/index/mht109.jpg" 
    width=670 id="IMG1"></TD>
      </TR>
    </TBODY>
  </TABLE>
  <TABLE style="BORDER-COLLAPSE: collapse" borderColor=#808080 cellPadding=1 
width=670 align=center border=1 id="TABLE2" runat="server" visible="true">
    <TBODY>
      <TR align=middle bgColor=#d5eaff>
        <TD style="height: 19px"><A href="default.aspx">回到首页</A></TD>
        <TD style="height: 19px"><A href="http://eaie.njtu.edu.cn/eaiesu/kejian/list.asp">职称评定</A></TD>
        <TD style="height: 19px"><A 
      href="http://eaie.njtu.edu.cn/eaiesu/kejian/teacherlist.asp">科技成果</A></TD>
        <TD style="height: 19px"><A 
      href="http://eaie.njtu.edu.cn/eaiesu/kejian/login.asp?part=教师">专家评定</A></TD>
        <TD style="height: 19px"><A 
      href="http://eaie.njtu.edu.cn/eaiesu/kejian/login.asp?part=学生">教育选拔</A></TD>
        <TD style="height: 19px" id="TD1" runat="server" visible="true"><A 
    href="zgps.aspx">正高评审</A></TD>
        <TD style="width: 114px; height: 19px;" id="TD2" runat="server" visible="true"><A 
      href="admin/admin_login.aspx">管理员登陆</A></TD>
      </TR>
    </TBODY>
  </TABLE>
  <TABLE style="BORDER-COLLAPSE: collapse" borderColor=#808080 cellPadding=5 
width=680 align=center border=0>
    <TBODY>
      <TR vAlign=top align=middle>
        <TD style="width: 185px">
            <TABLE style="BORDER-COLLAPSE: collapse" borderColor=#808080 cellPadding=1 
      width="100%" align=center border=1>
              <TBODY>
                <TR>
                  <TD align=middle bgColor=#d5eaff colSpan=2 height=20>
          快速搜索<br />
                      <asp:LinkButton ID="lbtn_Course" runat="server" Visible="False">按课程</asp:LinkButton>&nbsp;
                      <br />
                      <asp:LinkButton ID="lbtn_Teacher" runat="server" Visible="False">按人员</asp:LinkButton>&nbsp;
                      <br />
                      <asp:LinkButton ID="lbtn_" runat="server" Visible="False">综合查询</asp:LinkButton></TD>
                </TR>
                <TR>
                  <TD align=middle colSpan=2>
                      &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
                      <asp:Button ID="btn_Ok" runat="server" Font-Size="X-Small" Height="21px"
                          Text="查询" Width="46px" Visible="False" />&nbsp;
                  </TD>
                </TR>
              </TBODY>
            </TABLE>
          </TD>
        <TD width=495><TABLE style="BORDER-COLLAPSE: collapse" borderColor=#808080 cellPadding=1 
      width="100%" align=center border=1>
            <TBODY>
              <TR align=middle bgColor=#d5eaff>
                <TD colSpan=4 align="left">
                    参评人员信息</TD>
              </TR>
              <TR>
                <TD colspan=4> <asp:GridView ID="gv_cpyr" runat="server" AutoGenerateColumns="False" Height="1px"
                        Width="464px" BackColor="White" BorderColor="#E7E7FF" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Horizontal" OnSelectedIndexChanging="gv_cpyr_SelectedIndexChanging">
                      <Columns>
                          <asp:TemplateField>
                              <ItemTemplate>
                                  <asp:Image ID="Image1" runat="server" ImageUrl="img/index/mht10F.gif" />
                              </ItemTemplate>
                          </asp:TemplateField>
                          <asp:BoundField DataField="id" HeaderText="ID">
                              <HeaderStyle Font-Size="9pt" />
                          </asp:BoundField>
                          <asp:ButtonField CommandName="select" DataTextField="yourname" Text="下载" HeaderText="姓名" >
                          <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" /></asp:ButtonField>
                          <asp:BoundField DataField="xingbie" HeaderText="性别">
                              <HeaderStyle Font-Size="9pt" />
                          </asp:BoundField>
                          <asp:BoundField DataField="nianling" HeaderText="年龄">
                              <HeaderStyle Font-Size="9pt" />
                          </asp:BoundField>
                          <asp:BoundField HeaderText="现任专业技术职务" DataField="xrzw" >
                              <HeaderStyle Font-Size="9pt" HorizontalAlign="Left" />
                          </asp:BoundField>
                          <asp:BoundField DataField="sbzw" HeaderText="申报专业技术职务">
                              <HeaderStyle Font-Size="9pt" />
                          </asp:BoundField>
                      </Columns>
                    <FooterStyle BackColor="#B5C7DE" ForeColor="#4A3C8C" />
                    <RowStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" />
                    <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <PagerStyle BackColor="#E7E7FF" ForeColor="#4A3C8C" HorizontalAlign="Right" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#F7F7F7" />
                    <AlternatingRowStyle BackColor="#F7F7F7" />
                  </asp:GridView>
                </TD>
              </TR>
            </TBODY>
        </TABLE>
            <BR>
        </TD>
      </TR>
    </TBODY>
  </TABLE>
  <HR align=center width=670 SIZE=1>
  <DIV align=center>
      版权所有：防灾科技学院 信息化管理中心 史磊 </DIV>
  <!-- 调入统计系统 -->
  <SCRIPT src="电信学院学习资源共享%20课件下载平台_files/online.htm">function TABLE1_onclick() {

}

</SCRIPT>

</form>
</BODY></HTML>

