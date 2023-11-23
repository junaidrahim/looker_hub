# The name of this view in Looker is "Stg Salesforce Account"
view: stg_salesforce__account {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__ACCOUNT" ;;

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
    # This dimension will be called "Account Description" in Explore.

  dimension: account_description {
    type: string
    sql: ${TABLE}."ACCOUNT_DESCRIPTION" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}."ACCOUNT_NAME" ;;
  }

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}."ACCOUNT_SOURCE" ;;
  }

  dimension: annual_revenue {
    type: number
    sql: ${TABLE}."ANNUAL_REVENUE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_annual_revenue {
    type: sum
    sql: ${annual_revenue} ;;  }
  measure: average_annual_revenue {
    type: average
    sql: ${annual_revenue} ;;  }

  dimension: billing_city {
    type: string
    sql: ${TABLE}."BILLING_CITY" ;;
  }

  dimension: billing_country {
    type: string
    sql: ${TABLE}."BILLING_COUNTRY" ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}."BILLING_POSTAL_CODE" ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}."BILLING_STATE" ;;
  }

  dimension: billing_state_code {
    type: string
    sql: ${TABLE}."BILLING_STATE_CODE" ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}."BILLING_STREET" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
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

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: ownership {
    type: string
    sql: ${TABLE}."OWNERSHIP" ;;
  }

  dimension: parent_id {
    type: string
    sql: ${TABLE}."PARENT_ID" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}."SHIPPING_CITY" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY" ;;
  }

  dimension: shipping_country_code {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY_CODE" ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}."SHIPPING_POSTAL_CODE" ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}."SHIPPING_STATE" ;;
  }

  dimension: shipping_state_code {
    type: string
    sql: ${TABLE}."SHIPPING_STATE_CODE" ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}."SHIPPING_STREET" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }
  measure: count {
    type: count
    drill_fields: [account_name]
  }
}
