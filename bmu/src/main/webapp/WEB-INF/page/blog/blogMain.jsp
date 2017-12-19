<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html>
    <html lang="kr">

    <head>
    <script type="text/javascript">
    $('#ex-search').picker({search : true});
    </script>
    
        <%@include file="/layout/include-nav.jsp" %>
            <%@include file="/layout/include-login.jsp" %>
                <%@include file="/layout/include-join.jsp" %>
                    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                        <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
                            <meta charset="utf-8">
                            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
                            <meta name="description" content="">
                            <meta name="author" content="">
                            <title>INDEX</title>                  
                            
                            <!-- Bootstrap core CSS  -->
                             
                            <link href="/bootstrap/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
                           
                          
                            <!-- Custom styles for this template  -->
                            <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet"> 
                            <link href="/bootstrap/css/search-form.css" rel="stylesheet"> 
                            
                            <!-- JavaScript -->
                             <link href="/bootstrap/vendor/bootstrap/js/bootstrap.min.js">
                            <script src="http://code.jquery.com/jquery-1.12.0.js"></script>
							<script src="<c:url value='/js/common.js'/>" charset="utf-8"></script>   

							

</head>

    <body>
        <!-- Page Header -->
        <header class="masthead" style="background-image: url('/img/home-bg.jpg')">
            <div class="overlay"></div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-md-10 mx-auto">
                        <div class="site-heading">
                            <h1>Simple Blog</h1>
                            <span class="subheading">
                      
                            
                            </span>
                        </div>
                    </div>
                </div>
            </div>
        </header>
        <!-- Main Content -->
     <form id="frm" name="frm" method="POST" class="search-form">
            <c:choose>
                <c:when test="${fn:length(map.list) > 0}">
                    <c:forEach items="${map.list}" var="row">
                        <div class="container">
                            <br>
                            <br>
                            <div class="row">
                                <div class="col-lg-8 col-md-10 mx-auto">
                                    <div class="post-preview">
                                        <a href="/blog/openBlogDetail.do?IDX=${row.IDX}">
                                            <h2 class="post-title">
                                            ${row.TITLE}
                                        </h2>
                                        </a>
                                        <p class="post-meta">Posted by
                                            <a href="#">${row.USER_NAME}</a> ${row.CREA_DTM}
                                        </p>
                                    </div>
                                    <br>
                                    <br>
                                    <br>
                                </div>
                            </div>
                        </div>
                        <hr>
                    </c:forEach>
                </c:when>
                    <c:otherwise>
                <tr>
                    <td colspan="4">조회된 결과가 없습니다.</td>
                </tr>
           		    </c:otherwise>
            </c:choose>
        <!-- Search -->    
<div class="container">
    <div class="row">    
        <div class="col-xs-8 col-xs-offset-2">
		    <div class="input-group">
                <div class="input-group-btn search-panel">                                         
          <select name="opt" role="menu" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
            <option value="all" <c:out value="${map.opt == 'all'?'selected':''}" />>제목+내용</option>
            <option value="title" <c:out value="${map.opt == 'title'?'selected':''}" />>제목</option>
            <option value="contents" <c:out value="${map.opt == 'content'?'selected':''}" />>내용</option>
          </select>                    
                </div>
             <!--   <input type="hidden" name="search_param" value="all" id="search_param">    -->       
                <input type="text" class="form-control" name="keyword" placeholder="Search term...">
                <span class="input-group-btn">
                    <input type="submit" class="btn btn-default" value="검색"><span class="glyphicon glyphicon-search"></span></button>
                </span>
            </div>
        </div>
	</div>
</div>
</form>
<br>
        <!-- Pager -->
        <div class="clearfix">
            <a class="btn btn-primary float-right" href="#">Older Posts &rarr;</a>
        </div>
            <%@include file="/layout/include-body.jspf" %>
                <hr>
                <!-- Bootstrap core JavaScript -->             
                <script src="/bootstrap/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
                <!-- Custom scripts for this template -->
                <script src="/bootstrap/js/clean-blog.min.js"></script>
    
   
    </body>

    </html>