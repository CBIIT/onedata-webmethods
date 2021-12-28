<html>
  <head>
    <META http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Manage list of API for the API Portal</title>
  </head>
  <body>
    %ifvar action equals('Save')%
      %invoke nciapiportal.flowservices:saveConfig%
      %endinvoke%
    %endif% 
    %invoke nciapiportal.flowservices:getConfig%
      <form action="manage.dsp" method="post">
        <table border="1">
          <tr>
            <th>API Type</td>
            <th>Value List</td>
          </tr>
          <tr>
            <td>REST API List</td>
            <td><textarea name="restlist" cols="40" rows="10" wrap="soft">%value restlist%</textarea></td>
          </tr>
          <tr>
            <td>SOAP API List</td>
            <td><textarea name="soaplist" cols="40" rows="10" wrap="soft">%value soaplist%</textarea></td>
          </tr>
          <tr>
            <td colspan="2"><input type="submit" name="submit" value="Save Changes"/> <INPUT type="hidden" name="action" value="Save"></td>
          </tr>
        </table>
      </form>
    %onerror%
      <HR>
      <P><FONT COLOR="#FF0000">The Server could not process your request because the following error occurred. Contact your server administrator.</FONT></P>
      <TABLE WIDTH="50%" BORDER="1">
        <TR>
          <TD><B>Service</B></TD>
          <TD>%value errorService%</TD></TR>
        <TR>
          <TD><B>Error</B></TD>
          <TD>%value error% &nbsp; %value errorMessage%</TD>
        </TR>
      </TABLE>
      <HR> 
    %endinvoke%
  </body>
</html>
