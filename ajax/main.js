$(document).ready(function(){

    $('#form').submit(function() {
        var name = $('#name').val();
        var mail = $('#mail').val();
        var message = $('#message').val();
        if (name.lenght == 0 && mail.lenght == 0 && message.lenght == 0) {
            return false;
        }
        

        var xhr = new XMLHttpRequest();
        xhr.open('GET','post_message.php?message=' + message + '$name=' + name + '$mail=' + mail, true);
        xhr.send();

        $('#name').val('');
        $('#mail').val('');
        $('#message').val('');
    });
});