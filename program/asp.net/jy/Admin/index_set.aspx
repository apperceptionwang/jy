<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index_set.aspx.cs" Inherits="VOD.Admin.index_set" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" >
<HTML>
	<HEAD>
		<title>index_set</title>
		<meta content="Microsoft Visual Studio .NET 7.1" name="GENERATOR">
		<meta content="C#" name="CODE_LANGUAGE">
		<meta content="JavaScript" name="vs_defaultClientScript">
		<style type="text/css">
		BODY { MARGIN-TOP: 0px; SCROLLBAR-FACE-COLOR: #799ae1; FONT-SIZE: 12px; BACKGROUND: #cad7f7; SCROLLBAR-HIGHLIGHT-COLOR: #799ae1; SCROLLBAR-SHADOW-COLOR: #799ae1; SCROLLBAR-3DLIGHT-COLOR: #799ae1; SCROLLBAR-ARROW-COLOR: #ffffff; SCROLLBAR-TRACK-COLOR: #aabfec; SCROLLBAR-DARKSHADOW-COLOR: #799ae1 }
	TD { FONT-SIZE: 12px }
	INPUT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	TEXTAREA { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SELECT { BORDER-TOP-WIDTH: 1px; BORDER-LEFT-WIDTH: 1px; FONT-SIZE: 12px; BORDER-BOTTOM-WIDTH: 1px; BORDER-RIGHT-WIDTH: 1px }
	SPAN { FONT-SIZE: 12px; POSITION: static }
	A { COLOR: #000000; TEXT-DECORATION: none }
	A:hover { COLOR: #428eff; TEXT-DECORATION: underline }
	A.highlight { COLOR: red; TEXT-DECORATION: none }
	A.highlight:hover { COLOR: red }
	A.thisclass { FONT-WEIGHT: bold; TEXT-DECORATION: none }
	A.thisclass:hover { FONT-WEIGHT: bold }
	A.navlink { COLOR: #000000; TEXT-DECORATION: none }
	A.navlink:hover { COLOR: #003399; TEXT-DECORATION: none }
	.twidth { WIDTH: 760px }
	.content { FONT-SIZE: 14px; MARGIN: 5px 20px; LINE-HEIGHT: 140%; FONT-FAMILY: Tahoma,宋体 }
	.aTitle { FONT-WEIGHT: bold; FONT-SIZE: 15px }
	TD.forumHeaderBackgroundAlternate { BACKGROUND-IMAGE: url(images/admin_top_bg.gif); COLOR: #000000; BACKGROUND-COLOR: #799ae1 }
	#TableTitleLink A:link { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:visited { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:active { COLOR: #ffffff; TEXT-DECORATION: none }
	#TableTitleLink A:hover { COLOR: #ffffff; TEXT-DECORATION: underline }
	TD.forumRow { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #f1f3f5; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TH.header { FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa }
	TD.bodytitle { BACKGROUND-IMAGE: url(images/admin_bg_2.gif) }
	TD.bodytitle1 { BACKGROUND-IMAGE: url(images/admin_bg_3.gif) }
	TD.tablebody1 { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #bebbdb; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	TD.forumRowHighlight { PADDING-RIGHT: 3px; PADDING-LEFT: 3px; BACKGROUND: #e4edf9; PADDING-BOTTOM: 3px; PADDING-TOP: 3px }
	.tableBorder { BORDER-RIGHT: #183789 1px solid; BORDER-TOP: #183789 1px solid; BORDER-LEFT: #183789 1px solid; WIDTH: 98%; BORDER-BOTTOM: #183789 1px solid; BACKGROUND-COLOR: #ffffff }
	.tableBorder1 { WIDTH: 98% }
	.helplink { FONT: 10px verdana,arial,helvetica,sans-serif; CURSOR: help; TEXT-DECORATION: none }
	.copyright { PADDING-RIGHT: 1px; BORDER-TOP: #6595d6 1px dashed; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; FONT: 11px verdana,arial,helvetica,sans-serif; COLOR: #4455aa; PADDING-TOP: 1px; TEXT-DECORATION: none }
	.menuskin { BORDER-RIGHT: #666666 1px solid; BORDER-TOP: #666666 1px solid; BACKGROUND-IMAGE: url(../skins/default/dvmenubg3.gif); VISIBILITY: hidden; FONT: 12px Verdana; BORDER-LEFT: #666666 1px solid; BORDER-BOTTOM: #666666 1px solid; BACKGROUND-REPEAT: repeat-y; POSITION: absolute; BACKGROUND-COLOR: #efefef }
	.menuskin A { PADDING-RIGHT: 10px; PADDING-LEFT: 25px; BEHAVIOR: url(inc/noline.htc); COLOR: black; TEXT-DECORATION: none }
	#mouseoverstyle { BORDER-RIGHT: #597db5 1px solid; PADDING-RIGHT: 0px; BORDER-TOP: #597db5 1px solid; PADDING-LEFT: 0px; PADDING-BOTTOM: 0px; MARGIN: 2px; BORDER-LEFT: #597db5 1px solid; PADDING-TOP: 0px; BORDER-BOTTOM: #597db5 1px solid; BACKGROUND-COLOR: #c9d5e7 }
	#mouseoverstyle A { COLOR: black }
	.menuitems { PADDING-RIGHT: 1px; PADDING-LEFT: 1px; PADDING-BOTTOM: 1px; MARGIN: 2px; WORD-BREAK: keep-all; PADDING-TOP: 1px }
	</style>
	</HEAD>
	<body >
		<form id="Form1" runat="server">
<TABLE class="tableBorder" cellSpacing="1" cellPadding="3" align="center" border="0" height="238"
							width="917">
							<TBODY>
								<TR>
						<TH style="FONT-WEIGHT: bold; FONT-SIZE: 12px; BACKGROUND-IMAGE: url(images/admin_bg_1.gif); COLOR: white; BACKGROUND-COLOR: #4455aa"
							width="100%" colSpan="2" height="25">首页调用管理 
						</TH>
					</TR>			
								<TR align="left">
									<td>&nbsp;<FONT face="宋体">添加模块 类名:
											<asp:DropDownList id="dw_class" runat="server"></asp:DropDownList>&nbsp; 
											相应图片:
											<asp:TextBox id="tb_ImgUrl" runat="server" Width="160px"></asp:TextBox>&nbsp; 
											模板:
											<asp:DropDownList id="dw_TemplateID" runat="server">
												<asp:ListItem Value="1">1</asp:ListItem>
												<asp:ListItem Value="2">2</asp:ListItem>
												<asp:ListItem Value="3">3</asp:ListItem>
											</asp:DropDownList>
											<asp:Button id="btn_Add" runat="server" Text="添加" Width="56px" OnClick="btn_Add_Click"></asp:Button></FONT></td>
								</TR>
								<TR>
									<TD class="forumRow" height="11">
                                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="0px" CellPadding="3" CellSpacing="1" ForeColor="Black" Width="100%" OnRowEditing="GridView1_RowEditing" DataKeyNames="id" OnRowCancelingEdit="GridView1_RowCancelingEdit" OnRowUpdating="GridView1_RowUpdating" OnRowDataBound="GridView1_RowDataBound">
                                            <Columns>
												<asp:TemplateField HeaderText="排序">
													<ItemTemplate>
														<%#this.GridView1.Rows.Count + 1%>
													</ItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="相应类名">
													<ItemTemplate>
														<%#GetClassName(Eval("Film_ClassID").ToString())%>
													</ItemTemplate>
													<EditItemTemplate>
														<asp:DropDownList id="dw_class_ed" BackColor="#99ccff" runat="server"></asp:DropDownList>
													</EditItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="相应图片">
													<ItemTemplate>
														<%#Eval("IMGUrl")%>
													</ItemTemplate>
													<EditItemTemplate>
														<asp:TextBox ID="tb_Imgurl_ed" Width=200 BackColor=#99ccff Runat=server Text='<%#Eval("IMGUrl")%>'>
														</asp:TextBox>
													</EditItemTemplate>
												</asp:TemplateField>
												<asp:TemplateField HeaderText="模板">
													<ItemTemplate>
														<%#Eval("TemplateID")%>
													</ItemTemplate>
													<EditItemTemplate>
														<asp:DropDownList id="dw_Template_ed" BackColor="#99ccff" runat="server" >
															<asp:ListItem Value="1">1</asp:ListItem>
															<asp:ListItem Value="2">2</asp:ListItem>
															<asp:ListItem Value="3">3</asp:ListItem>
														</asp:DropDownList>
													</EditItemTemplate>
												</asp:TemplateField>
                                                <asp:TemplateField HeaderText="是否开启">
                                                <ItemTemplate>
                                                <%#GetClassIsOpen(Eval("isOpen").ToString()) %>
                                                </ItemTemplate>
                                                <EditItemTemplate>
														<asp:DropDownList id="dw_isopen_ed" BackColor="#99ccff" runat="server" >
															<asp:ListItem Value="1">开启</asp:ListItem>
															<asp:ListItem Value="0">关闭</asp:ListItem>															
														</asp:DropDownList>
												</EditItemTemplate>
                                                </asp:TemplateField>
                                                <asp:CommandField ShowEditButton="True" />
												
												<asp:TemplateField HeaderText="操作">
													<ItemStyle BackColor="#FFFFCC"></ItemStyle>
													<ItemTemplate>
														<asp:CheckBox ID="ckb_Sle" Runat="server" Text="删除"></asp:CheckBox>
													</ItemTemplate>
												</asp:TemplateField>
											</Columns>
                                            <RowStyle BackColor="White" />
                                            <HeaderStyle BackColor="#E0E0E0" Font-Size="13px" ForeColor="Black" Height="23px" />
                                        </asp:GridView>
                                    </TD>
								</TR>
								<TR>
									<TD class="forumRow" align="center" height="23"><asp:label id="lbl_msg" runat="server"></asp:label>
										<asp:button id="btn_Delete" runat="server" Text="批量删除"  OnClientClick ="return selectChk;" OnClick="btn_Delete_Click"></asp:button>
										<input onClick="CheckAll(this.form)" type="checkbox" value="on" name="chkall"> 选中本页所有记录
									</TD>
								</TR>
								<tr><td>&nbsp;&nbsp;注意：本功能设定影响到所有影片显示，以上列表中列出的影片类型影片类型才会显示在所有影片页中，而不管该类型是否关闭，关闭只影响到首页显示。<br />
								请把所有的影片类型添加完全。</td></tr>
							</TBODY>
						</TABLE>
						<script language="javascript">
function selectChk()
{
  var s = false;
  var board,n = 0;
  var strid,strurl;
  var nn = self.document.all.item("sle"); //返回复选框个数
  for(j=0;j<nn.length;j++)
  {
     if(self.document.all.item("sle",j).checked)
     {
        s = true;//说明有复选框被选中
     }
  }
if(!s)
{
  alert("请选择要删除的记录!");
  return false;
}

} 
function CheckAll(form){

  for (var i=0;i<form.elements.length;i++)    {
    var e = form.elements[i];
    if (e.name != 'chkall')       e.checked = form.chkall.checked; 
   }
  }


						</script>
					
		</form>
	</body>
</HTML>
