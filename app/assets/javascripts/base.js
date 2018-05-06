
// Display Tooltip
$( "input.my-box" ).mouseover(function() {
  if ($(this).css("background-color") != "rgb(255, 255, 255)"){
    $.ajax({
      url: "/color_grids/"+this.id,
      data: {user_id: $("#user_id").val()}
    }).done(function(data)
    { 
      $("input.my-box").tooltip({
        content: function() { 
          if($(this).css("background-color") != "rgb(255, 255, 255)"){
          var arr = []
          $.each(data, function( index, value ) {
            arr.push ("User: " + value["random_username"] + " updated with " + "Color " + value["color"]);
          }); 
          console.log(arr);
          return arr.join(". ");
        }
        }
      });
    });
  }
});
// Initialize Color Palette
$("#flat").spectrum({
    showInput: true,
    color: "#000",
    preferredFormat: "hex"
});
// Draw Color to Grid
$(".grid-div input").click(function(){
  var selected = $("#flat").val();
  var user = $("#user_id").val();
  $(this).css("background-color", selected);
  $.ajax({
    url: "/color_grids",
    data: {user_id: user, color: selected, grid_id: this.id},
    method: "POST",
  }).done(function() { alert("Added Color!");});
})