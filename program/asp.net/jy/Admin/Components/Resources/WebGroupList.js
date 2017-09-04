/* 
 * WebGroupList.js @Microsoft Visual Studio.NET 2003 <JScript 5.5>
 * AfritXia
 * 11.12/2006
 * 
 * 
 * 
 */

//////////////////////////////////////////////////////////////////////
//
// 类 CGroup 参数构造器
//
// Parameters:
//     groupID, 组标记 ID
//     openedImgSrc, 打开状态的图片 URL
//     closedImgSrc, 关闭状态的图片 URL
//
function CGroup(groupID, openedImgSrc, closedImgSrc)
{
	// 获取切换按钮
	this.m_toggleImageTag = document.getElementById(groupID + "__toggleImage");
	// 获取项目列表标记
	this.m_itemsTag = document.getElementById(groupID + "__items");

	if (this.m_toggleImageTag == null)
		throw new Error("m_toggleImageTag Is Null Value, In Object CGroup");
		
	if (this.m_itemsTag == null)
		throw new Error("m_itemsTag Is Null Value, In Object CGroup");

	with (this)
	{
		// 为切换按钮添加点击事件
		m_toggleImageTag.onclick = function()
		{
			// 获取项目列表的显示状态
			var displayState = new String(m_itemsTag.style.display).toUpperCase();
			
			if (displayState == "" || displayState == "BLOCK")
			{
				// 隐藏项目列表
				m_itemsTag.style.display = "none";
				// 切换按钮为关闭状态
				m_toggleImageTag.src = closedImgSrc;
			}
			else
			{
				// 显示项目列表
				m_itemsTag.style.display = "block";
				// 切换按钮为打开状态
				m_toggleImageTag.src = openedImgSrc;
			}
		}
	}
}

//////////////////////////////////////////////////////////////////////
// 
// 类 CItem 参数构造器
// 
// Parameters:
//     itemID, 项标记 ID
// 
function CItem(itemID)
{
	// 获取项标记
	this.m_itemTag = document.getElementById(itemID);

	if (this.m_itemTag == null)
		throw new Error("m_itemTag Is Null Value, In Object CItem");

	with (this)
	{
		// 添加鼠标聚焦事件
		m_itemTag.onmouseover = function()
		{
			// 设置外边框
			m_itemTag.style.border = "solid 1px #a0a0a0";
			// 设置间隔
			m_itemTag.style.margin = "-1, -1, -1, -1";
			// 设置背景颜色
			m_itemTag.style.backgroundColor = "#fafafa";
		}

		// 添加鼠标失去焦点事件
		m_itemTag.onmouseout = function()
		{
			// 取消外边框
			m_itemTag.style.borderWidth = 0;
			// 取消间隔
			m_itemTag.style.margin = "0, 0, 0, 0";
			// 取消背景颜色
			m_itemTag.style.backgroundColor = "transparent";
		}
	}
}