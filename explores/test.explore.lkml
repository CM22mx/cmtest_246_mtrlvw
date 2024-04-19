include: "/views/test_view.view.lkml"
include: "/datagroups/datagroup_for_test_view.lkml"

explore: test_view {
  label: "testing"
  # persist_for: "8 hours"
  # datagroup_trigger: dg_for_test_view   #This throws an error - datagrouptrigger belongs in the view not in the explore (see example at: https://cloud.google.com/looker/docs/reference/param-view-datagroup-trigger)
  persist_with: dg_for_test_view
}
