connection: "bq_thelook"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: thelook_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: thelook_default_datagroup

explore: lr_8_ardr1784618533110_my_explore_my_agg_table {}

explore: billion_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}
## ajout un commentaire
explore: connection_reg_r3 {}

explore: cpi_base {}

explore: all_types {}
##I like to add comment

explore: lr_8_aubv1784618526573_my_pdt {}

explore: fatal_error_persist_for_five_seconds {}

explore: billion_orders {
  join: orders {
    type: left_outer
    sql_on: ${billion_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: cust_calendar_bug_bash {}

explore: fiscal_2001_through_2006 {}

explore: fiscal_cal_2009 {}

explore: fiscal_2010_through_2012 {}

explore: fiscal_2001_through_2006_b {}

explore: fake_scratch__connection_reg_r3 {}

explore: hundred_million_orders {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: hundred_million_orders_wide {
  join: orders {
    type: left_outer
    sql_on: ${hundred_million_orders_wide.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: mat_view_base_4309 {}

explore: looker_scratch__tst_reg_963fdcc02655d76f67 {}

explore: looker_scratch__tst_reg_ebffc1deed5d25a581 {}

explore: mat_view_base_1247 {}

explore: mat_view_base_3317 {}

explore: mat_view_base_3890 {}

explore: nested_and_repeated {
    join: nested_and_repeated__repeated_field {
      view_label: "Nested And Repeated: Repeated Field"
      sql: LEFT JOIN UNNEST(${nested_and_repeated.repeated_field}) as nested_and_repeated__repeated_field ;;
      relationship: one_to_many
    }
    join: nested_and_repeated__doubly_nested_and_repeated {
      view_label: "Nested And Repeated: Doubly Nested And Repeated"
      sql: LEFT JOIN UNNEST(${nested_and_repeated.doubly_nested_and_repeated}) as nested_and_repeated__doubly_nested_and_repeated ;;
      relationship: one_to_many
    }
    join: nested_and_repeated__doubly_nested_and_repeated__inner_repeated {
      view_label: "Nested And Repeated: Doubly Nested And Repeated Inner Repeated"
      sql: LEFT JOIN UNNEST(${nested_and_repeated__doubly_nested_and_repeated.inner_repeated}) as nested_and_repeated__doubly_nested_and_repeated__inner_repeated ;;
      relationship: one_to_many
    }
}

explore: nested {
    join: nested__addresses {
      view_label: "Nested: Addresses"
      sql: LEFT JOIN UNNEST(${nested.addresses}) as nested__addresses ;;
      relationship: one_to_many
    }
}

explore: order_items_57d25a746d03 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_57d25a746d03.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items {
  join: orders {
    type: left_outer
    sql_on: ${order_items.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_febd02327d10 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_febd02327d10.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_57d25a746d03_s0 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_57d25a746d03_s0.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_57d25a746d03_s1 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_57d25a746d03_s1.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_febd02327d10_s1 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_febd02327d10_s1.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_57d25a746d03_pr522283 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_57d25a746d03_pr522283.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_febd02327d10495b {
  join: orders {
    type: left_outer
    sql_on: ${order_items_febd02327d10495b.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_febd02327d10_s0 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_febd02327d10_s0.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
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

explore: orders_19648cd67f557f35 {
  join: users {
    type: left_outer
    sql_on: ${orders_19648cd67f557f35.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_19648cd67f55 {
  join: users {
    type: left_outer
    sql_on: ${orders_19648cd67f55.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: order_items_57d25a746d03_s2 {
  join: orders {
    type: left_outer
    sql_on: ${order_items_57d25a746d03_s2.order_id} = ${orders.id} ;;
    relationship: many_to_one
  }

  join: users {
    type: left_outer
    sql_on: ${orders.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_454_calendar {}

explore: orders_19648cd67f55_s0 {
  join: users {
    type: left_outer
    sql_on: ${orders_19648cd67f55_s0.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_19648cd67f55_s1 {
  join: users {
    type: left_outer
    sql_on: ${orders_19648cd67f55_s1.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_pr523923 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_pr523923.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_s0 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_s0.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_pr522283 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_pr522283.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_s0_pr523544 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_s0_pr523544.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_s2 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_s2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_s1 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_s1.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_s2_pr523544 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_s2_pr523544.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_7802ca3ed416ac3d {
  join: users {
    type: left_outer
    sql_on: ${orders_7802ca3ed416ac3d.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_9374bba7ce2d {
  join: users {
    type: left_outer
    sql_on: ${orders_9374bba7ce2d.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_5da2af78e95a_s1_pr523544 {
  join: users {
    type: left_outer
    sql_on: ${orders_5da2af78e95a_s1_pr523544.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_9374bba7ce2d_pr522283 {
  join: users {
    type: left_outer
    sql_on: ${orders_9374bba7ce2d_pr522283.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_9374bba7ce2d_s2 {
  join: users {
    type: left_outer
    sql_on: ${orders_9374bba7ce2d_s2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_9374bba7ce2d_s0 {
  join: users {
    type: left_outer
    sql_on: ${orders_9374bba7ce2d_s0.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_9374bba7ce2d_s1 {
  join: users {
    type: left_outer
    sql_on: ${orders_9374bba7ce2d_s1.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string_test2 {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string_test2.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: orders_date_string {
  join: users {
    type: left_outer
    sql_on: ${orders_date_string.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_on_col_test_5b63 {}

explore: partition_on_col_test_4ddc {}

explore: partition_table_a_5165 {}

explore: partition_on_col_test_cb3f {}

explore: partition_on_col_test_7ec6 {}

explore: partition_table_a_cb9d {}

explore: orders_base_copy {
  join: users {
    type: left_outer
    sql_on: ${orders_base_copy.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: partition_table_a_8d12 {}

explore: partition_table_a_da97 {}

explore: partition_table_a_e3aa {}

explore: partition_table_a_f18d {}

explore: partition_table_b_7e9e {}

explore: partition_table_b_d7b8 {}

explore: partition_table_b_ab52 {}

explore: partitiontime_test_95be {}

explore: partition_table_b_c481 {}

explore: retail_custom_calendar {}

explore: retail_custom_calendar_v2 {}

explore: self_service___catalog_products_1784703420399328000_77t2_3094_1 {}

explore: self_service___generate_random_excel_data_1781633858203928064_e7g2_2663_1___r3 {}

explore: self_service___sheet1_1781634574273541888_y2k6_2663_1___r4 {}

explore: simple_table_194d78222b3b {}

explore: simple_table_43570a1e7d72fedb {}

explore: simple_table_194d78222b3b40b3 {}

explore: self_service___generate_random_excel_data_1781644687636780032_y0r0_2663_1 {}

explore: simple_table_99cf14642c18b5d8 {}

explore: simple_table_1c54cd3cb169bdaa {}

explore: simple_table_9fbd51fda394 {}

explore: simple_table_9fbd51fda394de3c {}

explore: simple_table_9fbd51fda394_pr522283 {}

explore: tab {
    join: tab__addresses {
      view_label: "Tab: Addresses"
      sql: LEFT JOIN UNNEST(${tab.addresses}) as tab__addresses ;;
      relationship: one_to_many
    }
}

explore: simple_table_9fbd51fda394_s0 {}

explore: test_subtotals_with_status {}

explore: testing_table {}

explore: test_subtotals {}

explore: us_births {}

explore: testing_table_one {}

explore: testme {}

explore: users_001a60c38721 {}

explore: users_001a60c38721_pr522283 {}

explore: users_001a60c38721_s0 {}

explore: users_001a60c38721_s0_pr523544 {}

explore: users_001a60c38721_s1 {}

explore: users_001a60c38721_s2_pr523544 {}

explore: users_001a60c38721_s1_pr523544 {}

explore: users {}

explore: users_3252c73cbfa0_s1 {}

explore: users_001a60c38721_s2 {}

explore: users_3252c73cbfa0_s0 {}

explore: users_001a60c38721_pr523923 {}

explore: users_44501ad0b6058e78 {}

explore: users_3252c73cbfa0 {}

explore: users_3252c73cbfa0b2f1 {}

explore: users_954f54cdf080 {}

explore: users_b0e9c6d61e9a {}

explore: users_954f54cdf080_pr522283 {}

explore: users_b0e9c6d61e9a_s0 {}

explore: users_b0e9c6d61e9a_s2 {}

explore: vijaya_order_test {
  join: users {
    type: left_outer
    sql_on: ${vijaya_order_test.user_id} = ${users.id} ;;
    relationship: many_to_one
  }
}

explore: users_b0e9c6d61e9a_s1 {}
