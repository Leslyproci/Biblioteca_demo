view: codigo_biblioteca {
  sql_table_name: `analitica-demos.Demo.codigo_biblioteca`
    ;;

  dimension: codigo_biblioteca {
    type: string
    sql: ${TABLE}.Codigo_biblioteca ;;
  }

  dimension: departamento {
    type: string
    sql: ${TABLE}.Departamento ;;
  }

  dimension: georeferencia {
    type: string
    sql: ${TABLE}.Georeferencia ;;
  }

  dimension: latitud {
    type: number
    sql: ${TABLE}.Latitud ;;
  }

  dimension: longitud {
    type: number
    sql: ${TABLE}.Longitud ;;
  }

  dimension: nombre {
    type: string
    sql: ${TABLE}.Nombre ;;
  }

  dimension: sede_registro {
    type: string
    sql: ${TABLE}.Sede_registro ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
