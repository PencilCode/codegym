---
title: flats
description: lowering a note
layout: reference
tags: ['music']
---

Notes that are lowered by half a step (one semitone) are
considered "flat".

Indicate a flat note by placing a <code>_</code> (shift-minus) before the
note name.

<pre class="jumbo">
play "E <span data-dfnup="makes subsequent Bs flat">_</span>B G <span data-dfn="still flat">B</span>"
</pre>

Once a note is indicated as flat, that note will continue
to be played flat until the end of the measure or line.

Indicate a natural (unflat) note by using <code>=</code>
before the note name:

<pre class="jumbo">
play "<span data-dfnup="flat">_</span>B <span data-dfnup="natural">=</span>B C' <span data-dfn="still natural">B</span>"
</pre>

Occassionally a double-flat is needed, and it can be written as `__`.

Read about <a href="key.html">key signatures</a> if you are writing
music with many flats.
