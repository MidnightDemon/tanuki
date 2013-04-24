# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready(function() {
  function generateTanuki() {
    var nuki = $("img#gen-tanuki");
    $(nuki).css("-webkit-filter", "hue-rotate(" + Math.floor(Math.random()*360) + "deg) sepia(" + Math.floor(Math.random()*100) +"%) brightness(" + (Math.floor(Math.random()*20) + 90) + "%)");
  });  
});  