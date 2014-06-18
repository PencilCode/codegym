---
title: key
description: a set of sharps or flats
layout: reference
tags: ['music']
section: music
---

Key signatures are the fast way to indicate flat and sharp notes
for an entire melody.  Keys can be Major or Minor and exist for
every note in the 12 tone scale. 

<h3>Major Key Signature</h3>

In a multiline song, indicate key signatures with a <code>K:</code>
line, like this:

<pre class="jumbo">
play """
  K: <span data-dfnup="D flat major">Db</span> 
  DEFGABC'D'
"""
</pre>

In the key of D flat major, every D, E, G, A and B is flat.

Names of key signatures are written using `b` (lowercase b) for flat
and `#` (shift-3) for sharp.  This is different from the way
sharps and flats are written for individual notes in a melody.

<h3>Minor Key Signature</h3>

In the key of D sharp minor, every D, E, F, G, A, and C is sharp.

<pre class="jumbo">
play """
  K: <span data-dfnup="D sharp minor">D# minor</span> 
  DEFGABC'D'
"""
</pre>

Notice how the scale has a very different character when
written in a different key signature.

<h3>Extra Sharp for Harmonic Minor</h3>

Individual accidentals can be added to the key signature by
listing the notes with `^` for sharp and `_` for flat.

For example,
the harmonic D# minor key adds a double-C-sharp to the melodic
D# minor scale.  It can be written like this:

<pre class="jumbo">
play """
  K: <span data-dfnup="harmonic D sharp minor">D# minor ^^C</span> 
  DEFGABC'D'
"""
</pre>
