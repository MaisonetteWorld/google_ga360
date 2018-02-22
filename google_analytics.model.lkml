connection: "ga-stitch-looker"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

datagroup: google_analytics_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: google_analytics_default_datagroup

explore: _sdc_rejected {}

explore: report {}
