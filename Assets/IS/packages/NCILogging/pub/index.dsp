<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/webMethods.css">
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
  <meta http-equiv="Expires" content="-1">
</head>
<body>
  %ifvar action equals('action')%
    %invoke ncilogging.adm:setConfig%
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
  %endif%

  %invoke ncilogging.adm:getConfig%
  <form method="post" target="_blank" action="index.dsp">
    <table class="tableView" cellpadding="3" cellspacing="0" border="0" align="left">
      <tr>
        <td class="heading">Field</td>
        <td class="heading">Value</td>
      </tr>
      <tr>
        <td class="oddrow">* Filename</td>
        <td class="oddrow-l"><input type="text" name="filename" id="filename" class="oddrow-lSized " value=%value filename%>
          <input type="hidden" name="action" value="action">
      </tr>
      <tr>
        <td class="oddrow">Default Log Level</td>
        <td class="oddrow-l">
          <select name="logLevel">
            <option value="Off" %ifvar logLevel equals('Off')%selected%endif%>Off</option>
            <option value="Fatal" %ifvar logLevel equals('Fatal')%selected%endif%>Fatal</option>
            <option value="Error" %ifvar logLevel equals('Error')%selected%endif%>Error</option>
            <option value="Warn" %ifvar logLevel equals('Warn')%selected%endif%>Warn</option>
            <option value="Info" %ifvar logLevel equals('Info')%selected%endif%>Info</option>
            <option value="Debug" %ifvar logLevel equals('Debug')%selected%endif%>Debug</option>
            <option value="Trace" %ifvar logLevel equals('Trace')%selected%endif%>Trace</option>
	  </select>
        </td>
      </tr>
      <tr>
        <td colspan="2" class="oddrow">
            <table class="tableView" cellpadding="4" cellspacing="0" border="0">
                <tr>
                  <td class="action" colspan="2">
                    <input type="submit" name="submit" value="Submit">
                  </td>
                </tr>
            </table>
        </td>
      </tr>
      <tr>
        <td colspan="2" class="oddrow">
           <b>NOTE:</b> * indicates a reload of the NCILogging package is necessary for the change to take effect.
        </td>
      </tr?
    </table>
  </form>
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
