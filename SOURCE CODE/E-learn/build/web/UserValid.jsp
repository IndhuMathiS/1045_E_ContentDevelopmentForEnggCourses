<%@page import="Connection.DB"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.io.*" session="true"%>
<%@page language="java" import="java.sql.*,java.util.*"%>

<%

 response.setContentType("text/html");
  
             PrintWriter pw=response.getWriter();
  DB Db=new DB();String method=request.getMethod();
      
      try
     {
          DateFormat dateFormat = new SimpleDateFormat("mm");
        Calendar cal = Calendar.getInstance();
int time=Integer.parseInt(dateFormat.format(cal.getTime()));
 String timeminute=(String.valueOf(time));
	   System.out.println(timeminute);
	String uname=request.getParameter("username");
	String pass=request.getParameter("password");
	ResultSet rs=Db.Select("select  * from ereg where user_id='"+uname+"'and password='"+pass+"'");
      
	if(!rs.next())
	{
%>

<html><body><center><font color=blue><br><h3>Not a Valid UserName Or Password Try with Valid User Name & Password  </h3><input type=button value=Back onClick='history.back()'></center>
<%
}
else
{
response.sendRedirect("UserRating.jsp");
%>



<%
}
        rs.close();
        int j=0;
       
        int i1=Db.Insert("delete from userrating");
        int i2=Db.Insert("delete from EducationSkill");
        int i3=Db.Insert("delete from KnowledgeSkill");
        int i4=Db.Insert("delete from PlanningSkill");
      //  int i5=st.executeUpdate("delete GeneralSkill");
        int ir1=Db.Insert("delete from userate");
        int ir2=Db.Insert("delete from Eduate");
         int ir3=Db.Insert("delete from Knowledgerate");
         int ir4=Db.Insert("delete from Planrate");
         int i=Db.Insert("insert into userate values('"+uname+"',"+j+","+j+","+j+","+j+","+j+")");
           int ie=Db.Insert("insert into Eduate values('"+uname+"',"+j+","+j+","+j+","+j+","+j+")");
              int ik=Db.Insert("insert into Knowledgerate values('"+uname+"',"+j+","+j+","+j+","+j+","+j+","+j+","+j+","+j+")");
                 int ip=Db.Insert("insert into Planrate values('"+uname+"',"+j+","+j+","+j+","+j+","+j+")");
              System.out.println("Deleted");

}
catch(Exception e){     e.printStackTrace();           
}       

%>