---
title: chords
description: making harmonies
layout: reference
section: abc
refOrder: 7
---

A musical chord is a collection of two or more notes that are played
together.

Write a chord by combining notes inside `[` `]` braces:

<pre class="jumbo">
play """
  [FGB][FGA]
  [DGB][EGC']
"""
</pre>

The most common form of chord is a <em>triad</em> with three notes,
but there is no limit on the number of notes that can
be played together in a chord.

<h3>Chord Durations</h3>

Hold a chord for a shorter or longer number of beats by putting
a number or fraction after the chord:

<pre class="jumbo">
play """
  [CF_B]/2
  [EGC']2
"""
</pre>

<h3>Mixed Durations</h3>

If you wish to hold some notes in the chord longer than other
notes, durations can be assigned to individual notes within
a chord.

<pre class="jumbo">
play """[<span data-dfnup="held 2 beats">E2</span><span data-dfn="half a beat">F/2</span>]
  [GB/2]
  D[EGC']
"""
</pre>


