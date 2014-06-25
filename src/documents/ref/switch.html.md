---
title: switch
description: picks an alternative
layout: reference
section: language
refOrder: 4
---

Although [`if`](if.html) is handy when there are two alternatives,
it can be more convenient to use `switch` when there are many choices.

`switch` is used together with `when` and (optionally) `else`.
Here is how `switch` works:

<pre class="jumbo" data-before="m = 29">
d = "w"
switch d
  when "m",
    write "Monday"
  when "t"
    write "Tuesday"
  when "w"
    write "Wednesday"
  when "th", "thu"
    write "Thursday"
  when "f"
    write "Friday"
  else
    write "Someday"
</pre>

The first alternative that matches the switched value is the one
that runs.

The indentation pattern in a `switch` is important: each `when`
must be indented, and they all should line up with each other.
