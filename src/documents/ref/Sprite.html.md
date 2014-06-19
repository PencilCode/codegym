---
title: Sprite
description: for drawing your own turtle
layout: reference
section: animation
refOrder: 2
---

The Sprite class is a "blank" turtle that you can draw on yourself.

To make a Sprite, use `s = new Sprite`. (Here `s` can be any variable
name we choose).  By default, a Sprite is a perfectly blank 256 pixel
square.  It is invisible.

The `Sprite` constructor accepts an optional argument to change its
default color and size.  A non-transparent color lets us
see a Sprite's boundaries:

<pre class="jumbo">
s = new Sprite
  color: gray
  height: 128
  width: 128
s.pen blue
s.rt 135
s.fd 200
</pre>

There are two ways to draw on a Sprite: by using the `drawon` method,
or by using raw HTML5 `canvas` operations.

<h3>Drawing a sprite with drawon</h3>

A turtle `t` or other element can draw on Sprite `s` by
saying `t.drawon s`.  The global `drawon` function just
does this for the main turtle:

<pre class="jumbo">
s = new Sprite
  color: gray
t = new Turtle
t.drawon s
t.dot red, 100
t.pen blue, 10
t.fd 100
t.pen null
t.ht()
sync s, t
s.lt 90
s.fd 200
</pre>

