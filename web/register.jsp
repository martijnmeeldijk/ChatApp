<%--
  Created by IntelliJ IDEA.
  User: martijn
  Date: 03/03/2020
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Register"/>
</jsp:include>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Register"/>
</jsp:include>
<body>
<main class="index-main">
        <div class="login-dark">
            <form method="post" action="Controller?action=Register">
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration"><i class="fas fa-user-lock" style="color:#214a80"></i></div>
                <div class="form-group">
                    <input class="form-control" id="first-name" type="text" name="first-name" placeholder="First Name" >
                </div>
                <div class="form-group">
                    <input class="form-control" id="last-name" type="text" name="last-name" placeholder="Last Name" >
                </div>
                <div class="form-group">
                    <input class="form-control" id="email" type="email" name="email" placeholder="Email" >
                </div>

                <div class="form-group">
                    <input class="form-control" id="password" type="password" name="password" placeholder="Password">
                </div>

                <div class="form-group">
                    <input class="form-control" id="repeat-password" type="password" name="repeat-password" placeholder="Repeat Password">
                </div>

                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit" id="submit">Register</button>
                </div>

                <a href="#" class="forgot">Forgot your email or password?</a></form>
        </div>
</main>
</body>


</html>
