---
title: remove
description: removes elements
layout: reference
section: animation
refOrder: 12
---

Elements can be removed after they are done animating
using `remove`.

<pre class="jumbo">
a = new Turtle red
a.fd 100
remove a
</pre>

After an element is removed, it is no longer present in
the document.  This differs from `ht`: when an element is
hidden, it is still present but not
visible.

Note that `remove` participates in the animation queue.
It waits for element animation to complete
before removing the element.
