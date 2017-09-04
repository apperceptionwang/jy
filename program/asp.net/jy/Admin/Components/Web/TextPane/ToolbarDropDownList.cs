/* 
 * ToolbarDropDownList.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.20/2006
 * 
 * 工具条下拉列表框
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
	/// ToolbarDropDownList 工具条下拉列表框
	/// </summary>
	internal class ToolbarDropDownList : System.Web.UI.HtmlControls.HtmlSelect, INamingContainer, IClientRunTime
	{
		// 命令名称
		private string m_commandName = "CMD_EMPTY";

		#region 类 ToolbarDropDownList 构造器
		/// <summary>
		/// 类 ToolbarDropDownList 默认构造器
		/// </summary>
		private ToolbarDropDownList()
			: base()
		{
		}

		/// <summary>
		/// 类 ToolbarDropDownList 参数构造器
		/// </summary>
		/// <param name="commandName">命令名称</param>
		public ToolbarDropDownList(string commandName)
			: this()
		{
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
			this.Attributes.Add("class", "CToolbarDropDownList");

			// 添加控件在客户端的加载事件
			this.Attributes.Add("onload",
				string.Format("javascript: new CToolbarDropDownList(this);", this.CommandName));
		}

		#region IClientRunTime 成员
		public string CreateJavaScriptObject()
		{
			return string.Format("new CToolbarDropDownList('{0}', '{1}');", this.UniqueID, this.CommandName);
		}
		#endregion
	}
}