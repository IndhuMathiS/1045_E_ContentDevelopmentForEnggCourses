<%@page import="Connection.DB"%>
<%@page import="java.io.*,java.net.*" session="true"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<html><body>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
 DB Db=new DB();
String method=request.getMethod();
      if(method.equals("GET"))
      {

	String uname=(String)session.getValue("uname");
	String pass=(String)session.getValue("pass");
	if((uname == null) || (pass == null))
	{
%>
	<center><font color=blue><br><h3>First Login using your Userid and Password then Access Course Infomation </h3></font><br><a href='login.html'>Sign In </a></center>

<%
return;
}
    try{
      
        ResultSet rs = Db.Select("select course_cat,course_name from courses");
%>


<center> <font size=5 face='Geneva, Arial, Helvetica, ans-serif'><cite>Courses Information </cite></font></center>
<table width=75% border=1 align=center bordercolor='#0000FF'>
<tr> <font color=red>
<th> Course Category </th>
<th> Course Name</th>
</font> </tr>

<%
       while(rs.next()){
%>
           <tr>
<%
           for(int i=1;i<=2;i++){
         String s = rs.getString(i);
        if(s==null || s.equals(""))
       {
%>
          <td> </td>
<%
       }
         else{
%>
            <td>

<%
	if(i==2)
                 {
%>
<a href="CourseDetails.jsp?id=<%=URLEncoder.encode(s)%>"><%=s%></td>

<%   
         }
	else
         {
%>
	<%=s%></td>
<%
         }
            }

          }
%>
          </tr>
<%
       }  
       rs.close();
      
%>
     </table>

<%
     }catch(Exception e){
%>
 <pre>
<%
      e.printStackTrace();
     }
%>
  
<br>

  <center><a href ='UserTask.jsp' >Go To Menu</a></center><br>
<center><a href ='UserSkillResult.jsp'>Logout</a></center>
</body></html>
   </pre>
<%
    }
   
%>