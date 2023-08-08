{% macro apply_masking_policy() %}
  {% do run_query(" CALL DBT_DB.RAW1_SH.APPLY_POLICY();") %}
{% endmacro %}
