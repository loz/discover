---
title: Blogs
layout: default
---

I asked myself, what would it be like to do TDD if there were no frameworks in existance.  Or in otherwords, how would I write a TDD framework, using TDD principles, if no frameworks existed?

The goal being to learn about how I think about TDD/BDD, and then be able to apply those lessons when I use the frameworks that I do..

Articles
========

Here are the articles which I am writing as I explore this area.  They are newest first, and work down.

You're best starting at the bottom and working your way up.  Each article has a branch which contains the code written.

<ul>
{% for post in site.posts %}
<li><a href='./{{post.url}}'>{{post.title}}</a></li>
{% endfor %}
</ul>
