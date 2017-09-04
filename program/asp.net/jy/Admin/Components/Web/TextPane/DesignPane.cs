/* 
 * DesignPane.cs @Microsoft Visual Studio.NET 2005 <.NET Framework 2.0>
 * AfritXia
 * 07.09/2006
 * 
 * 设计器控件
 * 
 */

using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bincess.Components.Web.TextPane
{
	/// <summary>
	/// DesignPane 设计器控件
	/// </summary>
	internal class DesignPane : System.Web.UI.HtmlControls.HtmlGenericControl, INamingContainer, IClientRunTime
	{
		#region 类 DesignPane 构造器
		/// <summary>
		/// 类 DesignPane 默认构造器
		/// </summary>
		public DesignPane()
			: base("span")
		{
		}
		#endregion

		/// <summary>
		/// 在绘制该控件之前，为控件添加属性
		/// </summary>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 设置控件为可编辑
			this.Attributes.Add("contenteditable", "true");
			// 设置边框
			this.Attributes.CssStyle.Add("border", "Inset 2px");
			// 运行滚动条
			this.Attributes.CssStyle.Add("overflow", "scroll");
			// 设置光标样式
			this.Attributes.CssStyle.Add("cursor", "text");
			// 设置控件 ID 属性
			this.Attributes.Add("id", this.UniqueID);
		}

		#region IClientRunTime 成员
		public string CreateJavaScriptObject()
		{
			return string.Format("new CDesignPane('{0}');", this.UniqueID);
		}
		#endregion
	}
}