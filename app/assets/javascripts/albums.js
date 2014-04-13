$(document).ready(function(){
  
  $(".album").on("click", function(){
    $(".album").removeClass("middle");
    $(".album_details").empty();
    $(".album_details").hide();
    $(".album").removeClass("to_top");
    $(this).addClass("to_top");
    $(".album:nth-child(2)").animate({left: '-349px',}, 700 );
    $(".album:nth-child(3)").animate({left: '-698px',}, 700 );
    setTimeout(function(){
      $(".to_top").removeClass("to_top")}, 3400);
    $(this).addClass("middle");
    $("#albums").addClass("albums_left");
    $(this).addClass("return");
    $("#week h4").replaceWith("<h4>return to week view</h4>");
  });
  
  $("#week").on("click", function(event){
    $(".to_top").fadeTo(1, 1.0);
    $(".rdio").fadeTo(100, 0.0);
    setTimeout(function(){
    $(".rdio").remove();}, 700);
    pageurl = $(this).children().attr('href');
    
    $(".album:nth-child(2)").animate({left: '0px',}, 700 );
    $(".album:nth-child(3)").animate({left: '0px',}, 700 );
    setTimeout(function(){
      $(".album_details").empty();}, 700);
    $( ".album_details" ).fadeOut( "slow" );
    setTimeout(function(){
      $(".album_details").remove();}, 700);
      if(pageurl!=window.location){
          window.history.pushState({path:pageurl},'<%= @title %>',pageurl);
      }
    
      return false;
  });
  
  $("*").dblclick(function(e){
    e.preventDefault();
  });
  
});