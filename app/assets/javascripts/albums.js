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
  
  $("#members_only").on("click", function(){
    $("#member_big").show();
    $("#member_side").show();
  })

  $("#monday_thumbnail").on("click", function(){
    $("#monday_big").show();
    $("#monday_side").show();
  })

  $("#tuesday_thumbnail").on("click", function(){
    $("#tuesday_big").show();
    $("#tuesday_side").show();
  })

  $("#tuesday_thumbnail").on("click", function(){
    $("#tuesday_big").show();
    $("#tuesday_side").show();
  })

  $("#wednesday_thumbnail").on("click", function(){
    $("#wednesday_big").show();
    $("#wednesday_side").show();
  })

  $("#thursday_thumbnail").on("click", function(){
    $("#thursday_big").show();
    $("#thursday_side").show();
  })

  $("#friday_thumbnail").on("click", function(){
    $("#friday_big").show();
    $("#friday_side").show();
  })
  
  $(".x_white").on("click", function(){
    $(".big_hint").hide();
  })
  
  $("*").dblclick(function(event){
    event.preventDefault();
  });
  
  } else {
    $(".album_0, .album_1, .album_2").on("click", function(event){
      $('.album_0, .album_1, .album_2').not(this).hide();
      $("#mobile_note").hide();
    });
  }
  
});
