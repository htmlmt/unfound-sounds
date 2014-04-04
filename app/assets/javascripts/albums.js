$(document).ready(function(){
  $(".album").on("click", function(event){
    ($(".album").removeClass("to_top"));
    $(this).addClass("to_top");
    $(this).children().children( '.vinyl' ).animate({right: '-1200px',}, 1000 );
    $(".album:nth-child(2)").animate({left: '-346px',}, 700 );
    $(".album:nth-child(3)").animate({left: '-692px',}, 700 );
    event.preventDefault();
  });
  
  $("#week").on("click", function(event){
    $(this).children().children( '.vinyl' ).animate({top: '-500px',}, 200 );
    $(".album").siblings().children().children( '.vinyl' ).animate({right: '0px',}, 1000 );
    $(".album:nth-child(2)").animate({left: '0px',}, 700 );
    $(".album:nth-child(3)").animate({left: '0px',}, 700 );
  })
});