---
title: Blogs
---

Articles
========

Here are some articles which I wrote am writing as I explore this.

<ul>
{% for post in site.posts %}
<li><a href='./{{post.url}}'>{{post.title}}</a></li>
{% endfor %}
</ul>
