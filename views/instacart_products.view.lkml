# The name of this view in Looker is "Instacart Products"
view: instacart_products {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."INSTACART_PRODUCTS" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Aisle ID" in Explore.

  dimension: aisle_id {
    type: number
    sql: ${TABLE}."AISLE_ID" ;;
  }

  dimension: department_id {
    type: number
    sql: ${TABLE}."DEPARTMENT_ID" ;;
  }

  dimension: product_id {
    type: number
    sql: ${TABLE}."PRODUCT_ID" ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}."PRODUCT_NAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
