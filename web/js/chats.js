window.addEventListener('DOMContentLoaded', friends, false);

function friends() {
    $.ajax({
        type: "GET",
        url: "Controller?action=GetFriends",
        datatype: "json",
        success:
            json => {
                $('.chat-table').empty();
                $(json).each((index, person) => {
                    $('.chat-table').append("<div class=\"chat-friend-box\">\n" +
                        "                <i class=\"icon fas fa-user\"></i>\n" +
                        "                <span class=\"username\" >" + person.firstName + "</span>\n" +
                        "            </div>").onclick = selectFriendToChat(person.id);
                });
            }
    });
    setTimeout(friends, 1000);
}

function selectFriendToChat(id){
    $.ajax({
        type: "GET",
        url: "Controller?action=GetChatForPerson",
        datatype: "json",
        success: data => {}

    });
}
