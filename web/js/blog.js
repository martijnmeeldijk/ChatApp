var webSocket;
window.addEventListener('DOMContentLoaded', openSocket, false);


function openSocket(){
    webSocket = new WebSocket("ws://localhost:8080/blog");
    webSocket.onmessage = function(event){
        var json = JSON.parse(event.data);

        var commentElement = document.getElementById("post" + json.id +"-comments");
        commentElement.insertAdjacentHTML('beforeend', `<table class="table table-dark post-comments-table"><thead><tr><th scope="col">${json.name}</th></tr></thead><tbody><tr>` +
            `<td>${json.comment}</td></tr><tr><td><span>Rating: </span><span>${json.rating}/10</span></td></tr></tbody></table>`);
    };
}
function send(id){
    var name = document.getElementById("nameForPost"+id).value;
    var comment = document.getElementById("commentForPost"+id).value;
    var rating = document.getElementById("ratingForPost"+id).value;
    var json = {id: id, name: name, comment: comment, rating: rating};
    submitToController(id, name, comment, rating);
    webSocket.send(JSON.stringify(json));
}

function submitToController (id, name, comment, rating) {
    var request = new XMLHttpRequest();
    var information = "id=" + encodeURIComponent(id) + "&name=" + encodeURIComponent(name) +"&comment=" + encodeURIComponent(comment) + "&rating=" + encodeURIComponent(rating);
    request.open("POST", "Controller?action=AddBlogPost", true);
    console.log(information);
    request.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    request.send(information);
}


