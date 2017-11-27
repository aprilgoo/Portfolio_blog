<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>My blog - Detail</title>

    <!-- Bootstrap core CSS -->
    <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="/bootstrap/css/blog-post.css" rel="stylesheet">

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
              <a class="nav-link" href="/sample/openBoardList.do">Board</a>
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
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
     <br>
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
          
            <div align="right"><a href="/blog/openPostUpdate.do?IDX=${map.IDX}" class="btn btn-outline-info btn-md">MODIFY</a>	          
          	<a href="/blog/deletePost.do?IDX=${map.IDX}" class="btn btn-outline-info btn-md">DELETE</a></div>  

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

          <!-- Single Comment 
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">Commenter Name</h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
            </div>
          </div> 

          <!-- Comment with nested comments 
          <div class="media mb-4">
            <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">
              <h5 class="mt-0">Commenter Name</h5>
              Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">Commenter Name</h5>
                  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus.
                </div>
              </div> 

              <div class="media mt-4">
                <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
                <div class="media-body">
                  <h5 class="mt-0">Commenter Name</h5>
                  Cras sit amet nibh libero, in gravida nulla. Nulla vel metus scelerisque ante sollicitudin. Cras purus odio, vestibulum in vulputate at, tempus viverra turpis. Fusce condimentum nunc ac nisi vulputate fringilla. Donec lacinia congue felis in faucibus. 
                </div>
              </div>

            </div>
          </div>   

        </div> --> 
	<%@include file="/layout/include-body.jspf" %>
    <!-- Bootstrap core JavaScript -->
    <script src="/bootstrap/vendor/jquery/jquery.min.js"></script>
    <script src="/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
