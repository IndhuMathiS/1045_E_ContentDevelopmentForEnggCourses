<%@page import="Connection.DB"%>
<%@page import="java.io.*"%>
<%@page language="java" import="java.sql.*,java.util.*"%>

<%
 DB Db=new DB();
 Connection con=Db.con;
String method=request.getMethod();
PreparedStatement ps=null;

      
 try
  {
      ps=con.prepareStatement("insert into question_answer values(?,?,?,?,?,?,?,?,?)");
  }   
    catch(Exception e){System.out.println(e); }

     if(method.equals("POST"))
    {
%>

<html><body>

<%
try
{
String cid=request.getParameter("cid");
String qid=request.getParameter("qid");
String qd=request.getParameter("qd");
String op1=request.getParameter("op1");
String op2=request.getParameter("op2");
String op3=request.getParameter("op3");
String op4=request.getParameter("op4");
String ans=request.getParameter("ans");
System.out.println(cid +"  "+qid +"  "+qd +"  "+op1 +"  "+op2 +"  "+op3 +"  "+op4 +"  "+ans); 
if(cid.equals("") || cid == null || qid.equals("") || qid == null || qd.equals("") || qd == null || op1.equals("") || op1 == null || op2.equals("") || op2 == null || op3.equals("") || op3 == null || op4.equals("") || op4 == null || ans.equals("") || ans == null)
{
%>

<h3><font color=red><center>The Required Details are Insufficient <br><br><br><input type=button value=Back onClick='history.back()'> </center></h3>

<%
}
else
{
ps.setString(1,cid);
ps.setString(2,qid);
ps.setString(3,qd);
ps.setString(4,op1);
ps.setString(5,op2);
ps.setString(6,op3);
ps.setString(7,op4);
ps.setString(8,ans);
ps.setInt(9,0);

ps.execute();
%>
<font color=blue><h3>Exam Details Added Successfully</font><br><br>
    <br><br>
    <a href="AddExam.jsp">Add Another Exam</a></h3>

    <a href="AdminMenu.jsp">Go To Menu</a></h3>

<%
}
  ps.close();
  con.close();
}
catch(Exception e)
{
e.printStackTrace();
}
}
%>