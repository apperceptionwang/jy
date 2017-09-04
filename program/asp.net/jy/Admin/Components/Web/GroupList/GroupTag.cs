/* 
 * GroupTag.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.12/2006
 * 
 * 组标记
 * 
 */

using System;
using System.Web.UI;
using System.Web.UI.WebControls;

using Bincess.Components.Web.GroupList;

namespace Bincess.Components.Web
{
	/// <summary>
	/// GroupTag 组标记
	/// </summary>
	[ParseChildren(false),
		ControlBuilderAttribute(typeof(GroupTagControlBuilder))]
	public class GroupTag : ItemTag, IClientRunTime
	{
		// 打开状态下的图片 URL
		private string m_openedStateImgSrc = null;
		// 关闭状态下的图片 URL
		private string m_closedStateImgSrc = null;
		// 打开状态
		private bool m_isOpened = true;

		#region 类 GroupTag 构造器
		/// <summary>
		/// 类 GroupTag 默认构造器
		/// </summary>
		public GroupTag() : base()
		{
		}
		#endregion

		/// <summary>
		/// 设置或获取打开状态下的图片 URL
		/// </summary>
		public string OpenedStateImgSrc
		{
			set
			{
				this.m_openedStateImgSrc = value;
			}

			get
			{
				return this.m_openedStateImgSrc;
			}
		}

		/// <summary>
		/// 设置或获取关闭状态下的图片 URL
		/// </summary>
		public string ClosedStateImgSrc
		{
			set
			{
				this.m_closedStateImgSrc = value;
			}

			get
			{
				return this.m_closedStateImgSrc;
			}
		}

		/// <summary>
		/// 设置或获取打开状态
		/// </summary>
		public bool IsOpened
		{
			set
			{
				this.m_isOpened = value;
			}

			get
			{
				return this.m_isOpened;
			}
		}

		/// <summary>
		/// 添加子标记
		/// </summary>
		/// <param name="obj"></param>
		protected override void AddParsedSubObject(object obj)
		{
			if (!(obj is ItemTag))
				return;

			base.AddParsedSubObject(obj);
		}

		/// <summary>
		/// 控件绘制函数
		/// </summary>
		/// <param name="writer"></param>
		protected override void Render(HtmlTextWriter writer)
		{
			writer.WriteLine("<table width='100%'>");
			writer.WriteLine("<tr>");
			writer.WriteLine("<td align='left'>");

			writer.WriteLine("<table id='{0}'>", this.UniqueID);
			writer.WriteLine("<tr>");
			writer.WriteLine("<td>");
			writer.WriteLine("<img src='{0}' id='{1}__toggleImage' />", (this.IsOpened ? this.OpenedStateImgSrc : this.ClosedStateImgSrc), this.UniqueID);
			writer.WriteLine("</td>");

			if (!String.IsNullOrEmpty(this.ImgSrc))
			{
				writer.WriteLine("<td>");
				writer.WriteLine("<img src='{0}' />", this.ImgSrc);
				writer.WriteLine("</td>");
			}

			writer.WriteLine("<td width='8px'><b>{0}</b></td>", this.Text);
			writer.WriteLine("</tr>");
			writer.WriteLine("</table>");

			writer.WriteLine("</td>");
			writer.WriteLine("</tr>");
			writer.WriteLine("<tr id='{0}__items' style='display: {1};'>", this.UniqueID, (this.IsOpened ? "block" : "none"));
			writer.WriteLine("<td>");

			foreach (Control c in this.Controls)
				c.RenderControl(writer);

			writer.WriteLine("</td>");
			writer.WriteLine("</tr>");
			writer.WriteLine("</table>");
		}

		#region IClientRunTime 成员
		public new string CreateJavaScriptObject()
		{
			if (!this.Visible)
				return null;

			return String.Format("new CGroup('{0}', '{1}', '{2}');", this.UniqueID, this.OpenedStateImgSrc, this.ClosedStateImgSrc);
		}
		#endregion
	}
}