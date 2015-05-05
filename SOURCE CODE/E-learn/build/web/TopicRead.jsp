
<%@page import="Connection.DB"%>
<%@page import="java.net.*,java.io.*" %>
<%@page language="java" import="java.sql.*,java.util.*"%>

<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);

 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();

  DB Db=new DB();
  String method=request.getMethod();
       if(method.equals("GET"))
       {     
         try
           {
                String sid=null,cid=null;
	    cid=request.getParameter("id");
	    sid=request.getParameter("sid");
	
	
	String sql="select  * from session_details where course_id ='"+cid+"'  and session_no = '"+sid+"'";
	System.out.println(sql);
	ResultSet rs=Db.Select(sql);
%>
<html><body>
    <right><a href ='UserTask.jsp' >Go To Menu</a></right>&nbsp;&nbsp;&nbsp;
<right><a href ='UserSkillResult.jsp'>Logout</a></right><center>
    <font color=blue><h3>

<%
if(rs.next())
{
%>
Session Details </h3>

</font></center>
<%
BufferedReader in=new BufferedReader(new InputStreamReader(new FileInputStream(rs.getString(3))));
String line="";
while((line=in.readLine()) !=null)
{
out.println(line);
}
}
else
{
%>
<html><body><center><font color=blue><h3><br><br><br>
Course Content Yet to Register in to the DataBase<br><br><br><input type=button value=Back onclick='history.back()'></h3></center></body></html>
<%
}
rs.close();

}
catch(Exception e)
   {   
      e.printStackTrace();
   }
    out.close();
}
%>
	