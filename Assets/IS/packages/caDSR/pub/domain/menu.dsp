<html>
<head>
<link rel="stylesheet" type="text/css" href="../css/webMethods.css">
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
%invoke caDSR.browser:getMenu%
<table class="menuTable" width="100%" cellspacing="0" cellpadding="0" border="0" id="mTable">
  <tr>
    <td colspan="2">
      <h2 align="center">Domain Class Browser</h2>
      <h3 align="center">Please click on any of the tree nodes.</h3>
      <p>To view the search criteria for a class, select a class.  To search for records, provide valid search criteria and click the Submit button.  For any date attributes, please use the syntax: MM-dd-yyyy.  For any timestamp attributes, please use the syntax: MM-dd-yyyy hh:mm:ss.</p> 
    </td>
  </tr>

%scope menu/menu%
%loop section%
    <tr>
      <td class="menusection menusection-expanded" id="elmt_%value text%_subMenu">
        <img id='%value text%_twistie' src="../images/expanded.gif" />
        &nbsp;%value text encode(html)%
      </td>
    </tr>

    %loop submenu%
      %scope param(tablerow='table-row') param(display='none') param(class='menuitem-selected') param(className='xyz')%
        %rename ../text text -copy%
        %rename ../url url -copy%
        %rename ../target target -copy%
        %ifvar url equals('non')%
        %else%
        <tr>
          <td id="i%value encode(htmlattr) url%" %ifvar url -notempty%
            class="menuitem %value classname%"
          %else% class="menuitem-unclickable"%endif%>
          %ifvar url -notempty%
            <a id="a%value encode(htmlattr) url%" href="%value encode(html) url%" style="display: block; padding-left: 2em;" target="body" onclick="menuSelect(this, '%value url encode(javascript)%');">
            <img src="../images/folderClosed.gif"/>
            %value text%
            </a>
          %else%
            <img src="../images/space.gif" style="padding-left: 2em;"/>%value text%
          %endif%
        </td>
      </tr>
      %endif%
    %endscope%
    %endloop%
%endloop%
%endscope%
</table>
        
<script>menuSelect('', 'stats-general.dsp')</script>
<script>
document.getElementsByClassName("menusection-Server")[0].style.color="#ffffff";
</script>
%onerror%
  <HR>
  <P><FONT COLOR="#FF0000">The Server could not process your request because the following error occurred. Contact your server administrator.</FONT></P>
  <TABLE WIDTH="50%" BORDER="1">
    <TR><TD><B>Service</B></TD><TD>%value errorService%</TD></TR>
    <TR>
      <TD><B>Error</B></TD><TD>%value error% &nbsp;%value errorMessage%</TD>
    </TR>
  </TABLE>
  <HR>
%endinvoke%
</body>

</html>
