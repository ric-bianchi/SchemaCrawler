SELECT
  ROUTINE_SCHEMA AS ROUTINE_CATALOG,
  NULL AS ROUTINE_SCHEMA,
  ROUTINE_NAME,
  SPECIFIC_NAME,
  ROUTINE_BODY,
  ROUTINE_DEFINITION
FROM
  INFORMATION_SCHEMA.ROUTINES
ORDER BY
  ROUTINE_CATALOG,
  ROUTINE_SCHEMA,
  ROUTINE_NAME,
  SPECIFIC_NAME