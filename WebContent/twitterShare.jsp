<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>





<a
id="twitChik" 
href="https://twitter.com/share" 
class="twitter-share-button" 
data-lang="en" 
data-count=none 
data-text='<%= request.getRequestURL() %>' 
data-url="http://www.google.com">
Tweet
</a>



    <script>
    !function(d,s,id)
    {
    var js,fjs=d.getElementsByTagName(s)[0];
    if(!d.getElementById(id)){
    	js=d.createElement(s);
    	js.id=id;
    	js.src="https://platform.twitter.com/widgets.js";
    	fjs.parentNode.insertBefore(js,fjs);
    	    	
    	}
    }
    (document,"script","twitter-wjs");
    </script>



</body>
</html>