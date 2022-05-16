<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
 <%@ page import = "java.sql.*, java.util.*" %> 
 
 <% request.setCharacterEncoding("EUC-KR"); %>   <!-- Form에서 넘겨주는 한글 처리  -->
      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form에서 넘겨 받은 값을 DB에 insert 하는 페이지 </title>
</head>
<body>
<%@ include file = "db_conn_oracle.jsp" %>   <!-- Connection 객체  -->
<%
	String na = request.getParameter("name"); 
	String em = request.getParameter("email"); 
	String sub = request.getParameter("subject"); 
	String cont = request.getParameter("content"); 
	String ymd = (new java.util.Date()).toLocaleString();  //현재 시스템의 로케일(한국)

	//폼에서 넘긴 변수가 잘 넘어오는지 확인 
	
	/* 
	out.println (na + "<p>"); 
	out.println (em + "<p>"); 
	out.println (sub + "<p>"); 
	out.println (cont + "<p>"); 
	out.println (ymd + "<p>"); 
	*/
	
	String sql = null; 
	Statement st = null; 
	
	try{
		sql = "insert into guestboard2 (name, email,inputdate, subject, content)"; 
		sql = sql + " values( na, em, ymd, sub, cont)"; 
		
		
	}catch (Exception ex) {
		out.println (ex.getMessage()); 
	}finally{
		if (st !=null)
			st.close(); 
		if (conn != null)
			conn.close(); 
	}
	
	
%>

</body>
</html>