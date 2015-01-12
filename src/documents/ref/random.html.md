---
title: random
description: random value
layout: reference
section: math
refOrder: 3
---

`random [x, y, z]` chooses a random value.

The following program may produce a different result each time:

<pre class="jumbo">
write random [3, 5, 7]
</pre>

Random can be used on a range of numbers.  The returned number
will be greater than or equal to the first number, and less than
the second one:

<pre class="jumbo">
write random 1, 101
</pre>

Or on a list of strings:

<pre class="jumbo">
write random [
  "apple pie"
  "ice cream"
  "cookie"
]
</pre>

If called with no arguments, `do random` gives a number between
zero and one:

<pre class="jumbo">
write do random
</pre>

There are some special arguments for `random`:
`color` (saturated color), `gray` (gray level),
`position` (screen location), `normal` (normally distributed number).

<pre class="jumbo">
moveto random position
dot(
  random(color),
  abs(random(normal) * 50)
)
</pre>
