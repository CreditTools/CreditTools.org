---
title: "Travel Portal"
parent: Best Rewards By Category
default_visible_columns:
  - card_name
  - reward_travel_portal
  - approx_cpp
  - card_summary
---

<h1>Best {{ page.title }} Reward Credit Cards</h1>

Several credit cards offer a higher reward rate when booked through their travel portal. Always make sure to check the prices outside of the travel portal to confirm that a lower price is not available elsewhere. You can often find a better deal outside of the travel portal.

## All {{ page.title }} Reward Credit Cards

<!-- Load the necessary styles and scripts for DataTables -->
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.js"></script>

<!-- DataTables Initialization -->
<script>
$(document).ready( function () {
    $('#{{ page.title }}_cards_table').DataTable({
      ordering: true
    });
} );
</script>

<table id="{{ page.title }}_cards_table">
  <thead>
    <tr>
      {% for column in page.default_visible_columns %}
        <th>{{ site.data.credit_card_template.fields[column].title }}</th>
      {% endfor %}
    </tr>
  </thead>
  <tbody>
    {% for card in site.cards %}
      {% if card.reward_travel_portal != '0%' and card.reward_travel_portal != '0X' and card.reward_travel_portal != null %}
        <tr>
          {% for column in page.default_visible_columns %}
            {% if column == 'card_name' %}
              <td><a href="{{ card.url }}">{{ card[column] }}</a></td>
            {% else %}
              <td>{{ card[column] }}</td>
            {% endif %}
          {% endfor %}
        </tr>
      {% endif %}
    {% endfor %}
  </tbody>
</table>
