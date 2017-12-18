<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<script>              
                function loginCheck() {
                	
                    var Param = {
                        USER_ID: $('#USER_ID').val(),
                        USER_PWD: $('#USER_PWD').val()
                    }

                    $.ajax({

                        type: "POST",
                        url: "/login/openLoginSession.do",
                        data: Param,
                        cache: false,
                        async: false,
                        dataType: "text",
                        success: function(response) {

                            if (response == "yes") {
                                loginSuccess();
                            } else if (response == "false") {
                                alert("Check your ID or PassWord!")
                                return false;
                            }
                            alert(check);
                        },

                        error: function(request, status, error) {
                            alert("code:" + request.status + "\n" + "error:" + error);
                        }
                    });
                }                
                function loginSuccess() {
                    alert("login...");
                    location.href = '/blog/openIndex.do'
                    login.submit();
                }

                function logOut() {
                    $.ajax({
                        type: "POST",
                        url: "/login/openLogoutSession.do"                       
                    });
                    location.href = '/blog/openIndex.do'
                    logout.submit();
                }
                
          
                </script>
</head>
<body>

   <!-- Login Form -->
            <form method="POST" id="login" name="login" autocomplete="off">
                <div id="loginModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Login</h4>
                            </div>
                            <div class="modal-body">
                                <label class="sr-only">UserID : </label>
                                <input type="text" name="USER_ID" id="USER_ID" class="form-control" />
                                <label class="sr-only">PassWord : </label>
                                <input type="password" name="USER_PWD" id="USER_PWD" class="form-control" />
                                <br />
                                <button type="button" onclick='loginCheck()' class="btn btn-warning">Sign in!</button>
                             </div>
                        </div>
                    </div>
                </div>
            </form>
            
   <!-- Logout Form -->
        <form method="POST" id="logout" name="logout">
                <div id="logoutModal" class="modal fade" role="dialog">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title">Logout</h4>
                            </div>
                            <div class="modal-body">
                                <label>
                                    <h4>정말 떠나시겠습니까?</h4></label> 
                                <br />
                                <br>
                                <button type="button" onclick='logOut()' class="btn btn-warning">YES</button>
                            </div>
                        </div>
                    </div>
                </div>
            </form> 

</body>
</html>