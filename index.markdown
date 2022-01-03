---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

title: Home page
layout: default
---
<div class="container">

<div class="text-center mt-5">
    <img src="/assets/banner.png" class="img-fluid"/>
</div>


<h1 class="h1 font-weight-light">
    Welcome!
</h1>

<p class="p-0">
    We are a community of researchers interested in molecular mechanisms of genomic information maintenance. <a href="/about/">Read more</a>.
</p>

<h2 class="h2 font-weight-light">Posts</h2>

<div class="archive">
  {% for post in site.posts %} {% assign currDate = post.date | date: "%Y" %}
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

<p> 
    subscribe <a href="/feed.xml">via RSS</a>
</p>
</div>