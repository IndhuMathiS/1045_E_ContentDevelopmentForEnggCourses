

<%@page import="Connection.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
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
String q16=request.getParameter("q16") ;    
String q17=request.getParameter("q17") ;
String q18=request.getParameter("q18") ; 
String q19=request.getParameter("q19") ; 
        
           
 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
Calendar cal = Calendar.getInstance();
 String date=dateFormat.format(cal.getTime());
	   System.out.println(date);
DB Db=new DB();
  int i=Db.Insert("insert into PlanningSkill values('"+un+"','"+date+"','"+q16+"','"+q17+"','"+q18+"','"+q19+"')");
      if(i>0)
response.sendRedirect("UserTask.jsp");               
        %>
    </head>
    <body>
        
    </body>
</html>

