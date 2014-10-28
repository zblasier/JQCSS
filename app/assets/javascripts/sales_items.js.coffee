# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

updateNotes = ->
  selection_id = $('#sales_item_category_id').val()
  $.getJSON '/categories/' + selection_id + '/notes', {},(json, response) ->
    $('#notes').text json['notes']


validatePrice = ->
  if (parseFloat($('#sales_item_price').val()) <= 0.0) or ($('#sales_item_price').val() == "")
    alert "You must enter a price that is greater greater than 0."
    return false

$ ->
  $(document).on 'ready page:load',updateNotes
  $(document).on 'change','#sales_item_category_id',updateNotes
  $(document).on 'submit',validatePrice
  $(document).on 'keyup', '#sales_item_price',->
    if $(this).val() < 1
      $('#price_warning').text("Price is too low!")
    else
      $('#price_warning').text("")
