---
title: objects
description: sets of properties
layout: reference
tags: ['core']
---

An <em>object</em> is a compound value that collects together a
set of named <em>properties</em>.

<h3>Object Literals</h3>

Here is an example of an object.

<pre class="jumbo">
d = <span data-dfnup="object literal">{ day: 4, <span data-dfn="property name">month</span>: <span data-dfn="property value">"July"</span> }</span>&nbsp;

write d.month, d.day
</pre>

Object literals can be written as lists of properties surrounded by
curly braces `{` `}`.  Each property has a name, like `day`, followed
by a colon `:` and the property value.

Object properties are accessed later using a dot `.`: `d.month`
refers to the value of the property `month` of the `d` object.

<h3>Multiline Object Literals</h3>

In CoffeeScript, object literals can be written on multiple lines.

If indented evenly, the curly braces and commas may be omitted.
The following is equivalent to the code above:

<pre class="jumbo" data-after="write d.month, d.day">
d =
  day: 4
  month: "July"
</pre>

You often see multiline object literals as arguments
to functions such as `css`:

<pre class="jumbo" data-after="write &quot;hello&quot;">
$("body").css
  background: "pink"
  fontSize: "36px"
  padding: "50px"
</pre>

Here the `css` function is passed a single object argument, and
that object has properties `background`, `fontSize`, and `padding`.

<h3>New Constructed Objects</h3>

Special classes of objects can also be created using `new`:

<pre class="jumbo">
t = new Turtle
write t.length
t.fd 100
</pre>

Here `Turtle` is a predefined class: when you `new Turtle`, it
creates an object with many properties such as `length` (how
many turtles is just one) and `fd` (a function that moves
the turtle forward).

Function properties like `fd` are called <em>methods</em>.

