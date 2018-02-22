view: report {
  sql_table_name: looker_ga.report ;;

  dimension: _rjm_record_hash {
    type: string
    sql: ${TABLE}._rjm_record_hash ;;
  }

  dimension_group: _sdc_batched {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_batched_at ;;
  }

  dimension_group: _sdc_received {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}._sdc_received_at ;;
  }

  dimension: _sdc_sequence {
    type: number
    sql: ${TABLE}._sdc_sequence ;;
  }

  dimension: _sdc_table_version {
    type: number
    sql: ${TABLE}._sdc_table_version ;;
  }

  dimension: bounce_rate {
    type: number
    sql: ${TABLE}.bounceRate ;;
  }

  dimension_group: date {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.date ;;
  }

  dimension: day {
    type: string
    sql: ${TABLE}.day ;;
  }

  dimension_group: enddate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."end-date" ;;
  }

  dimension: month {
    type: string
    sql: ${TABLE}.month ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension_group: startdate {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."start-date" ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }

  dimension: unique_purchases {
    type: number
    sql: ${TABLE}.uniquePurchases ;;
  }

  dimension: visits {
    type: number
    sql: ${TABLE}.visits ;;
  }

  dimension: week {
    type: string
    sql: ${TABLE}.week ;;
  }

  dimension: year {
    type: string
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
