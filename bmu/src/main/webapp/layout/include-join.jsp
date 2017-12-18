<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
    <html>

    <head>
        <script type="text/javascript">  

        function fn_joinMember() {

            var Param = {

                USER_ID: $('#USER_ID').val(),
                USER_NAME: $('#USER_NAME').val(),
                USER_PWD: $('#USER_PWD').val(),
                USER_PWD_2: $('#USER_PWD_2').val(),
                USER_EMAIL: $('#USER_EMAIL').val()
            }

            $.ajax({

                type: "POST",
                url: "/join/memberJoin.do",
                data: Param,
                cache: false,
                async: false,
                dataType: "text",
                success: function(response) {

                    if (response == "yes") {
                        fn_joinSuccess();
                    }

                }


            });
        }

        
        function fn_joinSuccess() {
            alert("join...");
            location.href = '/blog/openIndex.do'
            join.submit();
        }
        </script>
    </head>

    <body>
        <!-- Join Form -->
        <form method="POST" id="join" name="join">
            <div id="joinModal" class="modal fade" role="dialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="panel-title">you can sign up simply!</h3>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">                                
                                <input type="text" name="USER_EMAIL" id="USER_EMAIL" class="form-control input-sm" placeholder="Email Address" maxlength="30">
                            </div>
                            <div class="form-group">                                
                                <input type="text" name="USER_ID" id="USER_ID" class="form-control input-sm" placeholder="User ID" maxlength="10" autocomplete="off">
                            </div>
                            <div class="form-group">                               
                                <input type="text" name="USER_NAME" id="USER_NAME" class="form-control input-sm" placeholder="User Name" maxlength="10">
                            </div>
                            <div class="form-group">                               
                                <input type="password" name="USER_PWD" id="USER_PWD" class="form-control input-sm" placeholder="Password" maxlength="20" autocomplete="off">
                            </div>
                            <div class="form-group">                                
                                <input type="password" name="USER_PWD_2" id="USER_PWD_2" class="form-control input-sm" placeholder="Confirm Password" maxlength="20">
                            </div>
                            <button type="button" onclick="fn_joinMember()" class="btn btn-warning">Sign up!</button> 
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>

    </html>