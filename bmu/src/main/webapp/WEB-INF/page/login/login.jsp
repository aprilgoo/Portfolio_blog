<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap Login Form Template</title>
    <!-- CSS -->
    <link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Roboto:400,100,300,500">
    <link rel="stylesheet" href="/bootstrap/assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/bootstrap/assets/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/bootstrap/assets/css/form-elements.css">
    <link rel="stylesheet" href="/bootstrap/assets/css/style.css">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
    <!-- Favicon and touch icons -->
    <link rel="shortcut icon" href="/bootstrap/assets/ico/favicon.png">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/bootstrap/assets/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/bootstrap/assets/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/bootstrap/assets/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="/bootstrap/assets/ico/apple-touch-icon-57-precomposed.png">
</head>

<body>
    <!-- Top content -->
    <div class="top-content">
        <div class="inner-bg">
            <div class="container">
                <div class="row">
                    <div class="col-sm-8 col-sm-offset-2 text">
                        <h1><strong>Bootstrap</strong> Login Form</h1>
                        <div class="description">
                            <p>
                                This is a free responsive login form made with Bootstrap. Download it on <a href="http://azmind.com"><strong>AZMIND</strong></a>, customize and use it as you like!
                            </p>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 form-box">
                        <div class="form-top">
                            <div class="form-top-left">
                                <h3>Login to our site</h3>
                                <p>Enter your username and password to log on:</p>
                            </div>
                            <div class="form-top-right">
                                <i class="fa fa-lock"></i>
                            </div>
                        </div>
                        <div class="form-bottom">
                            <table>
                                <form role="form" action="/login/openLoginSession.do" method="POST" class="login-form">
                                    <div class="form-group">
                                        <label class="sr-only" for="form-username">Username</label>
                                        <input type="text" name="USER_ID" placeholder="Username..." class="form-username form-control" id="USER_ID">
                                    </div>
                                    <div class="form-group">
                                        <label class="sr-only" for="form-password">Password</label>
                                        <input type="password" name="USER_PWD" placeholder="Password..." class="form-password form-control" id="USER_PWD">
                                    </div>
                                    <input type="submit" name="login" class="btn" value="Sign in!" />
                                </form>
                                <div id="msg"></div>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 col-sm-offset-3 social-login">
                        <h3>...or login with:</h3>
                        <div class="social-login-buttons">
                            <a class="btn btn-link-2" href="#">
                                    <i class="fa fa-facebook"></i> Facebook
                                </a>
                            <a class="btn btn-link-2" href="#">
                                    <i class="fa fa-twitter"></i> Twitter
                                </a>
                            <a class="btn btn-link-2" href="#">
                                    <i class="fa fa-google-plus"></i> Google Plus
                                </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Javascript -->
    <script src="/bootstrap/assets/js/jquery-1.11.1.min.js"></script>
    <script src="/bootstrap/assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="/bootstrap/assets/js/jquery.backstretch.min.js"></script>
    <script src="/bootstrap/assets/js/scripts.js"></script>
    <!--[if lt IE 10]>
            <script src="assets/js/placeholder.js"></script>
        <![endif]-->
</body>
<script>
$(document).ready(function() {
    $('#login').click(function() {

        var action = $('#frm').attr("action");

        var frm_data = {

            USER_ID: $('#USER_ID').val(),
            USER_PWD: $('#USER_PWD').val()
        };


        $.ajax({

            type: "POST",
            url: action,
            data: frm_data,
            success: function(response) {

                if (response.trim() == "success") {

                    sessionStorage.setltem("USER_ID", frm_data, USER_ID);
                    $('#msg').html("<p style='color:green; font-weight:bold'>Login Success</p>");

                } else {

                    $('#msg').html("<p style='color:red'>Check your ID or Password</p>")
                }
            },
            error: function() {
                $('#msg').html("<h2>Error</h2>");
            }
        });
    });

});
</script>

</html>