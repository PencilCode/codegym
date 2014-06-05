---
title: pitch
description: naming pitches with letters
layout: reference
tags: ['music']
---

<h3>Letter Notes</h3>

Since ancient Rome, letters have been used to represent musical pitches.
The modern convention is to use the letters A through G, centered around
the C major scale (so that A and B are higher than G):

<pre class="jumbo">
play "CDEFG<span data-dfn="higher than G">ABC'</span>"
</pre>

Here we are using "ABC" notation, which is a specific technical notation
for typing music on the internet.  It adopts the convention of
capital `C` for middle C, a frequency of about 261.62 Hertz.

<h3>Octave Marks</h3>

To represent notes that are an octave higher, the letter is followed
by a prime (typed as a single quote `'` next to the Enter key).  To
represent notes that are an octave lower, the letter is followed by a
subprime (typed as a comma `,`).

<pre class="jumbo">
play "C,, C, C C' C''"
</pre>

Very high and very low pitches can be represented
by repeating primes and subprimes.

<h3>Semitones</h3>

Pitches can be raised or lowered by a semitone.

On printed sheet music, a lowered "flat" is &#x266D; and a raised "sharp" is
&#x266F;, but in ABC notation, a flat is typed as
`_` (shift-minus) and a sharp is typed as `^` (shift-6).
When needed, a natural &#x266E; is represented as `=`.

<pre class="jumbo">
play "G <span data-dfnup="G sharp">^G</span>&nbsp;<span data-dfn="G flat">_G</span>&nbsp;<span data-dfnup="G natural">=G</span>"
</pre>

Sharps and flats are called <em>accidentals</em>, and they are written
before the letter pitch.  Accidentals stick with a pitch until the end
of the measure.
See the reference pages on <a href="sharps.html">sharps</a> and
<a href="flats.html">flats</a> for more examples.

<h3>Small letters</h3>

ABC notation follows the Helmoltz pitch notation convention of assigning
lowercase letters to pitches one octave higher than uppercase letters.
So the pitch <code>c</code> is the same as <code>C'</code>: one octave
higher than middle <code>C</code>.

<pre class="jumbo">
play "C c C c"
</pre>
