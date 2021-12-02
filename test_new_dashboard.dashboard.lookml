- dashboard: audience_builder_new_dashboard_test
  title: "NEW Dashboard Audience Builder Test"
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Unique Visitors - 7 Days
    name: Unique Visitors - 7 Days
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 0
    col: 0
    width: 4
    height: 2
  - title: Unique Visitors - 30 Days
    name: Unique Visitors - 30 Days
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-07-03  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 0
    col: 4
    width: 4
    height: 2
  - title: Unique Visitors - 180 Days
    name: Unique Visitors - 180 Days
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-02-03  to  2017-08-03
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: change
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    up_color: "#3EB0D5"
    down_color: "#B1399E"
    total_color: "#C2DD67"
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 0
    col: 8
    width: 4
    height: 2
  - title: New vs Returning Users (Last 30 Days)
    name: New vs Returning Users (Last 30 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_pie
    fields: [ga_sessions.unique_visitors, ga_sessions.usertype]
    filters:
      ga_sessions.partition_date: 2017-07-03  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    series_colors:
      New Visitor: "#f3061a"
      Returning Visitor: "#858785"
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 2
    col: 0
    width: 6
    height: 6
  - title: Traffic Over Time
    name: Traffic Over Time
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields: [ga_sessions.partition2_week, ga_sessions.unique_visitors, totals.timeonsite_average_per_session]
    fill_fields: [ga_sessions.partition2_week]
    filters:
      ga_sessions.partition_date: 2017-02-11  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc, ga_sessions.partition2_week desc]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Week
    hidden_series: []
    font_size: 12px
    series_types:
      ga_sessions.unique_visitors: column
    series_colors:
      ga_sessions.unique_visitors: "#858785"
      totals.timeonsite_average_per_session: "#F3061A"
    trend_lines: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 0
    col: 12
    width: 12
    height: 8
  - title: Top Brand Sites (Last 7 Days)
    name: Top Brand Sites (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.unique_visitors, hits_page.hostName]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      hits_page.hostName: Brand Site
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
        palette:
          palette_id: 79d26899-f84a-1dbe-8876-421359431e52
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#858785"
          - "#F3061A"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 8
    col: 0
    width: 6
    height: 6
  - title: Top Traffic Sources (Last 7 Days)
    name: Top Traffic Sources (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.unique_visitors, trafficSource.source]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
        palette:
          palette_id: 1d84caeb-d721-5259-2ab6-a1c05a5e654f
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#858785"
          - "#F3061A"
    header_background_color: ''
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 8
    col: 18
    width: 6
    height: 6
  - title: Top Product Need States (Last 7 Days)
    name: Top Product Need States (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [hits_item.productCategory, ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      ga360_product_hierarchy.dimension63: Product Need State
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
        palette:
          palette_id: 9e444d77-ebea-f83a-e704-1d254ccc1080
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#858785"
          - "#F3061A"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 8
    col: 6
    width: 6
    height: 6
  - title: Sessions by Day (Last 7 Days)
    name: Sessions by Day (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_pie
    fields: [ga_sessions.unique_visitors, hits.hit_day_of_week]
    fill_fields: [hits.hit_day_of_week]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    value_labels: legend
    label_type: labPer
    inner_radius: 50
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      custom:
        id: b422fcf7-c86e-b048-2166-c2bac41fa05a
        label: Custom
        type: continuous
        stops:
        - color: "#F3061A"
          offset: 0
        - color: "#858785"
          offset: 100
      options:
        steps: 5
        reverse: false
    series_colors: {}
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    hide_totals: false
    hide_row_totals: false
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 2
    col: 6
    width: 6
    height: 6
  - title: By Product Sub-Segment
    name: By Product Sub-Segment
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.unique_visitors, hits_item.productName]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
        palette:
          palette_id: b14a6efe-92dd-de97-7598-ecac67308b00
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#858785"
          - "#F3061A"
    value_labels: legend
    label_type: labPer
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 8
    col: 12
    width: 6
    height: 6
#  - title: Traffic by Location
#    name: Traffic by Location
#    model: google_analytics_block
#    explore: ga_sessions
#    type: looker_map
#    fields: [geoNetwork.location, ga_sessions.unique_visitors]
#    filters:
#      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
#      geoNetwork.country: Canada
#    sorts: [ga_sessions.unique_visitors desc]
#    limit: 500
#    map_plot_mode: points
#    heatmap_gridlines: true
#    heatmap_gridlines_empty: false
#    heatmap_opacity: 0.5
#    show_region_field: true
#    draw_map_labels_above_data: true
#    map_tile_provider: light
#    map_position: custom
#    map_scale_indicator: 'off'
#    map_pannable: true
#    map_zoomable: true
#    map_marker_type: circle
#   map_marker_icon_name: default
#    map_marker_radius_mode: proportional_value
#    map_marker_units: pixels
#    map_marker_proportional_scale_type: linear
#    map_marker_color_mode: fixed
#    show_view_names: false
#    show_legend: true
#    quantize_map_value_colors: false
#    reverse_map_value_colors: false
#    map_latitude: 55.46367450516698
#    map_longitude: -95.01594543457033
#    map_zoom: 4
#    map_marker_radius_max: 20
#    map_marker_color: ["#F3061A"]
#    series_types: {}
#    defaults_version: 1
#    listen:
#      Brand Site: hits_page.hostName
#      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
#      Medium (the media channel that brought a user to site): trafficSource.medium
#      Source (Site that brought in traffic): trafficSource.source
#      Page Path: hits_page.pagePath
#      Event Category: hits_eventInfo.eventCategory
#      Time on Site (in seconds): totals.timeonsite
#    row: 20
#    col: 0
#    width: 24
#    height: 14
  - title: Event Category Volume (7 Days)
    name: Event Category Volume (7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [hits_eventInfo.eventCategory, ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
        palette:
          palette_id: e7b95bcc-dc67-6942-d3af-f9d07128f4fd
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#858785"
          - "#f70a02"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 14
    col: 18
    width: 6
    height: 6
  - title: Time on Site (7 Days)
    name: Time on Site (7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_bar
    fields: [totals.timeonsite_tier, ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
      totals.timeonsite_tier: "-Undefined"
    sorts: [totals.timeonsite_tier]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    x_axis_label: Seconds on Site
    series_types: {}
    series_colors:
      ga_sessions.unique_visitors: "#f70a02"
    defaults_version: 1
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 14
    col: 12
    width: 6
    height: 6
  - title: Page Traffic (7 Days)
    name: Page Traffic (7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [first_page.pagePath, ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 2017-07-26  to  2017-08-03
      first_page.pagePath: "-/"
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      ga_sessions.unique_visitors:
        is_active: true
        palette:
          palette_id: bd05ce6d-e7a4-8637-56db-ce183ded8719
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
          custom_colors:
          - "#858785"
          - "#f70a02"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Brand Site: hits_page.hostName
      New vs Returning Visitor (leave blank to include both): ga_sessions.usertype
      Medium (the media channel that brought a user to site): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
    row: 14
    col: 0
    width: 12
    height: 6
  filters:
  - name: Brand Site
    title: Brand Site
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: hits_page.hostName
  - name: New vs Returning Visitor (leave blank to include both)
    title: New vs Returning Visitor (leave blank to include both)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - New Visitor
      - Returning Visitor
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.usertype
  - name: Medium (the media channel that brought a user to site)
    title: Medium (the media channel that brought a user to site)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - affiliate
      - banner
      - cpc
      - cpm
      - organic
      - "(none)"
      - referral
      - Social
      - Display
      - Email
      - Video
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: trafficSource.medium
  - name: Source (Site that brought in traffic)
    title: Source (Site that brought in traffic)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
      options:
      - "(direct)"
      - google
      - dbm
      - Facebook
      - bing
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: trafficSource.source
  - name: Page Path
    title: Page Path
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: hits_page.pagePath
  - name: Event Category
    title: Event Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
      options:
      - click tracking
      - coupon
      - download link
      - ecommerce
      - engagement
      - eretailer
      - faq
      - ingredients
      - internal search
      - link tracking
      - log in
      - log out
      - outbound link
      - poll
      - product rating
      - registration
      - social
      - undefined
      - video
      - wtb 2.0
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: hits_eventInfo.eventCategory
  - name: Time on Site (in seconds)
    title: Time on Site (in seconds)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: totals.timeonsite
