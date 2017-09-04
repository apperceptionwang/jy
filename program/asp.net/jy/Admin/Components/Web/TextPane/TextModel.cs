/* 
 * TextModel.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.29/2006
 * 
 * 文本模型控件
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
	/// TextModel 文本模型控件
	/// </summary>
	internal class TextModel : System.Web.UI.HtmlControls.HtmlTextArea, INamingContainer, IClientRunTime
	{
		#region 类 TextModel 构造器
		/// <summary>
		/// 类 TextModel 默认构造器
		/// </summary>
		public TextModel()
			: base()
		{
		}
		#endregion

		/// <summary>
		/// 在绘制该控件之前，设置控件属性
		/// </summary>
		/// <param name="e"></param>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 隐藏控件
			this.Attributes.CssStyle.Add("display", "none");
			// 设置控件 ID 属性
			this.Attributes.Add("id", this.UniqueID);
		}

		#region IClientRunTime 成员
		public string CreateJavaScriptObject()
		{
			return string.Format("new CTextModel('{0}');", this.UniqueID);
		}
		#endregion
	}
}