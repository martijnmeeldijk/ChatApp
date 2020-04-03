
window.addEventListener('DOMContentLoaded', initAddFriend, false);

var addFriendRequest = new XMLHttpRequest();

function initAddFriend(){
    var submitStatus = document.querySelector("#submitAddFriend");
    submitStatus.addEventListener('click', addFriend);
    getStatus();
}

function addFriend () {
    var friend = document.querySelector("#addFriendForm").value;

    var information = "add=" + encodeURIComponent(friend);
    addFriendRequest.open("POST", "Controller?action=AddFriend", true);

    addFriendRequest.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');
    addFriendRequest.send(information);
}





