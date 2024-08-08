{% macro learn_variable() %}

{% set your_name_jinja = "Paulo" %}
{{ log("Hello "~ your_name_jinja, info=True)}}
{{ log("Hello "~ var("user_name", "NO USERNAME IS SET!!")~ "!", info=True)}}
  
{% endmacro %}