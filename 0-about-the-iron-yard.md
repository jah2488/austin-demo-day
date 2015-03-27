---
layout: page
id: About
title: About
permalink: /about/
---

# About The Iron Yard

The Iron Yard teaches intensive, 12-week courses that prepare you for a career as a professional junior-level programmer or designer. Beyond that, The Iron Yard exists to create exceptional growth and mentorship for our students. We welcome people from all walks of life pursuing their dream of launching a career in technology. Here in Austin, we offer courses in Front End Engineering, Rails Engineering and User Interface Design. These programs go far beyond tactical skills and teach you to think like a software engineer or designer. Our processes teach you to learn how to learn so you remain highly valuable for the rest of your career.

## Austin Staff
<ul class="container js-masonry"
  data-masonry-options='{ "itemSelector": ".item" }'>
{% assign show = (site.pages | where: "type" , "staff" |  %}
{% for page in show %}
 <li class="item">
 <div class="student-info">
        <img class="student-photo" src="{{site.url}}/images/staff/{{page.id}}.jpg" alt="photo for {{page.staffname}}">
      <h4 class="name">{{ page.staffname }},<br>
      {{ page.staffposition }}</h4>
      <p class="bio">{{ page.bio }}</p>
    </div>
    </li>
{% endfor %}
</ul>




<script>
var container = document.querySelector('.container');
var msnry = new Masonry( container, {
  itemSelector: '.item',
  columnWidth: container.querySelector('.grid-sizer')
});
</script>