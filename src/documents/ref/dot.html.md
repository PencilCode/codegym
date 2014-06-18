---
title: dot
description: draws a dot under the turtle
layout: reference
tags: ['dot']
section: basic
---

<b>dot</b> can make a dot in any <a href="colors.html">color</a>.

<code class="jumbo" data-after="fd 20">dot <span data-dfn="color">red</span></code>

Dot accepts an optional second argument, which is the diameter of the
dot in pixels.  Remember that arguments need to be separated by
a comma.

<code default class="jumbo">dot <span data-dfn="color">fuchsia</span><span data-note="comma">,</span>&nbsp;<span data-dfn="size">100</span></code>

Coffeescript needs at least two words to run a function, but
you can use the word <code>do</code> to run a function without
arguments. <code>do dot</code> draws a default black dot.

<code class="jumbo" data-after="fd 20"><span data-dfn="just do it">do</span> dot</code>
