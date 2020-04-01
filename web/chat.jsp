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
    <jsp:param name="title" value="Chat"/>
</jsp:include>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Chat"/>
</jsp:include>
<body>
<div class="login-dark">

    <form method="post" action="Controller?action=LogOut">
        <p>Welcome ${user.getFirstName()}!</p>

        <div class="form-group">
            <div class="form-group">
                <label for="status">Status</label>
                <input class="form-control" id="status" type="text" name="status"
                       value="${user.getStatus()}" >
            </div>
            <button class="btn btn-primary btn-block" type="submit" id="submit">Change Status</button>
        </div>
    </form>
</div>

</body>
</html>
