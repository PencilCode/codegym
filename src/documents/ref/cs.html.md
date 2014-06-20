---
title: cs
description: clears the screen
layout: reference
section: drawing
refOrder: 5
---

`do cs` will clear all text, graphics, and turtles.

<pre data-before='write "Hello!"&#13;dot skyblue, 200' class="jumbo">
do cs
</pre>

It will clear everything except for the main turtle.
To clear just graphics or text, see [`cg`](cg.html) or
[`ct`](ct.html).
See [`home`](home.html) to move the turtle back to
the middle.

Saying `cs` by itself will not do anything, because
CoffeeScript only runs commands with at least two words:
you need to use `do cs`.
