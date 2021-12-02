- dashboard: audience_builder_test
  title:  Test Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  elements:
  - title: Unique Visitors - 7 Days
    name: Unique Visitors - 7 Days
    model: google_analytics_block
    # edit explore below to be specific to new market's explore
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName
      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 0
    col: 0
    width: 6
    height: 5
  - title: Unique Visitors - 30 Days
    name: Unique Visitors - 30 Days
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 30 days ago for 30 days

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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 0
    col: 6
    width: 5
    height: 5
  - title: Unique Visitors - 365 Days
    name: Unique Visitors - 365 Days
    model: google_analytics_block
    explore: ga_sessions
    type: single_value
    fields: [ga_sessions.unique_visitors]
    filters:
      ga_sessions.partition_date: 365 days ago for 365 days

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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 0
    col: 11
    width: 5
    height: 5
  - title: New vs Returning Visitors (Last 7 Days)
    name: New vs Returning Visitors (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_pie
    fields: [ga_sessions.unique_visitors, ga_sessions.usertype]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days

    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 0
    col: 16
    width: 8
    height: 6
  - title: Traffic Over Time
    name: Traffic Over Time
    model: google_analytics_block
    explore: ga_sessions
    type: looker_line
    fields: [ga_sessions.partition_week, ga_sessions.unique_visitors, totals.timeonsite_average_per_session]
    fill_fields: [ga_sessions.partition_week]
    filters:
      ga_sessions.partition_date: 10 weeks ago for 10 weeks

    sorts: [ga_sessions.unique_visitors desc, ga_sessions.partition_week desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    show_null_points: true
    interpolation: linear
    y_axes: [{label: '', orientation: left, series: [{axisId: ga_sessions.unique_visitors,
            id: ga_sessions.unique_visitors, name: Unique Visitors}], showLabels: false,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}, {label: !!null '', orientation: right, series: [{axisId: totals.timeonsite_average_per_session,
            id: totals.timeonsite_average_per_session, name: Time On Site Average
              Per Session}], showLabels: false, showValues: false, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    hidden_series: []
    series_types:
      ga_sessions.unique_visitors: column
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 5
    col: 0
    width: 16
    height: 7
  - title: Top Host Names (Last 7 Days)
    name: Top Host Names (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.unique_visitors, hits_page.hostName, totals.timeonsite_average_per_session]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days

    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 12
    col: 0
    width: 8
    height: 9
  - title: Top Traffic Sources (Last 7 Days)
    name: Top Traffic Sources (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.unique_visitors, totals.timeonsite_average_per_session, trafficSource.source]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days

    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 12
    col: 16
    width: 8
    height: 9
  - title: Top Product Need States (Last 7 Days)
    name: Top Product Need States (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga360_product_hierarchy.dimension63, ga_sessions.unique_visitors, totals.timeonsite_average_per_session]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days

    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 12
    col: 8
    width: 8
    height: 9
  - title: Sessions by Day (Last 7 Days)
    name: Sessions by Day (Last 7 Days)
    model: google_analytics_block
    explore: ga_sessions
    type: looker_pie
    fields: [ga_sessions.unique_visitors, hits.hit_day_of_week]
    fill_fields: [hits.hit_day_of_week]
    filters:
      ga_sessions.partition_date: 7 days ago for 7 days

    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
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
      Existing Audience (OR): audience_or.audience
      Existing Audience (AND): audience_and1.audience
      'Existing Audience (AND) #2': audience_and2.audience
      'Existing Audience (AND) #3': audience_and3.audience
      Host Name (Site or property a user has visited): hits_page.hostName

      Medium (Type of referral that brought in traffic): trafficSource.medium
      Source (Site that brought in traffic): trafficSource.source
      Page Path: hits_page.pagePath
      Event Category: hits_eventInfo.eventCategory
      Time on Site (in seconds): totals.timeonsite
      Product GFO (cd61): ga360_product_hierarchy.dimension61
      Product Sub Brand (cd62): ga360_product_hierarchy.dimension62
      Product Need State (cd63): ga360_product_hierarchy.dimension63
      Product Sub Category (cd64): ga360_product_hierarchy.dimension64
      Product Segment (cd65): ga360_product_hierarchy.dimension65
      Product Sub Segment (cd66): ga360_product_hierarchy.dimension66
      User Type (includes both by default): ga_sessions.usertype
    row: 6
    col: 16
    width: 8
    height: 6
  - title: By Product Sub-Segment
    name: By Product Sub-Segment
    model: google_analytics_block
    explore: ga_sessions
    type: looker_grid
    fields: [ga_sessions.unique_visitors, totals.timeonsite_average_per_session, ga360_product_hierarchy.dimension66]
    filters:
      ga_sessions.partition_date: 30 days ago for 30 days
      hits_page.hostName: ''
      trafficSource.medium: ''
      trafficSource.source: ''
      hits_page.pagePath: ''
      hits_eventInfo.eventCategory: ''
      totals.timeonsite: ''
      ga360_product_hierarchy.dimension62: ''
      ga360_product_hierarchy.dimension63: ''
      ga360_product_hierarchy.dimension64: ''
      ga360_product_hierarchy.dimension65: ''
      ga360_product_hierarchy.dimension66: ''
      ga360_product_hierarchy.dimension61: ''
      audience_or.audience: ''
      audience_and1.audience: ''
      audience_and2.audience: ''
      audience_and3.audience: ''
    sorts: [ga_sessions.unique_visitors desc]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
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
      User Type (includes both by default): ga_sessions.usertype
    row: 21
    col: 0
    width: 8
    height: 6
  filters:
  - name: Existing Audience (OR)
    title: Existing Audience (OR)
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
    field: audience_or.audience
  - name: Existing Audience (AND)
    title: Existing Audience (AND)
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: audience_and1.audience
  - name: 'Existing Audience (AND) #2'
    title: 'Existing Audience (AND) #2'
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: audience_and2.audience
  - name: 'Existing Audience (AND) #3'
    title: 'Existing Audience (AND) #3'
    type: field_filter
    default_value: ''
    allow_multiple_values: false
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: audience_and3.audience
  - name: Host Name (Site or property a user has visited)
    title: Host Name (Site or property a user has visited)
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
  - name: User Type (includes both by default)
    title: User Type (includes both by default)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
      options:
      - New Visitor
      - Returning Visitor
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: ga_sessions.usertype
  - name: Medium (Type of referral that brought in traffic)
    title: Medium (Type of referral that brought in traffic)
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
      display: inline
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
  - name: Product GFO (cd61)
    title: Product GFO (cd61)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
      options:
      - Essential Health
      - Self Care
      - Skin Health
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: []
    field: ga360_product_hierarchy.dimension61
  - name: Product Sub Brand (cd62)
    title: Product Sub Brand (cd62)
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
    field: ga360_product_hierarchy.dimension62
  - name: Product Need State (cd63)
    title: Product Need State (cd63)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: google_analytics_block
    explore: ga_sessions
    listens_to_filters: [Host Name (Site or property a user has visited)]
    field: ga360_product_hierarchy.dimension63
  - name: Product Sub Category (cd64)
    title: Product Sub Category (cd64)
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
    field: ga360_product_hierarchy.dimension64
  - name: Product Segment (cd65)
    title: Product Segment (cd65)
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
    field: ga360_product_hierarchy.dimension65
  - name: Product Sub Segment (cd66)
    title: Product Sub Segment (cd66)
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
    field: ga360_product_hierarchy.dimension66
