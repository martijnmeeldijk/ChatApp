window.addEventListener('DOMContentLoaded', initChats, false);



function initChats(){
    friends();
    $('.send-message-box').on('keypress',function(e){
        if(e.key === "Enter")
        {
            $.ajax({
                type: "POST",
                url: "Controller?action=SendMessage",
                data: {'message': this.value, 'id': $('.user-id').text()},
                success: function (msg) {
                    $('.send-message-box').val('');

                },

                error: evt => {console.log('not saved');
                }


            });
        }
    });

}
function getMessages() {
    $.ajax({
        type: "GET",
        url: "Controller?action=GetMessages" + "&id=" + encodeURIComponent($('.user-id').text()),
        datatype: "json",

        success: json => {
            $('.send-message-box').show();
            $('.messages').empty();
            $(json).each((index, message) =>{
                if($('.user-id').text() == message.sender.userId){
                    $('.messages').append('<li class="message-other"><span class="sender">'+ message.sender.firstName +'</span><span class="message-content">' + message.message + '</span></li>');

                }
                else{
                    $('.messages').append('<li class="message-you"><span class="sender">'+ message.sender.firstName +'</span><span class="message-content">' + message.message + '</span></li>');

                }            });
            $('.messages').scrollTop($('.messages')[0].scrollHeight);
        },

    });
    setTimeout(getMessages, 1000);
}
function friends() {
    $.ajax({
        type: "GET",
        url: "Controller?action=GetFriends",
        datatype: "json",
        success:
            json => {
                $('.chat-table').empty();
                $(json).each((index, person) => {
                    $('.chat-table').append(
                        $("<div class=\"chat-friend-box\">\n" +
                        "                <i class=\"icon fas fa-user\"></i>\n" +
                        "                <span class=\"username\" >" + person.firstName + "</span>\n" +
                        "            </div>").on( 'click',{userId:person.userId}, selectFriendToChat)
                    );
                });
            }
    });
    //setTimeout(friends, 1000);
}

function selectFriendToChat(evt){
    $.ajax({
        type: "GET",
        url: "Controller?action=GetMessages" + "&id=" + encodeURIComponent(evt.data.userId),
        datatype: "json",

        success: json => {
            $('.send-message-box').show();
            $('.user-id').text(evt.data.userId);
            console.log(json);
            $('.messages').empty();
            $(json).each((index, message) =>{
                if(evt.data.userId == message.sender.userId){
                    $('.messages').append('<li class="message-other"><span class="sender">'+ message.sender.firstName +'</span><span class="message-content">' + message.message + '</span></li>');

                }
                else{
                    $('.messages').append('<li class="message-you"><span class="sender">'+ message.sender.firstName +'</span><span class="message-content">' + message.message + '</span></li>');

                }
            });
        },

    });
    setTimeout(getMessages, 1000);
}

