<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>One Week Board</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <!-- Bootstrap 3.3.7 -->
    <link rel="stylesheet" href="/resources/bootstrap/css/bootstrap.min.css">
    <!-- Font Awesome -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css"/>
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css"/>
    <!-- Theme style -->
    <link rel="stylesheet" href="/resources/dist/css/AdminLTE.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="/resources/plugins/iCheck/square/blue.css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <!-- Google Font -->
    <link rel="stylesheet"
          href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">

    <!-- jQuery 3 -->
    <script src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
    <!-- Bootstrap 3.3.7 -->
    <script src="/resources/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

    <!-- validation check -->
    <script src="/resources/plugins/validator/jquery.validate.min.js"></script>
    <script src="/resources/plugins/validator/messages_ko.min.js"></script>

    <!-- iCheck -->
    <script src="/resources/plugins/iCheck/icheck.min.js"></script>

    <script type="text/javascript">
        /*$.validator.setDefaults({

        });*/

        $(document).ready(function () {

            var result = "${result}";

            if (result != null && result != "") {
                alert(result);
                result = null;
            }

            $("#signinForm").validate({
                rules: {
                    /*firstname: "required",
                    lastname: "required",*/
                    id: {
                        required: true
                    },
                    password: {
                        required: true
                    }
                },
                messages: {
                    id: {
                        required: "아이디를 입력해 주세요."
                    },
                    password: {
                        required: "비밀번호를 입력해 주세요."
                    }
                },
                errorElement: "em",
                errorPlacement: function (error, element) {
                    // Add the `help-block` class to the error element
                    error.addClass("help-block");

                    if (element.prop("type") === "checkbox") {
                        error.insertAfter(element.parent("label"));
                    } else {
                        error.insertAfter(element);
                    }
                },
                highlight: function (element, errorClass, validClass) {
                    $(element).parents(".has-feedback").addClass("has-error").removeClass("has-success");
                },
                unhighlight: function (element, errorClass, validClass) {
                    $(element).parents(".has-feedback").addClass("has-success").removeClass("has-error");
                }/*,
                submitHandler: function () {
                    /!*var form = $('#signinForm');*!/

                    /!*form.attr("action", "/signin");
                    form.attr("method", "post");*!/
                    /!*this.submit();*!/
                    /!*form.submit();*!/
                }*/
            });
        });
    </script>

</head>
<body class="hold-transition login-page" oncontextmenu="return false">
<div class="login-box">
    <div class="login-logo">
        <a href="/"><b>One Week Board</b></a>
    </div>
    <!-- /.login-logo -->
    <div class="login-box-body">
        <p class="login-box-msg">Sign in to start your session</p>

        <form id="signinForm" role="form" method="post" action="/signin">
            <div class="form-group has-feedback">
                <input id="id" type="text" name="id" class="form-control" placeholder="ID" aria-describedby="id-error" aria-invalid="true">
            </div>
            <div class="form-group has-feedback">
                <input id="password" type="password" name="password" class="form-control" placeholder="Password" aria-describedby="password-error" aria-invalid="true">
            </div>
            <div class="row">
                <%--<div class="col-xs-8">
                    <div class="checkbox icheck">
                        <label>
                            <div class="icheckbox_square-blue" aria-checked="false" aria-disabled="false" style="position: relative;">
                                <input type="checkbox" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"><ins class="iCheck-helper" style="position: absolute; top: -20%; left: -20%; display: block; width: 140%; height: 140%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins></div> Remember Me
                        </label>
                    </div>
                </div>--%>
                <!-- /.col -->
                <div class="col-xs-4 pull-right">
                    <button id="submitForm" type="submit" class="btn btn-primary btn-block btn-flat">Sign In</button>
                </div>
                <!-- /.col -->
            </div>
        </form>
        <a class="pull-right" href="/signup">sign up</a><br>
    </div>
    <!-- /.login-box-body -->
</div>
<!-- /.login-box -->

</body>
</html>