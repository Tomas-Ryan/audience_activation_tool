project_name: "audience_building_tool"

# Used in google_analytics_block.model connection param
constant: CONNECTION_NAME {
  value: "samsung-looker-emea"
  export: override_required
}

# Used in ga_sessions.view sql_table_name
constant: SCHEMA_NAME {
  value: "01_dl_seuk_gb_ga360_159092699"
  export: override_optional
}

constant: GA360_TABLE_NAME {
  value: "ga_sessions_*"
  export: override_optional
}

constant: PDT_DATE_FILTER {
  value: "last 5 years"
  export: override_optional
}

constant: EXPLORE_DATE_FILTER {
  value: "last 5 years"
  export: override_optional
}

####

application: ga360_audience_selector {
  label: "GA360 Audience Builder"
  #when dev complete will host from a file in the instance such as commented below
  file: "bundle.js"
  #starting in 7.10 you will need to pay more attention to this "entitlements" parameter
  entitlements: {
    local_storage: yes
    use_embeds: yes
    external_api_urls: ["https://europe-west1-samsung-looker-emea.cloudfunctions.net","https://localhost:8080","http://localhost:8080","https://europe-west1-samsung-looker-emea.cloudfunctions.net"]
    # allow_same_origin: yes (depreciated this entitlement in update 7.18 in favor of "use embeds" which you can see above)
  }
}
