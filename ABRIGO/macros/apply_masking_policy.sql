{% macro apply_masking_policy() %}
  {% do run_query(" CALL RAW_DATABASE.RAW_SH.APPLY_POLICY();") %}
{% endmacro %}
