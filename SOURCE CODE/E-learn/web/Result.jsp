<%@page import="Connection.DB"%>
<%@page import="java.io.PrintWriter"%>
<%@page  import="java.io.*"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<%@page language="java" import="Q1.Questions"%>
<html><body onload="">

<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);

 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();

  DB Db=new DB(); %>

<font color=blue><h2><center>Result </center></h2><hr><br><br><h3>
No of Questions :<font color=red><%=session.getValue("noq")%>
</font><br><br>No .of Marks :<font color=red><%=session.getValue("marks")%>
<br><br><center></center></font></h3></font>

<br>

 <center><a href ='UserTask.jsp' >Go To Menu</a></center><br>
<center><a href ='UserSkillResult.jsp'>Logout</a></center>
</body></html>