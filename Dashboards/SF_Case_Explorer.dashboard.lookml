- dashboard: sf_case_explorer
  title: SF Case Explorer
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: hXuA2rEfrfRflJjD8ivESH
  elements:
  - title: Closed Cases WoW
    name: Closed Cases WoW
    model: sf_case_explorer
    explore: sf_case
    type: looker_column
    fields: [sf_case.count, sf_case.closed_week]
    fill_fields: [sf_case.closed_week]
    filters:
      sf_case.is_closed: 'Yes'
    sorts: [sf_case.closed_week desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: true
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    y_axes: [{label: '', orientation: right, series: [{axisId: sf_case.count, id: sf_case.count,
            name: Sf Case Count}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    x_axis_label: Week
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors: {}
    series_point_styles:
      sf_case.count: square
    trend_lines: [{color: "#ff7820", label_position: left, order: 3, period: 7, regression_type: linear,
        series_index: 1, show_label: true, label_type: string, label: Trend Line}]
    show_null_points: false
    interpolation: monotone
    swap_axes: false
    defaults_version: 1
    listen:
      Closed Week: sf_case.closed_week
      Case Sub Category: sf_case.sub_category_c
      User Name: sf_user.name
      Is Callback (Yes / No): sf_case.is_callback_c
      Case Origin Type: sf_case.origin
    row: 1
    col: 0
    width: 13
    height: 9
  - title: Case Sub_Type Dispersion
    name: Case Sub_Type Dispersion
    model: sf_case_explorer
    explore: sf_case
    type: looker_waterfall
    fields: [sf_case.sub_category_c, sf_case.count]
    filters:
      sf_case.is_closed: 'Yes'
    sorts: [sf_case.count desc 0]
    limit: 500
    column_limit: 50
    up_color: false
    down_color: false
    total_color: false
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Closed Week: sf_case.closed_week
      Case Sub Category: sf_case.sub_category_c
      User Name: sf_user.name
      Is Callback (Yes / No): sf_case.is_callback_c
      Case Origin Type: sf_case.origin
    row: 1
    col: 13
    width: 11
    height: 9
  - title: Case Detail
    name: Case Detail
    model: sf_case_explorer
    explore: sf_case
    type: looker_grid
    fields: [sf_case.case_number, sf_user.name, sf_case.origin, sf_case.sub_category_c,
      sf_case.created_date, sf_case.closed_date]
    filters:
      sf_case.is_closed: 'Yes'
      sf_case.is_closed_on_create: 'No'
    sorts: [sf_case.created_date desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: diff_minutes(${sf_case.created_date},${sf_case.closed_date})
      label: TTR
      value_format:
      value_format_name:
      dimension: ttr
      _kind_hint: dimension
      _type_hint: number
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
    defaults_version: 1
    listen:
      Closed Week: sf_case.closed_week
      Case Sub Category: sf_case.sub_category_c
      User Name: sf_user.name
      Is Callback (Yes / No): sf_case.is_callback_c
      Case Origin Type: sf_case.origin
    row: 16
    col: 0
    width: 13
    height: 7
  - name: SF Case Explorer
    type: text
    title_text: SF Case Explorer
    subtitle_text: ''
    body_text: ''
    row: 0
    col: 0
    width: 24
    height: 1
  - title: Cases by Owner ID
    name: Cases by Owner ID
    model: sf_case_explorer
    explore: sf_case
    type: looker_grid
    fields: [sf_case.count, sf_user.name, sf_user.pod_team_c, sf_user.department]
    filters:
      sf_case.is_closed: 'Yes'
    sorts: [sf_case.count desc 0]
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
    limit_displayed_rows: true
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    minimum_column_width: 75
    series_cell_visualizations:
      sf_case.count:
        is_active: true
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '25'
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
    show_null_points: true
    defaults_version: 1
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    value_labels: legend
    label_type: labPer
    listen:
      Closed Week: sf_case.closed_week
      Case Sub Category: sf_case.sub_category_c
      User Name: sf_user.name
      Is Callback (Yes / No): sf_case.is_callback_c
      Case Origin Type: sf_case.origin
    row: 16
    col: 13
    width: 11
    height: 7
  - title: AVG TTR WoW
    name: AVG TTR WoW
    model: sf_case_explorer
    explore: sf_case
    type: looker_area
    fields: [sf_case.closed_week, average_of_resolution_time_minutes]
    fill_fields: [sf_case.closed_week]
    filters:
      sf_case.is_closed: 'Yes'
    sorts: [sf_case.closed_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: round(diff_minutes(${sf_case.created_date},${sf_case.closed_date}),2)
      label: Resolution Time Minutes
      value_format:
      value_format_name:
      dimension: resolution_time_minutes
      _kind_hint: dimension
      _type_hint: number
    - category: measure
      expression: ''
      label: Average of Resolution Time Minutes
      value_format:
      value_format_name: decimal_2
      based_on: resolution_time_minutes
      _kind_hint: measure
      measure: average_of_resolution_time_minutes
      type: average
      _type_hint: number
      filters: {}
    - measure: median_of_resolution_time_minutes
      based_on: resolution_time_minutes
      expression: ''
      label: Median of Resolution Time Minutes
      type: median
      _kind_hint: measure
      _type_hint: number
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Closed Week: sf_case.closed_week
      Case Sub Category: sf_case.sub_category_c
      User Name: sf_user.name
      Is Callback (Yes / No): sf_case.is_callback_c
      Case Origin Type: sf_case.origin
    row: 10
    col: 5
    width: 19
    height: 6
  - title: Callback Cases
    name: Callback Cases
    model: sf_case_explorer
    explore: sf_case
    type: looker_area
    fields: [callback_case, sf_case.closed_week]
    fill_fields: [sf_case.closed_week]
    filters:
      sf_case.is_closed: 'Yes'
    sorts: [sf_case.closed_week desc]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: measure
      expression:
      label: Callback_Case
      value_format:
      value_format_name:
      based_on: sf_case.id
      _kind_hint: measure
      measure: callback_case
      type: count_distinct
      _type_hint: number
      filters:
        sf_case.is_callback_c: 'True'
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
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
    x_axis_zoom: true
    y_axis_zoom: true
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
    ordering: none
    show_null_labels: false
    listen:
      Closed Week: sf_case.closed_week
      Case Sub Category: sf_case.sub_category_c
      User Name: sf_user.name
      Is Callback (Yes / No): sf_case.is_callback_c
      Case Origin Type: sf_case.origin
    row: 23
    col: 5
    width: 19
    height: 6
  - name: TTR Calculation
    type: text
    title_text: TTR Calculation
    subtitle_text: ''
    body_text: |-
      (sf_case.created_date - sf_case.closed_date)

      *Note this calculation looks at the latest closed_date event.
    row: 10
    col: 0
    width: 5
    height: 6
  - name: Callback Cases (2)
    type: text
    title_text: Callback Cases
    subtitle_text: ''
    body_text: |-
      Callbacks cases are defines sf_case.isCallback = True.

      Origin must include 'PHONE' type to see callback case trends.
    row: 23
    col: 0
    width: 5
    height: 6
  filters:
  - name: Case Origin Type
    title: Case Origin Type
    type: field_filter
    default_value: '"WORK_ITEM"'
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: sf_case_explorer
    explore: sf_case
    listens_to_filters: []
    field: sf_case.origin
  - name: Is Callback (Yes / No)
    title: Is Callback (Yes / No)
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: inline
    model: sf_case_explorer
    explore: sf_case
    listens_to_filters: []
    field: sf_case.is_callback_c
  - name: Closed Week
    title: Closed Week
    type: field_filter
    default_value: 2023/07/01 to 2023/08/11
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: sf_case_explorer
    explore: sf_case
    listens_to_filters: []
    field: sf_case.closed_week
  - name: User Name
    title: User Name
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sf_case_explorer
    explore: sf_case
    listens_to_filters: []
    field: sf_user.name
  - name: Case Sub Category
    title: Case Sub Category
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: sf_case_explorer
    explore: sf_case
    listens_to_filters: []
    field: sf_case.sub_category_c
