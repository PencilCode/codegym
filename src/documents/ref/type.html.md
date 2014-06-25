---
title: type
description: types monospace words onto the page
layout: reference
section: text
refOrder: 2
---

Type takes one argument: the text you want to write.
Wrap it up in quotes. Your text will show up in a monospace font,
with every letter the same width. This is useful for drawing letter
art, indenting pre, and anything else where you want to line
text up neatly.

<pre class="jumbo" data-before='write "happy cat!"'>type <span data-dfn="text">"<(^.^)>"</span></pre>

If your text takes up more than one line, you can use a set of 3
quotes to include line breaks inside your text.

<pre default class="jumbo">
type """
    o    __________
   /\\_  _|        |
   \\__`[__________|
   ][ \\, ][    ][
"""
</pre>

One important trick when making letter art with punctuation:
The backslash character `\` is special, and if you want to include
it in a string, you must type it twice: `"\\"`.

<h3>Backslashes and Unicode</h3>

Backslash is also used to write codes for special characters that
are not easy to type.  For example, `\u2602` stands for the
special "umbrella" character.

<pre default class="jumbo">
type """
  when it's \u2601
  pack an \u2602
  and \u2600 will come
"""
</pre>

The numbers used after `\u` are called
<a href="http://www.unicode.org/charts/">Unicode</a> codes.
Every letter and character that can be written on a
computer has a unicode number.
