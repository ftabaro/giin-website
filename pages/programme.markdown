---
layout: page
title: Webinar series
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
          pic: /assets/speakers/2021/11/davoli-resized.png
        - name: Ylli Doksani
          title: PhD
          institute: IFOM
          nation: Italy
          pic: /assets/speakers/2021/11/doksani-resized.png
    - date: 14-12-2021
      postdate: 07-12-2021
      speakers:
        - name: Gaëlle Legube
          title: PhD
          institute: CBI
          nation: France
          pic: /assets/speakers/2021/12/legube-resized.jpg
        - name: Giulia Guarguaglini
          title: PhD
          institute: University of Rome Sapienza
          nation: Italy
          pic: /assets/speakers/2021/12/guarguaglini-resized.png
    - date: 11-01-2022
      postdate: 05-01-2022
      speakers:
        - name: Karlene Chimprich
          title: PhD
          institute: Stanford
          nation: USA
          pic: /assets/speakers/2022/01/cimprich-resized.jpg
        - name: Dana Branzei
          title: PhD
          institute: IFOM
          nation: Italy
          pic: /assets/speakers/2022/01/branzei-resized.jpg
    - date: 08-02-2022
      postdate: 03-02-2022
      speakers:
        - name: Vincenzo Costanzo
          title: MD, PhD
          institute: IFOM
          nation: Italy
          pic: /assets/speakers/2022/02/costanzo-resized.png
        - name: Luca Fava
          title: PhD
          institute: University of Trento
          nation: Italy
          pic: /assets/speakers/2022/02/fava-resized.jpg
    - date: 08-03-2022
      postdate: 01-03-2022
      speakers:
        - name: 
            - Valentina Sladky
            - Andrew Holland
          title:
            - PhD
            - PhD
          institute: John Hopkins
          nation: USA
          pic: /assets/speakers/2022/03/sladky-resized.png
        - name: Renata Basto
          title: PhD
          institute: Curie
          nation: France
          pic: /assets/speakers/2022/03/basto-resized.jpg
---

{% capture nowunix %}{{'now' | date: '%s'}}{% endcapture %}

{% for webinar in page.webinars %}
    {% capture webinartime %}
      {% if webinar.postdate %}
          {{ webinar.postdate | date: '%s'}}
      {% else %}
          {{ webinar.date | date: '%s'}}
      {% endif %}
    {% endcapture %}
<h3 class="h3 font-weight-light mt-4">
    {{ webinar.date | date: "%d %B %Y" }} 
    
    {% capture posturl %}
      {% if webinartime < nowunix %}
        {% if webinar.postdate %}
          /{{ webinar.postdate | date: '%Y' }}/{{ webinar.postdate | date: '%m' }}/{{ webinar.postdate | date: '%d' }}/giin-webinar-series-{{ webinar.postdate | date: '%B' | downcase }}-session/
        {% else %}
          /{{ webinar.date | date: '%Y' }}/{{ webinar.date | date: '%m' }}/{{ webinar.date | date: '%d' }}/giin-webinar-series-{{ webinar.date | date: '%B' | downcase }}-session/
        {% endif %}
      {% endif %}
    {% endcapture %}
    <a href="{{posturl}}" class="btn btn-sm btn-primary float-right">Read more...</a>
</h3>
<div class="row">
    {% for speaker in webinar.speakers %}
    <div class="col-lg-6">
      <div class="card text-center" style="width: 25rem; margin-bottom: 1rem;">
          <img alt="" src="{{speaker.pic}}" class="card-img-top" />
          <div class="card-body">
          <h2 class="card-title font-weight-light">
            {% if speaker.name.first %}
              {% assign l = speaker.name.size | minus: 1 %}
              {% assign range = (0..l) %}
              {% capture allspeakers %}
                {% for i in range %}
                  {% if i == l %}
                    {{speaker.name | slice: i}}, {{speaker.title | slice: i}}
                  {% else %}
                    {{speaker.name | slice: i}}, {{speaker.title | slice:   i}} and
                  {%endif%}
                {% endfor %}
              {%endcapture%}
              {{allspeakers}}
            {% else %}
              {{speaker.name}}, {{speaker.title}}|
            {% endif %}
          </h2>
          <p class="card-text"><i>{{speaker.institute}}, {{speaker.nation}}</i></p>
        </div>
    </div>
</div>
    {% endfor %}
</div>
<hr>
{% endfor %}
