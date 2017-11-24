connection: "fullscaleweatherdemo"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: all_records {
  join: stations {
    type: left_outer
    sql_on: ${all_records.station_id} = ${stations.station_id} ;;
    relationship: many_to_one
  }

  join: continents {
    type: left_outer
    sql_on: ${all_records.continent_id} = ${continents.continent_id} ;;
    relationship: many_to_one
  }
}

explore: continents {}

explore: countries {
  join: continents {
    type: left_outer
    sql_on: ${countries.continent_id} = ${continents.continent_id} ;;
    relationship: many_to_one
  }
}

explore: records {
  join: stations {
    type: left_outer
    sql_on: ${records.station_id} = ${stations.station_id} ;;
    relationship: many_to_one
  }
}

explore: records_view {
  join: stations {
    type: left_outer
    sql_on: ${records_view.station_id} = ${stations.station_id} ;;
    relationship: many_to_one
  }
}

explore: staradaptors {}

explore: staraudit {}

explore: starcolumns {}

explore: starconstraints {}

explore: starfunctions {}

explore: starjobs {}

explore: starnodes {}

explore: starports {}

explore: starschemas {}

explore: starsequences {}

explore: starsources {}

explore: startables {}

explore: startrace {}

explore: starviews {}

explore: stations {}
