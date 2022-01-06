---
layout: default
title: Archive
---
{% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}

<div class="container mt-5">
<h2 class="h2 font-weight-light">Webinars</h2>
<div class="archive">
  {% for post in site.posts %} 
  {% assign currDate = post.date | date: "%Y" %}
  {% capture postdate %}{{ post.date | date: '%s'}}{% endcapture %}
  {% if postdate < nowunix %}
  <div class="archive-item">
    <div class="post-date archive-date fs-4">
      {{ post.date | date: "%B %d, %Y" }}
    </div>
    <h3><a href="{{ post.url | relative_url }}" class="archive-title fs-4">
      {{ post.title }}</a>
    </h3>
  </div>
  {% endif %}
  {% endfor %}
</div>
</div>