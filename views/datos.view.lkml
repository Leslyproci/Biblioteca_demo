view: datos {
  sql_table_name: `Demo.Datos`
    ;;

  dimension_group: _partitiondate {
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
    sql: ${TABLE}._PARTITIONDATE ;;
  }

  dimension_group: _partitiontime {
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
    sql: ${TABLE}._PARTITIONTIME ;;
  }

  dimension: categoria_pago {
    type: string
    sql: ${TABLE}.CATEGORIA_PAGO ;;
  }

  dimension: cod_banco {
    type: string
    sql: ${TABLE}.COD_BANCO ;;
  }

  dimension: cod_banco_banner {
    type: string
    sql: ${TABLE}.COD_BANCO_BANNER ;;
  }

  dimension: cod_catalogo_programa {
    type: string
    sql: ${TABLE}.COD_CATALOGO_PROGRAMA ;;
  }

  dimension: cod_categoria_pago {
    type: string
    sql: ${TABLE}.COD_CATEGORIA_PAGO ;;
  }

  dimension: cod_ciudad {
    type: string
    sql: ${TABLE}.COD_CIUDAD ;;
  }

  dimension: cod_cohorte {
    type: string
    sql: ${TABLE}.COD_COHORTE ;;
  }

  dimension: cod_concepto_financiero {
    type: string
    sql: ${TABLE}.COD_CONCEPTO_FINANCIERO ;;
  }

  dimension: cod_csu {
    type: string
    sql: ${TABLE}.COD_CSU ;;
  }

  dimension: cod_departamento {
    type: string
    sql: ${TABLE}.COD_DEPARTAMENTO ;;
  }

  dimension: cod_eps {
    type: string
    sql: ${TABLE}.COD_EPS ;;
  }

  dimension: cod_especialidad {
    type: string
    sql: ${TABLE}.COD_ESPECIALIDAD ;;
  }

  dimension: cod_estado_estudiante {
    type: string
    sql: ${TABLE}.COD_ESTADO_ESTUDIANTE ;;
  }

  dimension: cod_estadocivil {
    type: string
    sql: ${TABLE}.COD_ESTADOCIVIL ;;
  }

  dimension: cod_estudiante {
    type: string
    sql: ${TABLE}.COD_ESTUDIANTE ;;
  }

  dimension: cod_formapago {
    type: string
    sql: ${TABLE}.COD_FORMAPAGO ;;
  }

  dimension: cod_jornada {
    type: string
    sql: ${TABLE}.COD_JORNADA ;;
  }

  dimension: cod_nivel_academico {
    type: string
    sql: ${TABLE}.COD_NIVEL_ACADEMICO ;;
  }

  dimension: cod_pais {
    type: string
    sql: ${TABLE}.COD_PAIS ;;
  }

  dimension: cod_parteperiodo {
    type: string
    sql: ${TABLE}.COD_PARTEPERIODO ;;
  }

  dimension: cod_parteperiodo_periodo {
    type: string
    sql: ${TABLE}.COD_PARTEPERIODO_PERIODO ;;
  }

  dimension: cod_programa {
    type: string
    sql: ${TABLE}.COD_PROGRAMA ;;
  }

  dimension: cod_regla_programa {
    type: string
    sql: ${TABLE}.COD_REGLA_PROGRAMA ;;
  }

  dimension: cod_sede {
    type: string
    sql: ${TABLE}.COD_SEDE ;;
  }

  dimension: cod_sexo {
    type: string
    sql: ${TABLE}.COD_SEXO ;;
  }

  dimension: cod_subnivel_academico {
    type: string
    sql: ${TABLE}.COD_SUBNIVEL_ACADEMICO ;;
  }

  dimension: cod_tipo_estudiante {
    type: string
    sql: ${TABLE}.COD_TIPO_ESTUDIANTE ;;
  }

  dimension: cod_tipoadmision {
    type: string
    sql: ${TABLE}.COD_TIPOADMISION ;;
  }

  dimension: codigo_detalle_pago {
    type: string
    sql: ${TABLE}.CODIGO_DETALLE_PAGO ;;
  }

  dimension: cohorte {
    type: string
    sql: ${TABLE}.COHORTE ;;
  }

  dimension: concepto_financiero {
    type: string
    sql: ${TABLE}.CONCEPTO_FINANCIERO ;;
  }

  dimension: cuenta_banco {
    type: string
    sql: ${TABLE}.CUENTA_BANCO ;;
  }

  dimension: descripcion_pago {
    type: string
    sql: ${TABLE}.DESCRIPCION_PAGO ;;
  }

  dimension: enfasis_id {
    type: string
    sql: ${TABLE}.ENFASIS_ID ;;
  }

  dimension: estado_academico {
    type: string
    sql: ${TABLE}.ESTADO_ACADEMICO ;;
  }

  dimension: estado_financiero {
    type: string
    sql: ${TABLE}.ESTADO_FINANCIERO ;;
  }

  dimension: fecha_efectiva_pago {
    type: string
    sql: ${TABLE}.FECHA_EFECTIVA_PAGO ;;
  }

  dimension: identificacion {
    type: string
    sql: ${TABLE}.IDENTIFICACION ;;
  }

  dimension: max_fecha_efectiva_pago {
    type: string
    sql: ${TABLE}.MAX_FECHA_EFECTIVA_PAGO ;;
  }

  dimension: parteperiodo_fechafin {
    type: string
    sql: ${TABLE}.PARTEPERIODO_FECHAFIN ;;
  }

  dimension: parteperiodo_fechainicio {
    type: string
    sql: ${TABLE}.PARTEPERIODO_FECHAINICIO ;;
  }

  dimension: periodo_academico {
    type: string
    sql: ${TABLE}.Periodo_Academico ;;
  }

  dimension: periodo_anho {
    type: string
    sql: ${TABLE}.PERIODO_ANHO ;;
  }

  dimension: periodo_anio {
    type: string
    sql: ${TABLE}.Periodo_Anio ;;
  }

  dimension: periodo_cargo {
    type: string
    sql: ${TABLE}.PERIODO_CARGO ;;
  }

  dimension: periodo_codigo {
    type: string
    sql: ${TABLE}.Periodo_Codigo ;;
  }

  dimension: periodo_observacion {
    type: string
    sql: ${TABLE}.Periodo_Observacion ;;
  }

  dimension: periodo_periodo {
    type: string
    sql: ${TABLE}.Periodo_Periodo ;;
  }

  dimension: pidm {
    type: string
    sql: ${TABLE}.PIDM ;;
  }

  dimension: sec_trans_cargos {
    type: string
    sql: ${TABLE}.SEC_TRANS_CARGOS ;;
  }

  dimension: secuencia_transaccion {
    type: string
    sql: ${TABLE}.SECUENCIA_TRANSACCION ;;
  }

  dimension: semestre {
    type: string
    sql: ${TABLE}.SEMESTRE ;;
  }

  dimension: snies {
    type: string
    sql: ${TABLE}.SNIES ;;
  }

  dimension: temp {
    type: string
    sql: ${TABLE}.temp ;;
  }

  dimension: temp1 {
    type: string
    sql: ${TABLE}.temp1 ;;
  }

  dimension: tipo_transaccion {
    type: string
    sql: ${TABLE}.TIPO_TRANSACCION ;;
  }

  dimension: tipoadmision {
    type: string
    sql: ${TABLE}.TIPOADMISION ;;
  }

  dimension: valor_pago_detalle {
    type: string
    sql: ${TABLE}.VALOR_PAGO_DETALLE ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
