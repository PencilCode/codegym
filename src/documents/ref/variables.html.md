---
title: variables
description: names for values
layout: reference
section: language
refOrder: 4
---

A variable is a name for a remembered value.

You can create your own variables using `=`.  You need to
define your variables before you can ask the comptuer to
use them.

<h3>Storing a Number</h3>

Once you have defined a variable, you can refer to the value
by name anywhere in your program.

<pre class="jumbo">
x = 2.875
write x * x * x
</pre>

The single equals `=` assigns or changes a variable value.
Be sure to not try to use `=` to test equality, because it
will change your variable instead of testing it.  Tests
are done with `is`.

<h3>Variable Names and Strings</h3>

A variable can also remember any word or other sequence of
characters, called a <em>string</em>.

<pre class="jumbo">
song = "GEC"
write song
play song + song
</pre>

Here `song` is a name for the sequence of letters `"GEG"`.
Notice that `song` is unquoted and `"CEG"` is quoted.
If we wanted to literally write the word "song", then we would
have had to use quotes: `write "song"`.

A quoted value is called a <em>literal</em> value: it
should not be confused with a variable name, which is unquoted.

<h3>Built-in Variables</h3>

Built-in names such as as [`red`](colors.html),
[`pen`](pen.html), [`dot`](dot.html),
[`play`](play.html), [`Turtle`](Turtle.html),
and [`write`](write.html), are variables that
are predefined by the system before your program runs.

It is best to avoid using these names for your own
variables, because when you redefine these variables,
their built-in meaning may become unavailable in your program.

<h3>Other Types of Values</h3>

Variables can take on values that are more complex
than numbers and strings: they can also be [arrays](arrays.html),
[objects](objects.html), or [functions](functions.html).
