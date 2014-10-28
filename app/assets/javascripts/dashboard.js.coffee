# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$('.post-thumb a').hover(
  -> $(this).find('.overlay').fadeIn(150)
  -> $(this).find('.overlay').fadeOut(150)
)

$('someSelector').hover ->
  alert "hello"
, ->
  alert "world"

$(".check").mouseover(->
  $(this).children(".description").show()
  return
).mouseout ->
  $(this).children(".description").hide()
  return
