<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style1.css">
	</head>
	<body>

		<script type="text/javascript">
			
			function copy_link()
			{
				//var url= "http://www.ShareChik.me/" + location.href.split("#/")[1];
				//Testing
				
				    if (location.href.indexOf('localhost') !== -1)
                    {
                        var url= "http://www.ShareChik.me/#/" + location.href.split("#/")[1];
                    }
                	else
                    {
                        var url= location.href;
                    }  
				
				//Testing
				
				//console.log("URL BAR URL :");
				//console.log(url);
				
				var username="sairajeshwari"; // bit.ly username
				var key="R_602ff9af58fc67c873cb7e392f38f144";
				
				$.ajax({
							url:"http://api.bit.ly/v3/shorten",
							data:{longUrl:url,apiKey:key,login:username},
							dataType:"jsonp",
							success:function(v)
							{ 
								window.prompt ("To Copy to clipboard: Press Ctrl+C, then Enter to Dismiss.", v.data.url);
							}
				});
			}
			
		</script>
	
	
		<input class="greenSolid" type="submit" id="short" value="Save | Shorten | Share" onclick="copy_link();"/>
		<div id="result"></div>
		 
	</body>
</html>