<html>
<head>
  <meta http-equiv="X-UA-Compatible" content="IE=11">
  <title>caDSR Domain Browser</title>
  <link rel="stylesheet" type="text/css" href="../css/layout.css">
  <script>
    var doc = document.documentElement;
    var ua = navigator.userAgent;
    var agent = ua.indexOf("Trident/7.0") >= 0 || ua.indexOf("MSIE") >= 0 ? "IE" : "NotIE";
    doc.setAttribute('data-useragent', agent);
    if (agent == "IE") {
      document.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/layout-ie.css\">");
    }
    else {
      document.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"../css/layout-nonie.css\">");
    }
  </script>
</head>
<body>
  <div><iframe class="top" src="top.dsp" id="top"></iframe></div>
  <div class="bottom">
    <iframe class="menuframe" name="menu" src="menu.dsp" scrolling="yes" seamless="seamless"></iframe>
    <iframe class="contentframe" name="body" id="body" src=""></iframe>
  </div>
</body>
</html>
