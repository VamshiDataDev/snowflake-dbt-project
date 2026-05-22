{% set columns = ["NIGHTS_BOOKED", "BOOKING_ID", "BOOKING_AMOUNT"] %}

select
    {% for each_col in columns %}
        {{ each_col }} {% if not loop.last %},{% endif %}
    {% endfor %}
from {{ ref("bronze_bookings") }}
