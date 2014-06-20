---
title: ht
description: hides the turtle
layout: reference
section: animation
refOrder: 1
---

`do ht` will hide the turtle

<pre data-after='pen red&#13;bk 200' class="jumbo">
do ht
</pre>

Even when hidden, the turtle can still move and
draw.  To fade out the turtle slowly, try [`fadeOut`](fadeOut.html).
To show the turtle again, see [`st`](st.html).

Saying `ht` by itself will not do anything, because
CoffeeScript only runs commands with at least two words:
you need to use `do ht`.
