---
title: write
description: writes words onto the page
layout: reference
section: text
refOrder: 1
---

Write takes one argument: the text you want to write. Wrap it up in quotes.

<pre class="jumbo">write <span data-dfn="text">"An awesome joke:"</span></pre>

If your text takes up more than one line, you can use a set of 3 quotes to include line breaks inside your text.
<pre default class="jumbo">write """What's black and 
  white and red all over?"""</pre>

You can use <a href="html.html">HTML tags</a> to decorate your writing.

<pre class="jumbo">write "<span data-dfn="start bold">&lt;b&gt;</span>A sunburned zebra!<span data-dfn="end bold">&lt;/b&gt;</span>"</pre>

<pre class="jumbo">
write """
  <span data-dfn="start color">&lt;font color="red"&gt;</span>
  ouch!
  <span data-dfn="end color">&lt;/font&gt;</span>
"""</pre>

<a href="colors.html">Here is the list of all the colors you can use.</a>
