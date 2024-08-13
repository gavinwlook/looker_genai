view: remember_to_switch_tabs {

    derived_table: {
      explore_source: events {
        column: city { field: users.city }
        column: id { field: users.id }
        column: longitude { field: users.longitude }
        column: count { field: users.count }
      }
    }
    dimension: city {
      description: ""
    }
    dimension: id {
      description: ""
      type: number
    }
    dimension: longitude {
      description: ""
      type: number
    }
    dimension: count {
      description: ""
      type: number
    }
  }
