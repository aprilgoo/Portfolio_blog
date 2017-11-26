<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My blog - Detail</title>
    
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
      <%@include file="/layout/include-header.jspf" %> 

          <!-- Custom styles for this template -->
    <link href="bootstrap/css/blog-post.css" rel="stylesheet">

    <!-- Bootstrap core CSS -->
    <link href="bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="bootstrap/css/blog-post.css" rel="stylesheet">

  </head>

  <body>
    <!-- Page Content -->
    <div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">

          <!-- Title -->
          <h1 class="mt-4">${map.TITLE}</h1>

          <!-- Author -->
          <p class="lead">
            by
            <a href="#">${map.CREA_ID}</a>
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

          <!-- Comments Form -->
          <div class="card my-4">
            <h5 class="card-header">Leave a Comment:</h5>
            <div class="card-body">
              <form>
                <div class="form-group">
                  <textarea class="form-control" rows="3"></textarea>
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>
          </div>        
    <!-- /.container -->    

    
   
  </body>

	<%@include file="/layout/include-body.jspf" %>
    <!-- Bootstrap core JavaScript -->
    <script src="bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</html>