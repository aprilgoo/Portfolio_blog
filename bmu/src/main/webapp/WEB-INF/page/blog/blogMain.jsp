<!DOCTYPE html>
<html lang="kr">

  <head>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My blog -INDEX</title>

    <!-- Bootstrap core CSS -->
    <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>

    <!-- Custom styles for this template -->
    <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet">

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
            <li class="nav-item">
              <a class="nav-link" href="/sample/openBoardList.do">Login</a>
            </li>
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
    <header class="masthead" style="background-image: url('img/home-bg.jpg')">
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
    <div class="container"><br><br>
      <div class="row">
        <div class="col-lg-8 col-md-10 mx-auto">
          <div class="post-preview">
            <a href="/blog/openBlogDetail.do?IDX=${row.IDX}">
              <h2 class="post-title">
                ${row.TITLE}
              </h2>   
            </a>
            <p class="post-meta">Posted by
              <a href="#">${row.CREA_ID}</a>
              ${row.CREA_DTM}</p>
          </div><br><br><br>
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

  </body>

</html>