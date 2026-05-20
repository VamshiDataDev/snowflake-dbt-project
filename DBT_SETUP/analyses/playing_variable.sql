-- select * from {{ ref("bronze_bookings") }} where nights_booked > 1
-- (OR)
-- using variable nights_booked = 1 using jinja function and use it in script show below
{% set nights_booked = 1 %}
select *
from {{ ref("bronze_bookings") }}
where nights_booked > {{ nights_booked }}
