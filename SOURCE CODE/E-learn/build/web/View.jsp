<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DB"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title> Key-Aggregate Cryptosystem</title>
<meta charset="utf-8">

 
      <div class="box2" style="overflow: auto">
      
     <%
      DB Db=new  DB();
     try
	{
	ResultSet rs = Db.Select("select *from courses");
	while( rs.next())
                    {
                          String ci=rs.getString("Course_name");
%>
<a href="View_1.jsp?fname=<%=ci%>"><%=ci%></a><br>
<%
                    }
	rs.close();
	
%>
	
<%
	}catch(Exception e){
		e.printStackTrace();
	}
     
     
     %>   
    </div>
    