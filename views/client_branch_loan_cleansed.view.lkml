# The name of this view in Looker is "Client Branch Loan Cleansed"
view: client_branch_loan_cleansed {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."CLIENT_BRANCH_LOAN_CLEANSED" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Borrower ID" in Explore.

  dimension: borrower_id {
    type: string
    sql: ${TABLE}."BORROWER_ID" ;;
  }

  dimension: branch_id {
    type: string
    sql: ${TABLE}."BRANCH_ID" ;;
  }

  dimension: client_liabilities {
    type: number
    sql: ${TABLE}."CLIENT_LIABILITIES" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_client_liabilities {
    type: sum
    sql: ${client_liabilities} ;;  }
  measure: average_client_liabilities {
    type: average
    sql: ${client_liabilities} ;;  }

  dimension: loan_amort_mth {
    type: number
    sql: ${TABLE}."LOAN_AMORT_MTH" ;;
  }

  dimension: loan_amt {
    type: number
    sql: ${TABLE}."LOAN_AMT" ;;
  }

  dimension: loan_default {
    type: string
    sql: ${TABLE}."LOAN_DEFAULT" ;;
  }

  dimension: loan_deliq {
    type: string
    sql: ${TABLE}."LOAN_DELIQ" ;;
  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: loan_end_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LOAN_END_DT" ;;
  }

  dimension: loan_fees {
    type: number
    sql: ${TABLE}."LOAN_FEES" ;;
  }

  dimension: loan_fees_mth {
    type: number
    sql: ${TABLE}."LOAN_FEES_MTH" ;;
  }

  dimension: loan_interest_mth {
    type: number
    sql: ${TABLE}."LOAN_INTEREST_MTH" ;;
  }

  dimension: loan_intrst {
    type: number
    sql: ${TABLE}."LOAN_INTRST" ;;
  }

  dimension: loan_nbr {
    type: string
    sql: ${TABLE}."LOAN_NBR" ;;
  }

  dimension_group: loan_start_dt {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."LOAN_START_DT" ;;
  }

  dimension: loan_type {
    type: string
    sql: ${TABLE}."LOAN_TYPE" ;;
  }

  dimension_group: mth_snapshot {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."MTH_SNAPSHOT" ;;
  }
  measure: count {
    type: count
  }
}
