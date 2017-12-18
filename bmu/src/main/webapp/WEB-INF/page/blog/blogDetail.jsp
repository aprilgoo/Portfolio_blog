<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<%@include file="/layout/include-nav.jsp" %>
    <%@include file="/layout/include-login.jsp" %>
    <%@include file="/layout/include-join.jsp" %>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>My blog - Detail</title>
    <!-- Bootstrap core CSS -->
    <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="/bootstrap/css/blog-post.css" rel="stylesheet">  
    <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet"> 
</head>

<body> 
    <br>
    <br>
    <br>
    <br>
    <br>
    <!-- Page Content -->
    <div class="container">
        <div class="row">
            <!-- Post Content Column -->
            <div class="col-lg-8" style="margin:auto;">
                <!-- Title -->
                <h1 class="mt-4">${map.TITLE}</h1>
                <!-- Author -->
                <p class="lead">
                    by
                    <a href="#">${map.USER_NAME}</a>
                </p>
                <hr>
                <!-- Date/Time -->
                <p>Posted on ${map.CREA_DTM}</p>
                <hr>
                <!-- Preview Image -->
                <img class="img-fluid rounded" src="http://placehold.it/900x300" alt="">
                <hr>
                <!-- Post Content -->
                <p class="lead">
                    ${map.CONTENT}
                </p>              
                <hr>
                <% if(session.getAttribute("USER") != null)  { %>
                <div align="right"><a href="/blog/openPostUpdate.do?IDX=${map.IDX}" class="btn btn-outline-info btn-md">MODIFY</a>
                    <a href="/blog/deletePost.do?IDX=${map.IDX}" class="btn btn-outline-info btn-md">DELETE</a></div>
                <% } %>
                    
              
        		<%@include file="/layout/include-comments.jsp" %>
                <%@include file="/layout/include-body.jspf" %>
                    <!-- Bootstrap core JavaScript -->
                    <script src="/bootstrap/vendor/jquery/jquery.min.js"></script>
                    <script src="/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
</body>

</html>
