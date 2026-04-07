{% set flag = 4 %}

Select * from {{ref('bronze_bookings')}}
{% if flag ==1 %}
    where NIGHTS_BOOKED > 1
{% else %}
    where NIGHTS_BOOKED = 1
{% endif %}