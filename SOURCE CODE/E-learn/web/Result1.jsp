
<%@page import="java.sql.ResultSet"%>
<%@page import="Connection.DB"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%DB Db=new DB();
        String cid=request.getParameter("CID");
        ResultSet rs=Db.Select("select * from question_answer where course_id='"+cid+"'");
       int i=0;
        %>
       <form action="Result?CID=<%=cid%>" method="post"><font color=blue><h2>Questions </h2></font><hr><br><table align='Center'>
<% while(rs.next())
        {++i;
              %> <tr><td><%=i%>. Question </td><td><%=rs.getString(3)%></td></tr>
<tr><td><input type=radio name=o<%=i%> value="<%=rs.getString(4)%>"></td><td><%=rs.getString(4)%></td></tr>
<tr><td><input type=radio name=o<%=i%> value="<%=rs.getString(5)%>"></td><td><%=rs.getString(5)%></td></tr>
<tr><td><input type=radio name=o<%=i%> value="<%=rs.getString(6)%>"></td><td><%=rs.getString(6)%></td></tr>
<tr><td><input type=radio name=o<%=i%> value="<%=rs.getString(7)%>"></td><td><%=rs.getString(7)%></td></tr>

<% }%>
       <tr><td><input type=submit value='Submit'></td><td><input type=reset value='Clear'></td></tr>    </table></form>
    </body>
</html>
