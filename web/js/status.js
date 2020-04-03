window.addEventListener("load", initPage, false);



var changeStatusRequest = new XMLHttpRequest();
var getStatusRequest = new XMLHttpRequest();

function initPage(){
    var submitStatus = document.querySelector("#submitStatus");
    submitStatus.addEventListener('click', changeStatus);
    getStatus();
}

function changeStatus () {
    var statusText = document.querySelector("#statusForm").value;
    var information = "status=" + encodeURIComponent(statusText);
    changeStatusRequest.open("POST", "Controller?action=SetStatus", true);

    changeStatusRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    changeStatusRequest.send(information);
}

function getStatus(){
    getStatusRequest.open("GET", "Controller?action=GetStatus", true);
    getStatusRequest.onreadystatechange = getData;
    getStatusRequest.send(null);




}
function getData () {
    if (getStatusRequest.readyState == 4) {
        if (getStatusRequest.status == 200) {
            var serverResponse = JSON.parse(getStatusRequest.responseText);
            document.querySelector("#status").innerHTML = serverResponse.status;
            console.log(serverResponse.status);
            setTimeout(getStatus, 1000);
        }
    }
}


