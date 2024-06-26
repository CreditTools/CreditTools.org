---
title: "Wells Fargo"
parent: Brands
default_visible_columns:
  - card_name
  - annual_fee
  - approx_current_sub_value
  - card_summary
---

<h1>{{ page.title }}</h1>



## All {{ page.title }} Cards

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
      {% if card.card_brand == page.title %}
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

## Transfer Partners

Points from the Wells Fargo Autograph cards can be transferred to the following programs at these ratios:

| Program | Type | Transfer Radio |
| --- | --- |
| Aer Lingus | Airline | 1:1 |
| Air France | Airline | 1:1 |
| Avianca | Airline | 1:1 |
| Iberia | Airline | 1:1 |
| Choice Hotels | Hotel | 1:2 |
