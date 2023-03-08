<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="scripts/FileSaver.js"></script>
  </head>
  <body>
    %invoke downloads.cde:direct%
      <textarea name="data" id="data">%value xmldata encode(none)%</textarea>
    %endinvoke%
    <script src="scripts/FileSaver.js"></script>
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

        var hiddenElement = document.createElement('a');
        
        %ifvar formatid equals('104')%
           const blob = b64toBlob(document.getElementById('data').value, "text/xml");
           var filename = "CDEBrowser_SearchResults_LegacyXML.xml";
        %else%
           const blob = b64toBlob(document.getElementById('data').value, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
           %ifvar formatid equals('103')%
             var filename = "CDEBrowser_SearchResults_LegacyExcel.xlsx";
           %else%
             var filename = "CDEBrowser_SearchResults_PriorLegacyExcel.xlsx";
           %endif%
        %endif%
        saveAs(blob, filename);
      %endif%
      window.close();
    </script>
  </body>
</html>
