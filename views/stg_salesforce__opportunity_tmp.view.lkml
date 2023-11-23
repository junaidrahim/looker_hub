# The name of this view in Looker is "Stg Salesforce Opportunity Tmp"
view: stg_salesforce__opportunity_tmp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__OPPORTUNITY_TMP" ;;
  drill_fields: [id]

  # This primary key is the unique key for this table in the underlying database.
  # You need to define a primary key in a view in order to join to other views.

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }
    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called " Fivetran Deleted" in Explore.

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }

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
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."CLOSE_DATE" ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }

  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: current_generators_c {
    type: string
    sql: ${TABLE}."CURRENT_GENERATORS_C" ;;
  }

  dimension: delivery_installation_status_c {
    type: string
    sql: ${TABLE}."DELIVERY_INSTALLATION_STATUS_C" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
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

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: is_private {
    type: yesno
    sql: ${TABLE}."IS_PRIVATE" ;;
  }

  dimension: is_won {
    type: yesno
    sql: ${TABLE}."IS_WON" ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
  }

  dimension: last_amount_changed_history_id {
    type: string
    sql: ${TABLE}."LAST_AMOUNT_CHANGED_HISTORY_ID" ;;
  }

  dimension: last_close_date_changed_history_id {
    type: string
    sql: ${TABLE}."LAST_CLOSE_DATE_CHANGED_HISTORY_ID" ;;
  }

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_REFERENCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_stage_change {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_STAGE_CHANGE_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_viewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: main_competitors_c {
    type: string
    sql: ${TABLE}."MAIN_COMPETITORS_C" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: next_step {
    type: string
    sql: ${TABLE}."NEXT_STEP" ;;
  }

  dimension: order_number_c {
    type: string
    sql: ${TABLE}."ORDER_NUMBER_C" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: pricebook_2_id {
    type: string
    sql: ${TABLE}."PRICEBOOK_2_ID" ;;
  }

  dimension: probability {
    type: number
    sql: ${TABLE}."PROBABILITY" ;;
  }

  dimension: push_count {
    type: number
    sql: ${TABLE}."PUSH_COUNT" ;;
  }

  dimension: stage_name {
    type: string
    sql: ${TABLE}."STAGE_NAME" ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: total_opportunity_quantity {
    type: number
    sql: ${TABLE}."TOTAL_OPPORTUNITY_QUANTITY" ;;
  }

  dimension: tracking_number_c {
    type: string
    sql: ${TABLE}."TRACKING_NUMBER_C" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, stage_name, forecast_category_name, name]
  }
}
