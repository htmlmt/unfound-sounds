$(document).ready(function(){
  
  if ( !isMobile.any()){
  
  $(".album_0, .album_1, .album_2").on("click", function(event){
    event.preventDefault();
    $("#note").fadeTo(100, 0.0);
    $(".album_0, .album_1, .album_2").removeClass("middle");
    $(".album_details").empty();
    $(".album_details").hide();
    $(".album_0, .album_1, .album_2").removeClass("to_top");
    $(this).addClass("to_top");
    $(".album_1").animate({left: '-349px',}, 700 );
    $(".album_2").animate({left: '-698px',}, 700 );
    
    setTimeout(function(){
      $(".to_top").removeClass("to_top")}, 3400);
    
    $(this).addClass("middle");
    $("#albums").addClass("albums_left");
    $("#week h4").replaceWith("<h4>return to week</h4>");
    $("#next").fadeTo(500, 0.0);
    $("#previous").fadeTo(500, 0.0);
    setTimeout(function(){
    $("#next").hide();}, 500);
    setTimeout(function(){
    $("#previous").hide();}, 500);
  });
  
  $("#week").on("click", function(event){
    $("#hours").remove();
    $("#note").fadeTo(100, 1.0)
    $("#next").fadeTo(500, 1.0);
    $("#previous").fadeTo(500, 1.0);
    $(".to_top").fadeTo(1, 1.0);
    $(".rdio").fadeTo(100, 0.0);
    setTimeout(function(){
    $(".rdio").remove();}, 700);
    
    $(".album_1").animate({left: '0px',}, 700 );
    $(".album_2").animate({left: '0px',}, 700 );
    
    setTimeout(function(){
      $(".album_details").empty();}, 700);
    $( ".album_details" ).fadeOut( "slow" );
    setTimeout(function(){
      $(".album_details").remove();}, 700);
    
    event.preventDefault();
  });
  
  $("*").dblclick(function(event){
    event.preventDefault();
  });
  
  } else {

  }
  
});
