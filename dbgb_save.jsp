<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 
 <%@ page import = "java.sql.*, java.util.*" %> 
 
 <% request.setCharacterEncoding("EUC-KR"); %>   <!-- Form���� �Ѱ��ִ� �ѱ� ó��  -->
      
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>form���� �Ѱ� ���� ���� DB�� insert �ϴ� ������ </title>
</head>
<body>
<%@ include file = "db_conn_oracle.jsp" %>   <!-- Connection ��ü  -->
<%
	String na = request.getParameter("name"); 
	String em = request.getParameter("email"); 
	String sub = request.getParameter("subject"); 
	String cont = request.getParameter("content"); 
	String ymd = (new java.util.Date()).toLocaleString();  //���� �ý����� ������(�ѱ�)

	//������ �ѱ� ������ �� �Ѿ������ Ȯ�� 
	
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