/* 
 * GroupTagControlBuilder.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.12/2006
 * 
 * 组标记构建器
 * 
 */

using System;
using System.Collections;
using System.Web.UI;

namespace Bincess.Components.Web.GroupList
{
	/// <summary>
	/// GroupTagControlBuilder 组标记构建器
	/// </summary>
	internal class GroupTagControlBuilder : ControlBuilder
	{
		#region 类 GroupTagControlBuilder 构造器
		/// <summary>
		/// 类 GroupTagControlBuilder 默认构造器
		/// </summary>
		public GroupTagControlBuilder() : base()
		{
		}
		#endregion

		/// <summary>
		/// 获取子控件的类型
		/// </summary>
		/// <param name="tagName">子控件名称</param>
		/// <param name="attribs"></param>
		/// <returns></returns>
		public override Type GetChildControlType(string tagName, IDictionary attribs)
		{
			if (String.Compare(tagName, "item", true) == 0)
				return typeof(ItemTag);

			return null;
		}
	}
}