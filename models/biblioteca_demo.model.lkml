connection: "biblioteca"

# include all the views
include: "/views/**/*.view"

datagroup: biblioteca_demo_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: biblioteca_demo_default_datagroup


explore: tabla_biblioteca {
  access_filter: {
    field: definicion_de_tipo_de__usuario
    user_attribute: tipo_usuario
  }
}
