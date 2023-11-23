# The name of this view in Looker is "Permit"
view: permit {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."PERMIT" ;;
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
    # This dimension will be called "Description" in Explore.

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: masterpermitnum {
    type: string
    sql: ${TABLE}."MASTERPERMITNUM" ;;
  }

  dimension: permitclass {
    type: string
    sql: ${TABLE}."PERMITCLASS" ;;
  }

  dimension: permitnum {
    type: string
    sql: ${TABLE}."PERMITNUM" ;;
  }

  dimension: permitstatus {
    type: string
    sql: ${TABLE}."PERMITSTATUS" ;;
  }

  dimension: proposeduse {
    type: string
    sql: ${TABLE}."PROPOSEDUSE" ;;
  }

  dimension: workclass {
    type: string
    sql: ${TABLE}."WORKCLASS" ;;
  }
  measure: count {
    type: count
    drill_fields: [id]
  }
}
