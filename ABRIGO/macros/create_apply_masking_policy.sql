{% macro create_apply_masking_policy() %}
  {% do run_query(" CALL ABRIGO_DATABASE.TRANSFORM_LAYER.POLICY_PROCEDURE();") %}
{% endmacro %}
