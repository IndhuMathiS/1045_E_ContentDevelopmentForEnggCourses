<html lang="en">
  
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

<BODY>
    
    <div class="container">

      <!-- The justified navigation menu is meant for single line per list item.
           Multiple lines will require custom code not provided by Bootstrap. -->
      <div style="background-color: #009688; color: white; padding: 1px;" class="masthead">
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
      
      
    
      <FORM name=xyz action="AdminLogin.jsp" method="post">
  
    <div class="row">
        <div class="col-lg-4"></div>
        <div class="col-lg-4">
            
                <h2 class="text-center form-signin-heading">Admin login</h2>
                <br/>
                <input style="border-bottom-left-radius: 0px; border-bottom-right-radius: 0px;" type="text" name="username" class="form-control" placeholder="username" required autofocus>
                <input style="border-top-left-radius: 0px; border-top-right-radius: 0px;"  type="password" name="password" class="form-control" placeholder="Password" required>
                <br/>
                <input class="btn btn-lg btn-primary btn-block" type="submit" value="SIGN IN">


        </div>
                <div class="col-lg-4"></div>
    </div>
    
</FORM>
      
    </div>
</BODY>
</HTML>

