datagroup: dg_for_test_view {
  sql_trigger: SELECT EXTRACT(HOUR FROM CURRENT_TIMESTAMP()) ;;
  description: "Triggers a rebuild every hour"
}
