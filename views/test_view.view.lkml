view: test_view {
  derived_table: {
    # materialized_view: yes
    # sql_trigger_value: SELECT CURRENT_DATE() ;;
    # interval_trigger: "1 hours"
    # persist_for: "8 hours"

    sql:
      SELECT
          full_name AS full_name

        FROM looker-eng.faa.airports
      ;;
    # datagroup_trigger: dg_for_test_view
    }

    dimension: full_name {
      type: string
      sql: ${TABLE}.full_name ;;
    }

 }
