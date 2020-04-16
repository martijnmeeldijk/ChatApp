<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header role="banner">

    <nav class="site-header sticky-top py-1">
        <div class="container d-flex flex-column flex-md-row justify-content-between">
            <a href="Controller?action=Index"  class="chat-title">
                <img class="logo" src="images/rocket_logo.png" />
                Space Chat
            </a>

            <c:choose>
                <c:when test="${param.title=='Home'}">
                    <a class="py-2 d-none d-md-inline-block active" href="Controller?action=Index">Home</a>
                </c:when>
                <c:otherwise>
                    <a class="py-2 d-none d-md-inline-block" href="Controller?action=Index">Home</a>
                </c:otherwise>
            </c:choose>

            <c:if test="${not empty user}">
            <c:choose>
                <c:when test="${param.title=='Status'}">
                    <a class="py-2 d-none d-md-inline-block active" href="Controller?action=Status">Status</a>
                </c:when>
                <c:otherwise>
                    <a class="py-2 d-none d-md-inline-block" href="Controller?action=Status">Status</a>
                </c:otherwise>
            </c:choose>
            </c:if>
            <c:choose>
                <c:when test="${param.title=='Blog'}">
                    <a class="py-2 d-none d-md-inline-block active" href="Controller?action=Blog">Blog</a>
                </c:when>
                <c:otherwise>
                    <a class="py-2 d-none d-md-inline-block" href="Controller?action=Blog">Blog</a>
                </c:otherwise>
            </c:choose>

            <c:choose>
                <c:when test="${param.title=='Chats'}">
                    <a class="py-2 d-none d-md-inline-block active" href="Controller?action=Chats">Chats</a>
                </c:when>
                <c:otherwise>
                    <a class="py-2 d-none d-md-inline-block" href="Controller?action=Chats">Chats</a>
                </c:otherwise>
            </c:choose>




        </div>
    </nav>
    <%--<h2>
        ${param.title}
    </h2>--%>

</header>