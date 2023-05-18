<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="scripts/FileSaver.js"></script>
  </head>
  <body>
    %invoke downloads.form:direct%
      <textarea name="data" id="data" hidden>%value xmldata encode(none)%</textarea>
    %onerror%
      <HR>
      <P><FONT COLOR="#FF0000">The Server could not process your request because the following error occurred. Contact your server administrator.</FONT></P>
      <TABLE WIDTH="50%" BORDER="1">
        <TR>
          <TD><B>Service</B></TD>
          <TD>%value errorService%</TD>
        </TR>
        <TR>
          <TD><B>Error</B></TD>
          <TD>%value error%<br>%value errorMessage%</TD>
        </TR>
      </TABLE>

    %endinvoke%
    <script type="text/javascript">
      const b64toBlob = (b64Data, contentType='', sliceSize=512) => {
        const byteCharacters = atob(b64Data);
        const byteArrays = [];

        for (let offset = 0; offset < byteCharacters.length; offset += sliceSize) {
          const slice = byteCharacters.slice(offset, offset + sliceSize);

          const byteNumbers = new Array(slice.length);
          for (let i = 0; i < slice.length; i++) {
            byteNumbers[i] = slice.charCodeAt(i);
          }

          const byteArray = new Uint8Array(byteNumbers);
          byteArrays.push(byteArray);
        }
      
      const blob = new Blob(byteArrays, {type: contentType});
      return blob;
    }

      %ifvar ErrorMessage%
        alert( "ErrorMessage:"+"%value ErrorMessage%");
      %else%
        %ifvar xmldata isnull%
          alert( "No data was downloaded!");
        %else%
	  const blob = b64toBlob(document.getElementById('data').value, "%value contenttype%");
          saveAs(blob, "%value filename%");
        %endif%
      %endif%
      window.close();
    </script>
  </body>
</html>
