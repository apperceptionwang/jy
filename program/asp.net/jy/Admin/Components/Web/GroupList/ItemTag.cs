/* 
 * ItemTag.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.12/2006
 * 
 * 项目标签
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
	/// ItemTag 项目标签
	/// </summary>
	public class ItemTag : WebControl, IClientRunTime
	{
		// 图片 URL
		private string m_imgSrc = null;
		// 项目文本
		private string m_text = null;
		// 链接地址
		private string m_url = null;
		// 设置新链接目标
		private string m_target = null;
		// 项目标签集合
		private List<ItemTag> m_items = new List<ItemTag>();

		#region 类 ItemTag 构造器
		/// <summary>
		/// 类 ItemTag 默认构造器
		/// </summary>
		public ItemTag()
		{
		}
		#endregion

		/// <summary>
		/// 设置或获取图片 URL
		/// </summary>
		public string ImgSrc
		{
			set
			{
				this.m_imgSrc = value;
			}

			get
			{
				return this.m_imgSrc;
			}
		}

		/// <summary>
		/// 设置或获取项目文本
		/// </summary>
		public string Text
		{
			set
			{
				this.m_text = value;
			}

			get
			{
				return this.m_text;
			}
		}

		/// <summary>
		/// 设置或获取链接地址
		/// </summary>
		public string Url
		{
			set
			{
				this.m_url = value;
			}

			get
			{
				return this.m_url;
			}
		}

		/// <summary>
		/// 设置或获取新链接目标
		/// </summary>
		public string Target
		{
			set
			{
				this.m_target = value;
			}

			get
			{
				return this.m_target;
			}
		}

		/// <summary>
		/// 绘制项目控件
		/// </summary>
		/// <param name="writer"></param>
		protected override void Render(HtmlTextWriter writer)
		{
			writer.WriteLine("<table width='100%' cellpadding='4' cellspacing='0' id='{0}' {1}>", this.UniqueID, (this.Enabled ? "" : "disabled"));
			writer.WriteLine("<tr>");
			writer.WriteLine("<td width='8px'>");
			writer.WriteLine("<img src='{0}' hspace='4' {1} />", this.ImgSrc, (this.Enabled ? "" : "style='filter(RGB=gray);'"));
			writer.WriteLine("</td>");
			writer.WriteLine("<td width='85%' align='left'>");

			if (this.Enabled)
			{
				// 如果控件没有被屏蔽，那么绘制链接
				writer.WriteLine("<a href='{0}' target='{1}'>{2}</a>", this.Url, this.Target, this.Text);
			}
			else
			{
				// 仅绘制文本
				writer.WriteLine(this.Text);
			}

			writer.WriteLine("</td>");
			writer.WriteLine("</tr>");
			writer.WriteLine("</table>");
		}

		#region IClientRunTime 成员
		public string CreateJavaScriptObject()
		{
			if (!this.Visible)
				return null;

			return String.Format("new CItem('{0}');", this.UniqueID);
		}
		#endregion
	}
}