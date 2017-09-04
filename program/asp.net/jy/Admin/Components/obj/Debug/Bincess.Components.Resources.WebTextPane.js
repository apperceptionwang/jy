/* 
 * WebTextPane.js @Microsoft Visual Studio.NET 2003 <JScript 5.5>
 * AfritXia
 * 07.21/2006
 * 
 * WebTextPane 控件客户端脚本
 * 
 */


/*@cc_on @*/
/*@set @DEBUG = true; @*/

// WebTextPane 控件集合
var g_webTextPaneCollection = new Array();
// 当前的 WebTextPane 控件对象
var g_currWebTextPane = null;
// 当前命令管理器
var g_currCmdManager = null;

///////////////////////////////////////////////////////////////////
//
// 类 CWebTextPane 构造器
//

function CWebTextPane()
{
	// 将当前编辑器对象加入到集合
	g_webTextPaneCollection[g_webTextPaneCollection.length] = this;
	// 将变量指向当前编辑器对象
	g_currWebTextPane = this;

	// 文本模型控件
	this.m_textModel = null;
	// 设计器控件
	this.m_designPane = null;
	
	// 命令管理器
	this.m_cmdManager = new CCmdManager();
}

///////////////////////////////////////////////////////////////////
//
// 类 CTextModel 构造器
// 
// parameters:
//     textAreaID, <textarea /> 文本框标记 ID
//

function CTextModel(textAreaID)
{
	this.m_textAreaElement = document.getElementById(textAreaID);

	if (this.m_textAreaElement == null)
		throw new Error("Can't Find Element With ID = '" + textAreaID + "'");

	// 设置 CWebTextPane 属性值
	g_currWebTextPane.m_textModel = this;
}

///////////////////////////////////////////////////////////////////
// 
// 类 CDesignPane 构造器
//
// parameters:
//     spanID, <span /> 设计器标记 ID
//

function CDesignPane(spanID)
{
	this.m_spanElement = document.getElementById(spanID);

	if (this.m_spanElement == null)
		throw new Error("Can't Find Element With ID = '" + spanID + "'");

    with(this)
    {
        m_spanElement.onpaste = function()
        {
            // 过滤 HTML 代码
            m_spanElement.document.selection.createRange().pasteHTML(HtmlEncode(clipboardData.getData("Text")));
            
            return false;
        }
    }

	// 设置设计器引用
	g_currWebTextPane.m_designPane = this;
	// 设置命令管理器对设计器的引用
	g_currWebTextPane.m_cmdManager.m_targetDesignPane = this;
}

///////////////////////////////////////////////////////////////////
// 
// 类 CCmdManager 构造器
//

function CCmdManager()
{
    // 目标设计器
	this.m_targetDesignPane = null;
	// 键值属性
	this.m_keyValue = new Array();

    // 处理消息信息
    this.ProcessMessage = function(commandName, valueArgument)
    {
        with(this)
        {
	        // 如果当前设计器对象为空则退出
	        if (m_targetDesignPane == null)
	            return;
	            
	        // 令设计器获得焦点
	        m_targetDesignPane.m_spanElement.focus();
	    }

        // 处理命令信息
	    with(this.m_targetDesignPane.m_spanElement)
	    {       
		    switch(commandName)
		    {   
		        case "CMD_FONT":
		            document.execCommand("FontName", false, valueArgument);
		            break;
		            
		        case "CMD_SIZE":
		            document.execCommand("FontSize", false, valueArgument);
		            break;
		            
		        case "CMD_BACK_COLOR":
		            document.execCommand("BackColor", false, valueArgument);
		            break;
		            
		        case "CMD_FORE_COLOR":
		            document.execCommand("ForeColor", false, valueArgument);
		            break;
		            
		        case "CMD_LINE_HEIGHT":
		            alert(document.selection.createRange().parentElement().innerHTML);
		            break;
		            
		        case "CMD_BOLD":
		            document.execCommand("Bold");
		            break;

                case "CMD_ITALIC":
                    document.execCommand("Italic");
		            break;

                case "CMD_UNDERLINE":
		            document.execCommand("UnderLine");
		            break;
		        
		        case "CMD_INDENT":
		            document.execCommand("Indent");
		            break;
		            
		        case "CMD_OUTDENT":
		            document.execCommand("Outdent");
		            break;

                case "CMD_JUSTIFY_LEFT":
                    document.execCommand("JustifyLeft");
                    break;

                case "CMD_JUSTIFY_CENTER":
                    document.execCommand("JustifyCenter");
                    break;
                    
                case "CMD_JUSTIFY_RIGHT":
                    document.execCommand("JustifyRight");
                    break;
                    
                case "CMD_JUSTIFY_FULL":
                    document.execCommand("JustifyFull");

                case "CMD_CUT":
                    document.execCommand("Cut");
                    break;
                    
                case "CMD_COPY":
                    document.execCommand("Copy");
                    break;
                    
                case "CMD_PASTE":
                    document.execCommand("Paste");
                    break;
                    
                case "CMD_UNDO":
                    document.execCommand("Undo");
                    break;
                    
                case "CMD_PICTURE":
                    // 获取选择文本
	                var range = document.selection.createRange();

	                // 显示提示框，获取图片地址
	                var imgUrl = prompt("图片 URL 地址", "http://");

	                if (imgUrl == null || imgUrl == "")
		                return;
		                
                    // 插入图片
	                range.pasteHTML("<img src='" + imgUrl + "' />");
                    break;
                    
                case "CMD_ANCHOR":
                    // 获取选择文本
                    var range = document.selection.createRange();

	                if (range.text == "")
	                {
		                alert("在插入链接之前，请选取要替换的文本");
		                return;
	                }

                    // 获取链接地址
	                var anchor = prompt("链接 URL 地址", "http://");

	                if (anchor == null || anchor == "")
		                return;

                    // 建立链接
	                document.execCommand("CreateLink", false, anchor);
                    break;

				case "CMD_CANCEL_ANCHOR":
					// 清除链接
					document.execCommand("UnLink");
					break;
					
                case "CMD_RULE":
                    document.execCommand("InsertHorizontalRule");
                    break;
                    
                case "CMD_ERASER":
					document.execCommand("RemoveFormat");
                    break;
                    
		        default:
		            break;
		    }
	    }
	}

	// 设置当前命令管理器
	g_currCmdManager = this;
}

