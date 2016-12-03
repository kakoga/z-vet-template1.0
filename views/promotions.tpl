<div class="promotions">
  <img src="{{ page.main_image.getImage() }}" alt="kitten pic">
  {{ page.page_title }}
  {{ page.body_text }}
  <div class="promo-offers">
    {{ each page.special_promotions as promo sort by promo.sort asc }}
    <h3>{{promo.promo_title}}</h3>
    <p>{{promo.promo_description}}</p>
    {{ end-each }}
  </div>
</div>
