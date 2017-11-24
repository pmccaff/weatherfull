connection: "fullscaleweatherdemo"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: all_records {}


explore: continents {}

explore: countries {
  join: continents {
    type: left_outer
    sql_on: ${countries.continent_id} = ${continents.continent_id} ;;
    relationship: many_to_one
  }
}

explore: records_view {}

explore: stations {}
