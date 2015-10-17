$(document).ready(function(){
var i = 1
        $("header nav .boton").click(function(){
           if(i==1) {
             $('ul').animate({left:'-40%'});
             $('.content-principal').animate({left:'60%'}) ;
             i = 0;
          }
           
          else {
           $('ul').animate({left:'-100%'});
           $('.content-principal').animate({left:'0'}) ;
           i = 1;
                }
            
                    });
        });
            