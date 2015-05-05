
<%@page import="Connection.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.*" session="true"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Rate Check</title>
        <%
String q1=request.getParameter("q1") ;    
String q2=request.getParameter("q2") ;
String q3=request.getParameter("q3") ; 
String q4=request.getParameter("q4") ;        
 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();
             DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");


 Calendar cal = Calendar.getInstance();
 String date=dateFormat.format(cal.getTime());
	   System.out.println(date);
  DB Db=new DB();
  int i=Db.Insert("insert into userrating values('"+un+"','"+date+"','"+q1+"','"+q2+"','"+q3+"','"+q4+"')");
      if(i>0)
response.sendRedirect("EducationSkill.jsp");               
        %>
    </head>
    <body>
        
    </body>
</html>
