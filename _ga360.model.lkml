connection: "samsung-looker-emea"

# include all the views
include: "*.view*"
# =include: "data_tests.lkml"

# include all the dashboards
#include: "*.dashboard"



explore: ga_sessions_base {

  always_filter: {
    filters: {
      field: ga_sessions.partition_date
      value: "7 days ago for 7 days"
      ## Partition Date should always be set to a recent date to avoid runaway queries
    }
    filters: {
      field: ga360_product_hierarchy.dimension63
      value: "-NULL"
      ## Partition Date should always be set to a recent date to avoid runaway queries
    }
  }

  # sql_always_where: ${hits_page.hostName} like  '%.ca' ;;

  persist_for: "1 hour"
  extension: required

  view_name: ga_sessions
  view_label: "Session"

  join: totals {
    view_label: "Session"
    sql: LEFT JOIN UNNEST([${ga_sessions.totals}]) as totals ;;
    relationship: one_to_one
  }

  join: trafficSource {
    view_label: "Session: Traffic Source"
    sql: LEFT JOIN UNNEST([${ga_sessions.trafficSource}]) as trafficSource ;;
    relationship: one_to_one
  }

  join: device {
    view_label: "Session: Device"
    sql: LEFT JOIN UNNEST([${ga_sessions.device}]) as device ;;
    relationship: one_to_one
  }

  join: geoNetwork {
    view_label: "Session: Geo Network"
    sql: LEFT JOIN UNNEST([${ga_sessions.geoNetwork}]) as geoNetwork ;;
    relationship: one_to_one
  }

  join: hits {
    view_label: "Session: Hits"
    sql: LEFT JOIN UNNEST(${ga_sessions.hits}) as hits ;;
    relationship: one_to_many
  }

  join: hits_page {
    view_label: "Session: Hits: Page"
    sql: LEFT JOIN UNNEST([${hits.page}]) as hits_page ;;
    relationship: one_to_one
  }

  join: hits_transaction {
    view_label: "Session: Hits: Transaction"
    sql: LEFT JOIN UNNEST([${hits.transaction}]) as hits_transaction ;;
    relationship: one_to_one
  }

  join: hits_item {
    view_label: "Session: Hits: Item"
    sql: LEFT JOIN UNNEST([${hits.item}]) as hits_item ;;
    relationship: one_to_one
  }

  join: hits_product {
    view_label: "Session: Hits: product"
    sql: LEFT JOIN UNNEST(${hits.product}) as hits_product ;;
    relationship: one_to_one
  }

  join: audience_or {
    view_label: "Existing Audience (OR)"
    from: user_list
    relationship: one_to_many
    sql_on:    ${ga_sessions.clientId} = ${audience_or.clientId}
      ;;
  }

  join: audience_and1 {
    view_label: "Existing Audience (AND) #1"
    from: user_list
    relationship: one_to_many
    sql_on:    ${ga_sessions.clientId} = ${audience_and1.clientId}
      ;;
  }

  join: audience_and2 {
    view_label: "Existing Audience (AND) #2"
    from: user_list
    relationship: one_to_many
    sql_on:    ${ga_sessions.clientId} = ${audience_and2.clientId}
      ;;
  }

  join: audience_and3 {
    view_label: "Existing Audience (AND) #3"
    from: user_list
    relationship: one_to_many
    sql_on:    ${ga_sessions.clientId} = ${audience_and3.clientId}
      ;;
  }


  join: ga360_product_hierarchy {
    relationship: one_to_one
    sql_on: ${hits_product.productSKU} = ${ga360_product_hierarchy.product_sku} ;;
  }

  join: hits_social {
    view_label: "Session: Hits: Social"
    sql: LEFT JOIN UNNEST([${hits.social}]) as hits_social ;;
    relationship: one_to_one
  }

  join: hits_publisher {
    view_label: "Session: Hits: Publisher"
    sql: LEFT JOIN UNNEST([${hits.publisher}]) as hits_publisher ;;
    relationship: one_to_one
  }

  join: hits_appInfo {
    view_label: "Session: Hits: App Info"
    sql: LEFT JOIN UNNEST([${hits.appInfo}]) as hits_appInfo ;;
    relationship: one_to_one
  }

  join: hits_eventInfo{
    view_label: "Session: Hits: Events Info"
    sql: LEFT JOIN UNNEST([${hits.eventInfo}]) as hits_eventInfo ;;
    relationship: one_to_one
  }


  join: hits_customDimensions {
    view_label: "Session: Hits: Custom Dimensions"
    sql: LEFT JOIN UNNEST(${hits.customDimensions}) as hits_customDimensions ;;
    relationship: one_to_many
  }
  join: hits_customVariables{
    view_label: "Session: Hits: Custom Variables"
    sql: LEFT JOIN UNNEST(${hits.customVariables}) as hits_customVariables ;;
    relationship: one_to_many
  }
  join: first_hit {
    from: hits
    sql: LEFT JOIN UNNEST(${ga_sessions.hits}) as first_hit ;;
    relationship: one_to_one
    sql_where: ${first_hit.hitNumber} = 1 ;;
    fields: [first_hit.page]
  }
  join: first_page {
    view_label: "Session: First Page Visited"
    from: hits_page
    sql: LEFT JOIN UNNEST([${first_hit.page}]) as first_page ;;
    relationship: one_to_one
  }
}
