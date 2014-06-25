---
title: rgb
description: color components
layout: reference
section: drawing
refOrder: 9
---

Every color on a computer screen is made by mixing
red, green, and blue light.  Each of the three
colors can be adjusted to 256 intensities, from 0 to 255,
which makes a total of
<nobr>256 &times; 256 &times; 256 = 16777216</nobr>
possible colors.

<h3>The rgb function</h3>

The `rgb` function can be used to create a color
code that can be used with [`dot`](dot.html) or
[`pen`](pen.html) or [`fill`](fill.ntml):

<pre class="jumbo">
dot <span data-dfn="RGB color">rgb(176, 224, 230)</span>, <span data-dfn="diameter">150</span>
</pre>

The program above specifies a light blueish-greenish color that
includes red with intensity 176, green with intensity 224,
and blue with intensity 230.

<h3>Hex RGB color codes</h3>

Another way to write an RGB color is to use a CSS hex color code.
Convert each of the components to a two-digit base-16 number, and
then put them together in a string with a `#`:

<table class="table">
<tr><td></td><td>decimal</td><td>base-16</td></tr>
<tr><td>Red</td><td>176</td><td>b0</td></tr>
<tr><td>Green</td><td>224</td><td>e0</td></tr>
<tr><td>Blue</td><td>230</td><td>e6</td></tr>
<tr><td>total</td><td>`rgb(176,224,230)`</td><td>`#b0e0e6`</td></tr>
</table>

Adding light colors can sometimes be unintuitive: for example, red
and green make yellow. For an alternative to `rgb`, see
[`hsl`](hsl.html), which allows you to specify colors by hue.

<h3>Partial transparency using rgba</h3>

The `rgba` function can be used to create a partially
transparent color code.  The fourth component "a", or "alpha"
value is an opacity level from 0.0 to 1.0 that determines how the
color is mixed with the colors "underneath".

So, for example, if a green dot is drawn with alpha 0.5, it
is blended with the colors behind it:

<pre class="jumbo">
bk 100
dot red, 200
fd 200
dot blue, 200
bk 100
dot(
  rgba(0, 255, 0, <span data-dfn="alpha">0.5</span>),
  200)
</pre>

