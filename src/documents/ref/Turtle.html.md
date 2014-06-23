---
title: Turtle
description: creating new turtles
layout: reference
section: animation
refOrder: 4
---

The Turtle class can be used to create new turtles.

To make a Turtle, use `t = new Turtle`. (Here `t` can be any variable
name we choose).  A Turtle is always created at the center home position,
so you may not notice the new Turtle if there is already a turtle
at that spot: they pile on top of each other perfectly.

To use the turtle, put a dot between the variable name and the
method:

<pre class="jumbo">
t = new Turtle
t.pen green
t.fd 100
t.rt 270, 100
t.bk 200
</pre>

All the turtle functions that you are familiar with work as
methods on the turtle: you can use `pen`, `dot`, `label`, `play`,
and so on.

<h3>Multiple Turtles</h3>

Turtle animations follow the jQuery animation model: every
turtle has its own animation queue.

When you tell a turtle `t.fd 100`, it will not move right away:
it will add the command "fd 100" to its <em>animation queue</em>,
and it will do the forward motion after all the queued animations
have already finished.

Every turtle and every element on the screen has its own animation
queue.  That means if you have two turtles and you tell them both
to move, they will move simultaneously to each other.

To synchronize motion between turtles, try using `sync`, `plan`,
or `done`.

<h3>Turtle Alternatives</h3>

Any element can be moved like a turtle.  Built-in turtle alternatives
include `Piano` and `Webcam`, but using jQuery, you can treat
any element on the screen (such as an `<img>` or `<p>`) as a turtle.

The built-in `Sprite` class is a "blank" turtle that you can draw
on yourself using the `drawon` method.
