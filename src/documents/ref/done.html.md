---
title: done
description: notifies when animtation is done
layout: reference
section: animation
refOrder: 11
---

The `done` method sets up some code to be called
when all queued animation is finished.

<pre class="jumbo">
fd 100
done ->
  write 'done'
bk 100
</pre>

`done` differs from [`plan`](plan.html) because it
does not execute in a fixed sequence: it triggers when
animation queues are completely empty.
