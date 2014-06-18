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

<pre class="jumbo">
t = new Turtle
t.wear orange
t.fd 100
</pre>

`Turtle` is a predefined class: when you `new Turtle`, it
creates an object with many built-in things such as `wear` (a
function that changes the shell color) and `fd` (a function that moves
the turtle forward).

Function properties like `fd` are called <em>methods</em>.

Some classes are not visual: for example `Date` creates an object
that represents a date and `Array` creates an object that
contains a list of other objects.
