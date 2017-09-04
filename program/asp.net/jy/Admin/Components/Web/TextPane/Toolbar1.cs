/* 
 * Toolbar1.cs @Microsoft Visual Studio.NET 2005 <.NET Framework 2.0>
 * AfritXia
 * 07.09/2006
 * 
 * 控件工具条
 * 
 */

using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Drawing;
using System.Drawing.Imaging;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

namespace Bincess.Components.Web.TextPane
{
	/// <summary>
	/// Toolbar1 控件工具条
	/// </summary>
	internal class Toolbar1 : ToolbarBase
	{
		// 字体名称下拉列表
		private ToolbarDropDownList m_drpFont = null;
		// 应用当前选定字体名称按钮
		private ToolbarImageButton m_btnApplyFont = null;
		// 字体大小下拉列表
		private ToolbarDropDownList m_drpSize = null;
		// 应用当前选定字体大小按钮
		private ToolbarImageButton m_btnApplySize = null;
		// 应用当前选定的背景颜色
		private ToolbarImageButton m_btnApplyBackColor = null;
		// 背景颜色下拉列表
		private ColorDropDownList m_drpBackColor = null;
		// 应用当前选定的背景颜色
		private ToolbarImageButton m_btnApplyForeColor = null;
		// 背景颜色下拉列表
		private ColorDropDownList m_drpForeColor = null;

		#region 类 Toolbar1 构造器
		/// <summary>
		/// 类 Toolbar1 默认构造器
		/// </summary>
		public Toolbar1()
			: base()
		{
		}
		#endregion

		/// <summary>
		/// 控件初始化函数
		/// </summary>
		protected override void OnInit(EventArgs e)
		{
			base.OnInit(e);

			// 初始化字体名称下拉列表框
			this.m_drpFont = new ToolbarDropDownList("CMD_FONT");
			// 加入首选项
			this.m_drpFont.Items.Add(new ListItem("Font -"));

			// 加入字体名称
			foreach (string fontName in Toolbar1.FONT_NAMES)
				this.m_drpFont.Items.Add(new ListItem(fontName, fontName));

			// 初始化字体按钮
			this.m_btnApplyFont = base.CreateImageButton("Apply_Small", "CMD_FONT");

			// 初始化字体大小下拉列表框
			this.m_drpSize = new ToolbarDropDownList("CMD_SIZE");
			// 加入首选项
			this.m_drpSize.Items.Add(new ListItem("Size -"));

			// 加入字体大小选项
			for (int i = 1; i <= 7; i++)
				this.m_drpSize.Items.Add(new ListItem(i.ToString(), i.ToString()));

			// 初始化字体大小按钮
			this.m_btnApplySize = base.CreateImageButton("Apply_Small", "CMD_SIZE");
            // 背景色按钮
            this.m_btnApplyBackColor = base.CreateImageButton("BackColor", "CMD_BACK_COLOR");
			// 背景色下拉列表框
			this.m_drpBackColor = new ColorDropDownList("BackColor -", "CMD_BACK_COLOR");
            // 前景色按钮
            this.m_btnApplyForeColor = base.CreateImageButton("ForeColor", "CMD_FORE_COLOR");
			// 背景色下拉列表框
			this.m_drpForeColor = new ColorDropDownList("ForeColor -", "CMD_FORE_COLOR");
		}

		/// <summary>
		/// 准备绘制工具条控件
		/// </summary>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 将字体下拉列表框加入到工具条
			this.AddMyControl(this.m_drpFont);
			// 字体按钮
			this.AddMyControl(this.m_btnApplyFont);
			// 字体大小下拉列表框
			this.AddMyControl(this.m_drpSize);
			// 字体大小按钮
			this.AddMyControl(this.m_btnApplySize);
			// 背景色按钮
			this.AddMyControl(this.m_btnApplyBackColor);
			// 背景色下拉列表框
			this.AddMyControl(this.m_drpBackColor);
			// 前景色下拉列表框
			this.AddMyControl(this.m_btnApplyForeColor);
			// 前景色按钮
			this.AddMyControl(this.m_drpForeColor);
		}

		#region FONT_NAMES 字体名称集合
		private static readonly string[] FONT_NAMES = new string[] {
			"Arial",
			"Bookman Old Style",
			"Courier", "Courier New",
			"Fixedsys",
			"Verdana",
			"仿宋_GB2312",
			"宋体",
			"幼圆",
			"新宋体",
			"方正姚体", "方正舒体",
			"楷体_GB2312",
			"隶书",
			"黑体"
		};
		#endregion
	}
}