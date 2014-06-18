---
title: type
description: types monospace words onto the page
layout: reference
tags: ['type']
section: text
---

Type takes one argument: the text you want to write. Wrap it up in quotes. Your text will show up in a monospace font, with every letter the same width. This is useful for drawing ASCII art, indenting code, and anything else where you want to line text up neatly.

<code class="jumbo">type <span data-dfn="text">""</span></code>

If your text takes up more than one line, you can use a set of 3 quotes to include line breaks inside your text.
<code default class="jumbo">write """What's black and 
  white and red all over?"""</code>

You can use HTML tags to decorate your writing.

<code class="jumbo">write "<span data-dfn="start bold">&lt;b&gt;</span>A sunburned zebra!<span data-dfn="end bold">&lt;/b&gt;</span>"</code>

<code class="jumbo">write """<span data-dfn="start color">&lt;font color="red"&gt;</span>
ouch!
<span data-dfn="end color">&lt;/font&gt;"""</span></code>
