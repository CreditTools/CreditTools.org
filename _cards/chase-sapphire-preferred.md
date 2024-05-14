---
layout: card
card_name: Chase Sapphire Preferred
card_brand: Chase
card_summary: The CSP is great for restaurants and okay for travel.
annual_fee: $95
card_type: Visa
apr: 21.49%-28.49%
apr_variable: True
approx_current_sub_value: $750
issuing_bank: Chase
url: https://creditcards.chase.com/rewards-credit-cards/sapphire/preferred
foreign_transaction_fee: 0%
car_rental_cdw_type: Primary
point_or_cb_reward: point
approx_cpp: 2
approx_cpp_reasoning: It is relatively easy to get 2 cents per point with transfer partners.
reward_base: 1.1X
reward_mobilepay: 1.1X
reward_gas: 2.1X
reward_ev: 2.1X
reward_grocery: 3.1X
reward_clubstore: 1.1X
reward_dining: 3.1X
reward_drugstore: 1.1X
reward_bills: 1.1X
reward_travel: 2.1X
travel_types: Broad travel category.
reward_air: 2.1X
reward_hotel: 2.1X
reward_cruise: 2.1X
reward_entertainment: 1.1X
reward_streaming: 3.1X
reward_travel_portal: 5.1X
other_credits_max_value: $48
---

<h1>{{ page.card_name }}</h1>

The grocery benefit must be used online and excludes Target, Walmart, and wholesale clubs.

Chase provides a 10% points bonus on the prior card anniversary year's spend. If you spent $1000 in the Case Travel portal and originally earned 5000 points, then you would additionally earn 100 points on your card anniversary for that purchase. We calculate this as an added 0.1X for each reward multiplier.

The Chase Sapphire Preferred comes with a $50 annual Chase Travel hotel credit. We value this at $48 due to the lost opportunity cost of rewards for this purchase.

Cardholders are not granted access to the Chase Sapphire Lounge network.

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
