{% test assert_col1_gte_col2(model, column_name, col2) %}

SELECT
    *

FROM
    {{ model }}

WHERE
    {{ column_name }} < {{ col2 }}

{% endtest %}
