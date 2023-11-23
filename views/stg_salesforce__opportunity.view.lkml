# The name of this view in Looker is "Stg Salesforce Opportunity"
view: stg_salesforce__opportunity {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__OPPORTUNITY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Account ID" in Explore.

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: amount {
    type: number
    sql: ${TABLE}."AMOUNT" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_amount {
    type: sum
    sql: ${amount} ;;  }
  measure: average_amount {
    type: average
    sql: ${amount} ;;  }

  dimension: campaign_id {
    type: string
    sql: ${TABLE}."CAMPAIGN_ID" ;;
  }

  dimension_group: close {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."CREATED_DATE" ;;
  }

  dimension: days_since_created {
    type: number
    sql: ${TABLE}."DAYS_SINCE_CREATED" ;;
  }

  dimension: days_to_close {
    type: number
    sql: ${TABLE}."DAYS_TO_CLOSE" ;;
  }

  dimension: expected_revenue {
    type: number
    sql: ${TABLE}."EXPECTED_REVENUE" ;;
  }

  dimension: fiscal {
    type: string
    sql: ${TABLE}."FISCAL" ;;
  }

  dimension: fiscal_quarter {
    type: number
    sql: ${TABLE}."FISCAL_QUARTER" ;;
  }

  dimension: fiscal_year {
    type: number
    sql: ${TABLE}."FISCAL_YEAR" ;;
  }

  dimension: forecast_category {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY" ;;
  }

  dimension: forecast_category_name {
    type: string
    sql: ${TABLE}."FORECAST_CATEGORY_NAME" ;;
  }

  dimension: has_open_activity {
    type: yesno
    sql: ${TABLE}."HAS_OPEN_ACTIVITY" ;;
  }

  dimension: has_opportunity_line_item {
    type: yesno
    sql: ${TABLE}."HAS_OPPORTUNITY_LINE_ITEM" ;;
  }

  dimension: has_overdue_task {
    type: yesno
    sql: ${TABLE}."HAS_OVERDUE_TASK" ;;
  }

  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IS_CLOSED" ;;
  }

  dimension: is_closed_this_month {
    type: yesno
    sql: ${TABLE}."IS_CLOSED_THIS_MONTH" ;;
  }

  dimension: is_closed_this_quarter {
    type: yesno
    sql: ${TABLE}."IS_CLOSED_THIS_QUARTER" ;;
  }

  dimension: is_created_this_month {
    type: yesno
    sql: ${TABLE}."IS_CREATED_THIS_MONTH" ;;
  }

  dimension: is_created_this_quarter {
    type: yesno
    sql: ${TABLE}."IS_CREATED_THIS_QUARTER" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IS_WON" ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_REFERENCED_DATE" ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_VIEWED_DATE" ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}."NEXT_STEP" ;;
  }

  dimension: opportunity_description {
    type: string
    sql: ${TABLE}."OPPORTUNITY_DESCRIPTION" ;;
  }

  dimension: opportunity_id {
    type: string
    sql: ${TABLE}."OPPORTUNITY_ID" ;;
  }

  dimension: opportunity_name {
    type: string
    sql: ${TABLE}."OPPORTUNITY_NAME" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension: synced_quote_id {
    type: string
    sql: ${TABLE}."SYNCED_QUOTE_ID" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [stage_name, opportunity_name, forecast_category_name]
  }
}
