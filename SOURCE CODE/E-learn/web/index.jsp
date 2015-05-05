

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>E - Learning</title>
		<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
    </head>
    <body>
          <%
        RequestDispatcher dis=request.getRequestDispatcher("home.jsp");
		dis.forward(request,response);
        %>

    </body>
</html>
		</body>
	
</html>

