# The name of this view in Looker is "Stg Salesforce Account Tmp"
view: stg_salesforce__account_tmp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__ACCOUNT_TMP" ;;
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

  dimension: account_number {
    type: string
    sql: ${TABLE}."ACCOUNT_NUMBER" ;;
  }

  dimension: account_source {
    type: string
    sql: ${TABLE}."ACCOUNT_SOURCE" ;;
  }

  dimension: active_c {
    type: string
    sql: ${TABLE}."ACTIVE_C" ;;
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

  dimension: billing_geocode_accuracy {
    type: string
    sql: ${TABLE}."BILLING_GEOCODE_ACCURACY" ;;
  }

  dimension: billing_latitude {
    type: number
    sql: ${TABLE}."BILLING_LATITUDE" ;;
  }

  dimension: billing_longitude {
    type: number
    sql: ${TABLE}."BILLING_LONGITUDE" ;;
  }

  dimension: billing_postal_code {
    type: string
    sql: ${TABLE}."BILLING_POSTAL_CODE" ;;
  }

  dimension: billing_state {
    type: string
    sql: ${TABLE}."BILLING_STATE" ;;
  }

  dimension: billing_street {
    type: string
    sql: ${TABLE}."BILLING_STREET" ;;
  }

  dimension: clean_status {
    type: string
    sql: ${TABLE}."CLEAN_STATUS" ;;
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

  dimension: customer_priority_c {
    type: string
    sql: ${TABLE}."CUSTOMER_PRIORITY_C" ;;
  }

  dimension: dandb_company_id {
    type: string
    sql: ${TABLE}."DANDB_COMPANY_ID" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: duns_number {
    type: string
    sql: ${TABLE}."DUNS_NUMBER" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
  }

  dimension: industry {
    type: string
    sql: ${TABLE}."INDUSTRY" ;;
  }

  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."JIGSAW" ;;
  }

  dimension: jigsaw_company_id {
    type: string
    sql: ${TABLE}."JIGSAW_COMPANY_ID" ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
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

  dimension_group: last_viewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: naics_code {
    type: string
    sql: ${TABLE}."NAICS_CODE" ;;
  }

  dimension: naics_desc {
    type: string
    sql: ${TABLE}."NAICS_DESC" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: number_of_employees {
    type: number
    sql: ${TABLE}."NUMBER_OF_EMPLOYEES" ;;
  }

  dimension: numberof_locations_c {
    type: number
    sql: ${TABLE}."NUMBEROF_LOCATIONS_C" ;;
  }

  dimension: operating_hours_id {
    type: string
    sql: ${TABLE}."OPERATING_HOURS_ID" ;;
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

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PHOTO_URL" ;;
  }

  dimension: rating {
    type: string
    sql: ${TABLE}."RATING" ;;
  }

  dimension: shipping_city {
    type: string
    sql: ${TABLE}."SHIPPING_CITY" ;;
  }

  dimension: shipping_country {
    type: string
    sql: ${TABLE}."SHIPPING_COUNTRY" ;;
  }

  dimension: shipping_geocode_accuracy {
    type: string
    sql: ${TABLE}."SHIPPING_GEOCODE_ACCURACY" ;;
  }

  dimension: shipping_latitude {
    type: number
    sql: ${TABLE}."SHIPPING_LATITUDE" ;;
  }

  dimension: shipping_longitude {
    type: number
    sql: ${TABLE}."SHIPPING_LONGITUDE" ;;
  }

  dimension: shipping_postal_code {
    type: string
    sql: ${TABLE}."SHIPPING_POSTAL_CODE" ;;
  }

  dimension: shipping_state {
    type: string
    sql: ${TABLE}."SHIPPING_STATE" ;;
  }

  dimension: shipping_street {
    type: string
    sql: ${TABLE}."SHIPPING_STREET" ;;
  }

  dimension: sic {
    type: string
    sql: ${TABLE}."SIC" ;;
  }

  dimension: sic_desc {
    type: string
    sql: ${TABLE}."SIC_DESC" ;;
  }

  dimension: site {
    type: string
    sql: ${TABLE}."SITE" ;;
  }

  dimension: sla_c {
    type: string
    sql: ${TABLE}."SLA_C" ;;
  }

  dimension_group: slaexpiration_date_c {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."SLAEXPIRATION_DATE_C" ;;
  }

  dimension: slaserial_number_c {
    type: string
    sql: ${TABLE}."SLASERIAL_NUMBER_C" ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: ticker_symbol {
    type: string
    sql: ${TABLE}."TICKER_SYMBOL" ;;
  }

  dimension: tradestyle {
    type: string
    sql: ${TABLE}."TRADESTYLE" ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }

  dimension: upsell_opportunity_c {
    type: string
    sql: ${TABLE}."UPSELL_OPPORTUNITY_C" ;;
  }

  dimension: website {
    type: string
    sql: ${TABLE}."WEBSITE" ;;
  }

  dimension: year_started {
    type: string
    sql: ${TABLE}."YEAR_STARTED" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
