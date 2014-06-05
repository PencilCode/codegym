---
title: sharps
description: raising a note
layout: reference
tags: ['music']
---

Notes that are raised by half a step (one semitone) are
considered "sharp".

Indicate a sharp note by placing a <code>^</code> (shift-6) before the
note name.

<pre class="jumbo">
play "F <span data-dfnup="makes subsequent Fs sharp">^</span>F G <span data-dfn="still sharp">F</span>"
</pre>

Once a note is indicated as sharp, that note will continue
to be played sharp until the end of the measure or line.

Indicate a natural (unsharp) note by using <code>=</code>
before the note name:

<pre class="jumbo">
play "<span data-dfnup="sharp">^</span>C G <span data-dfn="still sharp">C</span>&nbsp;<span data-dfnup="natural">=</span>C G <span data-dfn="still natural">C</span> B,"
</pre>
