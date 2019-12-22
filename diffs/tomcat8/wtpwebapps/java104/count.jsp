<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dtos.Admin"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	  Integer count = (Integer)application.getAttribute("count");
	  if(count !=  null){
		  count = 1 + count;
	  }else{
		  count = 1;	 	
	  }
	  application.setAttribute("count",count);
 out.println("您好，您是第 " +count +" 位访问本网站的用户" );

%>
<%
	Admin admin = new Admin();
	admin.setA_name("one");
	admin.setA_pass("123");
	pageContext.setAttribute("a", admin);
%>
<%
	out.println(((Admin)pageContext.getAttribute("a")).getA_name());
	out.println(((Admin)pageContext.getAttribute("a")).getA_pass());
%>
</body>
</html>