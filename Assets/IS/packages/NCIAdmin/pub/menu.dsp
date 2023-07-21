<html>
<head>
<link rel="stylesheet" type="text/css" href="css/webMethods.css">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<meta http-equiv="Expires" content="-1">
<script src="common-menu.js"></script>
<script type="text/javascript">
var selected = null;
var menuInit = false;

function menuSelect(object, id) {
  selected = menuext.select(object, id, selected);
}

function menuMouseOver(object, id) {
  menuext.mouseOver(object, id, selected);
}

function menuMouseOut(object, id) {
  menuext.mouseOut(object, id, selected);
}

function initMenu(firstImage) {
    menuInit = true;
    return true;
}

function getElements(tag, name) {
	var elem = document.getElementsByTagName(tag);
	var arr = new Array();
	for(i=0, idx=0; i<elem.length; i++) {
		att = elem[i].getAttribute("name");
		if(att == name) {
			arr[idx++] = elem[i];
		}
	}
	return arr;
}
//Action on TAB key
function checkTabPress(e) {
    'use strict';
    var ele = document.activeElement;
	if (e.shiftKey) {
		return;
	}
    if (e.keyCode === 9 && ele.nodeName.toLowerCase() === 'a') {
		//var pNode = ele.parentNode.parentNode.parentNode.previousElementSibling;
		var pNode = ele.parentNode.parentNode;
		//alert(pNode);
		if (pNode.getAttribute('manualhide') == 'true') {
			var id = pNode.getAttribute('id').concat('_subMenu');
			//alert(id);
			var imgId = pNode.getAttribute('id').concat('_twistie');
			//alert(imgId);
			toggle(pNode, id, imgId);
			var nextEl = findNextTabStop(ele);
			nextEl.focus();
		}
		if (pNode.getAttribute('manualhide') == 'false') {
			var nextEl = findNextTabStop(ele);
			nextEl.focus();
		}
    }
}

//Action on SHIFT-TAB key
function checkShiftTabPress(e) {
    'use strict';
    var ele = document.activeElement;
    if (e.shiftKey && e.keyCode === 9 && ele.nodeName.toLowerCase() === 'a') {
		var pNode = ele.parentNode.parentNode;
		//alert(pNode.getAttribute('id').concat('_subMenu'));
		
		if (pNode.getAttribute('manualhide') == 'true' || pNode.getAttribute('manualhide') == 'false') {
			var id = pNode.getAttribute('id').concat('_subMenu');
			//alert(id);
			var imgId = pNode.getAttribute('id').concat('_twistie');
			//alert(imgId);
			toggle(pNode, id, imgId);
			var prevEl = findPreviousTabStop(ele);
			prevEl.focus();
		}
    }
}
//Add an event listener for Tab key
document.addEventListener('keyup', function (e) {
    checkTabPress(e);
}, false);

//Add an event listener for Shift Tab key
document.addEventListener('keyup', function (e) {
    checkShiftTabPress(e);
}, false);

//Find the next TAB stop
function findNextTabStop(el) {
    var universe = document.querySelectorAll('a[href]');
    var list = Array.prototype.filter.call(universe, function(item) {return item.tabIndex >= "0"});
    var index = list.indexOf(el);
    return list[index + 1] || list[0];
  }

//Find the previous TAB stop  
function findPreviousTabStop(el) {
    var universe = document.querySelectorAll('a[href]');
    var list = Array.prototype.filter.call(universe, function(item) {return item.tabIndex >= "0"});
    var index = list.indexOf(el);
    return list[index - 1] || list[0];
  }
</script>
</head>

<body class="menu" >
  <table class="menuTable" width="100%" cellspacing="0" cellpadding="0" border="0" id="mTable">

    <tr>
      <td class="menusection menusection-expanded" id="elmt_tools_subMenu">

        <img id='tools_twistie' src="images/expanded.gif" />
        &nbsp;Tools
      </td>
    </tr>

    <tr>
      <td id="itops.dsp" class="menuitem xyz">
        <a id="atops.dsp" href="tops.dsp" style="display: block; padding-left: 2em;" target="body" onclick="menuSelect(this, 'tops.dsp');">
        <img src="images/folderClosed.gif"/>
        top command
        </a>
      </td>
    </tr>
    <tr>
      <td id="ifree.dsp" class="menuitem xyz">
        <a id="afree.dsp" href="free.dsp" style="display: block; padding-left: 2em;" target="body" onclick="menuSelect(this, 'free.dsp');">
        <img src="images/folderClosed.gif"/>
        free command
        </a>
      </td>
    </tr>
    <tr>
      <td id="ips.dsp" class="menuitem xyz">
        <a id="aps.dsp" href="ps.dsp" style="display: block; padding-left: 2em;" target="body" onclick="menuSelect(this, 'ps.dsp');">
        <img src="images/folderClosed.gif"/>
        ps command all saguser processes
        </a>
      </td>
    </tr>
    <tr>
      <td id="iuptime.dsp" class="menuitem xyz">
        <a id="auptime.dsp" href="uptime.dsp" style="display: block; padding-left: 2em;" target="body" onclick="menuSelect(this, 'uptime.dsp');">
        <img src="images/folderClosed.gif"/>
        uptime command
        </a>
      </td>
    </tr>
    <tr>
      <td id="ivmstat.dsp" class="menuitem xyz">
        <a id="avmstat.dsp" href="vmstat.dsp" style="display: block; padding-left: 2em;" target="body" onclick="menuSelect(this, 'vmstat.dsp');">
        <img src="images/folderClosed.gif"/>
        vmstat command
        </a>
      </td>
    </tr>
  </table>
        
<script>menuSelect('', 'stats-general.dsp')</script>
<script>
document.getElementsByClassName("menusection-Server")[0].style.color="#ffffff";
</script>
</body>

</html>
