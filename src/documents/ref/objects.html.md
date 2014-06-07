---
title: objects
description: sets of properties
layout: reference
tags: ['core']
---

An <em>object</em> is a set of <em>properties</em>,
each with a name and a value.

<h3>Object Literals</h3>

Here is an example of an object.

<pre class="jumbo">
d = <span data-dfnup="object literal"><span data-note="curly brace">{</span> <span data-dfn="property">day: 4</span><span data-note="comma">,</span> <span data-dfn="name">month</span><span data-note="colon">:</span> <span data-dfn="value">"July"</span> <span data-note="curly brace">}</span></span>&nbsp;
</pre>

This object has two properties named `day` and `month`.

`day` has the value 4 and `month` has the value `"July"`

The punctuation is important.  Each property name
must be followed by a colon `:` and the property value,
and when listed on one line, the properties must be collected
using curly braces and separated with commas.

<h3>Accessing Object Properties</h3>

Object properties are accessed using a dot `.` after the variable name.
`d.month` refers to the value of the property `month` of the `d` object.

<pre class="jumbo" data-before="d = { day: 4, month: &quot;July&quot;}">
write d.month, d.day
</pre>

Object properties can be changed just like variables.

<pre class="jumbo" data-before="d = { day: 4, month: &quot;July&quot;}"
data-after="write d.month, d.day" data-after="write d.month, d.day">
d.day = 17
</pre>

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
to functions.  Here the `css` function uses the object
properties to change the style of text on the page:

<pre class="jumbo" data-after='write "Treasure Map"&#13;type """&#13;  -----&#13;       |&#13;      /&#13;     /&#13;      --- X&#13;"""'>
$("body").css
  background: "wheat"
  fontSize: "36px"
  textShadow: "0 0 5px"
</pre>

The object's properties `background`, `fontSize`,
and `textShadow` are standard [CSS property names](https://developer.mozilla.org/en-US/docs/Web/CSS/CSS_Properties_Reference).

<h3>New Constructed Objects</h3>

Special classes of objects can also be created using `new`:

<pre class="jumbo">
t = new Turtle
write t.length
t.fd 100
</pre>

`Turtle` is a predefined class: when you `new Turtle`, it
creates an object with many properties such as `length` (how
many turtles is just one) and `fd` (a function that moves
the turtle forward).

Function properties like `fd` are called <em>methods</em>.

