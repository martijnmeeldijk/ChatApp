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
    <jsp:param name="title" value="Find Friends"/>
</jsp:include>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Find Friends"/>
</jsp:include>
<body>

<div class="chatting-container">

    <article>
        <form onsubmit="return false" class="find-friends-form">
            <input placeholder="Search for friends" class="send-message-box" id="friend-searchbar">
            <button class="btn btn-dark" id="friend-search-button" onclick="addNewFriend()">Add Friend</button>

        </form>
        <p id="not-found" style="display: none">This person doesn't exist</p>
        <p id="found" style="display: none">Friend added</p>
    </article>

</div>


</body>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<script src="js/findFriends.js"></script>

</html>
