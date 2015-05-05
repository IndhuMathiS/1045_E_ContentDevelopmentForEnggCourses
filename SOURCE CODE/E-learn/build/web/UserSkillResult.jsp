
<%@page import="Connection.DB"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Calendar"%>
<%String uname=(String)session.getAttribute("un"); %>
<%
    
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
int timestart,marks,noq,ans1,count;
if(session.getAttribute("time")!=null)
{
       timestart =Integer.parseInt(String.valueOf(session.getAttribute("time")));
System.out.println("***********"+timestart);
}
else
    timestart=0;
if(session.getAttribute("marks")!=null)
{
 marks=Integer.parseInt(String.valueOf(session.getAttribute("marks")));
System.out.println("***********"+marks);
}
else
    marks=0;
if(session.getAttribute("noq")!=null)
{
noq=Integer.parseInt(String.valueOf(session.getAttribute("noq")));
System.out.println("***********"+noq);
}
else
        noq=0;
if(session.getAttribute("ans1")!=null)
{
 ans1=Integer.parseInt(String.valueOf(session.getAttribute("ans1")));
System.out.println("***********"+ans1);
}
else
    ans1=0;
if(session.getAttribute("count")!=null)
{
 count=Integer.parseInt(String.valueOf(session.getAttribute("count")));
System.out.println("***********"+count);
}
else
    count=0;

%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
    
       
        <%
     
 response.setContentType("text/html");
  int q2mark=0,q3mark=0,q4mark=0;
             PrintWriter pw=response.getWriter();
String ans2="",ans3="",ans4="",kq="";
double eq1=0,eq2=0,eq3=0,eq4=0;
double pq1=0,pq2=0,pq3=0,pq4=0;
double kq1=0,kq2=0,kq3=0,kq4=0,kq5=0,kq6=0,kq7=0;
System.out.println("***********");
    DB Db=new DB();
  //2nd question calculation
  if(count<2)
      ans2="A";
   else if(count>=2)
       ans2="B";
  else
      ans2="C";
               
  //3rd question calculation
  int marks1=marks+(noq*3);
      if((noq*5)==(marks1))
                   {
          ans3="D";
          kq="A";
                   }
   else if(marks1<(noq*5)&& marks1>=((noq*5)-2))
             {
       ans3="C";
       kq="B";
             }
  else if(marks1<((noq*5)-2)&& marks1>=((noq*5)-4))
           {
       ans3="B";
       kq="B";
             }
  else if(marks1<((noq*5)-4)&& marks1>=((noq*5)-2))
           {
       ans3="A";
       kq="B";
             }
          //4th question calculation
        DateFormat dateFormat = new SimpleDateFormat("mm");
        Calendar cal = Calendar.getInstance();
int timeEnd=Integer.parseInt(dateFormat.format(cal.getTime()));
	   System.out.println(timeEnd);
           int Totaltime=(timeEnd-timestart);
          System.out.println(Totaltime);
          if(Totaltime>=15 && Totaltime<=30) 
            ans4="A"; 
           else if(Totaltime>=30) 
               ans4="B"; 
                   else if(Totaltime<=15) 
            ans4="C";   
           System.out.println(ans4);
           //Basic Skill rating
           ResultSet rs=Db.Select("select * from userrating where username='"+un+"'");
           if(rs.next())
                             {
                if(rs.getString(4).compareTo(ans2)==0) 
                     q2mark=1;
               if(rs.getString(5).compareTo(ans3)==0) 
                  q3mark=1;
              if(rs.getString(6).compareTo(ans4)==0) 
                  q4mark=1;
           }
           rs.close();
       int total=((ans1+q2mark+q3mark+q4mark)*100)/4;
int i=Db.Insert("update userate set q1r="+ans1+" ,q2r="+q2mark+" ,q3r="+q3mark+" ,q4r="+q4mark+",total="+total+" where username='"+un+"'");                                 
     //Education Skill rating      
rs=Db.Select("select * from EducationSkill where username='"+un+"'");
           if(rs.next())
                             {
               String eq=rs.getString(3);
                if(eq.compareTo("C")==0)
                    eq1=1;
                else if(eq.compareTo("B")==0) 
                  eq1=0.5;
                else if(eq.compareTo("A")==0) 
                  eq1=0.25;
               String equ2=rs.getString(4);
                if(equ2.compareTo("A")==0)
                    eq2=1;
                else if(equ2.compareTo("B")==0) 
                  eq2=0.25;
                else if(equ2.compareTo("C")==0) 
                  eq2=0.50;
               String equ3=rs.getString(5);
                if(equ3.compareTo("A")==0)
                    eq3=0.25;
                else if(equ3.compareTo("B")==0) 
                  eq3=1;
                else if(equ3.compareTo("C")==0) 
                  eq3=0.50;
               String equ4=rs.getString(6);
                if(equ4.compareTo("A")==0)
                    eq4=1;
                else if(equ4.compareTo("B")==0) 
                  eq4=0.50;
           }
           rs.close();
      double totale=((eq1+eq2+eq3+eq4)*100)/4;
