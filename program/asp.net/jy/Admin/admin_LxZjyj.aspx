<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admin_LxZjyj.aspx.cs" Inherits="admin_LxZjyj" %>
<%@ Register assembly="AspNetPager" namespace="Wuqi.Webdiyer" tagprefix="webdiyer" %>
<%@ Register assembly="FreeTextBox" namespace="FreeTextBoxControls" tagprefix="ftb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<HTML>
	<HEAD>
		<title>立项评审项目进度管理</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<meta content="http://schemas.microsoft.com/intellisense/ie5" name="vs_targetSchema">
		<LINK href="Admin.css" type="text/css" rel="stylesheet">
	    <style type="text/css">
            .style9
            {
                width: 1079px;
            }
            </style>
	</HEAD>
	<body >
		<form id="Form1" method="post" runat="server">
			<div align="center">
				<table class="tableBorder" id="table2" style="WIDTH: 100%" height="240" cellSpacing="1"
					cellPadding="3" border="0">
					<tr>
						<th id="tabletitlelink" style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							align="left" height="20" class="style9">
                            立项专家意见汇总</th></tr>
					<tr>
						<td bgColor="#ffffff" valign="top">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BorderWidth="1px"
                                CellPadding="4" Width="100%" PageSize="20" 
                                EnableModelValidation="True" 
                                onrowdatabound="GridView1_RowDataBound" 
                                onrowediting="GridView1_RowEditing" BackColor="White" 
                                BorderColor="#DEDFDE" BorderStyle="None" ForeColor="Black" GridLines="Vertical">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                <asp:TemplateField HeaderText="序号">
                                        <ItemTemplate>
                                             <asp:Label ID="lbl_ID" runat="server" Width="32px" Text="<%#Container.DataItemIndex+1%>"></asp:Label>
                                        </ItemTemplate>
                                        <ItemStyle Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="ktmc" HeaderText="课题名称" />
                                    <asp:BoundField DataField="sqr" HeaderText="负责人" >
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="sfxg" HeaderText="是否修改">
                                    <ItemStyle Width="80px" />
                                    </asp:BoundField>
                                    <asp:TemplateField HeaderText="专家意见">
                                        <ItemTemplate>
                                            <asp:LinkButton ID="lbtn_edit" runat="server" CommandName="edit">修改</asp:LinkButton>
                                        </ItemTemplate>
                                        <ItemStyle Width="60px" />
                                    </asp:TemplateField>
                                </Columns>
                                <RowStyle BackColor="#F7F7DE" HorizontalAlign="Center" />
                                <FooterStyle BackColor="#CCCC99" />
                                <HeaderStyle BackColor="#6B696B" Font-Size="13px" Font-Bold="True" 
                                    ForeColor="White" /><PagerStyle HorizontalAlign="Right" BackColor="#F7F7DE" 
                                    ForeColor="Black" />
                                <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                            </asp:GridView>
                    <webdiyer:aspnetpager id="AspNetPager1" runat="server" horizontalalign="Center" onpagechanged="AspNetPager1_PageChanged"
        showcustominfosection="Left" width="100%" meta:resourceKey="AspNetPager1" style="font-size:14px" InputBoxStyle="width:19px"
        
                                CustomInfoHTML="一共有<b><font color='red'>%RecordCount%</font></b>条记录 当前页<font color='red'><b>%CurrentPageIndex%/%PageCount%</b></font>   次序 %StartRecordIndex%-%EndRecordIndex%" 
                                AlwaysShow="True" FirstPageText="首页" LastPageText="尾页" NextPageText="下一页" 
                                PrevPageText="上一页" CustomInfoStyle="FONT-SIZE: 12px"></webdiyer:aspnetpager>
                        </td>
                        
					</tr>
					<tr>
						<TD id ="td_search" runat=server class="forumRowHighlight" 
                            vAlign="middle" height="30">
                            批量显示专家意见：&nbsp;
                            <asp:Button ID="btn_BatchDisplayYj" runat="server" 
                                OnClick="btn_BatchDisplayYj_Click" Text="显示" 
                                CssClass="style2" />
                            &nbsp;</TD>
					</tr>
					<tr>
					<td class="forumRowHighlight" id="TD_AddUser" runat="server" visible="false"
                            style="text-align: left; width: 884px;" >
                        您现在正在填写 
                        <asp:Label ID="lbl_jsm" runat="server" Font-Size="12pt" ForeColor="Red"></asp:Label>
&nbsp;的意见<asp:Label ID="lbl_appNo" runat="server" Font-Size="9pt" ForeColor="Black" Visible="False"></asp:Label>
                        <br />
                                        <ftb:freetextbox id="ftb_content" runat="server" 
                            autoconfigure="EnableAll" buttonpath="../images/ftb/officexp/"
                                            height="300px" helperfilespath="../HelperScripts/" imagegallerypath="upfiles"
                                            width="100%" ButtonSet="OfficeXP" EnableHtmlMode="False" 
                                        EnableToolbars="False" AutoHideToolbar="True" 
                            DownLevelMode="TextArea" StartMode="DesignMode"></ftb:freetextbox>
                                    &nbsp;<br />
&nbsp; <asp:Button ID="btn_confirm" runat="server" OnClick="btn_confirm_Click" Text="确定" Width="48px" />
                        &nbsp;
                        <asp:Button ID="btn_cancel" runat="server" OnClick="btn_cancel_Click" Text="取消" 
                            Width="48px" />
                        </td>
					</tr>
					</table>
			</div>
		</form>
		
	</body>
</HTML>
