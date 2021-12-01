view:  audience_suggest {
  derived_table: {
    sql: SELECT distinct audience as audience,
      FROM `samsung-looker-emea.audience_activation_tool.audience_list` ;;
    persist_for: "24 hours"
  }

  dimension: audience_suggests {
    type: string
    sql: ${TABLE}.audience ;;
  }

  dimension: audience_suggest0 {
    type: string
    sql: ${TABLE}.audience ;;
    # suggest_persist_for: "24 hours"
  }
#  audience0 is the dimension for "Existing Audience (OR)"

  dimension: audience_suggest1 {
    type: string
    sql: ${TABLE}.audience2 ;;
    # suggest_persist_for: "24 hours"
  }

  dimension: audience_suggest2 {
    type: string
    sql: ${TABLE}.audience3 ;;
    # suggest_persist_for: "24 hours"
  }
}
