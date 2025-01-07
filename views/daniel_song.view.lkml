view: daniel_song_test {

  parameter: table_name {
    type: unquoted
    default_value: "a_1_c.x_1.table"
    allowed_value: { label: "1" value: "a_1_c.x_prod.table" }
    allowed_value: { label: "2" value: "a_2_c.y_prod.table" }
    allowed_value: { label: "3" value: "a_3_c.z_prod.table" }
  }

  filter: filter_date {
    type: date_time
  }

  derived_table: {
    sql:
      SELECT
        timestamp_trunc(timestamp, day) ts_dt,
        count(1) as count
      FROM
        {% parameter table_name %}
      WHERE
        {% condition filter_date %} timestamp {% endcondition %}
      GROUP BY 1
      ;;
  }

  dimension: ts_dt {
    type: date
    sql: ${TABLE}.ts_dt ;;
  }

  measure: count {
    type: sum
    sql: ${TABLE}.count ;;
  }
}
