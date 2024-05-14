---
layout: card
card_name: Chase Sapphire Reserve
card_brand: Chase
card_summary: The CSR is best for frequent travelers willing to use a travel portal.
annual_fee: $550
card_type: Visa
apr: 21.24%-28.24%
apr_variable: True
approx_current_sub_value: $900
issuing_bank: Chase
url: https://creditcards.chase.com/rewards-credit-cards/sapphire/reserve
foreign_transaction_fee: 0%
car_rental_cdw_type: Primary
point_or_cb_reward: point
approx_cpp: 2
approx_cpp_reasoning: It is relatively easy to get 2 cents per point with transfer partners.
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
travel_types: Broad travel category.
reward_air: 3X
reward_hotel: 3X
reward_cruise: 3X
reward_entertainment: 1X
reward_streaming: 1X
reward_travel_portal: 10X
other_credits_max_value: $285
---

<h1>{{ page.card_name }}</h1>

The Chase Sapphire Reserve comes with a $300 annual Chase Travel credit. We value this at $285 due to the lost opportunity cost of rewards for this purchase. We value the Global Entry or TSA PreCheck credit at $0 because this is available on many other cards, but this may have a value of up to $25 a year for you.

When using the travel portal, you earn 10X back on hotels and car rentals and 5X back on flights. You can also earn 10X back on Chase Dining.

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
