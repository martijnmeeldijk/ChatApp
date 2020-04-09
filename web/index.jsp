<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
<main class="index-main">
    <c:if test="${errors.size()>0 }">
        <div class="danger">
            <ul>
                <c:forEach var="error" items="${errors }">
                    <li>${error }</li>
                </c:forEach>
            </ul>
        </div>


    </c:if> <c:choose>
    <c:when test="${user!=null}">
        <div class="login-dark">

            <form method="post" action="Controller?action=LogOut">
				<p>Welcome ${user.getFirstName()}!</p>
				<div class="form-group">
					<button class="btn btn-primary btn-block" type="submit" id="logoutbutton">Log Out</button>
				</div>
            </form>
        </div>
    </c:when>
    <c:otherwise>
        <div class="login-dark">
            <form method="post" action="Controller?action=LogIn">
                <h2 class="sr-only">Login Form</h2>
                <div class="illustration"><i class="fas fa-user-lock" style="color:#214a80"></i></div>
                <div class="form-group"><input class="form-control" id="email" type="email" name="email"
                                               placeholder="Email" value="jan@ucll.be"></div>
                <div class="form-group"><input class="form-control" id="password" type="password" name="password"
                                               value="t" placeholder="Password">
                </div>
                <div class="form-group">
                    <button class="btn btn-primary btn-block" type="submit" id="loginbutton">Log In</button>
                </div>
                <a href="#" class="forgot">Forgot your email or password?</a></form>
        </div>
    </c:otherwise>
</c:choose>


</main>

<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
</body>
</html>