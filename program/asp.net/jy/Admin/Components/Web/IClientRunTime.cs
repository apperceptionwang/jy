/* 
 * IClientRunTime.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 07.29/2006
 * 
 * 客户端运行时接口
 * 
 */

using System;
using System.Collections;
using System.Text;

namespace Bincess.Components.Web
{
	internal interface IClientRunTime
	{
		// 建立 JavaScript 对象
		string CreateJavaScriptObject();
	}
}