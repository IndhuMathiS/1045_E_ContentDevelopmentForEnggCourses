
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
String q5=request.getParameter("q5") ;    
String q6=request.getParameter("q6") ;
String q7=request.getParameter("q7") ; 
String q8=request.getParameter("q8") ; 
        
           
 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
Calendar cal = Calendar.getInstance();
 String date=dateFormat.format(cal.getTime());
	   System.out.println(date);
  DB Db=new DB();
 
  int i=Db.Insert("insert into EducationSkill values('"+un+"','"+date+"','"+q5+"','"+q6+"','"+q7+"','"+q8+"')");
      if(i>0)
response.sendRedirect("KnowledgeSkill.jsp");               
        %>
    </head>
    <body>
        
    </body>
</html>
