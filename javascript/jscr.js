$(document).ready(function() {
   
    $('.glavnaya').click(function(){

        $('html, body').animate({scrollTop: $('.icon').offset().top }, 1000);

        return false;
    }); 
    
    $('.uslugi').click(function(){

        $('html, body').animate({scrollTop: $('.head').offset().top }, 1000);

        return false;
    });

    $('.proNas').click(function(){
        
        $('html, body').animate({scrollTop: $('.we').offset().top }, 1000);

        return false;
    });

    $('.otzivi').click(function(){

        $('html, body').animate({scrollTop: $('.comments').offset().top }, 1000);

        return false;
    });
    

    $('.kontakti').click(function(){

        $('html, body').animate({scrollTop: $('.foot').offset().top }, 1000);

        return false;
    });

    $('.buttonup').click(function(){

        $('html, body').animate({scrollTop: $('.top').offset().top }, 1000);

        return false;
    });


    // blocks.forEach(function(block, i) {
    //     console.log(block, i);
    //     $('.t1').append(
    //         '<div>' + 
    //             '<h3>' + 
    //                 block.question + 
    //             '</h3>' + 
    //             '<blockquote>' + 
    //                 block.answer +
    //             '</blockquote>' +
    //             '<button>' +
    //                 block.button +
    //             '</button>' +
    //         '</div>'
    //     );
               
    // });

    // $('blockquote').hide();
    
    // $('button').click(function(){
    //     var answer = $(this).prev();


    //     // answer.slideDown(1000);
    //     // $(this).text('Скрыть ответ');

    //     if (answer.is(':visible')) {
    //         answer.slideUp(1000);
    //         $(this).text('Показать ответ');

    //     } else {
    //         answer.slideDown(1000);
    //         $(this).text('Скрыть ответ');
    //     }

    // });

    var width = 600;

    $('.slider').css('margin-left', -width);

    setInterval(function(){
    
        var margin = parseInt($('.slider').css('margin-left'));
        
        if (margin != (-width*5)) {
            margin = margin - width;

        } else {
            $('.slider').css('margin-left', -width);
            margin = - width*2;
        }
    
        $('.slider').animate({marginLeft: margin}, 2000);

    }, 3000);

    // var width = 600;

    // $('.slider').css('margin-left', -width*4);

    // setInterval(function() {
    //     var margin = parseInt($('.slider').css('margin-left'));
    //     // var margin = $('.slider').css('margin-left');

    //     if (margin != (+margin*5)) {
    //         margin = margin + width;
            
    //     } else {
    //         $('.slider').css('margin-left', -width*4);
    //         margin = -width*3;
    //     }

        
    //     console.log(margin);
    //     $('.slider').animate({marginLeft: margin}, 1000);
    // }, 2000);

    $('.menu-button').click(function (){
        $('nav').slideToggle(300);
    }); 

});
