view: all_records {
  sql_table_name: public.all_records ;;

  dimension: avg_temp {
    type: number
    sql: ${TABLE}.avg_temp ;;
  }

  dimension: avg_wind_dir {
    type: number
    sql: ${TABLE}.avg_wind_dir ;;
  }

  dimension: avg_wind_speed {
    type: number
    sql: ${TABLE}.avg_wind_speed ;;
  }

  dimension: continent_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.continent_id ;;
  }

  dimension: continent_name {
    type: string
    sql: ${TABLE}.continent_name ;;
  }

  dimension: country_id {
    type: string
    sql: ${TABLE}.country_id ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: elevation {
    type: number
    sql: ${TABLE}.elevation ;;
  }

  dimension: gsn_flag {
    type: string
    sql: ${TABLE}.gsn_flag ;;
  }

  dimension: hcn_crn_flag {
    type: string
    sql: ${TABLE}.hcn_crn_flag ;;
  }

  dimension: latitude {
    type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: max_temp {
    type: number
    sql: ${TABLE}.max_temp ;;
  }

  dimension: min_temp {
    type: number
    sql: ${TABLE}.min_temp ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: obs_temp {
    type: number
    sql: ${TABLE}.obs_temp ;;
  }

  dimension: precipitation {
    type: number
    sql: ${TABLE}.precipitation ;;
  }

  dimension_group: record {
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
    sql: ${TABLE}.record_date ;;
  }

  dimension: snow_depth {
    type: number
    sql: ${TABLE}.snow_depth ;;
  }

  dimension: snow_fall {
    type: number
    sql: ${TABLE}.snow_fall ;;
  }

  dimension: source {
    type: number
    sql: ${TABLE}."source$" ;;
  }

  dimension: state {
    type: number
    sql: ${TABLE}."state$" ;;
  }

  dimension: station_id {
    type: string
    # hidden: yes
    sql: ${TABLE}.station_id ;;
  }

  dimension_group: timestamp {
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
    sql: ${TABLE}."timestamp$" ;;
  }

  dimension: total_sun {
    type: number
    sql: ${TABLE}.total_sun ;;
  }

  dimension: us_state {
    type: string
    sql: ${TABLE}.us_state ;;
  }

  dimension: wmo_id {
    type: string
    sql: ${TABLE}.wmo_id ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      name,
      continent_name,
      country_name,
      stations.name,
      stations.station_id,
      continents.name,
      continents.continent_id
    ]
  }
}
