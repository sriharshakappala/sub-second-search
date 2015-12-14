ready = () ->

  $('#go').click ->
    query = $('#query').val()
    if validate_fields(query)
      $.ajax
        type: 'POST'
        url: '/search_the_crap_out_of_redis'
        data:
          query: query
        success: (data) ->
          return

validate_fields = (query) ->
  if query == ''
    $('.errors').show().addClass('alert alert-danger').html 'Oops you forget to type your search query!'
    $('.errors').delay(1000).fadeOut();
    return false
  else
    return true

$(document).ready ready
$(document).on "page:load", ready
