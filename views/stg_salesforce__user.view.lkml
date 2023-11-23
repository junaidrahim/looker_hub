# The name of this view in Looker is "Stg Salesforce User"
view: stg_salesforce__user {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__USER" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

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
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}."ALIAS" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}."COMPANY_NAME" ;;
  }

  dimension: contact_id {
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: country_code {
    type: string
    sql: ${TABLE}."COUNTRY_CODE" ;;
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

  dimension: individual_id {
    type: string
    sql: ${TABLE}."INDIVIDUAL_ID" ;;
  }

  dimension: is_active {
    type: yesno
    sql: ${TABLE}."IS_ACTIVE" ;;
  }

  dimension_group: last_login {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}."LAST_LOGIN_DATE" ;;
  }

  dimension: last_name {
    type: string
    sql: ${TABLE}."LAST_NAME" ;;
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

  dimension: manager_id {
    type: string
    sql: ${TABLE}."MANAGER_ID" ;;
  }

  dimension: postal_code {
    type: string
    sql: ${TABLE}."POSTAL_CODE" ;;
  }

  dimension: profile_id {
    type: string
    sql: ${TABLE}."PROFILE_ID" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: state_code {
    type: string
    sql: ${TABLE}."STATE_CODE" ;;
  }

  dimension: street {
    type: string
    sql: ${TABLE}."STREET" ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}."USER_ID" ;;
  }

  dimension: user_name {
    type: string
    sql: ${TABLE}."USER_NAME" ;;
  }

  dimension: user_role_id {
    type: string
    sql: ${TABLE}."USER_ROLE_ID" ;;
  }

  dimension: user_type {
    type: string
    sql: ${TABLE}."USER_TYPE" ;;
  }

  dimension: username {
    type: string
    sql: ${TABLE}."USERNAME" ;;
  }
  measure: count {
    type: count
    drill_fields: [username, first_name, last_name, company_name, user_name]
  }
}
