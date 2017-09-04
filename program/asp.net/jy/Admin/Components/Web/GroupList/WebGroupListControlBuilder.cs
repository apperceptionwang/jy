/* 
 * WebGroupListControlBuilder.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.12/2006
 * 
 * 组列表控件构建器
 * 
 */

using System;
using System.Collections;
using System.Web.UI;

using Bincess.Components.Web.GroupList;

namespace Bincess.Components.Web.GroupList
{
	/// <summary>
	/// WebGroupListControlBuilder 组列表控件构建器
	/// </summary>
	internal class WebGroupListControlBuilder : ControlBuilder
	{
		#region 类 WebGroupListControlBuilder 构造器
		/// <summary>
		/// 类 WebGroupListControlBuilder 默认构造器
		/// </summary>
		public WebGroupListControlBuilder()
		{
		}
		#endregion

		/// <summary>
		/// 获取子控件的类型
		/// </summary>
		/// <param name="tagName">子控件名称</param>
		/// <param name="attribs">属性字典</param>
		/// <returns></returns>
		public override Type GetChildControlType(string tagName, IDictionary attribs)
		{
			if (String.Compare(tagName, "group", true) == 0)
				return typeof(GroupTag);

			if (String.Compare(tagName, "item", true) == 0)
				return typeof(ItemTag);

			return null;
		}
	}
}