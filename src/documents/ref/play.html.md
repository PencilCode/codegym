---
title: play
description: plays notes
layout: reference
section: music
refOrder: 1
---

<code>play</code> will sound out a sequence of musical notes.

<code class="jumbo">play <span data-dfn="notes">"GEC"</span></code>

The notes are written in standard
<a target="_blank" href="http://www.lesession.co.uk/abc/abc_notation.htm">ABC notation</a>, which
uses the capital letter <code>"C"</code> for middle C.
In ABC notation, the C major scale can be written <code>"CDEFGABC'"</code>.

Read about <a href="pitch.html">pitch</a>, <a href="sharps.html">sharps</a>,
<a href="flats.html">flats</a>, <a href="beats.html">beats</a>,
<a href="rests.html">rests</a>, and <a href="chords.html">chords</a>
in ABC notation.

<h3>Quotes</h3>

Put all the notes inside quotes.
Quotation marks are used to separate the music written
in ABC notation from the code that plays the whole
piece of music.

<h3>Triple-Quotes</h3>

Triple quotes `"""` separate a large piece of music
from the rest of the code.

To play a longer song that fills up more than one line of code, use
triple-quotes.

<pre class="jumbo">play <span data-dfnup="triple-quote">"""</span>
  F ^G C' F'
  [=G'E] C' ^G
  =G' [^G'^D] C'
  ^G ^G' [=D'D]
  ^A F D'
  [^C=C'] ^G F
  ^G21/3 C' ^G F
  [=G^DG,][F,F^G]
  [^GFF,]2
<span data-dfn="matching triple-quote">"""</span></pre>

Triple quotes must match, just like regular quotes.  Put a triple
quote before the first line of music, and then put one
after the last line of music.

<h3>Options</h3>

<code>play</code> accepts an optional options object as a first argument:

<pre class="jumbo">play <span data-dfnup="options">{tempo: 200}</span>,
  "GEC"</pre>

Options include:
<ul>
<li> <code>tempo</code> specifies a number of beats per minute.
  The normal tempo is 120 beats per minute.</li>
<li> <code>wait</code> can be set to <code>false</code> to start
  a song and then proceed to the next animation without waiting for
  it to finish. This can be used to have a turtle
  play a song while it is simultaneously drawing, or to play two songs
  at once.</li>
</ul>
