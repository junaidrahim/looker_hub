# Define the database connection to be used for this model.
connection: "dbt_food_beverage"

# include all the views
include: "/views/**/*.view.lkml"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: hub_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: hub_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Hub"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: client_branch_loan_cleansed {}

explore: client_branch_loan_summary {}

explore: contractor {}

explore: dbt_metrics_default_calendar {}

explore: instacart_ad_spend_by_user {}

explore: instacart_all_order_products_user {}

explore: instacart_beverages_order_analysis {}

explore: instacart_beverages_order_customer {}

explore: instacart_mkt_spend_by_user {}

explore: instacart_order_products_users_time_master {}

explore: instacart_products {}

explore: instacart_total_users {}

explore: permit {}

explore: sales_mkt_ad_expenses {}

explore: sales_mkt_total_expenses {}

explore: stg_salesforce__account {}

explore: stg_salesforce__account_tmp {}

explore: stg_salesforce__contact {}

explore: stg_salesforce__contact_tmp {}

explore: stg_salesforce__opportunity {}

explore: stg_salesforce__opportunity_tmp {}

explore: stg_salesforce__user {}

explore: stg_salesforce__user_tmp {}

