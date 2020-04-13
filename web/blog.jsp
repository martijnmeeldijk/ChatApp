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
            <div class="post-container">
                <div class="post-content">
                    <p>Hoe was de projectweek?</p>
                </div>
                <div class="post-comments">
                    <table class="table table-dark post-comments-table">
                        <thead>
                        <tr>
                            <th scope="col">Elke</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Saai</td>

                        </tr>
                        <tr>
                            <td><span>Rating:</span><span>5/5</span></td>

                        </tr>

                        </tbody>
                    </table>
                    <table class="table table-dark post-comments-table">
                        <thead>
                        <tr>
                            <th scope="col">Jeff</th>

                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td>Om eerlijk te zijn, moet je een zeer hoog IQ hebben om Rick en Morty te begrijpen.  De humor is extreem subtiel en zonder een goed begrip van de theoretische fysica gaan de meeste grappen over het hoofd van een typische kijker.  Er is ook Rick's nihilistische kijk, die behendig verweven is met zijn karakterisering - zijn persoonlijke filosofie trekt bijvoorbeeld sterk aan bij Narodnaya Volya literatuur.  De fans begrijpen dit soort dingen;  ze hebben de intellectuele capaciteit om de diepten van deze grappen echt te waarderen, om te beseffen dat ze niet alleen grappig zijn - ze zeggen iets diep over HET LEVEN.  Dientengevolge zouden mensen die een hekel hebben aan Rick & Morty GEEN idioten zijn - natuurlijk zouden ze bijvoorbeeld de humor in Rick's existentiële slogan "Wubba Lubba Dub Dub" niet waarderen, wat op zichzelf een cryptische verwijzing is naar de Russische epische Fathers and Sons van Turgenev  .  Ik fantaseer nu, ik stel me voor dat een van die verslaafde simpletons in verwarring hun hoofd krabt terwijl het geniale geluid van Dan Harmon zich op hun televisiescherm ontvouwt.  Wat dwazen ... Ik heb medelijden met ze.  😂

                                En ja, trouwens, ik heb wel een Rick & Morty-tatoeage.  En nee, je kunt het niet zien.  Het is alleen voor de ogen van de dames - en zelfs dan moeten ze aantonen dat ze van tevoren binnen 5 eigen IQ-punten zitten (bij voorkeur lager).  Niets in personeel kind 😎</td>

                        </tr>
                        <tr>
                            <td><span>Rating:</span><span>2/5</span></td>

                        </tr>

                        </tbody>
                    </table>
                </div>
                <div class="post-new-comment">
                    <form action="" method="post">

                        <div class="form-group">

                            <label for="comment">Add Comment</label>
                            <input class="form-control" id="comment" type="text"
                                   value="" placeholder="Comment">


                            <button class="btn btn-primary btn-block" id="submitComment">Send</button>
                            <button type="button" onclick="openSocket();" >Open</button>
                            <button type="button" onclick="send();" >Send</button>
                            <button type="button" onclick="closeSocket();" >Close</button>
                        </div>

                    </form>
                </div>
            </div>
        </article>
    </div>
</main>

<jsp:include page="footer.jsp">
    <jsp:param name="title" value="Home"/>
</jsp:include>
</body>
<script type="text/javascript" src="js/blog.js"></script>

</html>