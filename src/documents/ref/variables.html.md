---
title: variables
description: names for values
layout: reference
tags: ['core']
---

A variable is a name for a remembered value.

<h3>Storing a Number</h3>

Once you have defined a variable, you can refer to the value
by name anywhere in your program.

<pre class="jumbo">
x = 2.875
write x * x * x
</pre>

<h3>Variable Names versus Strings</h3>

A variable can also remember a string, which can be
any sequence of text characters.

<pre class="jumbo">
song = "GEC"
write song
play song + song
</pre>

Notice that the word "song" does not appear in the output,
but rather the letters "CEG".  If we wanted to write the word
"song", then we would have had to use quotes: `write "song"`
(try it).

When an unquoted word is used in a program, it is a
variable that represents the <em>name</em> of a value.
A quoted value is a type of <em>literal</em> value.

<h3>Array Literals</h3>

A variable can hold a more complex object than a string,
such as an array or a dictionary.

Here is an array.  Array literals are surrounded by
square brackets `[` `]`:

<pre class="jumbo">
s = [2,3,5,7,11,13]
write 'length', s.length
write 'item 5', s[5]
</pre>
