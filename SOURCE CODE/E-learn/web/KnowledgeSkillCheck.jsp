

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
String q9=request.getParameter("q9") ;    
String q10=request.getParameter("q10") ;
String q11=request.getParameter("q11") ; 
String q12=request.getParameter("q12") ; 
String q13=request.getParameter("q13") ; 
String q14=request.getParameter("q14") ; 
String q15=request.getParameter("q15") ; 

       
            
 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
Calendar cal = Calendar.getInstance();
 String date=dateFormat.format(cal.getTime());
	   System.out.println(date);
   DB Db=new DB();
  int i=Db.Insert("insert into KnowledgeSkill values('"+un+"','"+date+"','"+q9+"','"+q10+"','"+q11+"','"+q12+"','"+q13+"','"+q14+"','"+q15+"')");
      if(i>0)
response.sendRedirect("PlanningSkill.jsp");               
        %>
    </head>
    <body>
        
    </body>
</html>
