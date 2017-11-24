view: startables {
  sql_table_name: public.star$tables ;;

  dimension: schema_name {
    type: string
    sql: ${TABLE}.schema_name ;;
  }

  dimension: scope {
    type: string
    sql: ${TABLE}.scope ;;
  }

  dimension: table_name {
    type: string
    sql: ${TABLE}.table_name ;;
  }

  measure: count {
    type: count
    drill_fields: [table_name, schema_name]
  }
}
