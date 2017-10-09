<!DOCTYPE html>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="webjars/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="webjars/font-awesome/4.7.0/css/font-awesome.css" />
    <link rel="stylesheet" type="text/css" href="./resources/static/index.css" />
</head>
<body>
<h5>${sms}</h5>
<c:url value="/login" var="loginUrl"/>

<div class="col-lg-6 col-lg-offset-3 col-md-6 col-md-offset-3 col-sm-10 col-sm-offset-1">
    <div class="form">
        <!-- the input -->
        <div class="first-row">
            <a href="#"><img src="./resources/static/lock.png" alt="login" class="icon-login"></a>
            <h2 class="first-login">Login</h2>
        </div>
        <form action="${loginUrl}" method="POST" id="login-form">
            <div class="input-group">
                <input type="text" class="form-control" placeholder="Username" name="username">
                <span class="input-group-addon"><span class="fa fa-user fa-2x"></span></span>
            </div>
            <div class="input-group">
                <input type="password" class="form-control" placeholder="password" name="password">
                <span class="input-group-addon"><span class="fa fa-lock fa-2x"></span></span>
            </div>
        </form>
        <div class="row">
            <div class="remember-me col-sm-6 col-xs-6">
                <label class="switch"><input type="checkbox"><div class="slider round"></div></label>
                <p>Remember Me</p>
            </div>
            <div class="forget col-sm-6 col-xs-6">
                <a href="#">Forgot your password ?</a>
            </div>
        </div>
        <button form="login-form" type="submit" class="btn btn-primary btn-lg login-btn">Login</button>
    </div>
</div>
<!-- login with social -->

<!--
<div class="social-login col-sm-6 col-sm-offset-3">
    <h3>OR : </h3>
    <div class="btn-group btn-group-one">
        <a href="#" class="btn btn-primary btn-fb"><i class="fa fa-facebook-f"></i></a>
        <a href="#" class="btn btn-primary btn-fb">Login with Facebook</a>
    </div>
    <div class="btn-group btn-group-two">
        <a href="#" class="btn btn-info btn-tw"><i class="fa fa-twitter"></i></a>
        <a href="#" class="btn btn-info btn-tw">Login with Twitter</a>
    </div>
    <p class="sign-up">Not A Member ? <a href="#">SIGN UP Now!</a></p>
</div>
-->
</body>
</html>
