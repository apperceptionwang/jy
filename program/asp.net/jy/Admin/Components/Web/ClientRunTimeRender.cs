/* 
 * ClientRunTimeRender.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 11.13/2006
 * 
 * 客户端运行时脚本绘制器
 * 
 */

using System;
using System.Collections;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Bincess.Components.Web
{
	/// <summary>
	/// ClientRunTimeRender 客户端运行时脚本绘制器
	/// </summary>
	internal sealed class ClientRunTimeRender
	{
		#region 类 ClientRunTimeRender 构造器
		/// <summary>
		/// 类 ClientRunTimeRender 默认构造器
		/// </summary>
		private ClientRunTimeRender()
		{
		}
		#endregion

		/// <summary>
		/// 绘制控件在客户端的脚本
		/// </summary>
		/// <param name="writer"></param>
		/// <param name="control"></param>
		public static void Render(HtmlTextWriter writer, Control control)
		{
			// 绘制客户端脚本，建立 JavaScript 对象
			writer.WriteLine("<script type='text/javascript'>");

			Queue ctrlQ = new Queue();

			ctrlQ.Enqueue(control);

			while (ctrlQ.Count != 0)
			{
				Control ctrl = ctrlQ.Dequeue() as Control;

				if ((ctrl != null) && (ctrl is IClientRunTime))
				{
					// 搜索所有实现 IClientRunTime 接口的控件，建立其对应的 JavaScript 对象
					string javaScriptOb = ((IClientRunTime)ctrl).CreateJavaScriptObject();

					// 写出对象脚本
					writer.WriteLine(javaScriptOb);
				}

				foreach (Control childCtrl in ctrl.Controls)
					ctrlQ.Enqueue(childCtrl);
			}

			writer.WriteLine("</script>");
		}
	}
}