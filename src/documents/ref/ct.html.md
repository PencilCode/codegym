---
title: ct
description: clears text
layout: reference
section: drawing
refOrder: 4
---

`do ct` will clear all text that was written.

<pre data-before='write "Hello!"&#13;dot skyblue, 200' class="jumbo">
do ct
</pre>

It will clear all text written with `write` or
`type` or `button` or `menu`, but it will not
clear graphics or turtles made by `new Turtle`.  See
[`cg`](cg.html) and [`cs`](cs.html) to clear graphics
or to clear the whole screen.

Saying `ct` by itself will not do anything, because
CoffeeScript only runs commands with at least two words:
you need to use `do ct`.
