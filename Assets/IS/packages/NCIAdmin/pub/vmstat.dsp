<html>
<head>
  <link rel="stylesheet" type="text/css" href="css/webMethods.css">
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
  <meta http-equiv="Expires" content="-1">
</head>

<body >
  <ul>
    <li><a href="vmstat.dsp">refresh</a></li>
  </ul>
  <br> <br> <br> <br>

  %invoke nciadmin.tools:vmstat%
  <table class="tableView" width="50%" cellspacing="0" cellpadding="0" border="0">
    <tr class="heading">
      <th class="heading">vmstat -s command output</th>
    </tr>
    %loop output%
    <tr>
      <td style="font-family:'Courier New'" nowrap><span style=" white-space: pre;">%value%</span></td>
    </tr>
    %endloop%
  </table>
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
