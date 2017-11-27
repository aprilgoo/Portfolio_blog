<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>My blog - Detail</title>
      <%@include file="/layout/include-snote.jsp" %>   
    <br>
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    
    	<!-- Custom styles for this template -->
    <link href="bootstrap/css/blog-post.css" rel="stylesheet">

    	<!-- Bootstrap core CSS -->
    <link href="bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    	
    	<!-- Custom styles for this template -->
    <link href="bootstrap/css/blog-post.css" rel="stylesheet">
    
    <div class="container">

      <div class="row">

        <!-- Post Content Column -->
        <div class="col-lg-8">
    
    
   			<div class="clearfix">
			   	<form id="frm" method="POST" action="/blog/insertBlog.do">	
			   		<button type="submit" class="btn btn-secondary float-right bg-dark">발행하기</button>
				</div>
		</br>     
</head>
<body>
  	
  
          <!-- Post Content Column -->
    <div class="col-lg-8"> 
		
          <!-- Title -->   
    <div class="form-group">
    <h1 class="mt-4"><input type="text" id="TITLE" name="TITLE" class="form-control" maxlength="100" placeholder="제목을 입력하세요"  /></h1></div></div>
  
          <!-- Summer note -->        
      
    <div class="form-group">
    	<textarea class="form-control" id="summernote" name="CONTENT" rows="7"></textarea>
  	</div>       
  </form>
   
  </body>    
    <script type="text/javascript">
    $(document).ready(function() {
      $('#summernote').summernote({      	
    		  
        placeholder: '내용을 입력하세요',
        tabsize: 2,
        height: 100,   
        minHeight: null,
        maxHeight: null,
        lang: 'ko-KR'

      	});
    });   
    </script>
  
</html>
