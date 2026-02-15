---
layout: default
title: Contact
---

<h1 class="text-4xl font-bold mb-8">Get in Touch</h1>

<div class="grid md:grid-cols-2 gap-12">
    <div>
        <p class="text-lg mb-6">Interested in working with us? Send us an inquiry and we'll get back to you soon.</p>
        
        <div class="bg-white p-6 rounded-lg shadow-sm border border-gray-100">
            <h3 class="font-bold mb-2">Company Information</h3>
            <p class="mb-1 text-gray-800">KOSLAB PLT</p>
            <p class="text-gray-500 font-mono text-sm">{{ site.registration_id }}</p>
        </div>
    </div>

    <div>
        <!-- A simple form placeholder -->
        <form action="#" class="space-y-4">
            <div>
                <label class="block text-sm font-medium text-gray-700">Name</label>
                <input type="text" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-brand focus:ring-brand sm:text-sm p-2 border">
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Email</label>
                <input type="email" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-brand focus:ring-brand sm:text-sm p-2 border">
            </div>
            <div>
                <label class="block text-sm font-medium text-gray-700">Message</label>
                <textarea rows="4" class="mt-1 block w-full rounded-md border-gray-300 shadow-sm focus:border-brand focus:ring-brand sm:text-sm p-2 border"></textarea>
            </div>
            <button type="button" class="w-full bg-brand text-white px-4 py-2 rounded-md font-semibold hover:bg-brand-dark transition">Send Message</button>
        </form>
    </div>
</div>
