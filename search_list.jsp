<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<img src="D:\���� ����\2022-2\����������Ʈ\team_project\src\main\webapp\carimages\<%= request.getParameter("main_pic") %>">
	<br>
	<%=request.getParameter("car_detail_model") %>
	<br>
	<%=request.getParameter("price") %>����
	<br>
	<%=request.getParameter("year") %><%=request.getParameter("distance") %><%=request.getParameter("fuel") %>
</body>
</html>