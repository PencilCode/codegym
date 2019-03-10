$ ->
  $('code.jumbo,pre.jumbo').each (j) ->
    jumbo = $(this)
    jumbo.find('span[data-dfn]').each ->
      span = $(this)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        right: 0
        top: '100%'
      topdiv = $('<div>').css
        borderBottom: '1px solid black'
        borderLeft: '1px solid black'
        borderRight: '1px solid black'
        height: 5
      topdiv.appendTo(annotation)
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: '50%'
        height: 5
      middiv.appendTo(annotation)
      sexp = $('<span>').text(span.data('dfn'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
      exp.appendTo(annotation)
      annotation.appendTo(span)
    jumbo.find('span[data-dfnup]').each ->
      span = $(this)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        right: 0
        bottom: '100%'
      sexp = $('<span>').text(span.data('dfnup'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
      exp.appendTo(annotation)
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: '50%'
        height: 5
      middiv.appendTo(annotation)
      botdiv = $('<div>').css
        borderTop: '1px solid black'
        borderLeft: '1px solid black'
        borderRight: '1px solid black'
        height: 5
      botdiv.appendTo(annotation)
      annotation.appendTo(span)
    jumbo.find('span[data-note]').each ->
      span = $(this)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        top: '100%'
        width: '100%'
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: '50%'
        height: 48
      middiv.appendTo(annotation)
      sexp = $('<span>').text(span.data('note'))
      exp = $('<div>').append(sexp)
      exp.css
        whiteSpace: 'nowrap'
      exp.appendTo(annotation)
      annotation.appendTo(span)
      exp.css
        position: 'absolute'
      exp.css
        left: -20
        right: -20
        margin: 'auto'
  window.expandboxes = ->
    $('code.jumbo,pre.jumbo').each (j) ->
      jumbo = $(this)
      box = jumbo.offset()
      box.bottom = box.top + jumbo.outerHeight()
      box.right = box.left + jumbo.outerWidth()
      origbox = $.extend {}, box
      jumbo.find('span').each ->
        spanbox = $(this).offset()
        spanbox.bottom = spanbox.top + $(this).outerHeight()
        spanbox.right = spanbox.left + $(this).outerWidth()
        box.bottom = Math.max(spanbox.bottom + 3, box.bottom)
        box.right = Math.max(spanbox.right + 5, box.right)
        box.top = Math.min(spanbox.top - 3, box.top)
        box.left = Math.min(spanbox.left - 5, box.left)
      jumbo.css
        paddingRight: "+=" + (box.right - origbox.right)
        paddingLeft: "+=" + (origbox.left - box.left)
        paddingBottom: "+=" + (box.bottom - origbox.bottom)
        paddingTop: "+=" + (origbox.top - box.top)
  for t in [10, 100, 1000, 10000]
    setTimeout window.expandboxes, t
