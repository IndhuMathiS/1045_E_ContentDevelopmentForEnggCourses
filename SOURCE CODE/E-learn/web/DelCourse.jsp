<%@page import="Connection.DB"%>
<%@page import="java.io.*"%>
<%@page language="java" import="java.sql.*,java.util.*"%>
<html> <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">
   <link href="bootstrap-3.3.2-dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="bootstrap-3.3.2-dist/font-awesome-4.3.0/css/font-awesome.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
    <script src="../../assets/js/ie-emulation-modes-warning.js"></script>

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    
    <style>
        a{
            color: white;
            font-size: 18px;
        }
    </style>
    
  </head>
  <body> 
        <script type="text/javascript">

            function fun2()
            {
                var c = document.f2.CID.value;

                if (c == "Select")
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
            DB Db = new DB();
            String method = request.getMethod();
            if (method.equals("GET")) {
        %>

        <div class="container">

            <!-- The justified navigation menu is meant for single line per list item.
                 Multiple lines will require custom code not provided by Bootstrap. -->
            <div style="background-color: #009688; color: white; padding: 1px;"  class="masthead">
                <h1 class="">&nbsp;<i class="fa fa-cloud-upload fa-3x"></i> &nbsp;
                    <span style="font-size: 40px;">E-LEARNING ADMIN</span></h1>

                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li class="active"><a href ="AddAdmin.jsp">New Admin</a></li>
                        <li><a href ="AddCourse.jsp">Add Course</a></li>
                        <li><a href ="DelCourse.jsp">Delete Course</a></li>
                        <li><a href ="ModifyCourse.jsp"> Modify Course</a></li>
                        <li><a href ="AddExam.jsp">Add Exam</a></li>
                        <li><a href ="Upload.jsp">Upload</a></li>
                        <li><a href ="UserSkillResult.jsp">User Skill</a></li>
                        <li><a href ="View.jsp">View Course</a></li>
                        <li><a href ="Logout.jsp">Logout</a></li>

                    </ul>
                </div>
            </div>


            <br/>
        </div>
        <FORM name=xyz action="DelCourse.jsp" method="post">

            <div class="row">
                <div class="col-lg-4"></div>
                <div class="col-lg-4">

                    <h2 class="text-center form-signin-heading">Delete a Course</h2>
                    <br/>
                    <h3>Choose Course ID </h3><select name='CID' class="form-control"> <option value="Select">Select</option>
                        <%
                            try {
                                ResultSet rs = Db.Select("select course_id from courses order by 1");
                                while (rs.next()) {
                                    String ci = rs.getString(1);
                        %>
                        <option> <%=ci%><br>
                        <%
                            }
                            rs.close();


                        %>

                        </option>
                    </select>
                        <br/>
                        <input class="btn btn-lg btn-primary btn-block" type="submit" value="DELETE">


                        </div>
                        <div class="col-lg-4"></div>
                </div>

        </FORM>  




        <%    } catch (Exception e) {
                e.printStackTrace();
            }
        } else if (method.equals("POST")) {
        %>
    <html><body><font color=blue><h2><center>Deleting The Course 	Details</center></h2><br><br>
                    <%
                        String cid = request.getParameter("CID");
                        Connection con = Db.con;
                        try {
                            PreparedStatement ps = con.prepareStatement("delete from courses where course_id =?");
                            ps.setString(1, cid);
                            ps.execute();
                            ps.close();
                    %>
            You Have Successfully Remove the Course Details<br> <input type=button value='Go Back' onClick='history.back()'>
        </form>
        <%
                } catch (Exception e) {
                    e.printStackTrace();
                }
                con.close();
            }
        %>
        </font></body></html>
