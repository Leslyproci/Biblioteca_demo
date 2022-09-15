connection: "biblioteca"

# include all the views
include: "/views/**/*.view"

datagroup: biblioteca_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: biblioteca_demo_default_datagroup


explore: tabla_biblioteca {
  join: codigo_biblioteca {
    type: left_outer
    sql: ${codigo_biblioteca.codigo_biblioteca}=${tabla_biblioteca.codigo_biblioteca} ;;
    relationship: many_to_one
  }
}
