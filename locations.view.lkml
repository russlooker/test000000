view: locations {
  sql_table_name: {{ _user_attributes["email"] }}.locations ;;

  dimension: accuracy {
    type: number
    sql: ${TABLE}.accuracy ;;
  }

  dimension: altitude {
    type: number
    sql: ${TABLE}.altitude ;;
  }

  dimension: latitude_e7 {
    type: number
    sql: ${TABLE}."latitudeE7"*1.0/10000000 ;;
  }

  dimension: longitude_e7 {
    type: number
    sql: ${TABLE}."longitudeE7"*1.0/10000000 ;;
  }

dimension: location {
  type: location
  sql_latitude: ${latitude_e7} ;;
  sql_longitude: ${longitude_e7} ;;
}



  dimension: timestamp_ms {
    type: number
    sql: ${TABLE}.timestampMs ;;
  }

  dimension: velocity {
    type: number
    sql: ${TABLE}.velocity ;;
  }

  dimension: vertical_accuracy {
    type: number
    sql: ${TABLE}.verticalAccuracy ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
