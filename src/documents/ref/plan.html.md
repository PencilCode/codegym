---
title: plan
description: queues a function
layout: reference
section: animation
refOrder: 11
---

Every element has an animation queue.

When a program calls element animation methods
such as [`fd`](fd.html) or [`rt`](rt.html)
or [`dot`](dot.html) or [`play`](play.html),
the animation does not execute
immediately.  Instead, the action is added to the
element's animation queue, and the animations are
executed over time, in sequence.

The `plan` method adds some code to be run as part
of the animation queue:

<pre class="jumbo">
fd 100
plan ->
  write 'moved'
bk 100
</pre>

The function passed to `plan` will run in sequence,
at its turn in the queue.
