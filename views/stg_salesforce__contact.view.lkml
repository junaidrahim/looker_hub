# The name of this view in Looker is "Stg Salesforce Contact"
view: stg_salesforce__contact {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__CONTACT" ;;

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

  dimension: contact_description {
    type: string
    sql: ${TABLE}."CONTACT_DESCRIPTION" ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: contact_name {
    type: string
    sql: ${TABLE}."CONTACT_NAME" ;;
  }

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension: first_name {
    type: string
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: home_phone {
    type: string
    sql: ${TABLE}."HOME_PHONE" ;;
  }

  dimension: individual_id {
    type: string
    sql: ${TABLE}."INDIVIDUAL_ID" ;;
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

  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }

  dimension_group: last_modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension_group: last_referenced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_REFERENCED_DATE" AS TIMESTAMP_NTZ) ;;
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

  dimension: mailing_city {
    type: string
    sql: ${TABLE}."MAILING_CITY" ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}."MAILING_COUNTRY" ;;
  }

  dimension: mailing_country_code {
    type: string
    sql: ${TABLE}."MAILING_COUNTRY_CODE" ;;
  }

  dimension: mailing_postal_code {
    type: string
    sql: ${TABLE}."MAILING_POSTAL_CODE" ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}."MAILING_STATE" ;;
  }

  dimension: mailing_state_code {
    type: string
    sql: ${TABLE}."MAILING_STATE_CODE" ;;
  }

  dimension: mailing_street {
    type: string
    sql: ${TABLE}."MAILING_STREET" ;;
  }

  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }

  dimension: mobile_phone {
    type: string
    sql: ${TABLE}."MOBILE_PHONE" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: reports_to_id {
    type: string
    sql: ${TABLE}."REPORTS_TO_ID" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }
  measure: count {
    type: count
    drill_fields: [contact_name, last_name, first_name]
  }
}
