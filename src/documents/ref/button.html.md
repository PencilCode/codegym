---
title: button
description: srites a button
layout: reference
section: interaction
refOrder: 1
---

Add buttons for interactive controls using <code>button</code>.

<pre class="jumbo" 
     data-before="pen goldenrod, 10" 
     data-after="button &quot;Right&quot;, ->&#13;  rt 90">
button <span data-dfn="button label">"Forward"</span>, ->
  <span data-dfn="what to do">fd 50</span>
</pre>

`button` it takes two arguments:
first is the text for the button; second is
a function to call whenever the user clicks the button.
