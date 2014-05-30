---
title: for
description: repeats a block of code
layout: reference
---

Repeat a block of code using <code>for</code>.

<pre class="jumbo">for <span data-dfn="range">[1..5]</span><br>
  dot blue
<span data-dfn="indent">  </span>fd 30
</pre>

A range with two dots counts from the first to the last number.
(Using three dots skips the last number.)

The range can be a list of values.

<pre class="jumbo">for <span data-dfn="variable">x</span> in <span data-dfn="range">[5,10,20]</span><br>
  dot red, <span data-dfn="changes each time">x</span>
  fd 30
</pre>

