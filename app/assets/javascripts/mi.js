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
  var boton = $('input.js-edit-btn');
  var campos = $('input.js-edit, select#usuario_sexo');


  $(campos).prop('disabled', true);
  boton.on('click', function(event) {
    event.preventDefault();
    
    $(this).attr({
      value: 'Guardar mis datos',
      style: 'background :#1A5A7F'
    });
    $(campos).prop('disabled', false);
    $(this).on('click', function() {
      $('form').submit();
    });
  });

});

