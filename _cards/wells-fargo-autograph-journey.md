---
card_name: Wells Fargo Autograph Journey
card_brand: Wells Fargo
card_summary: A good mid-range credit card.
annual_fee: $95
card_type: Visa
intro_apr: 0%
intro_offer: 60,000 bonus points when you spend $4,000 in the first 3 months.
ongoing_apr: 21.24%-29.99%
apr_variable: true
approx_current_sub_value: $600
issuing_bank: Wells Fargo
url: https://creditcards.wellsfargo.com/autograph-journey-visa-credit-card
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
travel_types: Includes timeshare, vehicle/auto rental, cruise lines, travel agencies, discount travel sites, campgrounds. Flights and hotels have a higher 4X and 5X reward, respectively.
reward_air: 4X
reward_hotel: 5X
reward_cruise: 3X
reward_entertainment: 1X
reward_streaming: 1X
other_credits_max_value: $0
---

<h1>{{ page.card_name }}</h1>

The Wells Fargo Autograph Journey is a compelling credit card. It is most similar to the [Wells Fargo Autograph](/_cards/wells-fargo-autograph), which has no annual fee, a lower reward rate for flights and hotels, and 3X in streaming.

The Autograph Journey is a good "catch-all" card for many people. The flexibility of being able to book directly with any airline or hotel (no need for a travel portal) is valuable.

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
