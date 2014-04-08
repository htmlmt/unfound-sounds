$(document).ready(function(){
  
  $(".album").on("click", function(){
    
    $(".album_details").empty();
    $(".album_details").hide();
    $(".album").removeClass("to_top");
    $(this).addClass("to_top");
    $(".album:nth-child(2)").animate({left: '-349px',}, 700 );
    $(".album:nth-child(3)").animate({left: '-698px',}, 700 );
    $("#albums").addClass("albums_left");
    
  });
  
  $(window).bind('popstate', function() {
      $.ajax({url:location.pathname+'?rel=album',success: function(data){
          $('#content').html(data);
      }});
  });
  
  $("#week").on("click", function(event){
    
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
  })
  
});