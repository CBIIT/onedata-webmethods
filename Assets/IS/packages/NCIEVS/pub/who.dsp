%invoke caDSR.utils:createServerInfo%
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="css/webMethods.css">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
    <meta http-equiv="Expires" content="-1">
  </head>
  <body>
    <form method="post" target="_blank" action="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/ncievs.who/getData" name="Result" id="Result">
      <table summary="" cellpadding="3" cellspacing="0" border="0" align="left" class="tableView" width="50%">
        <tr>
          <td class="heading" height="20" colspan="3">Load Morphology or Topology WHO Files</td>
        </tr>
        <tr valign="top">
          <td class="oddrow"><label for="FileType">File Type</label></td>
          <td class="oddrow-l" width="90%">
            <select name="FileType" id="FileType">
              <option value="MORPHOLOGY">Morphology</option>
              <option value="TOPOLOGY">Topology</option>
            </select>
          </td>
        </tr>
        <tr valign="top">
          <td class="evenrow"><label for="Filename">File</label></td>
          <td class="evenrow-1" width="90%">
            <input type="file" name="Filename" id="Filename">
            <textarea cols="30" rows="20" name="filedata" hidden></textarea>
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
      </table>
    </form>
    <script type="text/javascript">
      let input = document.querySelector('input');
      let textarea = document.querySelector('textarea');
      input.addEventListener('change', () => {
        let files = input.files;
        if (files.length == 0) return;
        const file = files[0];
        let reader = new FileReader();
        reader.onload = (e) => {
          const file = e.target.result;
          const lines = file.split(/\r\n|\n/);
          textarea.value = lines.join('\n');
        };
        reader.onerror = (e) => alert(e.target.error.name);
        reader.readAsText(file);
      });
    </script>
  </body>
</html>

