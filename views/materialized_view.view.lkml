
view: materialized_view {

    derived_table: {
      materialized_view: yes

      sql:
        SELECT
          full_name AS full_name

        FROM looker-eng.faa.airports
;;
    }

    dimension: full_name {
      type: string
      sql: ${TABLE}.full_name ;;
    }
  }
