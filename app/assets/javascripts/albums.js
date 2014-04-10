$(document).ready(function(){
  
  $('.album').click(function () {
      if ($(':animated').length) {
          return false;
      }
  });
  
  function fadeVolOut(newPercent){
    if(newPercent <= 100){
        setVolume(newPercent);
          setTimeout('fadeVolOut(' + (newPercent - 1) + ');',50);
        }
      }
  
  $('#week').click(function () {
      if ($(':animated').length) {
          return false;
      }
  });
  
  $(".album").on("click", function(){
    $(".album_details").empty();
    $(".album_details").hide();
    $(".album").removeClass("to_top");
    $(this).addClass("to_top");
    $(".album:nth-child(2)").animate({left: '-349px',}, 700 );
    $(".album:nth-child(3)").animate({left: '-698px',}, 700 );
    setTimeout(function(){
      $(".to_top").fadeTo( "slow", 0.0 );}, 3000);
    $("#albums").addClass("albums_left");
    $(this).addClass("return");
    $("#week").children().children().text("return to week view")
  });
  
  $(window).bind('popstate', function() {
      $.ajax({url:location.pathname+'?rel=album',success: function(data){
          $('#content').html(data);
      }});
  });
  
  $("#week").on("click", function(event){
    $(".to_top").fadeTo(1, 1.0);
    $("#rdio").fadeTo(100, 0.0);
    setTimeout(function(){
    $("#rdio").remove();}, 700);
    pageurl = $(this).children().attr('href');
    
    $(".album:nth-child(2)").animate({left: '0px',}, 700 );
    $(".album:nth-child(3)").animate({left: '0px',}, 700 );
    setTimeout(function(){
      $(".album_details").empty();}, 700);
    $( ".album_details" ).fadeOut( "slow" );
    setTimeout(function(){
      $(".album_details").remove();}, 700);
    $("#week").children().children().text("WEEK 1: APRIL 7-13")
      if(pageurl!=window.location){
          window.history.pushState({path:pageurl},'<%= @title %>',pageurl);
      }
    
      return false;
  })
  
});