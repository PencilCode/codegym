---
title: await
description: blocks execution of a function
layout: reference
section: language
refOrder: 8
---

Put execution of a function on hold using `await`.

`await` pauses execution until an asynchronous
process completes.  Execution is unblocked when
the `defer` function is triggered.  `await` 
`defer` are used together by passing `defer()`
to a function that later triggers a callback.

<h3>Using await with done</h3>

For example, use `await` with `done` to put
the program on hold until all animation so far
is finished:

<pre class="jumbo">
fd 100
write 'before', getxy()
await done defer()
write 'after', getxy()
</pre>

In this program, execution is put on hold until
the animation is completed: then when the `defer`
callback is triggered, the program proceeds.

<h3>Using await with read</h3>

Callbacks that receive an argument can be
used to assign a value with `defer`.  For
example, `read` normally calls a callback
with the value entered by the user:

<pre class="jumbo">
read 'your name?', (x) ->
  write 'hello', x
</pre>

With `await`, the same program can be written as:

<pre class="jumbo">
await read 'your name?', defer x
write 'hello', x
</pre>

`await` is particularly useful inside looping
programs.
