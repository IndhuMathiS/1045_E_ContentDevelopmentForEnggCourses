

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
%>
<html><body><center><font color=blue><br><h3>Thank You <%=un%> For Completed The Cognitive Skill Test......</h3><hr>
<br><table align='center'><tr><td><a href ="Courses.jsp">Available Courses </a></td></tr>
<tr><td></td></tr><tr><td><a href ="Examination.jsp">Examination</a></td></tr>
<tr><td><a href ="UserSkillResult.jsp">Logout</a></td></tr>
</table>
</center></body><html>
