<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

<!--
<script type="text/javascript" src="../js/jquery.qrcode.min.js"></script>
-->

<script type="text/javascript" src="../js/jquery.qrcode.js"></script>
<script type="text/javascript" src="../js/qrcode.js"></script>


<script>
var params = {};
window.location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str,key,value) {
  params[key] = value;
});
</script>


<p>Render in table</p>
<div id="qrcodeTable"></div>

<script>
	//jQuery('#qrcode').qrcode("this plugin is great");
	jQuery('#qrcodeTable').qrcode({
	render	: "table",
	text	: params.qrurl 
	});	
</script>





</body>
</html>