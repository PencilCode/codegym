---
title: play
description: plays notes
layout: reference
section: music
---

<h3>Play Options</h3>

<code>play</code> accepts an optional options object as a first argument:

<pre class="jumbo">play <span data-dfnup="options">{tempo: 200}</span>,
  "GEC"</pre>

Options include:
* <code>tempo</code> specifies a number of beats per minute.
  The normal tempo is 120 beats per minute.
* <code>wait</code> can be set to <code>false</code> to start
  a song and then proceed to the next animation without waiting for
  it to finish. This can be used, for example, to have a turtle
  play a song while it is simultaneously drawing; or to play two songs
  at once.
