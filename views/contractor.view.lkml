# The name of this view in Looker is "Contractor"
view: contractor {
  # The sql_table_name parameter indicates the underlying database table
  # to be used for all fields in this view.
  sql_table_name: "PUBLIC"."CONTRACTOR" ;;
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
    # This dimension will be called "Address1" in Explore.

  dimension: address1 {
    type: string
    sql: ${TABLE}."ADDRESS1" ;;
  }

  dimension: address2 {
    type: string
    sql: ${TABLE}."ADDRESS2" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: companydesc {
    type: string
    sql: ${TABLE}."COMPANYDESC" ;;
  }

  dimension: companyname {
    type: string
    sql: ${TABLE}."COMPANYNAME" ;;
  }

  dimension: fullname {
    type: string
    sql: ${TABLE}."FULLNAME" ;;
  }

  dimension: phone {
    type: string
    sql: ${TABLE}."PHONE" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: zip {
    type: zipcode
    sql: ${TABLE}."ZIP" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, companyname, fullname]
  }
}
