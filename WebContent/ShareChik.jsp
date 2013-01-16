<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="../css/style1.css">
<title>Share Chik</title>
</head>
<body onload="load();">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.5.2/jquery.min.js"></script>

<script>
function load(){
	$("#txtAreaID").width($(window).width());
	document.chikForm.theText.value =  document.chikForm.preText.value = decode64();
}
</script>


















<script type="text/javascript" src="../js/jquery.qrcode.js"></script>
<script type="text/javascript" src="../js/qrcode.js"></script>






<input type=hidden id="abcId" name="abcId" value="http://www.google.com"/>


<script>
function makeQR()
{
	//var qqr = document.getElementById('abcId').value;
	var qqr = window.location.href;
	alert(qqr);
	window.location = "http://localhost:8080/ShareChik/qrGen/?qrurl="+qqr;
}
</script>




<table>
<tr>
<td><input class="greenSolid" id="qrID" type="button" value="Generate QR Code" onclick="makeQR();"/></td>
<td><%@ include file="twitterShare.jsp" %></td>
<td><%@ include file="myBitly.jsp" %></td>
</tr>
</table>














<script type="text/javascript">
  <!--

  var keyStr = "ABCDEFGHIJKLMNOP" +
               "QRSTUVWXYZabcdef" +
               "ghijklmnopqrstuv" +
               "wxyz0123456789+/" +
               "=";

  function encode64(input) {
     input = escape(input);
     var output = "";
     var chr1, chr2, chr3 = "";
     var enc1, enc2, enc3, enc4 = "";
     var i = 0;

     do {
        chr1 = input.charCodeAt(i++);
        chr2 = input.charCodeAt(i++);
        chr3 = input.charCodeAt(i++);

        enc1 = chr1 >> 2;
        enc2 = ((chr1 & 3) << 4) | (chr2 >> 4);
        enc3 = ((chr2 & 15) << 2) | (chr3 >> 6);
        enc4 = chr3 & 63;

        if (isNaN(chr2)) {
           enc3 = enc4 = 64;
        } else if (isNaN(chr3)) {
           enc4 = 64;
        }

        output = output +
           keyStr.charAt(enc1) +
           keyStr.charAt(enc2) +
           keyStr.charAt(enc3) +
           keyStr.charAt(enc4);
        chr1 = chr2 = chr3 = "";
        enc1 = enc2 = enc3 = enc4 = "";
     } while (i < input.length);

     //var output = encode64(escape(output));
     window.location.hash = "/" + output;
     
     //return output;
  }

  function decode64() {
	 var input = (location.href.split("#/")[1] || "");
     var output = "";
     var chr1, chr2, chr3 = "";
     var enc1, enc2, enc3, enc4 = "";
     var i = 0;

     // remove all characters that are not A-Z, a-z, 0-9, +, /, or =
     var base64test = /[^A-Za-z0-9\+\/\=]/g;
     if (base64test.exec(input)) {
        alert("There were invalid base64 characters in the input text.\n" +
              "Valid base64 characters are A-Z, a-z, 0-9, '+', '/',and '='\n" +
              "Expect errors in decoding.");
     }
     input = input.replace(/[^A-Za-z0-9\+\/\=]/g, "");

     do {
        enc1 = keyStr.indexOf(input.charAt(i++));
        enc2 = keyStr.indexOf(input.charAt(i++));
        enc3 = keyStr.indexOf(input.charAt(i++));
        enc4 = keyStr.indexOf(input.charAt(i++));

        chr1 = (enc1 << 2) | (enc2 >> 4);
        chr2 = ((enc2 & 15) << 4) | (enc3 >> 2);
        chr3 = ((enc3 & 3) << 6) | enc4;

        output = output + String.fromCharCode(chr1);

        if (enc3 != 64) {
           output = output + String.fromCharCode(chr2);
        }
        if (enc4 != 64) {
           output = output + String.fromCharCode(chr3);
        }

        chr1 = chr2 = chr3 = "";
        enc1 = enc2 = enc3 = enc4 = "";

     } while (i < input.length);

     //output=decode64(unescape(output));
     return unescape(output);
  }

  //--></script>
  
  
 <form id="tForm">
 </form>
  
<form name="chikForm">
<table id="txtAreaID">
<tr>
<td>
	<textarea id="theText" cols="100" rows="50" onkeyup="encode64(document.chikForm.theText.value);document.chikForm.preText.value=document.chikForm.theText.value"></textarea>
</td>
<td>
	<textarea id="preText" cols="100" rows="50" ></textarea>
</td>
</tr>

</table>
</form>











</body>
</html>