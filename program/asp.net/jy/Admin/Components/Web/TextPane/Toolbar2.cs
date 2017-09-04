/* 
 * Toolbar2.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.21/2006
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
	/// Toolbar2 控件工具条
	/// </summary>
	internal class Toolbar2 : ToolbarBase
	{
		// 加粗字体按钮
		private ToolbarImageButton m_btnBold = null;
		// 斜体字按钮
		private ToolbarImageButton m_btnItalic = null;
		// 下划线按钮
		private ToolbarImageButton m_btnUnderLine = null;
		// 缩进
		private ToolbarImageButton m_btnIndent = null;
		// 撤销缩进
		private ToolbarImageButton m_btnOutdent = null;
		// 段落左对齐
		private ToolbarImageButton m_btnJustifyLeft = null;
		// 段落居中
		private ToolbarImageButton m_btnJustifyCenter = null;
		// 段落右对齐
		private ToolbarImageButton m_btnJustifyRight = null;

		// 加粗字体按钮
		private ToolbarImageButton m_btnCut = null;
		// 斜体字按钮
		private ToolbarImageButton m_btnCopy = null;
		// 下划线按钮
		private ToolbarImageButton m_btnPaste = null;
		// 下划线按钮
		private ToolbarImageButton m_btnUndo = null;
		// 插入链接
		private ToolbarImageButton m_btnAnchor = null;
		// 取消链接
		private ToolbarImageButton m_btnCancelAnchor = null;
		// 插入图片
		private ToolbarImageButton m_btnPicture = null;
		// 下划线按钮
		private ToolbarImageButton m_btnRule = null;

		// 插入链接
		private ToolbarImageButton m_btnEraser = null;

		#region 类 Toolbar2 构造器
		/// <summary>
		/// 类 Toolbar2 默认构造器
		/// </summary>
		public Toolbar2()
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

			// 字体加粗按钮
			this.m_btnBold = base.CreateImageButton("Bold", "CMD_BOLD");
			// 斜体字按钮
			this.m_btnItalic = base.CreateImageButton("Italic", "CMD_ITALIC");
			// 下划线按钮
			this.m_btnUnderLine = base.CreateImageButton("UnderLine", "CMD_UNDERLINE");

			// 缩进按钮
			this.m_btnIndent = base.CreateImageButton("Indent", "CMD_INDENT");
			// 撤销缩进按钮
			this.m_btnOutdent = base.CreateImageButton("Outdent", "CMD_OUTDENT");

			// 段落左对齐按钮
			this.m_btnJustifyLeft = base.CreateImageButton("JustifyLeft", "CMD_JUSTIFY_LEFT");
			// 段落居中对齐按钮
			this.m_btnJustifyCenter = base.CreateImageButton("JustifyCenter", "CMD_JUSTIFY_CENTER");
			// 段落右对齐按钮
			this.m_btnJustifyRight = base.CreateImageButton("JustifyRight", "CMD_JUSTIFY_RIGHT");

			// 剪切按钮
			this.m_btnCut = base.CreateImageButton("Cut", "CMD_CUT");
			// 复制按钮
			this.m_btnCopy = base.CreateImageButton("Copy", "CMD_COPY");
			// 粘贴按钮
			this.m_btnPaste = base.CreateImageButton("Paste", "CMD_PASTE");
			// 撤销按钮
			this.m_btnUndo = base.CreateImageButton("Undo", "CMD_UNDO");

			// 插入链接按钮
			this.m_btnAnchor = base.CreateImageButton("Anchor", "CMD_ANCHOR");
			// 取消链接按钮
			this.m_btnCancelAnchor = base.CreateImageButton("CancelAnchor", "CMD_CANCEL_ANCHOR");
			// 插入图片按钮
			this.m_btnPicture = base.CreateImageButton("Picture", "CMD_PICTURE");
			// 插入横线按钮
			this.m_btnRule = base.CreateImageButton("Rule", "CMD_RULE");

			// 清除格式按钮
			this.m_btnEraser = base.CreateImageButton("Eraser", "CMD_ERASER");
		}

		/// <summary>
		/// 准备绘制工具条控件
		/// </summary>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 将加粗字体按钮加入到工具条
			this.AddMyControl(this.m_btnBold);
			// 斜体字按钮
			this.AddMyControl(this.m_btnItalic);
			// 下划线字体按钮
			this.AddMyControl(this.m_btnUnderLine);

			// 添加分隔符
			this.AddSeparator();

			// 缩进按钮
			this.AddMyControl(this.m_btnIndent);
			// 撤销缩进按钮
			this.AddMyControl(this.m_btnOutdent);

			// 添加分隔符
			this.AddSeparator();

			// 段落左对齐按钮
			this.AddMyControl(this.m_btnJustifyLeft);
			// 段落居中对齐按钮
			this.AddMyControl(this.m_btnJustifyCenter);
			// 段落右对齐按钮
			this.AddMyControl(this.m_btnJustifyRight);

			// 添加分隔符
			this.AddSeparator();

			// 剪切按钮
			this.AddMyControl(this.m_btnCut);
			// 复制按钮
			this.AddMyControl(this.m_btnCopy);
			// 粘贴按钮
			this.AddMyControl(this.m_btnPaste);
			// 撤销按钮
			this.AddMyControl(this.m_btnUndo);

			// 添加分隔符
			this.AddSeparator();

			// 插入链接按钮
			this.AddMyControl(this.m_btnAnchor);
			// 取消链接按钮
			this.AddMyControl(this.m_btnCancelAnchor);
			// 插入图片按钮
			this.AddMyControl(this.m_btnPicture);
			// 插入横线按钮
			this.AddMyControl(this.m_btnRule);

			// 添加分隔符
			this.AddSeparator();

			// 消格式按钮
			this.AddMyControl(this.m_btnEraser);
		}
	}
}