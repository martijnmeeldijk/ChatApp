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
    <jsp:param name="title" value="Chats"/>
</jsp:include>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Chats"/>
</jsp:include>
<body>

<div class="chatting-container">
    <div class="sidebar-left">
        <div class="chat-table">
            <div class="chats">Chats</div>
            <div class="chat-friend-box">
                <i class="icon fas fa-user"></i>
                <span class="username" >Nothing to see here</span>
            </div>



        </div>

    </div>

    <article class="chat-conversation">
        <span style="display: none" class="user-firstName"></span>
        <p hidden class="user-id"></p>

        <ul class="messages">

        </ul>
        <form onsubmit="return false">
        <input style="display: none" placeholder="Type your message here" class="send-message-box">
        </form>
    </article>

</div>


</body>

<script src="js/chats.js"></script>


</html>
