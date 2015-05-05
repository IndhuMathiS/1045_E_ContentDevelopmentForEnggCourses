<%@page import="Connection.DB"%>
<%@page language="java" import="java.sql.*"%>
<%@page language="java" import="java.util.*"%>
<%@page language="java" import="java.io.*"%>
<%@page language="java" import="Q1.Questions"%>
<html><body>
<script type="text/javascript">

function fun2()
{
var c = document.f2.CID.value;

if(c=="Select")
{
alert("Please Choose Course ID");
document.f2.CID.focus();
return false;
}
else
    return true;
}
 </script>       
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
 DB Db=new DB();
String method=request.getMethod();
	Random r=new Random();
Vector v;
       if(method.equals("GET"))
       {
	String uname=(String)session.getValue("uname");
	String pass=(String)session.getValue("pass");
	if((uname == null) || (pass == null))
	{
%>
<center><font color=blue><br><h3>First Login using your Userid and Password then Access Course Infomation </h3></font><br><a href='http://localhost:8080/E-learning/login.html'>Sign In </a></center>
<%
return;
}
session.putValue("uname",uname);
%>
          <font color=blue><h2><center>Select  Exam For an Existing  Course</center> </h2><form name="f2" method=POST action="Result1.jsp" onSubmit="return fun2()"><br><br><table align='center'><tr><td><b>Choose Course ID:<select name='CID'> 
                                  <option value="Select">Select</option>
                                  <%
	try
	{
	ResultSet rs = Db.Select("select course_id from courses order by 1");
	while( rs.next())
                    {
                          String ci=rs.getString(1);
%>
	<option><%=ci%><br>
<%
                    }
	rs.close();
	
%>
	</select></b></td></tr><tr><td><input type=submit  value='--Select--'></td><tr></table></form></font>

<%
	}catch(Exception e){
		e.printStackTrace();
	}	        
        }
        else if(method.equals("POST"))
        {
 	try
	{
	String cid=request.getParameter("CID");
	System.out.println("cid is :"+cid);
	String uname=(String)session.getValue("uname");
	session.putValue("uname",uname);
%>
     <font color=blue><h2><center>Examination Paper For the Course Id : <%=cid%></center></h2><br><br><form action="Result.jsp" method=GET>

<%

ResultSet rs=Db.Select("select * from question_answer where course_id='"+cid+"'");
v=new java.util.Vector();
System.out.println("cid2 is :"+cid);
while(rs.next())
{
Questions q=new Questions();
q.cid=rs.getString(1);
q.qid=rs.getString(2);
q.qd=rs.getString(3);
q.op1=rs.getString(4);
q.op2=rs.getString(5);
q.op3=rs.getString(6);
q.op4=rs.getString(7);
q.ans=rs.getString(8).trim();
System.out.println("Ans :"+q.ans);
v.addElement(q);

}
rs.close();

System.out.println("Vector :"+v.size()+","+v);
Integer i=new Integer(0);
System.out.println(System.getProperty("user.dir"));
//int r1=r.nextInt(1000);
long r1=Math.round((Math.random()*1000));
System.out.println(System.getProperty("user.dir"));
String path = request.getSession().getServletContext().getRealPath("/");
               String patt=path;
               File f=new File(patt+"obj"+r1);
ObjectOutputStream obj=new ObjectOutputStream(new FileOutputStream(f));
v.addElement(i);
obj.writeObject(v);
obj.close();
String p=patt+"obj"+r1;
 session.removeAttribute("marks");
           session.removeAttribute("noq");
            session.removeAttribute("data");
             session.putValue("marks","0");
           session.putValue("noq","0");
           System.out.println("marks"+session.getValue("marks"));
response.sendRedirect("Result1.jsp");
          }catch(Exception e){
	e.printStackTrace();
          }
}
      
  %>
<br>

  <center><a href ='UserTask.jsp' >Go To Menu</a></center><br>
<center><a href ='UserSkillResult.jsp'>Logout</a></center>
</body></html>