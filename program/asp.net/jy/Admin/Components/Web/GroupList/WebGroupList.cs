/* 
 * WebGroupList.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.12/2006
 * 
 * 分组列表控件
 * 
 */

using System;
using System.Collections.Generic;
using System.Web.UI;
using System.Web.UI.WebControls;

using Bincess.Components.Web.GroupList;

namespace Bincess.Components.Web
{
	/// <summary>
	/// WebGroupList 分组列表控件
	/// </summary>
	[ParseChildren(false),
		ToolboxData("<{0}:WebGroupList runat=server></{0}:WebGroupList>"),
		ControlBuilderAttribute(typeof(WebGroupListControlBuilder))]
	public class WebGroupList : WebControl, INamingContainer
	{
		// 脚本 ID
		private const string SCRIPT_ID = "{Q2GWA8WO__WebGroupList_javascript}";
		// 脚本
		private const string SCRIPT = "<script type='text/javascript' src='{0}'></script>";

		// 组打开状态下的图片 URL
		private string m_groupOpenedImgSrc = null;
		// 组关闭状态下的图片 URL
		private string m_groupClosedImgSrc = null;
		// 项目标签集合
		private List<ItemTag> m_items = new List<ItemTag>();

		#region 类 WebGroupList 构造器
		/// <summary>
		/// 类 WebGroupList 默认构造器
		/// </summary>
		public WebGroupList()
		{
		}
		#endregion

		/// <summary>
		/// 设置或获取组打开状态下的图片 URL
		/// </summary>
		public string GroupOpenedImgSrc
		{
			set
			{
				this.m_groupOpenedImgSrc = value;
			}

			get
			{
				return this.m_groupOpenedImgSrc;
			}
		}

		/// <summary>
		/// 设置或获取组关闭状态下的图片 URL
		/// </summary>
		public string GroupClosedImgSrc
		{
			set
			{
				this.m_groupClosedImgSrc = value;
			}

			get
			{
				return this.m_groupClosedImgSrc;
			}
		}

		/// <summary>
		/// 获取项目标签集合
		/// </summary>
		public List<ItemTag> Items
		{
			get
			{
				return this.m_items;
			}
		}

		/// <summary>
		/// 添加子控件到该控件中
		/// </summary>
		/// <param name="obj"></param>
		protected override void AddParsedSubObject(object obj)
		{
			if (!(obj is GroupTag) && !(obj is ItemTag))
				return;

			if (obj is GroupTag)
			{
				GroupTag groupTag = (GroupTag)obj;

				// 设置组打开状态下的图片 URL
				if (groupTag.OpenedStateImgSrc == null)
					groupTag.OpenedStateImgSrc = this.GroupOpenedImgSrc;

				// 设置组关闭状态下的图片 URL
				if (groupTag.ClosedStateImgSrc == null)
					groupTag.ClosedStateImgSrc = this.GroupClosedImgSrc;
			}

			// 将标记加入集合
			this.Items.Add((ItemTag)obj);

			// 将标记加入到控件集合
			base.AddParsedSubObject(obj);
		}

		/// <summary>
		/// 在绘制控件之前，为控件注册客户端脚本
		/// </summary>
		/// <param name="e"></param>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			if (!this.Page.ClientScript.IsClientScriptBlockRegistered(SCRIPT_ID))
			{
				// 为控件注册客户端脚本
				this.Page.ClientScript.RegisterClientScriptBlock(typeof(void), SCRIPT_ID,
					String.Format(SCRIPT, MyResources.GetResourcesURL("WebGroupListJS")));
			}
		}

		/// <summary>
		/// 绘制分组列表控件
		/// </summary>
		/// <param name="writer"></param>
		protected override void Render(HtmlTextWriter writer)
		{
			writer.WriteLine("<table width='{0}' cellpadding='2' cellspacing='0'>", this.Width);

			foreach (Control c in this.Controls)
			{
				writer.WriteLine("<tr>");
				writer.WriteLine("<td>");

				c.RenderControl(writer);

				writer.WriteLine("</td>");
				writer.WriteLine("</tr>");
			}

			writer.WriteLine("</table>");

			// 绘制客户端脚本
			ClientRunTimeRender.Render(writer, this);
		}
	}
}