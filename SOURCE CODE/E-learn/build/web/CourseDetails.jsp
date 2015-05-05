<%@page import="Connection.DB"%>
<%@page import="java.io.*,java.net.*"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<html>
<a href ='Courses.jsp'>Select Another Course</a></html>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);

String cn=""; Integer count = (Integer) session.getAttribute ("count");
Integer ans1 = (Integer) session.getAttribute ("ans1");
System.out.println(count);
 DB Db=new DB();
String method=request.getMethod();
      if(method.equals("GET"))
      {
	String id=request.getParameter("id");
	try
	{
	       
                 ResultSet rs=Db.Select("select * from userrating where username='"+un+"'");
           if(rs.next())
                             {
               String cn1=rs.getString(3);
               if(cn1.compareTo("B")==0) 
                  cn="Internet";
                            else if(cn1.compareTo("A")==0) 
                  cn="Progamming Languages";
               else
                   cn="Other";
           }
           rs.close();
                   System.out.println(cn);

	        String sql = "select * from courses where course_name='"+id.trim()+"'";
	        rs = Db.Select(sql);
	        ResultSetMetaData rsmd = rs.getMetaData();
	        int cols = rsmd.getColumnCount();
%>

<center> <font size=5 face='Geneva, Arial, Helvetica, ans-serif'><cite>Courses Information </cite></font></center>
       <table width=75% border=1 align=center bordercolor='#0000FF'>
       <tr> <font color=red>
<%
	for(int i=1;i<=cols;i++)
	{
                     String name=rsmd.getColumnLabel(i);
 %>
         <th> <%=name%></th>
       
<%
                 }
       rs.next();
%>
 </font> </tr>
           <tr>
<%
	String cid = "";
	String s;

           for(int i=1;i<=cols;i++)
	{
                	if(i==1)
                 {
	  cid = rs.getString(1);
                    s = cid;
                  }
       else  if(i==2)
       {
           s = rs.getString(i);
    if(count==null)
               {
         System.out.println("**********");
        count = new Integer (1);
         session.putValue("count", count);
    session.putValue("s", s);
       }
          
  else 
               {
        String coursename1=String.valueOf(session.getAttribute("s"));
        if(s.compareTo(coursename1)!=0)
                       {
        session.putValue("s", s);
        count = new Integer (count.intValue () + 1);
         session.putValue("count", count);
        System.out.println("Count: "+count);
               }
    }
    
     
}
else
	s = rs.getString(i);
                        System.out.println(s+"-"+cn);
        if(s==null || s.equals(""))
        {
%>
             <td> </td>
<%
        }
         else
         {
%>
        <td><%=s%></td>
<%
System.out.println("^^^^^^^^^^"+s+"-"+cn);
if(s.compareTo(cn)==0)
       {
    if(ans1==null)
               {
         System.out.println("**********");
        count = new Integer (1);
         session.putValue("ans1", ans1);
            }
       else{
        
        ans1 = new Integer (ans1.intValue () + 0);
         session.putValue("ans1", ans1);
        System.out.println("ans1 "+ans1);
       
}

}
else
       {
    if(ans1==null)
               {
         System.out.println("**********");
        ans1 = new Integer (0);
         session.putValue("ans1", ans1);
            }
       else{
        
        ans1 = new Integer (ans1.intValue () + 0);
         session.putValue("ans1", ans1);
        System.out.println("ans1 "+ans1);
       
}
}
         }  
       }
%>
       </tr></table>
       <hr><center>Details<hr>
<%
       rs.close();
      
    
      rs = Db.Select("select * from course_details where course_id ='" +cid+ "' order  by session_no "  );        
%>
      <table border=1 width=50%>
      <tr><th>Session No</th><th>Topic</th></tr>
<%
      while( rs.next())
{
           cid=rs.getString(1);
           String sessid=rs.getString(2);
           String topic=rs.getString(3);
%>
<tr><td><%=sessid%></td><td><a href="TopicRead.jsp?id=<%=cid%>&sid=<%=sessid%>"><%=topic%></a></td></tr>

<%
}
%>
<tr><td>1</td><td><a href="https://www.slideshare.net/slideshow/embed_code/46650038" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"">unit-1</a></td></tr>
<tr><td>2</td><td><a href="https://www.slideshare.net/slideshow/embed_code/46434415" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"">unit-2</a></td></tr>
<tr><td>3</td><td><a href="https://www.slideshare.net/slideshow/embed_code/46475654" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"">unit-3</a></td></tr>
<tr><td>4</td><td><a href="https://www.slideshare.net/slideshow/embed_code/46475719" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"">unit-4</a></td></tr>
<tr><td>5</td><td><a href="https://www.slideshare.net/slideshow/embed_code/46475750" width="476" height="400" frameborder="0" marginwidth="0" marginheight="0" scrolling="no"">unit-5</a></td></tr>
<tr><td></td>DOCUMENTS<td>
 <%
      DB DD=new  DB();
       String idd=request.getParameter("id");
     try
	{
           
	ResultSet rss = DD.Select("select * from upload where S_Name='"+idd+"'");
	while( rss.next())
                    {
                          String ci=rss.getString("Filename");
%>
<a href="View_1.jsp?fname=<%=ci%>"><%=ci%></a><br>
<%
                    }
	rs.close();
	
%>
    
<%
	}catch(Exception e){
		out.println(e);
	}
     
     
     %>   
   </td></tr>
     </table></center>
  <%
      rs.close();
    
     }catch(Exception e){
    %>
     <pre>
<%
       e.printStackTrace();
%>
     </pre>
<%
    }
    out.close();
   }
      
      
%>
  
      
    