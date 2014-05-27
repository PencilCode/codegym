---
title: Draw a Snowman
mission: Move the turtle to draw a shape with several dots.
layout: code
tags: ['draw','index']
code: |
  dot bisque, 1000
  dot snow, 100
  fd 80
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
  setTimeout((-> done -> setTimeout hints, 500), 500)
---
<p>
<ul>
<li><code>fd</code> moves the turtle.
<li>Can you combine <code>fd</code> and <code>dot</code> to make a snowman?
</ul>
