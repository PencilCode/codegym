$ ->
  $('code.jumbo,pre.jumbo').each ->
    $(@).find('span[data-dfn]').each ->
      span = $(@)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        top: span.height()
        width: span.width()
      topdiv = $('<div>').css
        borderBottom: '1px solid black'
        borderLeft: '1px solid black'
        borderRight: '1px solid black'
        height: 5
      topdiv.appendTo(annotation)
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: span.width() / 2
        height: 5
      middiv.appendTo(annotation)
      exp = $('<div>').text(span.data('dfn'))
      exp.css
        whiteSpace: 'nowrap'
      exp.appendTo(annotation)
      annotation.appendTo(span)
    $(@).find('span[data-note]').each ->
      span = $(@)
      span.css
        position: 'relative'
      annotation = $('<dfn>').css
        position: 'absolute'
        left: 0
        top: span.height()
        width: span.width()
      middiv = $('<div>').css
        borderRight: '1px solid black'
        width: span.width() / 2
        height: 48
      middiv.appendTo(annotation)
      exp = $('<div>').text(span.data('note'))
      exp.css
        whiteSpace: 'nowrap'
      exp.appendTo(annotation)
      annotation.appendTo(span)
      exp.css
        position: 'absolute'
      exp.css
        marginLeft: (span.width() - exp.width()) / 2
    box = $(@).offset()
    box.bottom = box.top + $(@).outerHeight()
    box.right = box.left + $(@).outerWidth()
    $(@).find('div').each ->
      divbox = $(@).offset()
      divbox.bottom = divbox.top + $(@).outerHeight()
      divbox.right = divbox.left + $(@).outerWidth()
      console.log(@, divbox)
      box.bottom = Math.max(divbox.bottom, box.bottom)
      box.right = Math.max(divbox.right, box.right)
    $(@).css
      height: box.bottom - box.top
      width: box.right - box.left

