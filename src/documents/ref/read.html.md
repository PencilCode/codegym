---
title: read
description: text input
layout: reference
section: interaction
refOrder: 2
---

`read` shows a box for text input.  It takes two
arguments: first, an optional prompt.  Second,
a function to call after the user enters some text.
The entered text or number is passed as the argument
to the function.

<pre class="jumbo">
read 'your name?', (x) ->
  write 'hello', x
</pre>

`read` automatically converts numeric input to
a number.

<h3>readnum and readstr</h3>

Two variants of `read` are specifically for numeric
and long textual input.  `readnum` shows an input
box that only accepts numbers.  `readstr` shows
a larger input box for text that does not try to
convert any input to numbers.

<pre class="jumbo">
readnum 'your age?', (x) ->
  write 'in months:', (x * 12)
</pre>
