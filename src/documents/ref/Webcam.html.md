---
title: Webcam
description: for reflecting the webcam
layout: reference
section: animation
refOrder: 5
---

The Webcam class is a type of [`Sprite`](Sprite.html) that
shows a video image from the computer's webcam, if the user
gives permission.

To make a Webcam, use `w = new Webcam`. (Here `w` can be any variable
name we choose).

A webcam can be rotated and moved just like any other Sprite.

<pre class="jumbo">
w = new Webcam
w.rt 360
w.fd 100
</pre>

To stop the webcam, use `do w.cut`.

<pre class="jumbo">
w = new Webcam
button 'stop', ->
  do w.cut
</pre>
