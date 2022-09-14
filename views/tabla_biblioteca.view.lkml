view: tabla_biblioteca {
  sql_table_name: `Demo.tabla_biblioteca`
    ;;

  dimension: anio_registro_usuario_sistema {
    label: "Año de registro del usuario"
    type: number
    sql: ${TABLE}.Anio_registro_usuario_sistema ;;
  }

  dimension: codigo_biblioteca {
    label: "Codigo biblioteca"
    type: string
    sql: ${TABLE}.Codigo_biblioteca ;;
  }

  dimension: codigo_de_preferencia_de_aviso {
    label: "Codigo de preferencia de aviso"
    type: string
    sql: ${TABLE}.Codigo_de_preferencia_de_aviso ;;
  }

  dimension: codigo_de_tipo_de_usuario {
    label: "Codigo de tipo de usuario"
    type: number
    sql:

    CASE WHEN {{_user_attributes["codigo_tipo_usurio"]}} = 1

    THEN ${TABLE}.Codigo_de_tipo_de_usuario

    ELSE

    -1

    END ;;



    html:

    {% if _user_attributes["codigo_tipo_usurio"] == 1 %}

          {{ rendered_value }}

      {% else %}

       Sin permiso

      {% endif %}  ;;

  }

  dimension: definicion_de_tipo_de__usuario {
    label: "Definicion de tipo de usuario"
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
    label: "Medio de preferencia del aviso"
    type: string
    sql: ${TABLE}.Medio_de_preferenica_de_aviso ;;
  }

  dimension: pagos_totales {
    label: "Numero de pagos"
    type: number
    sql: ${TABLE}.Pagos_totales ;;
  }

  dimension: proporciono_direccion_de_correo {
    label: "Direccion de correo"
    type: string
    sql: ${TABLE}.Proporciono_direccion_de_correo ;;
  }

  dimension: rango_edad {
    label: "Rango de edad"
    type: string
    sql: ${TABLE}.Rango_edad ;;
  }

  dimension: renovaciones_totales {
    label: "Renovaciones"
    type: number
    sql: ${TABLE}.Renovaciones_totales ;;
  }

  dimension: vive_en_la_ciudad {
    label: "Vive en la ciudad"
    type: string
    sql: ${TABLE}.vive_en_la_ciudad ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
  measure: total_pago {
    description: "total de pago"
    type: number
    sql: sum(${pagos_totales}) ;;
  }
}
