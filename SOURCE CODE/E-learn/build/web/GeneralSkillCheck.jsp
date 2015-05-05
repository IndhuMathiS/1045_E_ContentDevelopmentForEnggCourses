

<%@page import="Connection.DB"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
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
String q20=request.getParameter("q20") ;    
String q21=request.getParameter("q21") ;
String q22=request.getParameter("q22") ; 
String q23=request.getParameter("q23") ;
String q24=request.getParameter("q24") ;    
String q25=request.getParameter("q25") ;
String q26=request.getParameter("q26") ; 
String q27=request.getParameter("q27") ;
String q28=request.getParameter("q28") ;    
String q29=request.getParameter("q29") ;
String q30=request.getParameter("q30") ; 
String q31=request.getParameter("q31") ; 
String q32=request.getParameter("q32") ;    
String q33=request.getParameter("q33") ;
String q34=request.getParameter("q34") ; 
String q35=request.getParameter("q35") ;
String q36=request.getParameter("q36") ;    
String q37=request.getParameter("q37") ;
String q38=request.getParameter("q38") ; 
String q39=request.getParameter("q39") ;  
String q40=request.getParameter("q40") ;    
String q41=request.getParameter("q41") ; 
        
           
 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();
DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");

 Calendar cal = Calendar.getInstance();
 String date=dateFormat.format(cal.getTime());
	   System.out.println(date);
 DB Db=new DB();
  int i=Db.Insert("insert into GeneralSkill values('"+un+"','"+date+"','"+q20+"','"+q21+"','"+q22+"','"+q23+"','"+q24+"','"+q25+"','"+q26+"','"+q27+"','"+q28+"','"+q29+"','"+q30+"','"+q31+"','"+q32+"','"+q33+"','"+q34+"','"+q35+"','"+q36+"','"+q37+"','"+q38+"','"+q39+"','"+q40+"','"+q41+"')");
      if(i>0)
response.sendRedirect("UserTask.jsp");               
        %>
    </head>
    <body>
        
    </body>
</html>

