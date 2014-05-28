$ ->
  $('code.jumbo').each ->
    maxheight = 0
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
      exp.appendTo(annotation)
      annotation.appendTo(span)
      maxheight = Math.max(maxheight, annotation.height())
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
      exp.appendTo(annotation)
      annotation.appendTo(span)
      maxheight = Math.max(maxheight, annotation.height())
      exp.css
        position: 'absolute'
      exp.css
        marginLeft: (span.width() - exp.width()) / 2
    if maxheight > 0
      $(@).css
        height: ($(@).height() + maxheight)

