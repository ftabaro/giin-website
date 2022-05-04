---
title: Calendar
layout: page
permalink: /calendar
editions:
    - year: 2021
      selected: false
    - year: 2022
      selected: true
---
{% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}

<ul class="nav nav-tabs" id="myTab" role="tablist">
{% for edition in page.editions %}
  <li class="nav-item">
  <a class="nav-link {% if edition.selected %}active{% endif %}" id="edition{{edition.year}}-tab" data-toggle="tab" href="#edition{{edition.year}}" role="tab" aria-controls="edition{{edition.year}}" aria-selected="true">Edition {{edition.year}}</a>
  </li>
{% endfor %}
</ul>

<div class="tab-content" id="myTabContent">
{% for edition in page.editions %}
<div class="tab-pane fade {% if edition.selected %}show active{% endif %}" id="edition{{edition.year}}" role="tabpanel" aria-labelledby="edition{{edition.year}}-tab">
    {% assign current_edition = "edition" | append: edition.year %}
    {% assign webinars = site.data.calendars[current_edition] %}
    {% include programme.html webinars=webinars nowunix=nowunix %}
</div>
{% endfor %}
</div>