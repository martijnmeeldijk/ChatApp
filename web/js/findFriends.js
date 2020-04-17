let dict = {};
$(document).ready(function () {
    let availablePeople = $.getJSON("Controller?action=GetAllPersons", evt => {
        console.log(evt);
        let list = [];
        for(let i of evt){
            list.push(i.firstName + " " + i.lastName);
            dict[i.firstName+ " " + i.lastName] = i.userId;
        }
        console.log(list);
        $("#friend-searchbar").autocomplete({
            source: list
        });
    });
});

function addNewFriend(){
    let name = $("#friend-searchbar").val();

    if(dict[name]){
        $('#not-found').hide();
        $('#found').show();

        $.get("Controller?action=AddFriend&add=" + encodeURI(dict[name]));
    }
    else{
        $('#not-found').show();
        $('#found').hide();

    }


}