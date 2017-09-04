/* 
 * ToolbarBase.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.21/2006
 * 
 * 控件工具条基础类
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

using Bincess.Components.Web.TextPane;

namespace Bincess.Components.Web.TextPane
{
	/// <summary>
	/// ToolbarBase 控件工具条基础类
	/// </summary>
	internal abstract class ToolbarBase : System.Web.UI.HtmlControls.HtmlTable
	{
		// 主表格行
		private HtmlTableRow m_tr = null;

		#region 类 ToolbarBase 构造器
		/// <summary>
		/// 类 ToolbarBase 默认构造器
		/// </summary>
		public ToolbarBase()
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

			// 建立表格行
			if (this.m_tr == null)
				this.m_tr = new HtmlTableRow();

			// 将表格行加入当前表格
			this.Rows.Add(this.m_tr);

			// 加入工具条手柄
			CreateHandlerControl();
		}

		/// <summary>
		/// 在绘制控件之前，添加控件属性
		/// </summary>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 添加 CSS 样式表属性
			this.Attributes.Add("class", "Toolbar");
		}

		/// <summary>
		/// 建立工具条手柄控件
		/// </summary>
		/// <returns>HTML 图片控件</returns>
		private void CreateHandlerControl()
		{
			// 建立 HTML 图片控件
			HtmlImage image = new HtmlImage();

			// 设置图片文件的源
			image.Src = MyResources.GetResourcesURL("ToolbarHandler");

			// 加入工具条手柄
			this.AddMyControl(image);
		}

		/// <summary>
		/// 添加自定控件到表格行的新元素中
		/// </summary>
		/// <param name="tr">表格行</param>
		/// <param name="myControl">自定控件</param>
		/// <returns>表格新元素</returns>
		public Control AddMyControl(Control myControl)
		{
			// 自定义控件参数不能为空值
			if (myControl == null)
				throw new ArgumentNullException("myControl");

			// 建立新的表格元素
			HtmlTableCell cell = new HtmlTableCell();

			// 将自定义控件加入到表格元素
			cell.Controls.Add(myControl);

			// 将表格元素添加到表格行
			this.m_tr.Cells.Add(cell);

			return myControl;
		}

		/// <summary>
		/// 建立工具条分隔符控件
		/// </summary>
		public void AddSeparator()
		{
			// 建立 HTML 图片控件
			HtmlImage image = new HtmlImage();

			// 设置图片文件的源
			image.Src = MyResources.GetResourcesURL("ToolbarSeparator");

			// 加入分隔符
			this.AddMyControl(image);
		}

		/// <summary>
		/// 建立新的工具条按钮
		/// </summary>
		/// <param name="imgSrc">按钮图片源</param>
		/// <param name="commandName">命令名称</param>
		/// <returns>工具条图片按钮对象</returns>
		public ToolbarImageButton CreateImageButton(string resID, string commandName)
		{
			// 获取工具提示字符串
			string toolTipString = ToolTips.TheInstance.GetString(commandName);

			// 建立工具条图片按钮控件
			ToolbarImageButton imageButton = new ToolbarImageButton(MyResources.GetResourcesURL(resID), commandName);

			// 设置提示字符串
			imageButton.Alt = toolTipString;
			// 设置标题提示信息
			imageButton.Attributes.Add("title", toolTipString);

			return imageButton;
		}
	}
}