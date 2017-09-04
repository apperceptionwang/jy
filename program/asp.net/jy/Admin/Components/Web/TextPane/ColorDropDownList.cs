/* 
 * ColorDropDownList.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.20/2006
 * 
 * 颜色下拉列表框
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
	/// ColorDropDownList 颜色下拉列表框
	/// </summary>
	internal class ColorDropDownList : ToolbarDropDownList
	{
		// 首选项
		private string m_firstOption = null;

		#region 类 ColorDropDownList 构造器
		/// <summary>
		/// 类 ColorDropDownList 参数构造器
		/// </summary>
		/// <param name="commandName">命令名称</param>
		public ColorDropDownList(string commandName)
			: base(commandName)
		{
		}

		/// <summary>
		/// 类 ColorDropDownList 参数构造器
		/// </summary>
		/// <param name="firstOption">首选项</param>
		/// <param name="commandName">命令名称</param>
		public ColorDropDownList(string firstOption, string commandName)
			: this(commandName)
		{
			this.m_firstOption = firstOption;
		}
		#endregion

		/// <summary>
		/// 控件初始化函数
		/// </summary>
		protected override void OnInit(EventArgs e)
		{
			base.OnInit(e);

			// 添加首选项
			if (this.m_firstOption != null && this.m_firstOption != "")
				this.Items.Add(new ListItem(this.m_firstOption));

			// 加入颜色值
			foreach (object value in Enum.GetValues(typeof(MyColor)))
			{
				// 转型为枚举值
				MyColor enumValue = (MyColor)value;
				// 获取字符串值
				string valueString = value.ToString();

				// 建立选项 <option></option>
				ListItem option = new ListItem();

				// 设置选项值
				option.Value = valueString;
				// 设置选项文本
				option.Text = valueString;

				// 添加 CSS 样式表
				option.Attributes.CssStyle.Add("background-color", valueString);

				// 如果背景色过深，则需要反色
				if (IsNeedToInverseColor(enumValue))
					option.Attributes.CssStyle.Add("color", MyColor.White.ToString());

				this.Items.Add(option);
			}
		}

		/// <summary>
		/// 是否需要反色
		/// </summary>
		/// <param name="enumValue">颜色枚举值</param>
		/// <returns></returns>
		private bool IsNeedToInverseColor(MyColor enumValue)
		{
			if (enumValue == MyColor.Black || enumValue == MyColor.Blue)
				return true;

			if (enumValue == MyColor.Gray || enumValue == MyColor.Green)
				return true;

			if (enumValue == MyColor.Maroon)
				return true;

			if (enumValue == MyColor.Navy)
				return true;

			if (enumValue == MyColor.Olive)
				return true;

			if (enumValue == MyColor.Purple)
				return true;

			if (enumValue == MyColor.Teal)
				return true;

			return false;
		}

		#region MyColor 自定义颜色枚举
		/// <summary>
		/// MyColor 自定义颜色枚举
		/// </summary>
		private enum MyColor
		{
			// Aqua = 0x00ffff
			Aqua,
			// Black = 0x000000
			Black,
			// Blue = 0x0000ff
			Blue,
			// Fuchsia = 0xff00ff
			Fuchsia,
			// Gray = 0x808080
			Gray,
			// Green = 0x008000
			Green,
			// Lime = 0x00ff00
			Lime,
			// LightGray = 0xd3d3d3
			LightGrey,
			// Maroon = 0x800000
			Maroon,
			// Navy = 0x000080
			Navy,
			// Olive = 0x808000
			Olive,
			// Pink = 0xffc0cb
			Pink,
			// Purple = 0x800080
			Purple,
			// Red = 0xff0000
			Red,
			// Silver = 0xc0c0c0
			Silver,
			// Teal = 0x008080
			Teal,
			// White = 0xffffff
			White,
			// Yellow = 0xffff00
			Yellow
		};
		#endregion
	}
}