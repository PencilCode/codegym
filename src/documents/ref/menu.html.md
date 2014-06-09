---
title: menu
description: create a menu of choices
layout: reference
tags: ['menu']
---

<b>menu</b> creates a menu with one or more options.

Each menu option must have the text that should be shown, and the function that should be run if that option is chosen.

All the menu options must be grouped together, which is done by indenting them all evenly (two spaces).

<code class="jumbo" data-before="firstFn = -> write 'you chose 1'
secondFn = -> write 'you chose 2'">menu 
  "first choice": firstFn
  <span data-dfn="option label">"second choice"</span>: <span data-dfn="function name">secondFn</a></code>
