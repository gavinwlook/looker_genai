connection: "2025-connection"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: looker_genai_default_datagroup {
  sql_trigger: SELECT current_date;;
  max_cache_age: "1 hour"
}

access_grant: ca_test {allowed_values:["Yes"]
  user_attribute:finance_group_member}

persist_with: looker_genai_default_datagroup

explore: daniel_song_test {}

explore: order_items {


  aggregate_table: sales_monthly {
    materialization: {
      sql_trigger_value: SELECT CURRENT_DATE;;
    }
    query: {
      dimensions: [orders.created_month,users.country]
      measures: [total_sales]
      }
  }

  aggregate_table: sales_annually {
    materialization: {
      sql_trigger_value: SELECT CURRENT_DATE;;
    }
    query: {
      dimensions: [orders.created_year, users.country]
      measures: [total_sales]
    }
  }

  join: users {
    type: left_outer
    sql_on: ${order_items.user_id} = ${users.id} ;;
    relationship: many_to_one


  }

  join: inventory_items {
    type: left_outer
    sql_on: ${order_items.inventory_item_id} = ${inventory_items.id} ;;
    relationship: many_to_one
  }


  join: products {
    required_access_grants: [ca_test]
    type: left_outer
    sql_on: ${order_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.order_id} ;;
    relationship: many_to_one

  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }


}

explore: orders {
  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: events {
  join: users {
    type: left_outer
    sql_on: ${events.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users {}

explore: products {
  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
}

explore: inventory_items {
  join: products {
    type: left_outer
    sql_on: ${inventory_items.product_id} = ${products.id} ;;
    relationship: many_to_one
  }

  join: distribution_centers {
    type: left_outer
    sql_on: ${products.distribution_center_id} = ${distribution_centers.id} ;;
    relationship: many_to_one
  }
  join: test_pdt {
    type: inner
    sql_on: ${inventory_items.id} = ${test_pdt.inventory_item_id} ;;
    relationship: one_to_one
  }
}

explore: test_pdt {}

explore: distribution_centers {}
