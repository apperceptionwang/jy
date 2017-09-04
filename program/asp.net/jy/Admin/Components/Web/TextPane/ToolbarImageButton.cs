/* 
 * ToolbarImageButton.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.20/2006
 * 
 * 工具条图片按钮类
 * 
 */

using System;
using System.Collections;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Bincess.Components.Web.TextPane
{
	/// <summary>
	/// 工具条图片按钮类
	/// </summary>
	internal class ToolbarImageButton : System.Web.UI.HtmlControls.HtmlImage, INamingContainer, IClientRunTime
	{
		// 命令名称
		private string m_commandName = "CMD_EMPTY";

		#region 类 ToolbarImageButton 构造器
		/// <summary>
		/// 类 ToolbarImageButton 默认构造器
		/// </summary>
		private ToolbarImageButton()
			: base()
		{
		}

		/// <summary>
		/// 类 ToolbarImageButton 参数构造器
		/// </summary>
		/// <param name="imgSrc">图片链接地址</param>
		/// <param name="commandName">命令名称</param>
		public ToolbarImageButton(string imgSrc, string commandName)
			: this()
		{
			this.Src = imgSrc;

			if (commandName != null && commandName != "")
				this.m_commandName = commandName;
		}
		#endregion

		/// <summary>
		/// 获取命令名称
		/// </summary>
		public string CommandName
		{
			get
			{
				return this.m_commandName;
			}
		}

		/// <summary>
		/// 在绘制控件之前，添加控件属性
		/// </summary>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 添加 CSS 样式表属性
			this.Attributes.Add("class", "CToolbarImageButton");
			// 添加 ID 属性
			this.Attributes.Add("id", this.UniqueID);
		}

		#region IClientRunTime 成员
		public string CreateJavaScriptObject()
		{
			return string.Format("new CToolbarImageButton('{0}', '{1}');", this.UniqueID, this.CommandName);
		}
		#endregion
	}
}