#undef DEBUG	// 用于调试

/* 
 * MyHttpHandler.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 09.18/2006
 * 
 * 资源文件请求处理
 * 
 */

using System;
using System.Collections;
using System.Drawing;
using System.Drawing.Imaging;
using System.Reflection;
using System.Resources;
using System.Text;
using System.Web;

namespace Bincess.Components.Web
{
	/// <summary>
	/// MyHttpHandler 资源文件请求处理
	/// </summary>
	public class MyHttpHandler : IHttpHandler
	{
		#region IHttpHandler 成员
		public bool IsReusable
		{
			get
			{
				return true;
			}
		}

		public void ProcessRequest(HttpContext context)
		{
			string propName = context.Request["ResID"];

			if (propName == null)
				return;

			// 获取资源类型
			Type type = typeof(MyResources);

			// 获取属性信息
			PropertyInfo propInfo = type.GetProperty(propName, BindingFlags.IgnoreCase | BindingFlags.Static | BindingFlags.NonPublic);

			if (propInfo == null)
				return;

			// 获取资源文件对象
			MyResources myRes = new MyResources();

			// 获取资源值
			object value = propInfo.GetValue(myRes, null);

			if (value == null)
				return;

			switch (value.GetType().ToString())
			{
#if DEBUG
				case "System.Drawing.Bitmap":
					// 设置输出流的 MIME 类型
					context.Response.ContentType = "image/gif";
					// 获取位图图像
					Bitmap bitmap = (System.Drawing.Bitmap)value;
					// 将位图图像保存到页面输出流
					bitmap.Save(context.Response.OutputStream, bitmap.RawFormat);

					break;

				case "System.String":
					// 设置输出流的 MIME 类型
					context.Response.ContentType = "text/css";
					// 设置字符集
					context.Response.ContentEncoding = Encoding.UTF8;

					switch(propName)
					{
						case "CssWebTextPane":
							// 输出 CSS 样式表
							context.Response.Write(Bincess_Resource.CssWebTextPane);
							break;

						case "ScriptWebTextPane":
							// 输出 JavaScript 脚步文件
							context.Response.Write(Bincess_Resource.ScriptWebTextPane);
							break;

						default:
							break;
					}

					break;
#else
				case "System.Drawing.Bitmap":
					// 获取位图图像
					Bitmap bitmap = (System.Drawing.Bitmap)value;
					// 将位图图像保存到页面输出流
					bitmap.Save(context.Response.OutputStream, bitmap.RawFormat);

					break;

				case "System.String":
					// 输出文本值
					context.Response.Write(value);

					break;
#endif
				default:
					break;

			}
		}
		#endregion
	}
}