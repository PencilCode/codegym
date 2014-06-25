---
title: boolean
layout: reference
tags: ['function']
section: language
refOrder: 7
---

The page on [`if`](if.html) shows how [`if`](if.html) can be used to
do different things based on whether the number stored in a variable
has a certain value.  Sometimes, we want to store whether a particular
statement is [`true`](true.html) or [`false`](false.html), without using
numbers.

<pre class="jumbo">
hasKey = false

room = ->
  if hasKey
    do roomWithKey
  else
    do roomWithoutKey

roomWithKey = ->
  menu
    "unlock door": -> 
      write "the door is unlocked!"

roomWithoutKey = ->
  menu
    "unlock door": -> 
      write "you can't without the key!"
      do room
    "pick up key": -> 
      hasKey = true
      do room

do room
</pre>
