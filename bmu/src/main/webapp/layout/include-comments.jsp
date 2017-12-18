<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<title>comments</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!--
<script type="text/javascript">
	
$(document).ready(function(){
    $(".btn1").click(function(){
        $("p").slideUp(1000);        
    });
    $(".btn2").click(function(){
        $("p").slideDown(1000);
    }); 
    
});

</script>   -->
</head>
<body>
    <!-- Comments Form -->    			           
                <div class="card my-4">                    
                    <br>                    
                    <div class="card-body">  
                       
                      	    <form id="frm" method="POST" name="COMMENTS" action="/blog/insertComments.do">                      	    
	                            <div class="form-group">   
	                            <% if(session.getAttribute("USER") == null)  { %>                            
	                        <div class="mt-0"><input type="text" id="USER_NAME" name="USER_NAME" size="15" placeholder="Name(required)" class="post-meta" /></div>
	                        <% } else { %>
	                      	<div class="mt-0">${map.USER_NAME}님</div>  
	                      	<input type="hidden" id="USER_NAME" name="USER_NAME" value="${map.USER_NAME}" size="10" />	
	                        <% } %>
	                            	<input type="hidden" id="IDX" name="IDX" value="${map.IDX}" />
	                                <textarea class="form-control" rows="3" id="COMMENTS" name="COMMENTS"></textarea>
	                            </div>
	                            <button type="submit" class="btn btn-primary">Submit</button>	                         
	                        </form>                             
                    	</div>
                    </div>
                      
     <!-- Comment List -->      
    	
            <c:if test="${fn:length(list) > 0}">
            <c:forEach items="${list}" var="row">      
          <div class="media mb-4">
          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">           
              <h5 class="mt-0">${row.USER_NAME}</h5>    
             ${row.COMMENTS} 
           </div>       
		<!-- <button class="btn2 btn btn-primary">M</button>     -->              
           <a href="/blog/deleteComments.do?CO_IDX=${row.CO_IDX}&IDX=${row.IDX}" class="btn btn-secondary">D</a>                    		 
           </div>  
                 
     		</c:forEach>  
     	
     <!--  <form id="frm" method="POST" name="COMMENTS" action="/blog/modifyComments.do">                 
             <p style="display:none">            
           	 <textarea class="form-control" rows="3" id="COMMENTS" name="COMMENTS"></textarea>
            <input type="hidden" id="CO_IDX" name="CO_IDX" value="${CO_IDX}" /> 
            <input type="button" class="btn1 btn" value="숨기기" />
            <input type="submit" class="btn" value="수정하기" />
           	</p>
            </form>   -->      
              
           </c:if>  
			
</body>
</html>