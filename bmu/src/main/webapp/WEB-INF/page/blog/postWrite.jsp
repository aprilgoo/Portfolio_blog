<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">
        <title>My blog - Write</title>
        <!-- Bootstrap core CSS -->
        <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <!-- Custom fonts for this template -->
        <link href="/bootstrap/vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
        <link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
        <!-- Custom styles for this template -->
        <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet">
        <!-- summer note css-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
        <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.css" rel="stylesheet">
        <script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.8/summernote-bs4.js"></script>
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
        <header class="masthead" style="background-image: url('img/about-bg.jpg')">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="page-heading">
                            <h1>Write page</h1>
                            <span class="subheading">summer note</span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content -->
        <table style="margin:auto">
            <form id="frm" method="POST" action="/blog/insertBlog.do">
                <!-- Post Content Column -->
                <div class="col-lg-8">
                    <!-- Title -->
                    <th>
                        <div class="form-group">
                            <h1 class="mt-4"><input width="1000" type="text" id="TITLE" name="TITLE" class="form-control" maxlength="100" placeholder="제목을 입력하세요"  /></h1></div>
                </div>
                <!-- Summer note -->
                <div class="form-group">
                    <textarea class="form-control" id="summernote" name="CONTENT" rows="7"></textarea>
                    <div class="clearfix">
                        <br>
                        <br>
                        <button type="submit" class="btn btn-primary float-right">발행하기</button>
                    </div>
                    <!--       <button type="button" class="btn btn-primary float-right" onclick="showContent();">미리보기</button>
                        <div class="output"></div> -->
                </div>
                </th>
            </form>
        </table>
        <hr>
        <!-- Footer -->
        <footer>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <ul class="list-inline text-center">
                            <li class="list-inline-item">
                                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-facebook fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
                            </li>
                            <li class="list-inline-item">
                                <a href="#">
                  <span class="fa-stack fa-lg">
                    <i class="fa fa-circle fa-stack-2x"></i>
                    <i class="fa fa-github fa-stack-1x fa-inverse"></i>
                  </span>
                </a>
                            </li>
                        </ul>
                        <p class="copyright text-muted">Copyright &copy; Your Website 2017</p>
                    </div>
                </div>
            </div>
        </footer>
        <!-- Bootstrap core JavaScript -->
        < <script src="/bootstrap//vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
            <!-- Custom scripts for this template -->
            <script src="js/clean-blog.min.js"></script>
    </body>
    <script type="text/javascript">
    $(document).ready(function() {
        $('#summernote').summernote({

            placeholder: '내용을 입력하세요',
            tabsize: 2,
            height: 500,
            width: 1000,
            minHeight: 300,
            maxHeight: null,
            lang: 'ko-KR'

        });


    });
    </script>

    </html>