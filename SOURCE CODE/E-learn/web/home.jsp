

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="../../favicon.ico">

    <title>E-Learning</title>

    <!-- Bootstrap core CSS -->
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

    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
        <div style="background-color: #009688; color: white; padding: 1px;"  class="masthead">
            <h1 class="">&nbsp;<i class="fa fa-cloud-upload fa-3x"></i> &nbsp;<span style="font-size: 40px;">E-LEARNING</span></h1>
            <div id="navbar" class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li class="active"><a href ="home.jsp">HOME</a></li>
                    <li><a href ="login.jsp">LOGIN</a></li>
                    <li><a href ="register.jsp">REGISTER</a></li>
                    <li><a href ="Admin.jsp">ADMINISTRATION</a></li>
                    <li><a href ="http://www.google.co.in/">HELP</a></li>
                </ul>
            </div>
        </div>
      
      <br/>

      <!-- Jumbotron -->
      <div class="jumbotron">
        <img src="Images/laptop_learn.gif" class="pull-right" />
        <h2>E-Learning???</h2>
        
        <p class="lead">E-learning (or e-Learning) is the use of electronic educational technology in learning and teaching.</p>
        
        <p><a class="btn btn-lg btn-success" href="#" role="button">Get started today</a></p>
      </div>

      <!-- Example row of columns -->
      <div class="row">
        <div class="col-lg-4">
          <h2>E-Learning Objectives</h2>
          <p class="text-justify">eLearning represents an innovative shift in the field of learning, providing rapid access to specific knowledge and information. It offers online instruction that can be delivered anytime and anywhere through a wide range of electronic learning solutions such as Web-based courseware, online discussion groups, live virtual classes, video and audio streaming, Web chat, online simulations, and virtual mentoring.</p>
        </div>
        <div class="col-lg-4">
          <h2>Scope of E-Learning</h2>
          <p class="text-justify">If we talk about the future of elearning, Its very bright in India.  According to the research report, “India E-Learning Market Outlook to FY’2018 – Increasing Technology Adoption to Drive Future Growth, the market is estimated to grow at a CAGR of 17.4% over the period FY2013-FY’2018 driven by many factors such as increasing government initiatives to promote e-learning, increasing adoption of technology, shortage of quality education, convenience and cost factors and others. With an inclination in the adoption of e-learning method to facilitate talent management in corporations, the demand of custom e-learning content and technology would increase, thereby increasing the overall growth of India’s e-learning market in future.</p>          
        </div>
          <div class="col-lg-4">
          <h2>Advantage of E-Learning</h2>
          <ul class="list-group">
              <li class="list-group-item">Ability to Cover Distance</li>
              <li class="list-group-item">Learning at self paced</li>
              <li class="list-group-item">Social Interactivity</li>
          </ul>
        </div>
      </div>

      <!-- Site footer -->
      <footer class="footer" style="background-color: #009688; color: white; padding: 15px;">
          <p class="text-center">&copy; SaveethaCOE 2015</p>
      </footer>

    </div> <!-- /container -->


    <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
    <script src="../../assets/js/ie10-viewport-bug-workaround.js"></script>
  </body>
</html>



