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
    <jsp:param name="title" value="Status"/>
</jsp:include>

<jsp:include page="header.jsp">
    <jsp:param name="title" value="Status"/>
</jsp:include>
<body>
<div class="chat-container">
    <article>
        <div class="login-dark">

            <form onsubmit="return false">
                <p>Welcome ${user.getFirstName()}! Your status is:</p>

                <p id="status"><sup>loading</sup></p>

                <div class="form-group">

                    <label for="statusForm">Status</label>
                    <input class="form-control" id="statusForm" type="text"
                           value="" placeholder="Change Status">


                    <button class="btn btn-primary btn-block" id="submitStatus">Change Status</button>
                </div>
                <div class="form-group">

                    <label for="statusForm">Add Friend</label>
                    <input class="form-control" id="addFriendForm" type="text"
                           value="" placeholder="Email">


                    <button class="btn btn-primary btn-block" id="submitAddFriend">Add Friend</button>
                </div>

            </form>
        </div>

    </article>
    <aside class="sidebar-right">
        <table class="table table-dark friend-list">
            <thead >
            <tr class="friend-list-header">

                <th scope="col" colspan="2"><i id="collapse-icon" class="fas fa-caret-down"></i>Friends</th>
            </tr>
            </thead>
            <tbody id="friends-body">
            <tr>

                <td>Mark</td>
                <td>Op de WC</td>
            </tr>

            </tbody>
        </table>
    </aside>
</div>
</body>
<script type="text/javascript" src="js/friends.js"></script>
<script type="text/javascript" src="js/status.js"></script>
<script type="text/javascript" src="js/addFriend.js"></script>


</html>
