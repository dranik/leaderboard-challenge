@Poller =
  poll: ->
    setTimeout @request, 1000

  request: ->
    $.get('/', data_only: true, ( data ) ->
      $(".table tbody tr").each ((a,b)-> b.remove() )
      data.forEach (a) ->
        $(".table tbody").append "<tr><td>#{a.title}</td><td>#{a.description}</td><td>#{a.total}</td></tr>"
      Poller.poll()
    )

Poller.poll()
