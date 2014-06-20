---
title: st
description: shows the turtle
layout: reference
section: animation
refOrder: 2
---

`do st` will hide the turtle

<pre data-after='do ht&#13;pen red&#13;bk 200' class="jumbo">
do st
</pre>

After a turtle is hidden using [`ht`](ht.html), it can be
shown again with `do st`.
To fade in the turtle slowly, try [`fadeIn`](fadeIn.html).

Saying `st` by itself will not do anything, because
CoffeeScript only runs commands with at least two words:
you need to use `do st`.
