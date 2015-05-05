

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String un=String.valueOf(session.getAttribute("uname"));
String ps=String.valueOf(session.getAttribute("pass"));

%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <FORM action="UserRateCheck.jsp" method=post>
        <table border="0">
           <font color="#A52A2A" size="6" > <label>Welcome to E learning Site,Please Complete this Test First.....</label></font>
           <br> <br><font color="green" size="4" > <label>Basic Skills:</label></font>
                    <ul>
                <li>
                    <b>What type of Course u looking for?</b>
                    <br />
                    <input type="radio" name="q1" value="A" />
Programming Languages.                    <br />
                    <input type="radio" name="q1" value="B" />
Internet.                    <br />

                    <input type="radio" name="q1" value="C" />
Other.                    <input type="hidden" name="qid1" value="1" />
                    <br/><br/>
                </li>
                <li>
                    <b>How Many Languages u going to study in our website?</b>
                    <br />
                    <input type="radio" name="q2" value="A" />

Less Than 2.                   <br />
                    <input type="radio" name="q2" value="B" />
More Than 2.                    <br />
                    <input type="radio" name="q2" value="C" />
All.                    <input type="hidden" name="qid2" value="2" />
                    <br/><br/>
                </li>
                <li>
                    <b>Judge Yourself, How much u know about the languages?     </b>

                    <br />
                    <input type="radio" name="q3" value="A" />
Beginner.                   <br />
                    <input type="radio" name="q3" value="B" />
Intermediate.                    <br />
                    <input type="radio" name="q3" value="C" />
Excellent.                  <br />
                    <input type="radio" name="q3" value="D" />
Super.                    <input type="hidden" name="qid3" value="3" />
                    <br/><br/>
                </li>

                  <li>
                    <b>I live:</b>
                    <br />
                    <input type="radio" name="q4" value="A" />
between 15 and 30 minutes from an E Learning Campus.                    <br />

                    <input type="radio" name="q4" value="B" />
more than 30 minutes from an E Learning Campus.                    <br />
                    <input type="radio" name="q4" value="C" />
15 minutes or less from an E Learning Campus.                    <input type="hidden" name="qid4" value="4" />
                    <br/><br/>
                </li>
               
            </ul>
        <br><br>
        <center> <input type="submit" name="sub" Value="Submit">  <input type="reset" name="reset" Value="Reset">
          </center>       
      
        </form></body>
</html>
