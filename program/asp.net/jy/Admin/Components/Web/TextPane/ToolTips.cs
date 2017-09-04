/* 
 * ToolTips.cs @Microsoft Visual Studio.NET 2003 <.NET Framework 1.1>
 * AfritXia
 * 09.22/2006
 * 
 * 工具提示信息类
 * 
 */

using System;
using System.Collections;
using System.Xml;
using System.Threading;
using System.Web;

namespace Bincess.Components.Web.TextPane
{
	internal class ToolTips
	{
		// ToolTips 静态对象
		private static ToolTips g_theInstance = null;

		// 工具提示字典 中文
		private StringDictionary m_toolTipDict_ch = new StringDictionary();
		// 工具提示字典 英文
		private StringDictionary m_toolTipDict_en = new StringDictionary();

		#region 类 ToolTips 构造器
		/// <summary>
		/// 类 ToolTips 默认构造器
		/// </summary>
		private ToolTips()
		{
		}
		#endregion

		/// <summary>
		/// 获取工具提示对象实例，该属性是线程安全的
		/// </summary>
		public static ToolTips TheInstance
		{
			get
			{
				if (g_theInstance != null)
					return g_theInstance;

				lock (typeof(ToolTips))
				{
					if (g_theInstance == null)
					{
						ToolTips theInstance = new ToolTips();

						// 读取 XML 资源内容
						theInstance.LoadXmlResource("ch");
						theInstance.LoadXmlResource("en");

						g_theInstance = theInstance;
					}
				}

				return g_theInstance;
			}
		}

		/// <summary>
		/// 读取 XML 资源内容到工具提示字典对象
		/// </summary>
		/// <param name="language"></param>
		private void LoadXmlResource(string language)
		{
			XmlDocument xmlDoc = new XmlDocument();
			// 工具提示字典
			StringDictionary toolTipDict;

			if (language == "ch")
			{
				// 获取中文工具提示
				xmlDoc.LoadXml(MyResources.WebTextPaneXmlToolTips_ch);
				// 指向中文字典
				toolTipDict = this.m_toolTipDict_ch;
			}
			else
			{
				// 获取英文工具提示
				xmlDoc.LoadXml(MyResources.WebTextPaneXmlToolTips_en);
				// 指向英文字典
				toolTipDict = this.m_toolTipDict_en;
			}

			// <toolBar></toolBar>
			XmlNode root = xmlDoc.DocumentElement;

			foreach (XmlNode node in root.ChildNodes)
			{
				// <commandID></commandID>
				XmlNode cmdIDNode = node.SelectSingleNode("commandID");
				// <tipText></tipText>
				XmlNode tipTextNode = node.SelectSingleNode("tipText");

				if (cmdIDNode == null)
					continue;

				// 添加工具提示文本到字典
				toolTipDict.Add(cmdIDNode.InnerXml, tipTextNode.InnerXml);
			}
		}

		/// <summary>
		/// 获取工具提示字符串
		/// </summary>
		/// <param name="commandID">命令 ID</param>
		/// <returns>工具提示字符串</returns>
		public string GetString(string commandID)
		{
			if (commandID == null)
				return null;

			// 获取工具提示字典
			StringDictionary toolTipDict = this.GetToolTipDictionary();

			if (!toolTipDict.ContainsKey(commandID))
				return null;

			return toolTipDict[commandID];
		}

		/// <summary>
		/// 获取命令关键字枚举
		/// </summary>
		/// <returns></returns>
		public IEnumerator GetCommandIDEnumerator()
		{
			// 获取工具提示字典
			StringDictionary toolTipDict = this.GetToolTipDictionary();

			return toolTipDict.Keys.GetEnumerator();
		}

		/// <summary>
		/// 获取工具提示文本枚举
		/// </summary>
		/// <returns></returns>
		public IEnumerator GetTipTextEnumerator()
		{
			// 获取工具提示字典
			StringDictionary toolTipDict = this.GetToolTipDictionary();

			return toolTipDict.Values.GetEnumerator();
		}

		/// <summary>
		/// 获取工具提示字典
		/// </summary>
		/// <returns></returns>
		private StringDictionary GetToolTipDictionary()
		{
			StringDictionary toolTipDict;

			if (HttpContext.Current.Request.UserLanguages[0] == "zh-cn")
			{
				// 指向中文字典
				toolTipDict = this.m_toolTipDict_ch;
			}
			else
			{
				// 指向英文字典
				toolTipDict = this.m_toolTipDict_en;
			}

			return toolTipDict;
		}

		#region StringDictionary 字符串字典类
		/// <summary>
		/// 字符串字典类
		/// </summary>
		internal class StringDictionary : System.Collections.Hashtable
		{
			#region 类 StringDictionary 构造器
			/// <summary>
			/// 类 StringDictionary 默认构造器
			/// </summary>
			public StringDictionary() : base()
			{
			}
			#endregion

			/// <summary>
			/// 向字典中添加键和值
			/// </summary>
			/// <param name="key">关键字</param>
			/// <param name="value">字符串值</param>
			public void Add(string key, string value)
			{
				base.Add(key, value);
			}

			/// <summary>
			/// 通过索引器设置或获取键值
			/// </summary>
			public string this[string key]
			{
				set
				{
					base[key] = value;
				}

				get
				{
					return base[key] as string;
				}
			}
		}
		#endregion
	}
}