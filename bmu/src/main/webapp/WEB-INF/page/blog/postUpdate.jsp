<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>bootstrap4</title>
      <%@include file="/layout/include-snote.jsp" %>   
    <br>   
   	<div class="clearfix">
   	<form id="frm" method="POST" action="/blog/updateBlog.do?IDX=${map.IDX}">	
   		<button type="submit" class="btn btn-secondary float-right bg-dark">발행하기</button>
	</div>
	</br>     
  </head>
  <body>
  	
  
          <!-- Post Content Column -->
    <div class="col-lg-8"> 
		
          <!-- Title -->   
    <div class="form-group">
    <h1 class="mt-4"><input type="text" id="TITLE" name="TITLE" class="form-control" value=" ${map.TITLE}" maxlength="100" /></h1></div></div>
  
          <!-- Summer note -->        
      
    <div class="form-group">
    	<textarea class="form-control" id="summernote" name="CONTENT" rows="7">${map.CONTENT}</textarea>
  	</div>       
  </form>
   
  </body>    
    <script type="text/javascript">
    $(document).ready(function() {
      $('#summernote').summernote({    		  
        
        tabsize: 2,
        height: 100,   
        minHeight: null,
        maxHeight: null,
        lang: 'ko-KR'  
        

      	});
    });   
    </script>
  
</html>