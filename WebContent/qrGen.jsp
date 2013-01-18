<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>title</title>
</head>
<body>



<script>
function makeQR()
{
	var qqr;

	if (location.href.indexOf('localhost') !== -1)
	{
	    var url= "http://www.ShareChik.me/#/" + location.href.split("#/")[1];
	}
	else
	{
	    var url= location.href;
	}      
	            
	//Testing                

	var username="sairajeshwari"; // bit.ly username
	var key="R_602ff9af58fc67c873cb7e392f38f144";

	$.ajax({
			url:"http://api.bit.ly/v3/shorten",
			data:{longUrl:url,apiKey:key,login:username},
			dataType:"jsonp",
			success:function(v)
			{
				qqr = v.data.url;
				window.location = "http://localhost:8080/ShareChik/qrShow.html?qrurl="+qqr;
		 		//window.open(tweet_url, '_blank');
		  		//window.focus();
			}
	});

}
</script>





<div id='qrcodeTable'></div>
<button class="greenSolid" id="qrChik" onclick="makeQR();">QR code</button>


</body>
</html>
