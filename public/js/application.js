var timer = 5000;
$(document).ready( function() {
  color_loop(); });

function color_loop() {
  color_shift();
  window.setInterval( function () { color_shift(); }, timer);
}

function color_shift() {
  $('#background_color').animate({
        backgroundColor: gen_rgb()
      }, timer);
}

function gen_rgb() {
  return ('#'+Math.floor(Math.random()*16777215).toString(16));
}


