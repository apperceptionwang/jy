/* 
 * WebTextPane.cs @Microsoft Visual Studio.NET 2005 <.NET Framework 2.0>
 * AfritXia
 * 07.09/2006
 * 
 * 自定义 Web 编辑器
 * 
 */

using System;
using System.Collections;
using System.Collections.Specialized;
using System.ComponentModel;
using System.Text;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

using Bincess.Components.Web.TextPane;

namespace Bincess.Components.Web
{
	/// <summary>
	/// 自定义 Web 编辑器
	/// </summary>
	[ParseChildren(false),
		ToolboxData("<{0}:WebTextPane runat=server></{0}:WebTextPane>")]
	public class WebTextPane : WebControl, IPostBackDataHandler, INamingContainer, IClientRunTime
	{
		// 客户端脚本 ID
		private const string SCRIPT_ID = "{S7VFYA5B__WebTextPane_javascript}";
		// 客户端脚本
		private const string SCRIPT = "<script type='text/javascript' src='{0}'></script>";
		// 客户端提交事件脚本 ID
		private const string SCRIPT_ON_SUBMIT_ID = "{N8AXSXJO__WebTextPane_javascript$__onsubmit}";
		// 客户端提交事件脚本
		private const string SCRIPT_ON_SUBMIT = "WebTextPane_UpdateTextModel_OnSubmit();";
		// CSS 样式表 ID
		private const string CSS_ID = "J8DEA63D__WebTextPane_CSS";
		// CSS 样式表
		private const string CSS = "<style type='text/css'>@import url('{0}');</style>";

		// 文本修改事件对象健
		private static readonly object TEXT_CHANGED_EVENT = new object();

		// 工具条 1
		private Toolbar1 m_toolbar1 = null;
		// 工具条 2
		private Toolbar2 m_toolbar2 = null;
		// 设计器窗体
		private Bincess.Components.Web.TextPane.DesignPane m_spanDesigner = null;
		// 文本模型窗体
		private Bincess.Components.Web.TextPane.TextModel m_textModel = null;

		// 存入 ViewState 的文本值
		private string m_viewStateTextValue = null;
		// 回发文本值
		private string m_postBackTextValue = null;
		// 当前文本值
		private string m_xmlNText = null;
		// 设计器字体样式
		private string m_designerFontStyle = null;

		#region 类 WebTextPane 构造器
		/// <summary>
		/// 类 WebTextPane 默认构造器
		/// </summary>
		public WebTextPane()
			: base("div")
		{
		}
		#endregion

		/// <summary>
		/// 文本修改事件处理句柄
		/// </summary>
		public event EventHandler TextChanged
		{
			add
			{
				this.Events.AddHandler(WebTextPane.TEXT_CHANGED_EVENT, value);
			}

			remove
			{
				this.Events.RemoveHandler(WebTextPane.TEXT_CHANGED_EVENT, value);
			}
		}

		/// <summary>
		/// 设置或获取设计器字体样式
		/// </summary>
		public string DesignerFontStyle
		{
			set
			{
				this.m_designerFontStyle = value;
			}

			get
			{
				return this.m_designerFontStyle;
			}
		}

		/// <summary>
		/// 设置或获取当前文本值
		/// </summary>
		public string XMLNText
		{
			set
			{
				this.m_xmlNText = value;
			}

			get
			{
				return this.m_xmlNText;
			}
		}

		/// <summary>
		/// 控件初始化函数
		/// </summary>
		/// <param name="e">初始化事件参数</param>
		protected override void OnInit(EventArgs e)
		{
			base.OnInit(e);

			// 初始化工具条 1
			this.m_toolbar1 = new Toolbar1();
			// 初始化工具条2
			this.m_toolbar2 = new Toolbar2();

			// <span contenteditable=true></span>
			this.m_spanDesigner = new Bincess.Components.Web.TextPane.DesignPane();
			// <textarea></textarea>
			this.m_textModel = new Bincess.Components.Web.TextPane.TextModel();

			// 添加控件到集合
			this.Controls.Add(this.m_textModel);
		}

		/// <summary>
		/// 控件加载函数
		/// </summary>
		/// <param name="e">加载事件参数</param>
		protected override void OnLoad(EventArgs e)
		{
			base.OnLoad(e);

			if (this.Page.IsPostBack)
			{
				// 设置回发文本值
				this.XMLNText = this.m_postBackTextValue;
			}
		}

		/// <summary>
		/// 添加子标记，但不允许添加服务器控件
		/// </summary>
		/// <param name="obj"></param>
		protected override void AddParsedSubObject(object obj)
		{
			if (!(obj is System.Web.UI.LiteralControl))
				throw new ArgumentException("WebTextPane 控件中不能含有服务器控件");

			// 获取文本值
			this.XMLNText = ((System.Web.UI.LiteralControl)obj).Text;
		}

		/// <summary>
		/// 读取 ViewState 状态值
		/// </summary>
		/// <param name="savedState"></param>
		protected override void LoadViewState(object savedState)
		{
			// 获取存放于 ViewState 中的文本值
			this.m_viewStateTextValue = (savedState as string);
		}

		/// <summary>
		/// 保存 ViewState 状态值
		/// </summary>
		/// <returns></returns>
		protected override object SaveViewState()
		{
			if (this.XMLNText == null)
				return "";

			// 保存当前的文本值
			return this.XMLNText;
		}

