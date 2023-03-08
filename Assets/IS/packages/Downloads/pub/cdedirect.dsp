<!DOCTYPE html>
<html>
  <head>
  </head>
  <body>
    %invoke downloads.cde:direct%
      <textarea name="data" id="data">%value xmldata encode(none)%</textarea>
    %endinvoke%
    <script type="text/javascript">
      %ifvar ErrorMessage%
        alert( "ErrorMessage:"+"%value ErrorMessage%");
      %else%
        var hiddenElement = document.createElement('a');
        
        %ifvar formatid equals('104')%
           var filename = "LegacyXML.xml";
           hiddenElement.href = 'data:attachment/text;base64,' + document.getElementById('data').value;
        %else%
           %ifvar formatid equals('103')%
             var filename = "LegacyXLS.xlsx";
           %else%
             var filename = "PriorXLS.xlsx";
           %endif%
           hiddenElement.href = 'data:application/vnd.openxmlformats-officedocument.spreadsheetml.sheet;base64,' + document.getElementById('data').value;
        %endif%
        hiddenElement.target = '_blank';
        hiddenElement.download = filename;
        hiddenElement.click();
      %endif%
      window.close();
    </script>
  </body>
</html>
