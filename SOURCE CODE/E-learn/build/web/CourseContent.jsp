<%@page import="Connection.DB"%>
<%@page import="java.net.*,java.io.*"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<html><body>
              <script type="text/javascript">

function fun2()
{
var c = document.f2.ta.value;


if(c=="")
{
alert("Please Paste the Content");
document.f2.ta.focus();
return false;
}

}

</script>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
 DB Db=new DB();
 Connection con=Db.con;
String method=request.getMethod();
       if(method.equals("GET"))
       {
                 String sid=request.getParameter("cc");
	String cid=request.getParameter("cid");
	 try{
  %>     
<center><font color=blue><h3>Session Information</h3></font></center>
             <form name="f2" action="CourseContent.jsp" method=POST onSubmit="return fun2()"><hr>
	<input type=hidden name=cid value=<%=cid%>><input type=hidden name=sid value=<%=sid%>>
        <font color=red><b>Paste The Content Below In Html Format :</b></font><br><br><textarea name=ta cols=70 rows=20></textarea><br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type=submit value=Paste>&nbsp;&nbsp;&nbsp;<input type=reset value=Clear>
<br><a href="AdminMenu.jsp">Go To Menu </a>
        <%
     }catch(Exception e){
%> <pre>
<%
      e.printStackTrace();
%>
     </pre>
<%
    }
    out.close();
   }
   else if(method.equals("POST"))
   {
      try{
	String cid=request.getParameter("cid");
	String sid=request.getParameter("sid");
	String fc=request.getParameter("ta");
        String path = request.getSession().getServletContext().getRealPath("/");
               String patt=path.replace("\\build", "");


	String fname=patt+"\\"+cid+sid+".html";
	FileOutputStream fout=new FileOutputStream(fname);
	fout.write(fc.getBytes(),0,fc.length());
	fout.flush();
	PreparedStatement ps1=con.prepareStatement("insert into session_details 	values(?,?,?)");
	ps1.setString(1,cid);
	ps1.setString(2,sid);
	ps1.setString(3,fname);
	int i=ps1.executeUpdate();
%>  
<center><font color=blue><h3>Updated Successfully</h3></font><br><a href="AdminMenu.jsp">Go To Menu </a></center>
<%
  con.close();
}catch(Exception e){
e.printStackTrace();
         }
}
%>
</body></html>