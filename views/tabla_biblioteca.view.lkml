view: tabla_biblioteca {
  sql_table_name: `Demo.tabla_biblioteca`
    ;;

  dimension: anio_registro_usuario_sistema {
    type: number
    sql: ${TABLE}.Anio_registro_usuario_sistema ;;
  }

  dimension: codigo_biblioteca {
    type: string
    sql: ${TABLE}.Codigo_biblioteca ;;
  }

  dimension: codigo_de_preferencia_de_aviso {
    type: string
    sql: ${TABLE}.Codigo_de_preferencia_de_aviso ;;
  }

  dimension: codigo_de_tipo_de_usuario {
    type: number
    sql:

    CASE WHEN {{_user_attributes["codigo_tipo_usurio"]}} = 0

    THEN ${TABLE}.Codigo_de_tipo_de_usuario

    ELSE

    -1

    END ;;



    html:

    {% if _user_attributes["codigo_tipo_usurio"] == 0 %}

          {{ rendered_value }}

      {% else %}

       Sin permiso

      {% endif %}  ;;

  }

  dimension: definicion_de_tipo_de__usuario {
    type: string
    sql: ${TABLE}.Definicion_de_tipo_de__usuario ;;
  }

  dimension_group: fecha {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.Fecha ;;
  }

  dimension: medio_de_preferenica_de_aviso {
    type: string
    sql: ${TABLE}.Medio_de_preferenica_de_aviso ;;
  }

  dimension: pagos_totales {
    type: number
    sql: ${TABLE}.Pagos_totales ;;
  }

  dimension: proporciono_direccion_de_correo {
    type: string
    sql: ${TABLE}.Proporciono_direccion_de_correo ;;
  }

  dimension: rango_edad {
    type: string
    sql: ${TABLE}.Rango_edad ;;
  }

  dimension: renovaciones_totales {
    type: number
    sql: ${TABLE}.Renovaciones_totales ;;
  }

  dimension: sede_registro {
    type: string
    sql: ${TABLE}.Sede_registro ;;
  }

  dimension: vive_en_la_ciudad {
    type: string
    sql: ${TABLE}.vive_en_la_ciudad ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