int ie=Db.Insert("update Eduate set q5r="+eq1+" ,q6r="+eq2+" ,q7r="+eq3+" ,q8r="+eq4+",total="+totale+" where username='"+un+"'");                                 
     //Knowledge Skill rating       
rs=Db.Select("select * from KnowledgeSkill where username='"+un+"'");
           if(rs.next())
                             {
              String k=rs.getString(3);
              if(k==null || k.compareTo("null")==0)
              {
                  kq1=0;kq2=0;kq3=0;kq4=0;kq5=0;kq6=0;kq7=0;
              }
             else
              {
                  System.out.println("if"+k);
                if(k.compareTo(kq)==0)
                    kq1=1;
                else  
                  kq1=0.5;
               String kqu2=rs.getString(4);
                if(kqu2.compareTo("A")==0)
                    kq2=0.25;
                else if(kqu2.compareTo("B")==0) 
                  kq2=1;
                else if(kqu2.compareTo("C")==0) 
                  kq2=0.25;
                else if(kqu2.compareTo("D")==0) 
                 kq2=0.70;
               String kqu3=rs.getString(5);
                if(kqu3.compareTo("A")==0)
                    kq3=1;
                else if(kqu3.compareTo("B")==0) 
                 kq3=0.75;
                else if(kqu3.compareTo("C")==0) 
                 kq3=0.50;
               String kqu4=rs.getString(6);
                if(kqu4.compareTo("A")==0)
                    kq4=1;
                else if(kqu4.compareTo("B")==0) 
                  kq4=0.50;
                String kqu5=rs.getString(7);
                if(kqu5.compareTo("A")==0)
                    kq5=0.75;
                else if(kqu5.compareTo("B")==0) 
                  kq5=1;
                String kqu6=rs.getString(8);
                if(kqu6.compareTo("A")==0)
                    kq6=0.50;
                else if(kqu6.compareTo("B")==0) 
                 kq6=0.75;
                else if(kqu6.compareTo("C")==0) 
                 kq6=1.00;
                String kqu7=rs.getString(9);
                if(kqu7.compareTo("A")==0)
                    kq7=1;
                else if(kqu7.compareTo("B")==0) 
                  kq7=0;
           }
             
                             }
           rs.close();
     int totalk=(int)((kq1+kq2+kq3+kq4+kq5+kq6+kq7)*100)/7;
int ik=Db.Insert("update Knowledgerate set q9r="+kq1+" ,q10r="+kq2+" ,q11r="+kq3+" ,q12r="+kq4+",q13r="+kq5+" ,q14r="+kq6+" ,q15r="+kq7+",total="+totalk+" where username='"+un+"'");                                 
     //Plan Skill rating      
rs=Db.Select("select * from PlanningSkill where username='"+un+"'");
           if(rs.next())
                             {
               String pq=rs.getString(3);
                if(pq.compareTo("C")==0)
                    pq1=1;
                else if(pq.compareTo("B")==0) 
                  pq1=0.75;
                else if(pq.compareTo("D")==0) 
                  pq1=0.25;
                else if(pq.compareTo("A")==0) 
                  pq1=0.50;
               String pqu2=rs.getString(4);
                if(pqu2.compareTo("A")==0)
                    pq2=0.75;
                else if(pqu2.compareTo("B")==0) 
                  pq2=0.25;
                else if(pqu2.compareTo("C")==0) 
                  pq2=0.50;
                else if(pqu2.compareTo("D")==0) 
                  pq2=1;
               String pqu3=rs.getString(5);
                if(pqu3.compareTo("A")==0)
                    pq3=0.75;
                else if(pqu3.compareTo("B")==0) 
                  pq3=0.50;
                else if(pqu3.compareTo("C")==0) 
                  pq3=1;
               String pqu4=rs.getString(6);
                if(pqu4.compareTo("A")==0)
                    pq4=1;
                else if(pqu4.compareTo("B")==0) 
                  pq4=0.75;
                else if(pqu4.compareTo("C")==0) 
                  pq4=0.50;
                else if(pqu4.compareTo("D")==0) 
                  pq4=0.25;
           }
           rs.close();
      double totalp=((pq1+pq2+pq3+pq4)*100)/4;
int ip=Db.Insert("update Planrate set q16r="+pq1+" ,q17r="+pq2+" ,q18r="+pq3+" ,q19r="+pq4+",total="+totalp+" where username='"+un+"'");   
        %>
    </head>
    <body>
        <font color="green" size="4"> Your Basic Skill Percentage is:</font><font color="red"> <%=total%> %</font>
        <br><br>
         <font color="green" size="4"> Your Education Skill Percentage is:</font><font color="red"> <%=totale%> %</font>
          <br><br>
         <font color="green" size="4"> Your Knowledge Skill Percentage is:</font><font color="red"> <%=totalk%> %</font>
          <br><br>
         <font color="green" size="4"> Your Planning Skill Percentage is:</font><font color="red"> <%=totalp%> %</font>
        <%
            
        if(session!=null)
        {
session.invalidate();  
System.out.println("session Cleared");   
        }
        %>
        <br><br><center><a href="Logout.jsp">Home</a></center>
</div>
    </body>
</html>
