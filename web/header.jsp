<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<header role="banner">

    <nav class="site-header sticky-top py-1">
        <div class="container d-flex flex-column flex-md-row justify-content-between">
            <a href="Controller?action=Index" >
                <img class="logo" src="https://icon-library.net//images/chat-icon-png/chat-icon-png-20.jpg" />
                Chat App
            </a>

            <c:choose>
                <c:when test="${param.title=='Home'}">
                    <a class="py-2 d-none d-md-inline-block active" href="Controller?action=Index">Home</a>
                </c:when>
                <c:otherwise>
                    <a class="py-2 d-none d-md-inline-block" href="Controller?action=Index">Home</a>
                </c:otherwise>
            </c:choose>
            <c:choose>
                <c:when test="${param.title=='Chat'}">
                    <a class="py-2 d-none d-md-inline-block active" href="Controller?action=Chat">Chat</a>
                </c:when>
                <c:otherwise>
                    <a class="py-2 d-none d-md-inline-block" href="Controller?action=Chat">Chat</a>
                </c:otherwise>
            </c:choose>
            <a class="py-2 d-none d-md-inline-block" href="#">Features</a>

            <a class="py-2 d-none d-md-inline-block" href="#">Support</a>


        </div>
    </nav>
    <%--<h2>
        ${param.title}
    </h2>--%>

</header>