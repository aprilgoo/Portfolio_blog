<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<%@include file="/layout/include-header.jspf" %>
<title>My blog</title>
</head>
<body>
 <c:choose>
 	<c:when test="${fn:length(map.list) > 0}">
 		<c:forEach items="${map.list}" var="row">
 			 <div class="container">
			  <div class="row">
		        <div class="col-lg-8 col-md-10 mx-auto">
		          <div class="post-preview">
		           <h2 class="post-title">
		            	<td><a href="/blog/openBlogDetail.do?IDX=${row.IDX}">		             
		                ${row.TITLE}</a></td>
		              </h2>
		              <h3 class="post-subtitle">
		                ${row.SUB_TITLE}
		              </h3>   		            
		            <p class="post-meta">Posted by
		              <a href="#">${row.CREA_ID}</a>
		              ${row.CREA_DTM}</p>
		          </div>
		        </div>
			</div>
		</div>
		
	</c:forEach> 	
 </c:when>
</c:choose>


    <!-- Search Widget -->
     <form id="frm">
     <div class="col-md-4">
     <div class="card my-4">
     <div class=""media mb-4">
        <h5 class="card-header">Search</h5>
           <div class="card-body">
              <div class="input-group">
             
              <select name="opt">
				<option value="all" <c:out value="${map.opt == 'all'?'selected':''}" />>제목+내용</option>
				<option value="title" <c:out value="${map.opt == 'title'?'selected':''}" />>제목</option>
				<option value="contents" <c:out value="${map.opt == 'content'?'selected':''}" />>내용</option>
			  </select>
              <input type="text" name="keyword" value=" ${map.keyword}" class="form-control" placeholder="Search for..."> 
                <span class="input-group-btn">
                 <input type="submit" value="GO..!" class="btn btn-secondary">
                </span>
              </div>
          </div>
       </div> 
      </div>  
  	 </div>
   </form>     
          	          <hr> 
		           <!-- Pager -->
		          <div class="clearfix">
		            <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
		        	  </div>
		
<%@include file="/layout/include-body.jspf" %>
</body>
</html>

