<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html lang="kr">

    <head>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
            <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                <meta charset="utf-8">
                <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                <meta name="description" content="">
                <meta name="author" content="">
                <title>My blog - INDEX</title>
                <!-- Bootstrap core CSS -->
                <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
                <!-- Custom fonts for this template -->
                <link href="/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
                <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
                <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
                <!-- Custom styles for this template -->
                <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet">
                <!-- JavaScript -->
                <script src="http://code.jquery.com/jquery-1.12.0.js"></script>
                <script>              
                function loginCheck() {
                	
                    var Param = {
                        USER_ID: $('#USER_ID').val(),
                        USER_PWD: $('#USER_PWD').val()
                    }

                    $.ajax({

                        type: "POST",
                        url: "/login/openLoginSession.do",
                        data: Param,
                        cache: false,
                        async: false,
                        dataType: "text",
                        success: function(response) {

                            if (response == "yes") {
                                loginSuccess();

                            } else if (response == "false") {

                                alert("Check your ID or PassWord!")
                                return false;
                            }

                            alert(check);
                        },

                        error: function(request, status, error) {

                            alert("code:" + request.status + "\n" + "error:" + error);
                        }
                    });
                }
                
                function loginSuccess() {
                    alert("login...");
                    location.href = '/blog/openIndex.do'
                    login.submit();
                }


                function logOut() {
                    $.ajax({

                        type: "POST",
                        url: "/login/openLogoutSession.do"
                       
                    });

                    location.href = '/blog/openIndex.do'
                    logout.submit();
                }
                </script>
    </head>

    <body>
        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
                <a class="navbar-brand" href="/blog/openIndex.do">My blog</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/blog/openIndex.do">Home
                <span class="sr-only">(current)</span>
              </a>
                        </li>
                        <% if(session.getAttribute("USER") == null)  { %>
                            <li class="nav-item">
                                <a class="nav-link" id="login" data-toggle="modal" data-target="#loginModal">Login</a>
                            </li>
                            <% } else { %>
                                <li class="nav-item">
                                    <a class="nav-link" id="logout" data-toggle="modal" data-target="#logoutModal">Logout</a>
                                </li>
                                <% } %>
                                    <li class="nav-item">
                                        <a class="nav-link" href="/blog/openBlogWrite.do">Write</a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://beammeupplz.blog.me/">Contact</a>
                                    </li>
                    </ul>
                </div>
            </div>
        </nav>
        <!-- Page Header -->
        <header class="masthead" style="background-image: url('/img/home-bg.jpg')">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="site-heading">
                            <h1>Portfolio</h1>
                            <span class="subheading">blog / aprilxxx</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content -->
        <c:choose>
            <c:when test="${fn:length(map.list) > 0}">
                <c:forEach items="${map.list}" var="row">
                    <div class="container">
                        <br>
                        <br>
                        <div class="row">
                            <div class="col-lg-8 col-md-10 mx-auto">
                                <div class="post-preview">
                                    <a href="/blog/openBlogDetail.do?IDX=${row.IDX}">
                                        <h2 class="post-title">
                                            ${row.TITLE}
                                        </h2>
                                    </a>
                                    <p class="post-meta">Posted by
                                        <a href="#">${row.CREA_ID}</a> ${row.CREA_DTM}
                                    </p>
                                </div>
                                <br>
                                <br>
                                <br>
                            </div>
                        </div>
                    </div>
                    <hr>
                </c:forEach>
            </c:when>
        </c:choose>
        <!-- Pager -->
        <div class="clearfix">
            <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
        </div>
        <%@include file="/layout/include-body.jspf" %>
            <hr>
            <!-- Bootstrap core JavaScript -->
            <script src="/bootstrap/vendor/jquery/jquery.min.js"></script>
            <script src="/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Custom scripts for this template -->
            <script src="js/clean-blog.min.js"></script>
            <!-- Login Form -->
            <form method="POST" id="login" name="login">
                <div id="loginModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Login</h4>
                            </div>
                            <div class="modal-body">
                                <label class="sr-only">UserID : </label>
                                <input type="text" name="USER_ID" id="USER_ID" class="form-control" />
                                <label class="sr-only">PassWord : </label>
                                <input type="password" name="USER_PWD" id="USER_PWD" class="form-control" />
                                <br />
                                <button type="button" onclick='loginCheck()' class="btn btn-warning">Sign in!</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <!-- Logout Form -->
            <form method="POST" id="logout" name="logout">
                <div id="logoutModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Logout</h4>
                            </div>
                            <div class="modal-body">
                                <label>
                                    <h4>정말 떠나시겠습니까?</h4></label>
                                <br />
                                <br>
                                <button type="button" onclick='logOut()' class="btn btn-warning">YES</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
    </body>

    </html>