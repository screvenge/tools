<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="admin" class="com.dtos.Admin" scope="request"></jsp:useBean>
	<jsp:setProperty property="a_name" name="admin" value="user1"/>
	<jsp:setProperty property="a_pass" name="admin" value="123"/>
	<hr/>
	<h3>显示信息</h3>
	管理员名：<jsp:getProperty property="a_name" name="admin"/><br/>
	管理密码：<jsp:getProperty property="a_pass" name="admin"/><br/>
	<jsp:forward page="info.jsp">
		<jsp:param value="ss1" name="user"/>
	</jsp:forward>
</body>
</html>