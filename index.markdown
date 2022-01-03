---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Home page
layout: default
---

<div class="container text-center">
<img src="/assets/banner.png" />
</div>

<div class="container">
<p class="p-0">
    We are a community of researchers interested in molecular mechanisms of genomic information maintenance. <a href="/about/">Read more</a>.
</p>
<h2>Posts</h2>
  <div class="archive">
    {% for post in site.posts %} {% assign currDate = post.date | date: "%Y" %} {%
    if currDate != date %}
    <h3 class="archive-year">{{ currDate }}</h3>
    {% assign date = currDate %} {% endif %}
    <div class="archive-item">
      <div class="post-date archive-date fs-4">
        {{ post.date | date: "%B %d, %Y" }}
      </div>
      <h3><a href="{{ post.url | relative_url }}" class="archive-title fs-4">
        {{ post.title }}</a>
      </h3>
    </div>
    {% endfor %}
  </div>
</div>

<div class="container">
<p> subscribe <a href="/feed.xml">via RSS</a></p>
</div>