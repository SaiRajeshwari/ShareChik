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
			function tweet_this()
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
				
				
				
				
				
				var username="sairajeshwari"; // bit.ly username
				var key="R_602ff9af58fc67c873cb7e392f38f144";
	
				$.ajax({
							url:"http://api.bit.ly/v3/shorten",
							data:{longUrl:url,apiKey:key,login:username},
							dataType:"jsonp",
							success:function(v)
							{ 
								//Get the text and remove null charcters
								text = document.getElementById('theText').value.replace(/\0+/g, '');;
													
								first_line = text.split("\n")[0]
								
								//escape characters to make them url encoded
								tweet_text = escape(first_line).substr(0, 120);
								
								tweet_url = 'https://twitter.com/intent/tweet?text=' + tweet_text +'%20' + v.data.url;
								//console.log(tweet_url);
						 		
								window.open(tweet_url, '_blank');
						  		window.focus();
							}
				});
			}
		</script>



		<button class="greenSolid" text="Tweet This" id="twitChik" onclick="tweet_this();">Tweet</button>


	</body>
</html>