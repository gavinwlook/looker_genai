view: orders {
  sql_table_name: `looker_demo_data_2.orders` ;;
  drill_fields: [order_id]


  dimension: order_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.order_id ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
  }

  dimension_group: created_link {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.created_at ;;
    html:
    <ul>
    <li> value: {{ value }} </li>
    <li> rendered_value: {{ rendered_value }} </li>
    <li> linked_value: {{ linked_value }} </li>
    <li> link: {{ link }} </li>
    <li> model: {{ _model._name }} </li>
    <li> view: {{ _view._name }} </li>
    <li> explore: {{ _explore._name }} </li>
    <li> field: {{ _field._name }} </li>
    <li> dialect: {{ _dialect._name }} </li>
    <li> access filter: {{ _access_filters['company.name'] }} </li>
    <li> query timezone: {{ _query._query_timezone }} </li>
    <li> filters: {{ _filters['order.total_order_amount'] }} </li>
    </ul> ;;

  }

  dimension_group: delivered {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.delivered_at ;;
  }
  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }
  dimension: num_of_item {
    type: number
    sql: ${TABLE}.num_of_item ;;
  }
  dimension_group: returned {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.returned_at ;;
  }
  dimension_group: shipped {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.shipped_at ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }
  dimension: user_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.user_id ;;
  }
  measure: count {

    type: count
    drill_fields: [created_link_date, order_id, users.last_name, users.id, users.first_name, order_items.count]
  }
}