		/// <summary>
		/// 在绘制该控件之前，为控件注册为需要回发处理
		/// </summary>
		/// <param name="e"></param>
		protected override void OnPreRender(EventArgs e)
		{
			base.OnPreRender(e);

			// 为控件注册为需要回发处理
			this.Page.RegisterRequiresPostBack(this);

			// 注册客户端脚步包含文件
			if (!this.Page.ClientScript.IsClientScriptBlockRegistered(SCRIPT_ID))
			{
				this.Page.ClientScript.RegisterClientScriptBlock(typeof(void), SCRIPT_ID,
					String.Format(SCRIPT, MyResources.GetResourcesURL("WebTextPaneJS")));
			}

			// 注册 CSS 样式表文件
			if (!this.Page.ClientScript.IsClientScriptBlockRegistered(CSS_ID))
			{
				this.Page.ClientScript.RegisterClientScriptBlock(typeof(void), CSS_ID,
					String.Format(CSS, MyResources.GetResourcesURL("WebTextPaneCSS")));
			}

			// 注册 OnSubmit 语句，在页面提交时同步文本模型控件中文本值
			this.Page.ClientScript.RegisterOnSubmitStatement(typeof(bool), SCRIPT_ON_SUBMIT_ID, SCRIPT_ON_SUBMIT);

			// 调用自定义控件绘制前准备函数
			this.MyOnPreRender(e);

			// 设置设计器的内置 HTML 为用户指定的文本
			this.m_spanDesigner.InnerHtml = this.XMLNText;
			// 设置隐藏字段文本
			this.m_textModel.InnerHtml = this.XMLNText;
		}

		/// <summary>
		/// 自定义控件绘制前准备函数
		/// </summary>
		private void MyOnPreRender(EventArgs e)
		{
			// 工具条 1 表格行
			HtmlGenericControl toolbar1Container = new HtmlGenericControl("div");
			// 工具条 2 表格行
			HtmlGenericControl toolbar2Container = new HtmlGenericControl("div");
			// 设计器窗体
			HtmlGenericControl designPaneContainer = new HtmlGenericControl("div");

			// 添加工具条 1
			toolbar1Container.Controls.Add(this.m_toolbar1);
			// 添加工具条 2
			toolbar2Container.Controls.Add(this.m_toolbar2);
			// 添加设计器窗体
			designPaneContainer.Controls.Add(this.m_spanDesigner);

			// 将工具条 1 加入到容器控件
			this.Controls.Add(toolbar1Container);
			// 将工具条 2 加入到容器控件
			this.Controls.Add(toolbar2Container);
			// 将设计器加入到容器控件
			this.Controls.Add(designPaneContainer);

			// 设置设计器宽度
			this.m_spanDesigner.Attributes.CssStyle.Add("width", this.Width.ToString());
			// 设计器高度
			this.m_spanDesigner.Attributes.CssStyle.Add("height", this.Height.ToString());

			// 如果样式为空，则使用默认样式
			if (String.IsNullOrEmpty(this.CssClass))
				this.CssClass = "WebTextPane";

			// 设置设计器字体样式
			if (!String.IsNullOrEmpty(this.DesignerFontStyle))
				this.m_spanDesigner.Attributes.CssStyle.Add("font", this.DesignerFontStyle);

			// 清除主控件宽度
			this.Width = Unit.Empty;
			// 清除主控件高度
			this.Height = Unit.Empty;
		}

		/// <summary>
		/// 绘制该服务器控件
		/// </summary>
		/// <param name="writer"></param>
		protected override void Render(HtmlTextWriter writer)
		{
			base.Render(writer);

			// 绘制客户端脚本
			ClientRunTimeRender.Render(writer, this);
		}

		/// <summary>
		/// 引发 OnTextChanged 事件
		/// </summary>
		/// <param name="args">事件参数</param>
		protected virtual void OnTextChanged(EventArgs args)
		{
			EventHandler handler = Events[WebTextPane.TEXT_CHANGED_EVENT] as EventHandler;

			if (handler != null)
				handler(this, EventArgs.Empty);
		}

		/// <summary>
		/// 将正则表达式匹配字符串转为大写
		/// </summary>
		/// <param name="match">正则表达式匹配结果</param>
		/// <returns>大写字符串</returns>
		public static string CapText(Match match)
		{
			return match.ToString().ToUpper();
		}

		#region IPostBackDataHandler 成员
		/// <summary>
		/// 读取回发数据
		/// </summary>
		/// <param name="postDataKey">回发数据健</param>
		/// <param name="postCollection">回发数据集合</param>
		/// <returns></returns>
		public bool LoadPostData(string postDataKey, NameValueCollection postCollection)
		{
			// 获取回发数据中的文本值
			this.m_postBackTextValue = postCollection[this.m_textModel.UniqueID];

			// 如果存放在 ViewState 中的文本值为空，则不触发 TextChanged 事件。 
			// 当该控件被嵌入到 web 用户控件（.ascx 控件）中时，ViewState 中的文本值有可能为空
			if (this.m_viewStateTextValue == null)
				return false;

			// 替换标记中的字符串为大写
			// 例如 <font size=2></font>，将替换成 <FONT SIZE=2></FONT>
			this.m_viewStateTextValue = Regex.Replace(this.m_viewStateTextValue,
				@"<[\/]{0,1}[^>]+>", new MatchEvaluator(CapText));

			// 如果文本已修改，则触发数据修改事件
			// RaisePostDataChangedEvent()
			return (this.m_postBackTextValue != this.m_viewStateTextValue);
		}

		/// <summary>
		/// 数据修改事件
		/// </summary>
		public void RaisePostDataChangedEvent()
		{
			this.OnTextChanged(EventArgs.Empty);
		}
		#endregion

		#region IClientRunTime 成员
		public string CreateJavaScriptObject()
		{
			return "new CWebTextPane();";
		}
		#endregion
	}
}