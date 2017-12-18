<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">     
 <link href="/bootstrap/css/clean-blog.min.css" rel="stylesheet">                     
                       
</head>

<body>
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
            <div class="container">
            
                <a class="navbar-brand" href="/blog/openIndex.do">블로그</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/blog/openIndex.do">메인
                <span class="sr-only">(current)</span>
              </a>
                        </li>
                        <% if(session.getAttribute("USER") == null)  { %>
                            <li class="nav-item">
                                <a class="nav-link" id="login" data-toggle="modal" data-target="#loginModal">로그인</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" id="join" data-toggle="modal" data-target="#joinModal">가입</a>
                            </li>
                            <% } else { %>
                                <li class="nav-item">
                                    <a class="nav-link" id="logout" data-toggle="modal" data-target="#logoutModal">로그아웃</a>
                                </li>
                                <li class="nav-item">
                                <a class="nav-link" href="/blog/openBlogWrite.do">글쓰기</a>
                                </li>
                                <% } %>                                  
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://beammeupplz.blog.me/">이력서</a>
                                    </li>                   
       
            </div>            
            </div>
            </ul>
        </nav>               
        
</body>
</html>