$(document).ready(function(){
  
  if ( !isMobile.any()){
    
  } else {
  
  $(".rdio").hide();
  
  setTimeout(function(){
  $(".rdio").fadeTo(300, 1.0);}, 2500);
  
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
  
  }
  
});
