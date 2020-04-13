<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<jsp:include page="head.jsp">
    <jsp:param name="title" value="Blog"/>
</jsp:include>
<body>
<jsp:include page="header.jsp">
    <jsp:param name="title" value="Blog"/>
</jsp:include>
<main>
    <div class="blog-container">
        <article>
            <c:forEach items="${posts}" var="post">
                <div class="post-container">
                    <div class="post-content">
                        <p>${post.title}</p>
                    </div>
                    <div id="post${post.id}-comments">
                        <c:forEach var="comment" items="${post.getComments()}">
                            <table class="table table-dark post-comments-table">
                                <thead>
                                <tr>
                                    <th scope="col">${comment.creator}</th>
                                </tr>
                                </thead>
                                <tbody>
                                <tr>
                                    <td>${comment.content}</td>
                                </tr>
                                <tr>
                                    <td><span>Rating: </span><span>${comment.rating}/10</span></td>

                                </tr>
                                </tbody>
                            </table>

                        </c:forEach>
                    </div>
                    <div class="post-new-comment">
                        <form onsubmit="return false">
                            <div class="form-group">
                                <label for="nameForPost${post.id}">Add Comment</label>
                                <input class="form-control" id="nameForPost${post.id}" type="text"
                                       value="" placeholder="Your Name">

                                <input class="form-control" id="commentForPost${post.id}" type="text"
                                       value="" placeholder="Comment">

                                <input class="form-control" id="ratingForPost${post.id}" type="number"
                                       min="0" max="10" placeholder="Rating (out of 10)">
                            </div>
                        </form>
                        <button onclick="send(${post.id});" class="btn btn-primary btn-block">Send</button>
                    </div>
                </div>

            </c:forEach>
        </article>
    </div>
</main>

<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
</body>
<script type="text/javascript" src="js/blog.js"></script>

</html>