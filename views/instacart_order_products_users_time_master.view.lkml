# The name of this view in Looker is "Instacart Order Products Users Time Master"
view: instacart_order_products_users_time_master {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."INSTACART_ORDER_PRODUCTS_USERS_TIME_MASTER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Fivetran Deleted" in Explore.

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  dimension: _fivetran_id {
    type: string
    sql: ${TABLE}."_FIVETRAN_ID" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

  dimension: add_to_cart_order {
    type: number
    sql: ${TABLE}."ADD_TO_CART_ORDER" ;;
  }

  dimension: aisle_id {
    type: number
    sql: ${TABLE}."AISLE_ID" ;;
  }

  dimension: days_since_prior_order {
    type: string
    sql: ${TABLE}."DAYS_SINCE_PRIOR_ORDER" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: eval_set {
    type: string
    sql: ${TABLE}."EVAL_SET" ;;
  }

  dimension: order_dow {
    type: number
    sql: ${TABLE}."ORDER_DOW" ;;
  }

  dimension: order_hour_of_day {
    type: number
    sql: ${TABLE}."ORDER_HOUR_OF_DAY" ;;
  }

  dimension: order_id {
    type: number
    sql: ${TABLE}."ORDER_ID" ;;
  }

  dimension: order_number {
    type: number
    sql: ${TABLE}."ORDER_NUMBER" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_order_number {
    type: sum
    sql: ${order_number} ;;  }
  measure: average_order_number {
    type: average
    sql: ${order_number} ;;  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }

  dimension: reordered {
    type: number
    sql: ${TABLE}."REORDERED" ;;
  }

  dimension: user_id {
    type: number
    sql: ${TABLE}."USER_ID" ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
