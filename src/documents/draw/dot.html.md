---
title: Draw a Dot
mission: Pick your color and make a dot.
layout: code
tags: ['draw','index']
code: |
  dot purple, 100
setup: |
  dotcount = 0
  colors = {}
  sizes = []
  originaldot = window.dot
  window.dot = ->
    dotcount += 1
    for a in arguments
      if isNaN(a) then colors[a] = true
      else sizes.push(a)
    originaldot.apply(null, arguments)
  popup = (t) ->
    e = write """
      <center>#{t}</center>
    """
    e.css
      background: 'lightblue'
      fontFamily: 'Arial'
      margin: '5% 15%'
      padding: '10px'
  hints = ->
    if dotcount == 0
      return
    if dotcount == 1
      popup """
        <p>Very nice.<br>
        Try adding a second dot!<br>
        <p>HINT: try copying and changing the first line.
      """
    else if _.keys(colors).length == 1
      popup """
        <p>Are your dots all the same color?
        <p>HINT: try picking a different color for a dot.
      """
    else if _.uniq(sizes).length == 1
      popup """
        <p>Are your dots all the same size?
        <p>HINT: try picking a different size for a dot.
      """
    else if sizes[1] > sizes[0]
      popup """
        <p>Did you draw a bigger dot after a smaller one?<br>
        To see both dots, try drawing the bigger one first.
      """
    else
      popup """
        <p>Beautiful! Go on to the next challenge.
      """
  setTimeout((-> done -> setTimeout hints, 500), 500)
---
<p>
<ul>
<li>Try drawing a second dot with your favorite color.
<li>How can you make the dot larger?
<li>Challenge: draw a smaller dot inside the larger dot.
<li>Challenge: use black and white dots to make a bullseye shape.
</ul>
