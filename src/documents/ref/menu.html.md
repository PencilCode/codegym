---
title: menu
description: create a menu of choices
layout: reference
tags: ['menu']
section: text
---

<b>menu</b> creates a menu with one or more options.

Each menu option must have the text that should be shown, and the function that should be run if that option is chosen.

All the menu options must be grouped together, which is done by indenting them all evenly (two spaces).

<code class="jumbo" data-before="act1 = ->&#13;  write 'you chose 1'&#13;&#13;act2 = ->&#13;  write 'you chose 2'">menu 
  "choice #1": act1
  <span data-dfn="option label">"choice #2"</span>: <span data-dfn="function name">act2</a></code>
