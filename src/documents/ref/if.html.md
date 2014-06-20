---
title: if
description: runs code based on a condition
layout: reference
section: language
refOrder: 4
---

Run a block of code conditionally using <code>if</code>.

<pre class="jumbo" data-before="m = 29">
if <span data-dfnup="condition">m < 30</span>&nbsp;
<span data-dfn="indent">  </span>write "Hello!"
</pre>

Any number of lines of code can be controlled by `if`, but
it is important to indent the code neatly.  Any indented code will
only be run if the condition holds true.

<h3>else</h3>

The opposite condition can be used with `else`.

<pre class="jumbo" data-before="m = 31">
if <span data-dfnup="condition">m < 30</span>
  write "Hello!"
else
<span data-dfn="indent">  </span>write "Goodbye!"
</pre>

<h3>then</h3>

If the code for an `if` is short, it the whole
thing can be written on a single line by using
the word `then` after the condition

<pre class="jumbo" data-before="f = true">
if f then rt 99 else bk 99
</pre>
