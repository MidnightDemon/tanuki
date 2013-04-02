//= require jquery
//= require jquery_ujs
//= require jquery-ui


$(document).ready(function(){
  var $tabs = $("#tabs").tabs({ select: function(event, ui) { $(ui.panel).empty(); } });
});

/*

var centerPopup, disablePopup, launchPopup, loadClickFunctions, loadPopup, popupStatus, stretchBackground;

popupStatus = 0;

launchPopup = function() {
  centerPopup();
  loadPopup();
  return stretchBackground();
};

loadPopup = function() {
  if (popupStatus === 0) {
    $("#backgroundPopup").fadeTo("slow", "0.7");
    $("#popupContact").fadeIn("slow");
    $("#backgroundPopup").css({
      float: "left",
      display: ""
    });
    return popupStatus = 1;
  }
};

disablePopup = function() {
  if (popupStatus === 1) {
    if ($("#popupContact>#flashplayer") == null) {
      $("#backgroundPopup").fadeOut("slow");
      $("#popupContact").fadeOut("slow");
    } else {
      $("#backgroundPopup").hide();
      $("#popupContact").hide();
    }
  }
  return popupStatus = 0;
};

centerPopup = function() {
  var popupHeight, popupWidth, windowHeight, windowWidth;
  windowWidth = document.documentElement.clientWidth;
  windowHeight = document.documentElement.clientHeight / 2;
  popupHeight = $("#popupContact").height();
  popupWidth = $("#popupContact").width();
  return $("#popupContact").css({
    position: "absolute",
    top: $(window).scrollTop() + windowHeight / 3,
    left: windowWidth / 2 - popupWidth / 2
  });
};

stretchBackground = function() {
  if (popupStatus !== 0) {
    $("#backgroundPopup").css({
      position: "absolute"
    });
    $("#backgroundPopup").css({
      width: $(window).width() + "px",
      height: ($("body").height() + 10) + "px"
    });
    $("#backgroundPopup").css({
      "z-index": "100"
    });
    $("#backgroundPopup").css({
      top: "0",
      left: "0"
    });
    return $("#backgroundPopup").css({
      "display": "inline"
    });
  }
};

loadClickFunctions = function() {
  $(".wday.clickable").click(function() {
    return launchPopup($(this).attr("id"));
  });
  $("#popupContactClose").click(function() {
    return disablePopup();
  });
  $("#backgroundPopup").click(function() {
    return disablePopup();
  });
  $(document).keypress(function(e) {
    if (e.keyCode === 27 && popupStatus === 1) {
      return disablePopup();
    }
  });
  return $(window).resize(function() {
    stretchBackground();
    return centerPopup();
  });
};


$(document).ready(function() {
  return loadClickFunctions();
});


setTimeout(loadClickFunctions, 1250);

*/