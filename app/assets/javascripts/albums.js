$(document).ready(function(){
  
  $(".album").on("click", function(event){
    $(".album_details").empty();
    $(".album_details").hide();
    $(".album").removeClass("to_top");
    $(this).addClass("to_top");
    $(".album:nth-child(2)").animate({left: '-349px',}, 700 );
    $(".album:nth-child(3)").animate({left: '-698px',}, 700 );
    $("#albums").addClass("albums_left");
    event.preventDefault();
  });
  
  $("#week").on("click", function(event){
    $(".album:nth-child(2)").animate({left: '0px',}, 700 );
    $(".album:nth-child(3)").animate({left: '0px',}, 700 );
    setTimeout(function(){
      $(".album_details").empty();}, 700);
    $( ".album_details" ).fadeOut( "slow" );
    setTimeout(function(){
      $(".album_details").remove();}, 700);
  })
  
});