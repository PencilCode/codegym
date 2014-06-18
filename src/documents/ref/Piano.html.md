---
title: Piano
description: an instrumental turtle
layout: reference
tags: ['music']
section: sound
---

A Piano is an object that shows notes while playing them.

To make a Piano, use `p = new Piano`. (Here `p` can be any variable
name we choose).  A Piano can be moved like any other visual element.

To play the piano, use `p.play`:

<pre class="jumbo">
p = new Piano
p.lt 90
p.play "C C C3/4 D/4 E"
</pre>

<h3>Multiple Pianos</h3>

Any number of Pianos can be created, and they
can play songs simultaneously.


<pre class="jumbo">
ryb = """
  C C C3/4 D/4 E
  E3/4 D/4 E3/4 F/4 G2
"""
p1 = new Piano
p1.fd 100
p2 = new Piano
p2.bk 100
p1.play ryb
p2.play "Z4" + ryb
</pre>

<h3>Piano Options</h3>

A piano can be created with any number of keys:

<pre class="jumbo" data-after="p.lt 75">
p = new Piano 88
</pre>

More options can be specified by creating a Piano with an options object:

<pre class="jumbo">
p = new Piano
  width: 100
  height: 50
  keys: 36
  color: pink
<span data-dfn="indent options">  </span>lineWidth: 0.2
</pre>

