

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));
session.putValue("uname",un);
session.putValue("pass",ps);
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <FORM action="PlanningSkillCheck.jsp" method=post>
        <table border="0">
           <font color="#A52A2A" size="6" > <label>Please Complete this Test First.....</label></font>
           <br><br><font color="green" size="4" > <label>Planning Skills:</label></font>
                    <ul>
                <li>
                    <b>How u going to study if any new concept available?  </b>
                    <br />
                    <input type="radio" name="q16" value="A" />
Friends.                        <br />
                    <input type="radio" name="q16" value="B" />
Lonely. <br />
                    <input type="radio" name="q16" value="C" />
Lectures     <br />
                    <input type="radio" name="q16" value="D" />
Guidance.                          
<input type="hidden" name="qid16" value="16" />
                    <br/><br/>
                </li>
                <li>
                    <b> How u prepare Notes? </b>
                    <br />
                    <input type="radio" name="q17" value="A" />

Class notes.                   <br />
                    <input type="radio" name="q17" value="B" />
Guide.                   <br />
<input type="radio" name="q17" value="C" />
 Text books.                   <br />
                    <input type="radio" name="q17" value="D" />
Internet browse.                    <input type="hidden" name="qid17" value="17" />
                    <br/><br/>
                </li>
                <li>
                    <b>If u Absent to Class, How to going to get the Class Concept?</b>

                    <br />
                    <input type="radio" name="q18" value="A" />
Lectures.                 <br />
                    <input type="radio" name="q18" value="B" />
Friends.                   <br />
                    <input type="radio" name="q18" value="C" />
Text books.                    <input type="hidden" name="qid18" value="18" />
                    <br/><br/>
                </li>

                <li>
                    <b>When u going to study your subjects?  </b>
                    <br />
                    <input type="radio" name="q19" value="A" />
Daily.                    <br />
                    <input type="radio" name="q19" value="B" />
Weekly.                   <br />
<input type="radio" name="q19" value="C" />
Monthly.                   <br />
<input type="radio" name="q19" value="D" />
On exams.                   <br />
                
                   <input type="hidden" name="qid19" value="19" />
                    <br/><br/>
                </li>
             <li>
                    <b>Please rate our Website?</b>
                    <br />
                    <input type="radio" name="q41" value="A" />
Poor.                    <br />
                    <input type="radio" name="q41" value="B" />
Average.                  <br />
                    <input type="radio" name="q41" value="C" />

Good.                <br />
                    <input type="radio" name="q41" value="D" />
Very Good.                     <br />
                    <input type="radio" name="q41" value="E" />
Excellent.                    <input type="hidden" name="qid41" value="41" />
                    <br/><br/>
                </li>
            </ul>
        <br><br>
        <center> <input type="submit" name="sub" Value="Submit">  <input type="reset" name="reset" Value="Reset">
          </center>       
      
        </form></body>
</html>


