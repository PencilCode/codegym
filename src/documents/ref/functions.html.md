---
title: functions
layout: reference
tags: ['function']
section: language
refOrder: 3
---

A function is a list of commands for the computer to execute.

There are many built-in functions like <code>dot</code> or <code>fd</code>,
but you can also write your own.

Use <code>-&gt;</code> to say that you are starting a function.
Use <code>=</code> to assign the function to a variable.
Indent the lines in the list of commands evenly.
Use <code>do</code> to run the function.

<code class="jumbo" data-before="pen violet">newFunction = ->
  fd 20
  rt 30
do newFunction
do newFunction
<span data-dfn="do it 3 times">do</span> newFunction</code>

Functions can have arguments -- here, arguments aren't fights! In Pencilcode
an argument is a piece of information that you give the function.

Arguments are placed in a list inside parentheses <code>()</code> before the <code>-></code>

If your function has arguments, you do not need to use <code>do</code> to run it.

<code class="jumbo">echo = (arg) ->
  write "you said: " + arg
echo "hello"
echo "goodbye"
</code>


