/* 
 * IRenderable.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.12/2006
 * 
 * 可以绘制在 System.Web.UI.Page 中
 * 
 */

using System;
using System.Web.UI;

namespace Bincess.Components.Web.GroupList
{
	/// <summary>
	/// IRenderable 可以绘制在 System.Web.UI.Page 中
	/// </summary>
	internal interface IRenderable
	{
		void Render(HtmlTextWriter writer);
	}
}