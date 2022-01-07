---
title: Home page
layout: default
permalink: /
---

<div class="container mb-5">
    <div class="text-center mt-5">
        <img src="/assets/banner.png" class="img-fluid"/>
    </div>
    <div class="jumbotron">
        <h1 class="h1 font-weight-light">
            Welcome!
        </h1>
        <p class="mission-statement">
            We are a community of researchers interested in molecular mechanisms of genomic information maintenance.<br><br>
            Our mission is to discuss the latest findings, promote mobility, collaborations and opportunities for all colleagues working in our field.<br><br>
            We organize a monthly webinar hosting two excellent researchers in the field of Genome Integrity.<br>
            <a href="/about/">Read more...</a>
        </p>
    </div>
    <div class="row mt-5">
        <div class="col-lg-12">
        {% for post in site.posts limit:1 %}
        {% if post.talkdate %}
        {% assign talkdate = post.talkdate %}
        {% else %}
        {% assign talkdate = post.date %}
        {% endif %}
        <p>Next webinar will be held virtually on {{talkdate | date: "%B"}}, {{talkdate | date: "%d"}}.</p>
        </div>
    </div>
    <div class="row mt-0">
        {% include talk-titles.html speakers=post.speakers %}
    </div>
    <p><a href="{{ post.url | relative_url }}">
      Read more...  
    </a></p>        
    {%endfor%}
    <div class="text-center mt-5">
        <h2 class="h2">
            <a href="/programme" style="padding: 0.4em">
                <i class="fas fa-calendar-alt"></i> 
                Checkout our programme
            </a>
        </h2>    
    </div>
</div>