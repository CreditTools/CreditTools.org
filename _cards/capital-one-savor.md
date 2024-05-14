---
layout: card
card_name: Capital One Savor
card_brand: Capital One
card_summary: Best for massive dining and entertainment spenders.
annual_fee: $95
card_type: Mastercard
intro_offer: $300 when you spend $3,000 in the first 3 months.
ongoing_apr: 19.99%-29.99%
apr_variable: true
approx_current_sub_value: $300
issuing_bank: Capital One
url: https://www.capitalone.com/credit-cards/savor-dining-rewards/
foreign_transaction_fee: 0%
car_rental_cdw_type: Secondary
point_or_cb_reward: cb
approx_cpp: 1.7
approx_cpp_reasoning: Most people redeem at $0.01 for cash back. With a paired Venture card, you can transfer points for more value.
reward_base: 1%
reward_mobilepay: 1%
reward_gas: 1%
reward_ev: 1%
reward_grocery: 3%
reward_clubstore: 1%
reward_dining: 4%
reward_drugstore: 1%
reward_bills: 1%
reward_travel: 1%
travel_types:
reward_air: 1%
reward_hotel: 1%
reward_cruise: 1%
reward_travel_portal: 5%
reward_entertainment: 4%
reward_streaming: 3%
other_credits_max_value: $0
---

<h1>{{ page.card_name }}</h1>

The Capital One Savor is excellent for big spenders for dining and entertainment.

If you pair the Savor with any Capital One Venture card, then you gain access to transfer partners. This unlocks considerable additional value in our opinion.

If you do not spend more than $9,500 a year on dining and entertainment, then get the no annual fee [Capital One SavorOne](/_cards/capital-one-savorone) credit card instead.

The card also has 8% cash back on entertainment booked through Capital One Entertainment.

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
