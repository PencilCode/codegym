---
title: new
description: creating special objects
layout: reference
section: language
refOrder: 5
---

Special classes of <a href="objects.html">objects</a> can also
be created `new`.  This program creates a new turtle, tells
it to wear an orange shell, and tells it to move forward.
You can create as many turtles as you like this way.

<pre class="jumbo">
t = new Turtle
t.wear orange
t.fd 100
</pre>

`Turtle` is a predefined class of objects.  When you `new Turtle`, it
creates an object that knows how to do several things like `wear`
(a function that changes the shell color) and `fd` (a function that moves
the turtle forward).

Functions attached to objects like `t.fd` are called <em>methods</em>.

Some classes are not visual: for example `Date` creates an object
that represents a date and `Array` creates an object that
contains a list of other objects.

<pre class="jumbo">
d = new Date
write d.getFullYear()
</pre>

