---
title: "No Foreign Transaction Fee Credit Cards"
parent: Card Types
default_visible_columns:
  - card_name
  - approx_current_sub_value
  - card_summary
---

<h1>{{ page.title }}</h1>

This page has an automatic table of all no foreign transaction fee credit cards.

## All {{ page.title }}

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
      {% if card.foreign_transaction_fee == '0%' %}
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