///////////////////////////////////////////////////////////////////
//
// 类 CToolbarDropDownList 构造器
//
// parameters:
//     selectID,  <select /> 下拉列表框标记 ID
//     commandName, 命令名称
//

function CToolbarDropDownList(selectID, commandName)
{
	this.m_selectElement = document.getElementById(selectID);

	if (this.m_selectElement == null)
		throw new Error("Can't Find Element With ID = '" + selectID + "'");

    // 设置命令名称
	this.m_cmdName = commandName;
	// 设置当前命令管理器对象
	this.m_cmdManager = g_currCmdManager

    with(this)
    {
	    m_selectElement.onchange = function()
	    {
	        // 将当前值加入到命令键值对象
	        m_cmdManager.m_keyValue[commandName] = m_selectElement.value;

            // 处理消息
	        m_cmdManager.ProcessMessage(m_cmdName, m_selectElement.value);
	    }
	}
}

///////////////////////////////////////////////////////////////////
//
// 类 CToolbarImageButton 构造器
//
// parameters:
//     imgID, <img /> 图片按钮标记 ID
//     commandName, 命令名称
//

function CToolbarImageButton(imgID, commandName)
{
	this.m_imgElement = document.getElementById(imgID);

	if (this.m_imgElement == null)
		throw new Error("Can't Find Element With ID = '" + imgID + "'");

	// 设置命令名称
	this.m_cmdName = commandName;
	// 设置事件管理器
	this.m_cmdManager = g_currCmdManager;

	with(this)
	{
		// 添加点击事件
		m_imgElement.onclick = function()
		{
			m_cmdManager.ProcessMessage(m_cmdName, m_cmdManager.m_keyValue[m_cmdName]);
		}

		// 添加鼠标滑入事件
		m_imgElement.onmouseover = function()
		{
			m_imgElement.className = "CToolbarImageButton_OnMouseEntry";
		}

		// 添加鼠标滑出事件
		m_imgElement.onmouseout = function()
		{
			m_imgElement.className = "CToolbarImageButton_OnMouseExit";
		}

		// 添加鼠标按键事件
		m_imgElement.onmousedown = function()
		{
			m_imgElement.className = "CToolbarImageButton_OnMouseDown";
		}

		// 添加鼠标按键释放事件
		m_imgElement.onmouseup = function()
		{
			m_imgElement.className = "CToolbarImageButton_OnMouseUp";
		}
	}
}

///////////////////////////////////////////////////////////////////
// 
// 更新文本模型，在页面提交之前
//
// WebTextPane 控件的核心函数
//

function WebTextPane_UpdateTextModel_OnSubmit()
{
	if (g_webTextPaneCollection.length <= 0)
		return;

	for(var i=0; i < g_webTextPaneCollection.length; i++)
	{
		// 获取 CWebTextPane 对象
		var webTextPane = g_webTextPaneCollection[i];

		// 更新文本模型中的文本值
		webTextPane.m_textModel.m_textAreaElement.value = webTextPane.m_designPane.m_spanElement.innerHTML;
	}
}

///////////////////////////////////////////////////////////////////
// 
// HtmlEncode 超链接文本字符串过滤函数
//
// parameters:
//     src, 源字符串
//
// return:
//     过滤后的字符串，字符串不会含有 & " ' < > 空格等字符
// 

function HtmlEncode(src)
{	
    // 替换所有的 &
    src=src.replace(/&/gi, "&amp;");
    // 替换所有的 "
    src=src.replace(/\"/gi, "&quot;");
    // 替换所有的 '
    src=src.replace(/\'/gi, "&apos;");
    // 替换所有的 <
    src=src.replace(/</gi, "&lt;");
    // 替换所有的 >
    src=src.replace(/>/gi, "&gt;");
    // 替换所有的空格
    src=src.replace(/\ /gi, "&nbsp;");
    // 替换所有的回车
    src=src.replace(/\n/gi, "<br>");
    // 替换所有的制表符
    src=src.replace(/\t/gi, "&nbsp;&nbsp;&nbsp;&nbsp;");
    
    return src;
}

/*@if (@DEBUG) @*/
	// alert("Debug Start");
/*@end @*/