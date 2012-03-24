---
title: Blogs
---

Articles
========

Here are the articles which I am writing as I explore this area.  They are newest first, and work down.

You're best starting at the bottom and working your way up.  Each article has a branch which contains the code written.

<ul>
{% for post in site.posts %}
<li><a href='./{{post.url}}'>{{post.title}}</a></li>
{% endfor %}
</ul>
