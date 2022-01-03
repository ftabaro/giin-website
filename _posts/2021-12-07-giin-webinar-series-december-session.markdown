---
layout: post
title:  "GiiN Webinar series - December session"
date:   2021-12-07 16:06:19 +0100
categories: webinar
---

{% assign speakers = site.data.webinars.2021.12.speakers %}
{% assign chairs = site.data.webinars.2021.12.chairs %}

<h1 class="h1 font-weight-light">
    Welcome to the {{ page.date | date: "%B" }} session!
</h1>

This month we are delighted to host two exciting talks:

<ul>
    {% for speaker in speakers %}
    <li>
        <strong>{{speaker.name}}</strong>, {{speaker.title}} ({{speaker.institute}}, {{speaker.nation}}): <i>{{speaker.talk}}</i>
    </li>
    {% endfor %}
</ul>

Chairs of the session will be:
<ul>
    {% for chair in chairs %}
    <li>
        {{chair.name}} - {{chair.institute}}
    </li>
    {% endfor %}
</ul>

{% for speaker in speakers %}
<h2 class="h2 font-weight-light mt-3">
About the speaker: {{speaker.name}}
</h2>

<div class="row">
    <div class="col">
        <div class="clearfix">
            <img alt="{{speaker.name}}" src="{{speaker.pic}}" class="col-lg-4 float-left"/>
            <p class="d-inline">
                {{speaker.bio}}
            </p>
        </div>
    </div>
</div>
{% endfor %}

{% include about-webinars.html %}