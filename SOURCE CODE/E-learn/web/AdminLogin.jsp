<%@page import="Connection.DB"%>
<%@page language="java" import="java.sql.*,java.util.*"%>

<%
 DB Db=new DB();
String method=request.getMethod();
 if(method.equals("POST"))
       {
             String uname=request.getParameter("username");
             String pwd=request.getParameter("password");
	 try{
                    	
                      	ResultSet rs=Db.Select("select  * from admin where uname =" +"'"+uname+"'"+" and pwd = "+"'"+pwd+"'"); 
                   if(rs.next())
	{ 
            session.setAttribute("un", uname);
            response.sendRedirect("AdminMenu.jsp");

                          }
                        else{  
%>
<html>
    <body bgcolor=#FFFFFF><center><h2><font 
color=red><h2> You are not an Authorised Person to View this Page </h2><br>
<input type=button value='Go Back' onClick=history.back()>
</center></body></html>
   <%                              }
                 
                    rs.close();
                  
                 }catch(Exception e){     e.printStackTrace();           }       
}
%>
     