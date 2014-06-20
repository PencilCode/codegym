---
title: curves
description: using a turning radius
layout: reference
section: drawing
refOrder: 1
---

Curves can be drawn by giving a second argument to `rt` and `lt`.

The optional second argument for `rt` and `lt` is a <em>turning radius</em>.
The turn is made while tracing out part of a circle of that radius.

<code class="jumbo" data-before="pen olive">rt&nbsp;<span data-dfn="degrees">180</span>, <span data-dfn="radius">50</span></code>

If you provide a radius of 0, the turtle will just pivot in place
as with a normal turn.

A complete circle can be drawn by turning 360 degrees (or more).

<code class="jumbo" data-before="pen navy">lt&nbsp;360, 25</code>

To draw a circle, the turtle must start on the edge of the circle.
For example, if we wish to draw a circle around a dot, we must
move the circle to the edge of the dot to begin:

<pre class="jumbo">
dot yellow, <span data-dfnup="diameter">100</span>
fd 50
rt 90
pen violet, 3
rt 360, <span data-dfn="radius">50</span>
</pre>

