# The name of this view in Looker is "Instacart Beverages Order Analysis"
view: instacart_beverages_order_analysis {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."INSTACART_BEVERAGES_ORDER_ANALYSIS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Avg Days Order" in Explore.

  dimension: avg_days_order {
    type: number
    sql: ${TABLE}."AVG_DAYS_ORDER" ;;
  }

  dimension: customer_mobile {
    type: string
    sql: ${TABLE}."CUSTOMER_MOBILE" ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}."CUSTOMER_NAME" ;;
  }

  dimension: num_orders {
    type: number
    sql: ${TABLE}."NUM_ORDERS" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_num_orders {
    type: sum
    sql: ${num_orders} ;;  }
  measure: average_num_orders {
    type: average
    sql: ${num_orders} ;;  }

  dimension: products_per_order {
    type: number
    sql: ${TABLE}."PRODUCTS_PER_ORDER" ;;
  }
  measure: count {
    type: count
    drill_fields: [customer_name]
  }
}
