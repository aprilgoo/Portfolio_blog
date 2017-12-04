<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>comments</title>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
</head>
<body>
    <!-- Comments Form -->
                <div class="card my-4">
                    <h5 class="card-header">Leave a Comment:</h5>
                    <div class="card-body">                    
	                        <form id="frm" method="POST" name="COMMENTS" action="/blog/insertComments.do">
	                            <div class="form-group">   
	                            <% if(session.getAttribute("USER") == null)  { %>                            
	                        <div class="mt-0">Name : <input type="text" id="CREA_ID" name="CREA_ID" size="10" /></div>
	                        <% } else { %>
	                      	<div class="mt-0">${map.CREA_ID}님</div>  
	                      	<input type="hidden" id="CREA_ID" name="CREA_ID" value="${map.CREA_ID}" size="10" />	
	                        <% } %>
	                            	<input type="hidden" id="IDX" name="IDX" value="${map.IDX}" />
	                                <textarea class="form-control" rows="3" id="COMMENTS" name="COMMENTS"></textarea>
	                            </div>
	                            <button type="submit" class="btn btn-primary">Submit</button>
	                        </form>                 
                    	</div>
                    </div>
     <!-- Single Comment -->   
     <c:choose>
            <c:when test="${fn:length(list) > 0}">
            <c:forEach items="${list}" var="row">      
          <div class="media mb-4">
          <img class="d-flex mr-3 rounded-circle" src="http://placehold.it/50x50" alt="">
            <div class="media-body">           
              <h5 class="mt-0">${row.CREA_ID}</h5>    
             ${row.COMMENTS}
                  </div>
          </div> 
          </c:forEach>
		  </c:when>
		  </c:choose>
       
</body>
</html>