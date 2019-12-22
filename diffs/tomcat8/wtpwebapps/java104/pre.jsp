<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		int sum = 0;
		for(int i=2;i<=100;i++){
			if(isPre(i)){
				sum += i;
				out.println("质数："+i);
			}
		}

	%>
	<h3>质数总和<%=sum%></h3>
	<%!
		public boolean isPre(int num){
			for(int i=2;i<=num/2;i++){
				if(num % i == 0){
					return false;
				}
			}
			return true;
		}
		
	%>
	<%
		out.println(10/0);
	%>
</body>
</html>