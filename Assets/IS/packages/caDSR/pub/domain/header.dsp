%invoke caDSR.utils:createServerInfo%
<html>
  <head>
    <link rel="stylesheet" type="text/css" href="../css/webMethods.css">
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
    <meta http-equiv="Expires" content="-1">
    <link rel="stylesheet" type="text/css" media="all" href="../css/jsDatePick_ltr.min.css" />

    <script type="text/javascript" src="../scripts/jsDatePick.min.1.3.js"></script>
    <script type="text/javascript">
      window.onload = function(){
	new JsDatePick({
	  useMode:2,
	  target:"dateCreated",
	  dateFormat:"%m-%d-%Y"
	});
	
        new JsDatePick({
	  useMode:2,
	  target:"dateModified",
	  dateFormat:"%m-%d-%Y"
	});
	
	new JsDatePick({
          useMode:2,
	  target:"beginDate",
	  dateFormat:"%m-%d-%Y"
	});

        new JsDatePick({
	  useMode:2,
	  target:"endDate",
	  dateFormat:"%m-%d-%Y"
	});

	document.Result.dateCreated.value = "";
        document.Result.dateModified.value = "";
        document.Result.beginDate.value = "";
        document.Result.endDate.value = "";
      };
    </script>
    <script>
      function validatedata(){
        var elements = document.forms["Result"].elements;
        var hasinputs = 0;
        for (i=0; i<elements.length; i++){
          switch ( elements[i].name ){
            case "submit": 
            case "selectedDomain": 
              break;
            default:
              hasinputs = hasinputs + elements[i].value.length;
              break;
          }
        }
        if( hasinputs == 0 ){
          alert("Please enter data in the form.");
          return false;
        }
        return true;
      }
    </script>
  </head>
  <body>
    <form method="post" target="_blank" action="%value /serverInfo/protocol%://%value /serverInfo/host%/invoke/caDSR.browser/start" name="Result" id="Result" onsubmit="return validatedata()">
      <table summary="" cellpadding="3" cellspacing="0" border="0" align="left" class="tableView" width="50%">

