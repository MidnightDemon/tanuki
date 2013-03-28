$(document).ready(function(){
  var $tabs = $("#tabs").tabs({ select: function(event, ui) { $(ui.panel).empty(); } });
});

/*
###
# JScript File

#SETTING UP OUR POPUP  
#0 means disabled; 1 means enabled;  
popupStatus = 0

#loading popup with jQuery magic!  
loadPopup = ->
  
  #loads popup only if it is disabled  
  if popupStatus is 0
    $("#backgroundPopup").fadeTo "slow", "0.7"
    $("#popupContact").fadeIn "slow"
    $("#backgroundPopup").css
      float: "left"
      display: ""

    popupStatus = 1

#disabling popup with jQuery magic!  
disablePopup = ->
  
  #disables popup only if it is enabled  
  if popupStatus is 1
    unless $("#popupContact>#flashplayer")?
      $("#backgroundPopup").fadeOut "slow"
      $("#popupContact").fadeOut "slow"
    else
      $("#backgroundPopup").hide()
      $("#popupContact").hide()
  popupStatus = 0

#centering popup  
centerPopup = ->
  
  #request data for centering  
  windowWidth = document.documentElement.clientWidth
  windowHeight = document.documentElement.clientHeight / 2
  popupHeight = $("#popupContact").height()
  popupWidth = $("#popupContact").width()
  
  #centering  
  $("#popupContact").css
    position: "absolute"
    top: $(window).scrollTop() + windowHeight / 3
    left: windowWidth / 2 - popupWidth / 2


#only need force for IE6  

#$("#backgroundPopup").css({"height": windowHeight});  
stretchBackground = ->
  unless popupStatus is 0
    $("#backgroundPopup").css position: "absolute"
    $("#backgroundPopup").css
      width: $(window).width() + "px"
      height: ($("body").height() + 10) + "px"

    $("#backgroundPopup").css "z-index": "100"
    $("#backgroundPopup").css
      top: "0"
      left: "0"
    $("#backgroundPopup").css "display": "inline"

SetDate = (ID) ->
  tok = ID.split("-")
  date = new Date(tok[0], tok[1]-1, tok[2])
  $("#popupTitle").text(date.toLocaleDateString())

#QueryDB = (ID) ->
  

launchPopup = (ID) ->
  SetDate(ID)
  #QueryDB(ID)
  
  #centering with css  
  centerPopup()
  
  #load popup  
  loadPopup()
  stretchBackground()

#------------------------------------------------------------------
loadClickFunctions = ->
  
  #Click the button event!  
  $(".wday.clickable").click ->
    launchPopup($(this).attr("id"))
  
  #CLOSING POPUP  
  #Click the x event!  
  $("#popupContactClose").click ->
    disablePopup()

  
  #Click out event!  
  $("#backgroundPopup").click ->
    disablePopup()

  
  #Press Escape event!  
  $(document).keypress (e) ->
    disablePopup()  if e.keyCode is 27 and popupStatus is 1

  $(window).resize ->
    stretchBackground()
    centerPopup()

$(document).ready ->
  loadClickFunctions()

setTimeout loadClickFunctions, 1250
###
*/