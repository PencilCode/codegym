---
title: for
description: repeats a block of code
layout: reference
section: language
refOrder: 2
---

Repeat a block of code using <code>for</code>.

<pre class="jumbo">
for <span data-dfnup="range">[1..5]</span>
  dot blue
<span data-dfn="indent">  </span>fd 25

<span data-dfn="not indented, not repeated">rt 270, 50</span>
</pre>

A range with two dots counts from the first to the last number.
(Using three dots skips the last number.)

The range can be a list of values.

<pre class="jumbo">for <span data-dfnup="variable">x</span> in <span data-dfnup="range">[5,10,20]</span>
  dot red, <span data-dfn="changes each time">x</span>
  fd 25
</pre>

