<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	Connection con = null;
	try{
		String url = "jdbc:oracle:thin:@127.0.0.1:1521:xe";
		String uid = "lim";
		String pwd = "lim";
		String driver = "oracle.jdbc.driver.OracleDriver";
		Class.forName(driver);
		con = DriverManager.getConnection(url, uid, pwd);
		out.println("연결성공");
	}catch(Exception e){
		e.printStackTrace();
		out.println("연결실패");
	}
%>
</body>
</html>