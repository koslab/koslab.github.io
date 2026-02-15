---
layout: default
title: Blog
---

<h1 class="text-4xl font-bold mb-8">Blog</h1>

<p class="text-xl text-gray-500 italic">Coming soon: Articles on Digital Sovereignty, Open Source, and AI.</p>

<div class="mt-12 space-y-8">
    {% for post in site.posts %}
    <article class="border-b pb-8">
        <h2 class="text-2xl font-bold">
            <a href="{{ post.url | relative_url }}" class="hover:text-brand">{{ post.title }}</a>
        </h2>
        <p class="text-sm text-gray-400 mb-4">{{ post.date | date: "%B %-d, %Y" }}</p>
        <p>{{ post.excerpt }}</p>
    </article>
    {% endfor %}
</div>
