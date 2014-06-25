---
title: arrays
description: lists of values
layout: reference
section: language
refOrder: 6
---

An <em>array</em> is a list of values.

<h3>Array Literals</h3>

Here is an example of an array.

<pre class="jumbo" data-after="for x in p&#13;  type x&#13;  for [1..x]&#13;    type '*'&#13;  type '\n'">
p = <span data-note="square brace">[</span><span data-dfn="comma-separated values">2, 3, 5, 7, 11</span><span data-note="square brace">]</span>
</pre>

This array contains five numbers, so `p.length` is 5.  Places in
an array are counted from zero, so the first value is treated
as the "0th" value `p[0]` (the value is 2) and the last value is
the "4th" value `p[4]` (the value is 11).

<pre class="jumbo" data-before="p = [2, 3, 5, 7, 11]">
write p.length
write "0th:", p[0]
write "4th:", p[4]
</pre>

Notice that what we might normally call the "5th" value is
counted as the 4th in a computer array that starts with 0.

<h3>Repeating For Each Value in an Array</h3>

`for` and `in` can be used to repeat some code for each
value in an array.  For example:

<pre class="jumbo" data-before="p = [2, 3, 5, 7, 11]">
for x in p
  <span data-dfn="loop body">write x, "is prime"</span>
</pre>

Here `x` is a <em>looping variable</em> and takes on each
value in the array, one at a time, while the part of the
program in the <em>loop body</em> is repeated.

We can use any name for a looping variable.

Read more about `for` on the <a href="for.html">for reference page</a>.
