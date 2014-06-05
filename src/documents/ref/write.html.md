---
title: write
description: writes words onto the page
layout: reference
tags: ['write']
---

Write takes one argument: the text you want to write. Wrap it up in quotes.

<code class="jumbo">write <span data-dfn="text">"An awesome joke:"</span></code>

If your text takes up more than one line, you can use a set of 3 quotes to include line breaks inside your text.
<code default class="jumbo">write """What's black and 
  white and red all over?"""</code>

You can use HTML tags to decorate your writing.

<code class="jumbo">write "<span data-dfn="start bold">&lt;b&gt;</span>A sunburned zebra!<span data-dfn="end bold">&lt;/b&gt;</span>"</code>

<code class="jumbo">write """<span data-dfn="start color">&lt;font color="red"&gt;</span>
ouch!
<span data-dfn="end color">&lt;/font&gt;"""</span></code>