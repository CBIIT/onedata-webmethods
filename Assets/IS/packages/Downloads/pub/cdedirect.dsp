<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="scripts/FileSaver.js"></script>
  </head>
  <body>
    %invoke downloads.cde:direct%
      <textarea name="data" id="data" hidden>%value xmldata encode(none)%</textarea>
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
        %ifvar type equals('usr')%
          filename = "Cart_"
          %ifvar formatid equals('103')%
            filename = filename + "LegacyXLS_%value p_cart_nm%.xlsx";
          %else%
            %ifvar formatid equals('114')%
              filename = filename + "PriorLegacyXLS_%value p_cart_nm%.xlsx";
            %else%
              filename = filename + "LegacyXML_%value p_cart_nm%.xml";
            %endif%
          %endif%
        %endif%
        %ifvar type equals('csi')%  
          filename = "Classifications_";
          %ifvar formatid equals('103')%
            filename = filename + "LegacyXLS.xlsx";
          %else%
            %ifvar formatid equals('114')%
              filename = filename + "PriorLegacyXLS.xlsx";
            %else%
              filename = filename + "LegacyXML.xml";
            %endif%
          %endif%
        %endif%
        %ifvar type equals('frm')%  
          filename = "Protocol_";
          %ifvar formatid equals('103')%
            filename = filename + "LegacyXLS.xlsx";
          %else%
            %ifvar formatid equals('114')%
              filename = filename + "PriorLegacyXLS.xlsx";
            %else%
              filename = filename + "LegacyXML.xml";
            %endif%
          %endif%
        %endif%
        %ifvar xmldata isnull%
          alert( "No data was downloaded!");
        %else%
          %ifvar formatid equals('104')%
            const blob = b64toBlob(document.getElementById('data').value, "text/xml");
          %else%
            const blob = b64toBlob(document.getElementById('data').value, "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet");
          %endif%
          saveAs(blob, filename);
        %endif%
      %endif%
      window.close();
    </script>
  </body>
</html>
