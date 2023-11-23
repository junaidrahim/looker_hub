# The name of this view in Looker is "Client Branch Loan Summary"
view: client_branch_loan_summary {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."CLIENT_BRANCH_LOAN_SUMMARY" ;;

  # No primary key is defined for this view. In order to join this view in an Explore,
  # define primary_key: yes on a dimension that has no repeated values.

    # Here's what a typical dimension looks like in LookML.
    # A dimension is a groupable field that can be used to filter query results.
    # This dimension will be called "Borrower" in Explore.

  dimension: borrower {
    type: string
    sql: ${TABLE}."Borrower" ;;
  }

  dimension: branch {
    type: string
    sql: ${TABLE}."Branch" ;;
  }

  dimension: client_liabilities_end_of_month {
    type: number
    sql: ${TABLE}."Client Liabilities (end of month)" ;;
  }

  dimension: is_default_loan {
    type: string
    sql: ${TABLE}."Is Default Loan" ;;
  }

  dimension: is_delinquent_loan {
    type: string
    sql: ${TABLE}."Is Delinquent Loan" ;;
  }

  dimension: loan_ {
    type: string
    sql: ${TABLE}."Loan #" ;;
  }

  dimension: loan_amortization_for_the_month {
    type: number
    sql: ${TABLE}."Loan Amortization (for the month)" ;;
  }

  dimension: loan_amount_total {
    type: number
    sql: ${TABLE}."Loan Amount (total)" ;;
  }

  # A measure is a field that uses a SQL aggregate function. Here are defined sum and average
  # measures for this dimension, but you can also add measures of many different aggregates.
  # Click on the type parameter to see all the options in the Quick Help panel on the right.

  measure: total_loan_amount_total {
    type: sum
    sql: ${loan_amount_total} ;;  }
  measure: average_loan_amount_total {
    type: average
    sql: ${loan_amount_total} ;;  }
  # Dates and timestamps can be represented in Looker using a dimension group of type: time.
  # Looker converts dates and timestamps to the specified timeframes within the dimension group.

  dimension_group: loan_end {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Loan End Date" ;;
  }

  dimension: loan_fees__total {
    type: number
    sql: ${TABLE}."Loan Fees  (total)" ;;
  }

  dimension: loan_fees_for_the_month {
    type: number
    sql: ${TABLE}."Loan Fees (for the month)" ;;
  }

  dimension: loan_interests_for_the_month {
    type: number
    sql: ${TABLE}."Loan Interests (for the month)" ;;
  }

  dimension: loan_interests_total {
    type: number
    sql: ${TABLE}."Loan Interests (total)" ;;
  }

  dimension_group: loan_start {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Loan Start Date" ;;
  }

  dimension: loan_type {
    type: string
    sql: ${TABLE}."Loan Type" ;;
  }

  dimension_group: month_snapshot {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."Month Snapshot" ;;
  }
  measure: count {
    type: count
  }
}
