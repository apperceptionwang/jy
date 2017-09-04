String.prototype.trim= function()  
{  
    // 用正则表达式将前后空格  
    // 用空字符串替代。  
    return this.replace(/(^\s*)|(\s*$)/g, "");  
}

var xmlHttp=null;

function createXMLHttpRequest() {
    
    if (window.ActiveXObject) {
        xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
    } 
    else if (window.XMLHttpRequest) {
        xmlHttp = new XMLHttpRequest();
    }
}

//下拉菜单对象
function AjaxPopupList(InstanceName)
{
    this.instanceName = InstanceName;
    
    this.Init = AjaxInit;
    this.Show = AjaxShow;
    this.Hide = AjaxHide;
    
    this.showed = false;
    
    this.Server = "";
    this.TagName = "";
    
    this.oTaget = null;//主控件
    this.otherTagets = new Array();//多控件容器
    this.sDivID = InstanceName + "div";
}

//初始化
function AjaxInit()
{
    htmlAll = "<div id='" + this.sDivID + "' align='center' style='display:none;position:absolute;overflow-y:auto;height:200px;'>"; 
    htmlAll += "</div>";
    document.write(htmlAll);
}

//一个求控件相对位置的函数
function ListgetPos(el,ePro)				/// Get Absolute Position
{
	var ePos=0;
	while(el!=null)
	{		
		ePos+=el["offset"+ePro];
		el=el.offsetParent;
	}
	return ePos;
}

//单击查询出记录的事件
function AjaxListRowClick(oRow,oInstance,cellIndex)
{
    if(oRow.innerText.trim()!="")
	{
	    oInstance.showed = false;
	    if(oInstance.oTaget.tagName=="INPUT")
		{
            oInstance.oTaget.value=oRow.cells(cellIndex).innerText;
		}
		
		//配合多个输入框内容,响应必须有同样多的CELLS单元!
		for(var i=0;i<oInstance.otherTagets.length;i++)
		{
		    document.getElementById(oInstance.otherTagets[i]).value=oRow.cells(i+1).innerText;
		}
		document.all[oInstance.sDivID].style.display="none";	
	}
}

function doRequestUsingGET(oInstance) {
    createXMLHttpRequest();
    
    var queryString = oInstance.Server + "?TagName=" + oInstance.TagName +"&baseName=" + oInstance.instanceName + "&Search=" + escape(oInstance.oTaget.value.trim());
    xmlHttp.onreadystatechange = function(){handleStateChange(oInstance)};
    xmlHttp.open("GET", queryString, true);
    xmlHttp.send(null);
}

function handleStateChange(oInstance) {
    if(xmlHttp.readyState == 4) {
        if(xmlHttp.status == 200) {
            ListDiv=document.all[oInstance.sDivID];
            ListDiv.innerHTML = xmlHttp.responseText;
            oInstance.Show();
        }
    }
}

//单击TEXTBOX时激发事件
function AplClick(oInputSrc)
{
	var oInstance = AjaxCreate(oInputSrc);
	if(oInstance)
	{
        if (document.all[oInstance.sDivID].style.display=="none")
        {
            doRequestUsingGET(oInstance);
            oInstance.showed = true;
        }
        else
        {
            oInstance.showed = false;
            oInstance.Hide();
        }
    }			
}


//改变TEXTBOX内容时激发事件
function AplChange(oInputSrc)
{
    var oInstance = AjaxCreate(oInputSrc);
    
    if(oInstance) 
    {
        if(oInstance.showed)
        {
            doRequestUsingGET(oInstance);
        }
    }
}

//显示下拉菜单
function AjaxShow()
{   
    ListDiv=document.all[this.sDivID];
    ListDiv.style.pixelLeft=ListgetPos(this.oTaget,"Left")+1;//+oInputSrc.offsetWidth
    ListDiv.style.pixelTop=ListgetPos(this.oTaget,"Top")+this.oTaget.offsetHeight;
    ListDiv.style.display="";	
}

//隐藏下拉菜单
function AjaxHide()
{
    ListDiv=document.all[this.sDivID];
    ListDiv.style.display="none";	
}

//创建下拉菜单
function AjaxCreate(oInputSrc)
{
    var oInstance = null;
    if(oInputSrc)
    {
        oInstance = eval("apl" + oInputSrc.id.toString());
        oInstance.oTaget = oInputSrc;
    }
      
    return oInstance;
}