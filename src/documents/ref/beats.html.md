---
title: beats
description: counting time
layout: reference
section: abc
---

The pulse of a melody defines its beats, and rhythm comes from
playing notes with a combination of durations and beats.

A note can be held for several beats by putting a number like `2` or `3`
after the pitch. It can be held for a fraction of a beat by putting
a fraction like `/2` or `2/3` after the pitch.

<h3>Combining Beats into a Rhythm</h3>

Consider the difference between these two examples.  
First, five notes, each one beat:

<pre class="jumbo">
play "<span data-dfn="one beat each">C</span> C C C C"
</pre>

And five notes with different beats:

<pre class="jumbo" default>
play "C <span data-dfn="one third beat">C/3</span> C/3 C/3 <span data-dfnup="two beats">C2</span>"
</pre>

<h3>Rests</h3>

Silent beats are called "rests" and they are represented by a `Z`
instead of a pitch.

<pre class="jumbo">
play "C C <span data-dfn="rest">Z</span> C"
</pre>

See more examples on the reference page for
<a href="rests.html">rests</a>.

<h3>Abbreviations</h3>

A fraction of a beat can be written `C1/3` or just `C/3` for short.
If the fraction is one-half, `C/2` can be further shortened to `C/`:

<pre class="jumbo">
play "C/F/FFC/C/C/_E/E/F"
</pre>

<h3>Triplet Notation</h3>

Playing three notes in two beats time is an interesting and distinctive
rhythmic pattern.  It can be written by giving each note a `2/3` beat,
but it can also be written by preceding the three notes by `(3`:

<pre class="jumbo">
play "C C <span data-dfn="a triplet">(3 C C C</span> C"
</pre>

