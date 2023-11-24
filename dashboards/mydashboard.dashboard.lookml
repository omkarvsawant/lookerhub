- dashboard: bombay_play_dashboard
  title: Bombay Play Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  crossfilter_enabled: true
  description: ''
  refresh: 1 hour
  preferred_slug: 9CTLvqbZ79INCIDGWTaPXh
  elements:
  - title: Device Segmentation
    name: Device Segmentation
    model: bombayplayproject
    explore: firebasedatatable
    type: looker_pie
    fields: [firebasedatatable.device__category, firebasedatatable.count]
    sorts: [firebasedatatable.count desc 0]
    limit: 500
    column_limit: 50
    value_labels: labels
    label_type: labPer
    color_application:
      collection_id: create-a-color-collection
      palette_id: create-a-color-collection-categorical-0
      options:
        steps: 5
        reverse: false
    series_colors:
      mobile: "#2f66f2"
      tablet: "#39ba1a"
    hidden_pivots: {}
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
    defaults_version: 1
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 0
    col: 17
    width: 7
    height: 7
  - title: Mobile Phone Market Share
    name: Mobile Phone Market Share
    model: bombayplayproject
    explore: firebasedatatable
    type: looker_column
    fields: [firebasedatatable.device__operating_system, firebasedatatable.count]
    sorts: [firebasedatatable.count desc 0]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: asc
    show_null_labels: true
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: create-a-color-collection
      palette_id: create-a-color-collection-categorical-0
      options:
        steps: 5
        reverse: false
    y_axes: [{label: '', orientation: left, series: [{axisId: firebasedatatable.count,
            id: firebasedatatable.count, name: Count of Users}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_zoom: true
    y_axis_zoom: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    series_colors:
      mobile: "#2f66f2"
      tablet: "#39ba1a"
    series_labels:
      firebasedatatable.count: Count of Users
    value_labels: labels
    label_type: labPer
    hidden_pivots: {}
    defaults_version: 1
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 7
    col: 0
    width: 9
    height: 7
  - title: Source of Download
    name: Source of Download
    model: bombayplayproject
    explore: firebasedatatable
    type: looker_waterfall
    fields: [firebasedatatable.count, firebasedatatable.app_info__install_source]
    sorts: [firebasedatatable.count desc 0]
    limit: 500
    column_limit: 50
    up_color: "#FBBC04"
    down_color: "#34A853"
    total_color: "#e4e4eb"
    show_value_labels: true
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
    chart_type: Bar
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
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 7
    col: 9
    width: 9
    height: 7
  - title: Continent Wise Type Distribution
    name: Continent Wise Type Distribution
    model: bombayplayproject
    explore: firebasedatatable
    type: looker_waterfall
    fields: [firebasedatatable.geo__continent, firebasedatatable.device__operating_system]
    sorts: [firebasedatatable.geo__continent]
    limit: 500
    column_limit: 50
    up_color: "#faa26b"
    down_color: "#34A853"
    total_color: "#2d8deb"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: false
    color_application:
      collection_id: degrees
      palette_id: degrees-categorical-0
      options:
        steps: 5
        reverse: false
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    legend_position: center
    font_size: 12
    point_style: none
    series_colors: {}
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    chart_type: Bar
    defaults_version: 1
    show_null_points: true
    value_labels: legend
    label_type: labPer
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 0
    col: 0
    width: 10
    height: 7
  - title: Country Wise LTV
    name: Country Wise LTV
    model: bombayplayproject
    explore: firebasedatatable
    type: looker_pie
    fields: [firebasedatatable.geo__country, firebasedatatable.total_user_ltv__revenue]
    filters:
      firebasedatatable.total_user_ltv__revenue: ">0"
    sorts: [firebasedatatable.geo__country]
    limit: 500
    column_limit: 50
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: true
    series_colors: {}
    up_color: "#faa26b"
    down_color: "#34A853"
    total_color: "#2d8deb"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: false
    x_axis_gridlines: false
    show_view_names: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    legend_position: center
    font_size: 12
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    chart_type: Bar
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 0
    col: 10
    width: 7
    height: 7
  - title: Regional Distribution
    name: Regional Distribution
    model: bombayplayproject
    explore: firebasedatatable
    type: tree_vis
    fields: [firebasedatatable.count, firebasedatatable.geo__region]
    filters:
      firebasedatatable.geo__region: "-NULL"
    sorts: [firebasedatatable.count desc 0]
    limit: 500
    column_limit: 50
    hidden_fields: []
    hidden_points_if_no: []
    show_view_names: false
    color_range: ["#29bff3", "#93afbb", "#0872a8", "#6d6d6d"]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: true
    series_colors: {}
    up_color: "#faa26b"
    down_color: "#34A853"
    total_color: "#2d8deb"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: false
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    legend_position: center
    font_size: 12
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    chart_type: Bar
    defaults_version: 0
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
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
    groupBars: true
    labelSize: 10pt
    showLegend: true
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 14
    col: 0
    width: 24
    height: 7
  - title: Drill Fields Demo
    name: Drill Fields Demo
    model: bombayplayproject
    explore: firebasedatatable
    type: looker_grid
    fields: [firebasedatatable.geo__region, firebasedatatable.count]
    filters:
      firebasedatatable.geo__region: "-NULL"
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
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_range: ["#29bff3", "#93afbb", "#0872a8", "#6d6d6d"]
    value_labels: legend
    label_type: labPer
    inner_radius: 40
    color_application:
      collection_id: google
      palette_id: google-categorical-0
      options:
        steps: 5
        reverse: true
    series_colors: {}
    up_color: "#faa26b"
    down_color: "#34A853"
    total_color: "#2d8deb"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: false
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    x_axis_zoom: true
    y_axis_zoom: true
    trellis: ''
    stacking: ''
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    legend_position: center
    font_size: 12
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    chart_type: Bar
    defaults_version: 1
    show_null_points: true
    interpolation: linear
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    hidden_fields: []
    hidden_points_if_no: []
    hidden_pivots: {}
    map: auto
    map_projection: ''
    quantize_colors: false
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    groupBars: true
    labelSize: 10pt
    showLegend: true
    refresh: 1 hour
    listen:
      Device Operating System: firebasedatatable.device__operating_system
      Geo Country: firebasedatatable.geo__country
    row: 21
    col: 0
    width: 24
    height: 7
  filters:
  - name: Geo Country
    title: Geo Country
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: bombayplayproject
    explore: firebasedatatable
    listens_to_filters: []
    field: firebasedatatable.geo__country
  - name: Device Operating System
    title: Device Operating System
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: button_group
      display: inline
    model: bombayplayproject
    explore: firebasedatatable
    listens_to_filters: []
    field: firebasedatatable.device__operating_system
