---
title: cg
description: clears graphics
layout: reference
section: drawing
refOrder: 3
---

`do cg` will clear all graphics drawn.

<pre data-before='write "Hello!"&#13;dot skyblue, 200' class="jumbo">
do cg
</pre>

It will clear all graphics drawn with pens and dots, but
it will not clear text written with `write`, and it
will not clear turtles made by `new Turtle`.  See
[`ct`](ct.html) and [`cs`](cs.html) to clear text or
clear the whole screen.

Saying `cg` by itself will not do anything, because
CoffeeScript only runs commands with at least two words:
you need to use `do cg`.
