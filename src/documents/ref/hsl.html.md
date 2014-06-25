---
title: hsl
description: intuitive color codes
layout: reference
section: drawing
refOrder: 10
---

Although computer colors are made by combining
red, green, and blue ([`rgb`](rgb.html)) light,
it can be more intuitive to think of a color in terms
of its hue, saturation, and lightness.

<h3>The hsl function</h3>

The `hsl` function can be used to create a color
code that can be used with [`dot`](dot.html) or
[`pen`](pen.html) or [`fill`](fill.ntml):

<pre class="jumbo" data-after="dot c, 150">
c = hsl(<span data-dfnup="hue">270</span>, <span data-dfnup="saturation">.8</span>, <span data-dfn="lightness">.5</span>)
</pre>

The program above specifies a purplish color.  The "Hue"
is a number that ranges from 0 to 360, representing a color
on a color wheel (pictured below).  "Saturation" is a number from 0 to 1
giving the intensitity of the color, and "Lightness" is
a number from 0 to 1 which adjusts the color from blackness
to whiteness.

<center><img src="/images/colorwheel.png" style="border:1px solid gray;border-radius:128px"></center>

<h3>Partial transparency using hsla</h3>

The `hsla` function can be used to create a partially
transparent color code.  The fourth component "a", or "alpha"
value is an opacity level from 0.0 to 1.0 that determines how the
color is mixed with the colors "underneath".

So, for example, if a dot is drawn with alpha 0.5, it
is blended with the colors behind it:

<pre class="jumbo">
bk 100
dot red, 200
fd 200
dot blue, 200
bk 100
dot(
  hsla(135, 0.8, 0.5, <span data-dfn="alpha">0.5</span>),
  200)
</pre>

