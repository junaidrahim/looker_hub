# The name of this view in Looker is "Stg Salesforce Contact Tmp"
view: stg_salesforce__contact_tmp {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."STG_SALESFORCE__CONTACT_TMP" ;;
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

  dimension: assistant_name {
    type: string
    sql: ${TABLE}."ASSISTANT_NAME" ;;
  }

  dimension: assistant_phone {
    type: string
    sql: ${TABLE}."ASSISTANT_PHONE" ;;
  }

  dimension_group: birthdate {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."BIRTHDATE" ;;
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

  dimension: department {
    type: string
    sql: ${TABLE}."DEPARTMENT" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: email {
    type: string
    sql: ${TABLE}."EMAIL" ;;
  }

  dimension_group: email_bounced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."EMAIL_BOUNCED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: email_bounced_reason {
    type: string
    sql: ${TABLE}."EMAIL_BOUNCED_REASON" ;;
  }

  dimension: fax {
    type: string
    sql: ${TABLE}."FAX" ;;
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

  dimension: is_email_bounced {
    type: yesno
    sql: ${TABLE}."IS_EMAIL_BOUNCED" ;;
  }

  dimension: jigsaw {
    type: string
    sql: ${TABLE}."JIGSAW" ;;
  }

  dimension: jigsaw_contact_id {
    type: string
    sql: ${TABLE}."JIGSAW_CONTACT_ID" ;;
  }

  dimension: languages_c {
    type: string
    sql: ${TABLE}."LANGUAGES_C" ;;
  }

  dimension_group: last_activity {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LAST_ACTIVITY_DATE" ;;
  }

  dimension_group: last_curequest {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_CUREQUEST_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension_group: last_cuupdate {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_CUUPDATE_DATE" AS TIMESTAMP_NTZ) ;;
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
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }

  dimension: lead_source {
    type: string
    sql: ${TABLE}."LEAD_SOURCE" ;;
  }

  dimension: level_c {
    type: string
    sql: ${TABLE}."LEVEL_C" ;;
  }

  dimension: mailing_city {
    type: string
    sql: ${TABLE}."MAILING_CITY" ;;
  }

  dimension: mailing_country {
    type: string
    sql: ${TABLE}."MAILING_COUNTRY" ;;
  }

  dimension: mailing_geocode_accuracy {
    type: string
    sql: ${TABLE}."MAILING_GEOCODE_ACCURACY" ;;
  }

  dimension: mailing_latitude {
    type: number
    sql: ${TABLE}."MAILING_LATITUDE" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_mailing_latitude {
    type: sum
    sql: ${mailing_latitude} ;;  }
  measure: average_mailing_latitude {
    type: average
    sql: ${mailing_latitude} ;;  }

  dimension: mailing_longitude {
    type: number
    sql: ${TABLE}."MAILING_LONGITUDE" ;;
  }

  dimension: mailing_postal_code {
    type: string
    sql: ${TABLE}."MAILING_POSTAL_CODE" ;;
  }

  dimension: mailing_state {
    type: string
    sql: ${TABLE}."MAILING_STATE" ;;
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

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: other_city {
    type: string
    sql: ${TABLE}."OTHER_CITY" ;;
  }

  dimension: other_country {
    type: string
    sql: ${TABLE}."OTHER_COUNTRY" ;;
  }

  dimension: other_geocode_accuracy {
    type: string
    sql: ${TABLE}."OTHER_GEOCODE_ACCURACY" ;;
  }

  dimension: other_latitude {
    type: number
    sql: ${TABLE}."OTHER_LATITUDE" ;;
  }

  dimension: other_longitude {
    type: number
    sql: ${TABLE}."OTHER_LONGITUDE" ;;
  }

  dimension: other_phone {
    type: string
    sql: ${TABLE}."OTHER_PHONE" ;;
  }

  dimension: other_postal_code {
    type: string
    sql: ${TABLE}."OTHER_POSTAL_CODE" ;;
  }

  dimension: other_state {
    type: string
    sql: ${TABLE}."OTHER_STATE" ;;
  }

  dimension: other_street {
    type: string
    sql: ${TABLE}."OTHER_STREET" ;;
  }

  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: photo_url {
    type: string
    sql: ${TABLE}."PHOTO_URL" ;;
  }

  dimension: reports_to_id {
    type: string
    sql: ${TABLE}."REPORTS_TO_ID" ;;
  }

  dimension: salutation {
    type: string
    sql: ${TABLE}."SALUTATION" ;;
  }

  dimension_group: system_modstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }

  dimension: title {
    type: string
    sql: ${TABLE}."TITLE" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, assistant_name, first_name, name, last_name]
  }
}
