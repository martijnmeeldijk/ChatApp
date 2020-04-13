var webSocket;
var comment = document.getElementById("comment");

function openSocket(){
    webSocket = new WebSocket("ws://localhost:8080/blog");

    webSocket.onopen = function(event){
        writeResponse("Connection opened")
    };

    webSocket.onmessage = function(event){
        writeResponse(event.data);
    };

    webSocket.onclose = function(event){
        writeResponse("Connection closed");
    };
}

function send(){
    var text = document.getElementById("comment").value;
    webSocket.send(text);
}

function closeSocket(){
    webSocket.close();
}

function writeResponse(text){
    comment.innerHTML += "<br/>" + text;
}