connection: "samsung-looker-emea"

label: "Audience Building Tool (test)"

# include all the views
include: "*.view*"
# =include: "data_tests.lkml"

# include all the dashboards
include: "*.dashboard"

# below section is where each individual market's "explore" is generated

explore: audience_suggest {
  label: "audience_suggestions"
}

explore: ga_sessions {
  label: "GA 360 Sessions - Global"
  extends: [ga_sessions_block]
}


persist_with: once_weekly

### PDT Timeframes

datagroup: once_daily {
  max_cache_age: "24 hours"
  sql_trigger: SELECT current_date() ;;
}

datagroup: once_weekly {
  max_cache_age: "168 hours"
  sql_trigger: SELECT extract(week from current_date()) ;;
}

datagroup: once_monthly {
  max_cache_age: "720 hours"
  sql_trigger: SELECT extract(month from current_date()) ;;
}

datagroup: once_yearly {
  max_cache_age: "9000 hours"
  sql_trigger: SELECT extract(year from current_date()) ;;
}
