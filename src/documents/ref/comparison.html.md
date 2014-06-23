---
title: comparison
description: testing relationships
layout: reference
section: math
refOrder: 0
---

Values can be tested using five basic
comparison operations `<`, `<=`, `>`, `>=` and `is`.

<h3>Equality comparisons</h3>

Notice that the `is` operator is <em>not</em> written `=`,
because `=` is used to <em>set</em> variables, not test values:

<pre class="jumbo" data-before="x = 2 + 3">
if x <span data-dfnup="equality test">is</span> 6
  write 'x is 6'
else
  write 'x isnt 6'
</pre>

If the program had been written with `=` instead of `is`,
it would have set `x` to 6 instead of testing it.

<h3>Inequality comparisons</h3>

The less-than operator `<` and greater-than operator `>`
test for values that are unequal:

<pre class="jumbo">
if 3 <span data-dfnup="less-than comparison">&lt;</span> PI
  write '3 is less than PI'
</pre>

The less-than-or-equal-to operator `<=` and greater-than-or-equal-to
operator `>=` also allow values to be equal:

<pre class="jumbo" data-before="x = 5 * 5">
if x <span data-dfnup="greater-than-or-equal">&gt;=</span> 25
  write 'no less than 25'
</pre>

<h3>Comparing strings</h3>

Words or other strings of characters can be compared.  They
are compared according to their unicode values, which is similar
to alphabetic order, but capital letters all come before lowercase
letters, and numbers and other symbols also have a specific order.

<pre class="jumbo">
a = "apple"
b = "apricot"

if a &lt; b
  write a, 'then', b
else
  write a, 'after', b
</pre>
