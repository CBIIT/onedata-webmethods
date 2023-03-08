<!DOCTYPE html>
<html>
  <head>
    <script type="text/javascript" src="scripts/FileSaver.js"></script>
  </head>
  <body>
    %invoke downloads.cde:direct%
      <textarea hidden name="data" id="data">%value xmldata encode(none)%</textarea>
    %endinvoke%
    <script type="text/javascript">
      %ifvar ErrorMessage%
        alert( "ErrorMessage:"+"%value ErrorMessage%");
      %else%
        var hiddenElement = document.createElement('a');
        %ifvar formatid equals('104')%
           var filename = %value p_item_id%+".xml";
           hiddenElement.href = 'data:attachment/text;base64,' + document.getElementById('data').value;
        %else%
           var filename = %value p_item_id%+".xlsx";
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
