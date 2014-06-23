---
title: sync
description: synchronizes animation queues
layout: reference
section: animation
refOrder: 10
---

Each element has its own animation queue, so if you have
multiple Turtles or Sprites, they will normally animate
simultaneously without regard for each other.

To synchronize the motion of multiple elements, use `sync`.

<pre class="jumbo">
a = new Turtle red
b = turtle
c = new turtle green
for [1..20]
  (random [a,b,c]).fd 100
  (random [a,b,c]).rt 88

sync <span data-dfnup="elements to synchronize">a, b, c</span>
a.dot red, 100
b.dot green, 100
c.dot blue, 100
</pre>

`sync` can synchronize any number of elements or
arrays of elements.  All the listed elements will
insert a pause into their animation queue, and wait
for all the other elements to reach the same point.
Once all elements have caught up, all the elements
resume animating.

To synchronize an element with the main turtle,
use the special varible `turtle` to represent
the main turtle.
