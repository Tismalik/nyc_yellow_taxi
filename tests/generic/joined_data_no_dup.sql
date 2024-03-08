{% test joined_data_no_dup(model, column_name, column_name2) %}

select * from {{ model }}
where {{ column_name }} != {{ column_name2 }}

{% endtest %}
