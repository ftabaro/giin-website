---
layout: default
title: Programme
permalink: /programme
webinars:
    - date: 14-09-2021
      speakers:
        - name: Susan Gasser
          title: PhD
          institute: FMI
          nation: Switzerland
        - name: Fabrizio d’Adda di Fagagna
          title: PhD
          institute: IFOM
          nation: Italy
    - date: 12-10-2021
      speakers:
        - name: Dani Fachinetti
          title: PhD
          institute: Curie
          nation: France
        - name: Marina Mapelli
          title: PhD
          institute: IEO
          nation: Italy
    - date: 09-11-2021
      speakers:
        - name: Teresa Davoli
          title: PhD
          institute: NYU
          nation: USA
        - name: Ylli Doksani
          title: PhD
          institute: IFOM
          nation: Italy
    - date: 14-12-2021
      postdate: 07-12-2021
      speakers:
        - name: Gaëlle Legube
          title: PhD
          institute: CBI
          nation: France
        - name: Giulia Guarguaglini
          title: PhD
          institute: University of Rome Sapienza
          nation: Italy
    - date: 11-01-2022
      postdate: 05-01-2022
      speakers:
        - name: Karlene Chimprich
          title: PhD
          institute: Stanford
          nation: USA
        - name: Dana Branzei
          title: PhD
          institute: IFOM
          nation: Italy
    - date: 08-02-2022
      speakers:
        - name: Renata Basto
          title: PhD
          institute: Curie
          nation: France
        - name: Vincenzo Costanzo
          title: PhD
          institute: IFOM
          nation: Italy
    - date: 08-03-2022
      speakers:
        - name: Andrew Holland
          title: PhD
          institute: John Hopkins
          nation: USA
        - name: Marina Mapelli
          title: PhD
          institute: IEO
          nation: Italy
---

{% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}

<div class="container mt-4">
<h1 class="h1 font-weight-light">Our webinars</h1>
{% for webinar in page.webinars %}
    {% if webinar.postdate %}
        {% capture webinartime %}{{ webinar.postdate | date: '%s'}}{% endcapture %}
    {% else %}
        {% capture webinartime %}{{ webinar.date | date: '%s'}}{% endcapture %}
    {% endif %}
<h3 class="h3 font-weight-light mt-4">
    {{ webinar.date | date: "%d %B %Y" }} 
</h3>
<hr>
<div class="row">
    {% for speaker in webinar.speakers %}
    <div class="col-lg-6 text-center">
        <h2 class="h2 font-weight-light">{{speaker.name}}, {{speaker.title}}</h2>
        <p class="card-body"><i>{{speaker.institute}}, {{speaker.nation}}</i></p>
    </div>
    {% endfor %}
    {% if webinartime < nowunix %}
    {% if webinar.postdate %}
        {% capture posturl %}/{{ webinar.postdate | date: '%Y' }}/{{ webinar.postdate | date: '%m' }}/{{ webinar.postdate | date: '%d' }}/giin-webinar-series-{{ webinar.postdate | date: '%B' | downcase }}-session/{% endcapture %}
    {% else %}
        {% capture posturl %}/{{ webinar.date | date: '%Y' }}/{{ webinar.date | date: '%m' }}/{{ webinar.date | date: '%d' }}/giin-webinar-series-{{ webinar.date | date: '%B' | downcase }}-session/{% endcapture %}
    {% endif %}
    <div class="col-lg-12 mt-2">
        <div class="float-right">
        <a href="{{posturl}}" class="btn btn-sm btn-info">Read more</a>
        </div>
    </div>
    {% endif %}
</div>
{% endfor %}
</div>
