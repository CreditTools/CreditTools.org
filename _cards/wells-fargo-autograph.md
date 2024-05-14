---
layout: card
card_name: Wells Fargo Autograph
card_brand: Wells Fargo
card_summary: 3X back in a broad number of categories.
annual_fee: $0
card_type: Visa
intro_apr: 0%
intro_offer: 20,000 bonus points when you spend $1,000 in the first 3 months. 0% APR for 12 months on purchases.
ongoing_apr: 20.24%-29.99%
apr_variable: true
approx_current_sub_value: $200
issuing_bank: Wells Fargo
url: https://creditcards.wellsfargo.com/autograph-visa-credit-card/
foreign_transaction_fee: 0%
car_rental_cdw_type: Secondary
point_or_cb_reward: point
approx_cpp: 1
approx_cpp_reasoning: Most people redeem at $0.01 for cash back. It is possible to get higher values with transfer partner combinations, or less.
reward_base: 1X
reward_mobilepay: 1X
reward_gas: 3X
reward_ev: 3X
reward_grocery: 1X
reward_clubstore: 1X
reward_dining: 3X
reward_drugstore: 1X
reward_bills: 1X
reward_travel: 3X
travel_types: Includes airline, hotel, cruise line and travel agency purchases
reward_air: 3X
reward_hotel: 3X
reward_cruise: 3X
reward_travel_portal: 3X
reward_entertainment: 1X
reward_streaming: 3X
other_credits_max_value: $0
---

<h1>{{ page.card_name }}</h1>

The Wells Fargo Autograph is a compelling credit card.

## Specs

<table>
  <thead>
    <tr>
      <th>Parameter</th>
      <th>Value</th>
    </tr>
  </thead>
  <tbody>
    {% for field in site.data.credit_card_template.fields %}
    {% assign field_key = field[0] %}
    {% assign field_details = field[1] %}
    {% if page[field_key] and field_key != 'layout' %}
    <tr>
      <td>{{ field_details.title }}</td>
      <td>{{ page[field_key] }}</td>
    </tr>
    {% endif %}
    {% endfor %}
  </tbody>
</table>
