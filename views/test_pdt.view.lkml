# If necessary, uncomment the line below to include explore_source.
# include: "looker_genai.model.lkml"

view: test_pdt {
  derived_table: {
    explore_source: order_items {
      column: total_sales {}
      column: inventory_item_id {}
    }
    datagroup_trigger: looker_genai_default_datagroup
  }
  dimension: total_sales {
    description: ""
    type: number
  }
  dimension: inventory_item_id {
    description: ""
    type: number
  }
}
