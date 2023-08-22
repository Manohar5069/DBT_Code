{% macro create_apply_masking_policy() %}
  {% do run_query(" CALL ABRIGO.TRANFORMED_LAYER.POLICY_PROCEDURE();") %}
{% endmacro %}
