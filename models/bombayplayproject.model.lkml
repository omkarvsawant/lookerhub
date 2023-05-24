# Define the database connection to be used for this model.

connection: "bombayplaybqconnection"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: bombayplayproject_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: bombayplayproject_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Bombayplayproject"

explore: firebasedatatable {
  join: firebasedatatable__event_params {
    view_label: "Firebasedatatable: Event Params"
    sql: LEFT JOIN UNNEST(${firebasedatatable.event_params}) as firebasedatatable__event_params ;;
    relationship: one_to_many
  }

  join: firebasedatatable__user_properties {
    view_label: "Firebasedatatable: User Properties"
    sql: LEFT JOIN UNNEST(${firebasedatatable.user_properties}) as firebasedatatable__user_properties ;;
    relationship: one_to_many
  }
}
explore: streamingdatatable {

}
explore: comparativeanalysisdatatable{

}
