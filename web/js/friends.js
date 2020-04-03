window.addEventListener('DOMContentLoaded', initFriends, false);

var getFriendsRequest = new XMLHttpRequest();

function initFriends(){
    var friendList = document.querySelector(".friend-list");
    getFriends();

}

function getFriends(){
    getFriendsRequest.open("GET", "Controller?action=GetFriends", true);
    getFriendsRequest.onreadystatechange = getFriendsData;
    getFriendsRequest.send(null);
    console.log("friends");



}
function getFriendsData () {
    if (getFriendsRequest.readyState == 4) {
        if (getFriendsRequest.status == 200) {
            var serverResponse = JSON.parse(getFriendsRequest.responseText);
            document.querySelector("#friends-body").innerHTML = '';
            for(var x of serverResponse){

                var row = document.createElement('tr');
                var name = document.createElement('td');
                var status = document.createElement('td');
                name.innerText = x.firstName;
                status.innerText = x.status;
                row.appendChild(name);
                row.appendChild(status);

                document.querySelector("#friends-body").appendChild(row);
            }
            setTimeout(getFriends, 5000);
        }
    }
}