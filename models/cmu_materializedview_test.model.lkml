connection: "bq_faa"

# include all the views
include: "/views/**/*.view.lkml"
include: "/explores/test_materialized_view.explore"

datagroup: cmu_materializedview_test_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cmu_materializedview_test_default_datagroup

explore: carriers {}

explore: flights {}

explore: airports {}
