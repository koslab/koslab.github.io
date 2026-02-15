---
layout: default
title: Home
---

<div class="text-center py-20">
    <h1 class="text-5xl font-extrabold text-gray-900 mb-6">Building Digital Sovereignty</h1>
    <p class="text-xl text-gray-600 mb-10 max-w-2xl mx-auto">
        KOSLAB PLT empowers organizations with Open Source & AI solutions. We focus on building resilient, sovereign digital infrastructures.
    </p>
    <div class="flex justify-center space-x-4">
        <a href="/services" class="bg-brand text-white px-8 py-3 rounded-lg font-semibold hover:bg-brand-dark transition">Our Services</a>
        <a href="/contact" class="bg-gray-200 text-gray-800 px-8 py-3 rounded-lg font-semibold hover:bg-gray-300 transition">Get in touch</a>
    </div>
</div>

<div class="grid md:grid-cols-4 gap-8 my-16">
    {% for type in site.business_types %}
    <div class="p-6 bg-white rounded-xl shadow-sm border border-gray-100 hover:shadow-md transition">
        <h3 class="text-lg font-semibold capitalize">{{ type }}</h3>
    </div>
    {% endfor %}
</div>
