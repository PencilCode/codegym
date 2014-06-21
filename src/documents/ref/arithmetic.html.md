---
title: arithmetic
description: basic math operations
layout: reference
section: math
refOrder: -1
---

Numbers can be combined using the four basic
arithmetic operations `+` `-` `*` `/` and
parentheses `( )`

Traditional order of operations applies,
with `*` and `/` being done before `+` and `-`.
Of course, by using parentheses, you can
force any order you like.

<pre class="jumbo">
write 4 * 4 + 3 * 3
write 4 * (4 + 3) * 3
</pre>

<h3>Unary - and +</h3>

You can also negate a value by putting a `-`
before it.  (Or leave a value's sign unchanged
by putting a `+` before it.)

To avoid confusion, a `-` or
`+` that is used for negation should
have a space to its left but not to
its right, and a `-` or `+` that is
used for subtraction or addition should
have spaces on both sides:

<pre class="jumbo">
x = <span data-dfnup="negation, space before but not after">-</span>5
write x <span data-dfn="minus, with spaces before and after">-</span> sqrt <span data-dfnup="negation">-</span>x
</pre>

<h3>Powers and Other Operations</h3>

The `**` operator can be used for powers;
`x ** y` is `x` raised to the `y` power:

<pre class="jumbo">
write 2 ** 3
</pre>

Powers also be written using [`pow`](pow.html):

<pre class="jumbo">
write pow(2, 3)
</pre>

There are many other math functions.
They include [`sqrt`](sqrt.html),
[`abs`](abs.html), [`round`](round.html), [`ln`](ln.html),
[`max`](max.html), and [`sin`](sin.html).

