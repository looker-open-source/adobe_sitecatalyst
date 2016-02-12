- view: events
  sql_table_name: public.event_table -- update with event table name and relevant columns
  fields:

  ### PLEASE NOTE THAT SEVERAL FIELDS IN THE EVENTS TABLE WILL BE CUSTOMIZED FOR EACH USE,
  ### THESE FIELDS REQUIRE MANUAL INPUT FROM THE USER

  - dimension: accept_language
    sql: ${TABLE}.accept_language

  - dimension: browser
    sql: ${TABLE}.browser

  - dimension: browser_height
    sql: ${TABLE}.browser_height

  - dimension: browser_width
    sql: ${TABLE}.browser_width

  - dimension: c_color
    sql: ${TABLE}.c_color

  - dimension: campaign
    sql: ${TABLE}.campaign

  - dimension: channel
    sql: ${TABLE}.channel

  - dimension: click_action
    sql: ${TABLE}.click_action

  - dimension: click_action_type
    sql: ${TABLE}.click_action_type

  - dimension: click_context
    sql: ${TABLE}.click_context

  - dimension: click_context_type
    sql: ${TABLE}.click_context_type

  - dimension: click_sourceid
    sql: ${TABLE}.click_sourceid

  - dimension: click_tag
    sql: ${TABLE}.click_tag

  - dimension: code_ver
    sql: ${TABLE}.code_ver

  - dimension: color
    sql: ${TABLE}.color

  - dimension: connection_type
    sql: ${TABLE}.connection_type

  - dimension: cookies
    sql: ${TABLE}.cookies

  - dimension: country
    sql: ${TABLE}.country

  - dimension: ct_connect_type
    sql: ${TABLE}.ct_connect_type

  - dimension: curr_factor
    sql: ${TABLE}.curr_factor

  - dimension: curr_rate
    sql: ${TABLE}.curr_rate

  - dimension: currency
    sql: ${TABLE}.currency

  - dimension: cust_hit_time_gmt
    sql: ${TABLE}.cust_hit_time_gmt

  - dimension: cust_visid
    sql: ${TABLE}.cust_visid

  - dimension: daily_visitor
    sql: ${TABLE}.daily_visitor

  - dimension_group: event
    type: time
    timeframes: [time, date, week, month, year, month_num]
    sql: ${TABLE}.date_time
  
  - dimension: is_before_current_month
    hidden: true
    type: yesno
    sql: ${event_month_num} < EXTRACT(month from CURRENT_DATE)

  - dimension: domain
    sql: ${TABLE}.domain

  - dimension: duplicate_events
    sql: ${TABLE}.duplicate_events

  - dimension: duplicate_purchase
    sql: ${TABLE}.duplicate_purchase

  - dimension: duplicated_from
    sql: ${TABLE}.duplicated_from

  - dimension: evar1
    sql: ${TABLE}.evar1

   #### ADDITIONAL EVAR FIELDS ######

  - dimension: event_list
    sql: ${TABLE}.event_list

  - dimension: exclude_hit
    sql: ${TABLE}.exclude_hit

  - dimension: first_hit_page_url
    sql: ${TABLE}.first_hit_page_url

  - dimension: first_hit_pagename
    sql: ${TABLE}.first_hit_pagename

  - dimension: first_hit_referrer
    sql: ${TABLE}.first_hit_referrer

  - dimension: first_hit_time_gmt
    sql: ${TABLE}.first_hit_time_gmt

  - dimension: geo_city
    sql: ${TABLE}.geo_city

  - dimension: geo_country
    sql: ${TABLE}.geo_country

  - dimension: geo_dma
    sql: ${TABLE}.geo_dma

  - dimension: geo_region
    sql: ${TABLE}.geo_region

  - dimension: geo_zip
    sql: ${TABLE}.geo_zip

  - dimension: hier1
    sql: ${TABLE}.hier1

  - dimension: hier2
    sql: ${TABLE}.hier2

  - dimension: hier3
    sql: ${TABLE}.hier3

  - dimension: hier4
    sql: ${TABLE}.hier4

  - dimension: hier5
    sql: ${TABLE}.hier5

  - dimension: hit_source
    sql: ${TABLE}.hit_source

  - dimension: hit_time_gmt
    sql: ${TABLE}.hit_time_gmt

  - dimension: hitid_high
    sql: ${TABLE}.hitid_high

  - dimension: hitid_low
    sql: ${TABLE}.hitid_low

  - dimension: homepage
    sql: ${TABLE}.homepage

  - dimension: hourly_visitor
    sql: ${TABLE}.hourly_visitor

  - dimension: ip
    sql: ${TABLE}.ip

  - dimension: ip2
    sql: ${TABLE}.ip2

  - dimension: j_jscript
    sql: ${TABLE}.j_jscript

  - dimension: java_enabled
    sql: ${TABLE}.java_enabled

  - dimension: javascript
    sql: ${TABLE}.javascript

  - dimension: language
    sql: ${TABLE}.language

  - dimension: last_hit_time_gmt
    sql: ${TABLE}.last_hit_time_gmt

  - dimension: last_purchase_num
    sql: ${TABLE}.last_purchase_num

  - dimension: last_purchase_time_gmt
    sql: ${TABLE}.last_purchase_time_gmt

  - dimension: mobile_id
    sql: ${TABLE}.mobile_id

  - dimension: mobileaction
    sql: ${TABLE}.mobileaction

  - dimension: mobileappid
    sql: ${TABLE}.mobileappid

  - dimension: mobilecampaigncontent
    sql: ${TABLE}.mobilecampaigncontent

  - dimension: mobilecampaignmedium
    sql: ${TABLE}.mobilecampaignmedium

  - dimension: mobilecampaignname
    sql: ${TABLE}.mobilecampaignname

  - dimension: mobilecampaignsource
    sql: ${TABLE}.mobilecampaignsource

  - dimension: mobilecampaignterm
    sql: ${TABLE}.mobilecampaignterm

  - dimension: mobiledayofweek
    sql: ${TABLE}.mobiledayofweek

  - dimension: mobiledayssincefirstuse
    sql: ${TABLE}.mobiledayssincefirstuse

  - dimension: mobiledayssincelastuse
    sql: ${TABLE}.mobiledayssincelastuse

  - dimension: mobiledevice
    sql: ${TABLE}.mobiledevice

  - dimension: mobilehourofday
    sql: ${TABLE}.mobilehourofday

  - dimension: mobileinstalldate
    sql: ${TABLE}.mobileinstalldate

  - dimension: mobilelaunchnumber
    sql: ${TABLE}.mobilelaunchnumber

  - dimension: mobileltv
    sql: ${TABLE}.mobileltv

  - dimension: mobileosversion
    sql: ${TABLE}.mobileosversion

  - dimension: mobileresolution
    sql: ${TABLE}.mobileresolution

  - dimension: monthly_visitor
    sql: ${TABLE}.monthly_visitor

  - dimension: mvvar1
    sql: ${TABLE}.mvvar1

  - dimension: mvvar2
    sql: ${TABLE}.mvvar2

  - dimension: mvvar3
    sql: ${TABLE}.mvvar3

  - dimension: namespace
    sql: ${TABLE}.namespace

  - dimension: new_visit
    sql: ${TABLE}.new_visit

  - dimension: os
    sql: ${TABLE}.os

  - dimension: p_plugins
    sql: ${TABLE}.p_plugins

  - dimension: page_event
    sql: ${TABLE}.page_event

  - dimension: page_event_var1
    sql: ${TABLE}.page_event_var1

  - dimension: page_event_var2
    sql: ${TABLE}.page_event_var2

  - dimension: page_event_var3
    sql: ${TABLE}.page_event_var3

  - dimension: page_type
    sql: ${TABLE}.page_type

  - dimension: page_url
    sql: ${TABLE}.page_url

  - dimension: pagename
    sql: ${TABLE}.pagename

  - dimension: paid_search
    sql: ${TABLE}.paid_search

  - dimension: partner_plugins
    sql: ${TABLE}.partner_plugins

  - dimension: persistent_cookie
    sql: ${TABLE}.persistent_cookie

  - dimension: plugins
    sql: ${TABLE}.plugins

  - dimension: pointofinterest
    sql: ${TABLE}.pointofinterest

  - dimension: pointofinterestdistance
    sql: ${TABLE}.pointofinterestdistance

  - dimension: post_browser_height
    sql: ${TABLE}.post_browser_height

  - dimension: post_browser_width
    sql: ${TABLE}.post_browser_width

  - dimension: post_campaign
    sql: ${TABLE}.post_campaign

  - dimension: post_channel
    sql: ${TABLE}.post_channel

  - dimension: post_cookies
    sql: ${TABLE}.post_cookies

  - dimension: post_currency
    sql: ${TABLE}.post_currency

  - dimension: post_cust_hit_time_gmt
    sql: ${TABLE}.post_cust_hit_time_gmt

  - dimension: post_cust_visid
    sql: ${TABLE}.post_cust_visid

  - dimension: post_evar1
    sql: ${TABLE}.post_evar1

    #### ADDITIONAL POST_EVAR FIELDS ####

  - dimension: post_event_list
    sql: ${TABLE}.post_event_list

  - dimension: post_hier1
    sql: ${TABLE}.post_hier1

  - dimension: post_hier2
    sql: ${TABLE}.post_hier2

  - dimension: post_hier3
    sql: ${TABLE}.post_hier3

  - dimension: post_hier4
    sql: ${TABLE}.post_hier4

  - dimension: post_hier5
    sql: ${TABLE}.post_hier5

  - dimension: post_java_enabled
    sql: ${TABLE}.post_java_enabled

  - dimension: post_keywords
    sql: ${TABLE}.post_keywords

  - dimension: post_mobileaction
    sql: ${TABLE}.post_mobileaction

  - dimension: post_mobileappid
    sql: ${TABLE}.post_mobileappid

  - dimension: post_mobilecampaigncontent
    sql: ${TABLE}.post_mobilecampaigncontent

  - dimension: post_mobilecampaignmedium
    sql: ${TABLE}.post_mobilecampaignmedium

  - dimension: post_mobilecampaignname
    sql: ${TABLE}.post_mobilecampaignname

  - dimension: post_mobilecampaignsource
    sql: ${TABLE}.post_mobilecampaignsource

  - dimension: post_mobilecampaignterm
    sql: ${TABLE}.post_mobilecampaignterm

  - dimension: post_mobiledayofweek
    sql: ${TABLE}.post_mobiledayofweek

  - dimension: post_mobiledayssincefirstu
    sql: ${TABLE}.post_mobiledayssincefirstu

  - dimension: post_mobiledayssincelastus
    sql: ${TABLE}.post_mobiledayssincelastus

  - dimension: post_mobiledevice
    sql: ${TABLE}.post_mobiledevice

  - dimension: post_mobilehourofday
    sql: ${TABLE}.post_mobilehourofday

  - dimension: post_mobileinstalldate
    sql: ${TABLE}.post_mobileinstalldate

  - dimension: post_mobilelaunchnumber
    sql: ${TABLE}.post_mobilelaunchnumber

  - dimension: post_mobileltv
    sql: ${TABLE}.post_mobileltv

  - dimension: post_mobileosversion
    sql: ${TABLE}.post_mobileosversion

  - dimension: post_mobileresolution
    sql: ${TABLE}.post_mobileresolution

  - dimension: post_mvvar1
    sql: ${TABLE}.post_mvvar1

  - dimension: post_mvvar2
    sql: ${TABLE}.post_mvvar2

  - dimension: post_mvvar3
    sql: ${TABLE}.post_mvvar3

  - dimension: post_page_event
    sql: ${TABLE}.post_page_event

  - dimension: post_page_event_var1
    sql: ${TABLE}.post_page_event_var1

  - dimension: post_page_event_var2
    sql: ${TABLE}.post_page_event_var2

  - dimension: post_page_event_var3
    sql: ${TABLE}.post_page_event_var3

  - dimension: post_page_type
    sql: ${TABLE}.post_page_type

  - dimension: post_page_url
    sql: ${TABLE}.post_page_url

  - dimension: post_pagename
    sql: ${TABLE}.post_pagename

  - dimension: post_pagename_no_url
    sql: ${TABLE}.post_pagename_no_url

  - dimension: post_partner_plugins
    sql: ${TABLE}.post_partner_plugins

  - dimension: post_persistent_cookie
    sql: ${TABLE}.post_persistent_cookie

  - dimension: post_pointofinterest
    sql: ${TABLE}.post_pointofinterest

  - dimension: post_pointofinterestdistan
    sql: ${TABLE}.post_pointofinterestdistan

  - dimension: post_product_list
    sql: ${TABLE}.post_product_list

  - dimension: post_prop1
    sql: ${TABLE}.post_prop1

   ### ADDITIONAL POST FIELDS ####

  - dimension: post_purchaseid
    sql: ${TABLE}.post_purchaseid

  - dimension: post_referrer
    sql: ${TABLE}.post_referrer

  - dimension: post_search_engine
    sql: ${TABLE}.post_search_engine

  - dimension: post_socialassettrackingco
    sql: ${TABLE}.post_socialassettrackingco

  - dimension: post_socialauthor
    sql: ${TABLE}.post_socialauthor

  - dimension: post_socialaveragesentimen
    sql: ${TABLE}.post_socialaveragesentimen

  - dimension: post_socialcontentprovider
    sql: ${TABLE}.post_socialcontentprovider

  - dimension: post_sociallanguage
    sql: ${TABLE}.post_sociallanguage

  - dimension: post_sociallatlong
    sql: ${TABLE}.post_sociallatlong

  - dimension: post_sociallink
    sql: ${TABLE}.post_sociallink

  - dimension: post_socialproperty
    sql: ${TABLE}.post_socialproperty

  - dimension: post_socialterm
    sql: ${TABLE}.post_socialterm

  - dimension: post_socialtermslist
    sql: ${TABLE}.post_socialtermslist

  - dimension: post_state
    sql: ${TABLE}.post_state

  - dimension: post_survey
    sql: ${TABLE}.post_survey

  - dimension: post_t_time_info
    sql: ${TABLE}.post_t_time_info

  - dimension: post_tnt
    sql: ${TABLE}.post_tnt

  - dimension: post_transactionid
    sql: ${TABLE}.post_transactionid

  - dimension: post_video
    sql: ${TABLE}.post_video

  - dimension: post_videoad
    sql: ${TABLE}.post_videoad

  - dimension: post_videoadinpod
    sql: ${TABLE}.post_videoadinpod

  - dimension: post_videoadplayername
    sql: ${TABLE}.post_videoadplayername

  - dimension: post_videoadpod
    sql: ${TABLE}.post_videoadpod

  - dimension: post_videochannel
    sql: ${TABLE}.post_videochannel

  - dimension: post_videocontenttype
    sql: ${TABLE}.post_videocontenttype

  - dimension: post_videopath
    sql: ${TABLE}.post_videopath

  - dimension: post_videoplayername
    sql: ${TABLE}.post_videoplayername

  - dimension: post_videosegment
    sql: ${TABLE}.post_videosegment

  - dimension: post_visid_high
    sql: ${TABLE}.post_visid_high

  - dimension: post_visid_low
    sql: ${TABLE}.post_visid_low

  - dimension: post_visid_type
    sql: ${TABLE}.post_visid_type

  - dimension: post_zip
    sql: ${TABLE}.post_zip

  - dimension: prev_page
    sql: ${TABLE}.prev_page

  - dimension: product_list
    sql: ${TABLE}.product_list

  - dimension: product_merchandising
    sql: ${TABLE}.product_merchandising

  - dimension: prop1
    sql: ${TABLE}.prop1

    ### ADDITIONAL PROP FIELDS #####

  - dimension: purchaseid
    sql: ${TABLE}.purchaseid

  - dimension: quarterly_visitor
    sql: ${TABLE}.quarterly_visitor

  - dimension: ref_domain
    sql: ${TABLE}.ref_domain

  - dimension: ref_type
    sql: ${TABLE}.ref_type

  - dimension: referrer
    sql: ${TABLE}.referrer

  - dimension: resolution
    sql: ${TABLE}.resolution

  - dimension: s_resolution
    sql: ${TABLE}.s_resolution

  - dimension: sampled_hit
    sql: ${TABLE}.sampled_hit

  - dimension: search_engine
    sql: ${TABLE}.search_engine

  - dimension: search_page_num
    sql: ${TABLE}.search_page_num

  - dimension: secondary_hit
    sql: ${TABLE}.secondary_hit

  - dimension: service
    sql: ${TABLE}.service

  - dimension: session_pkey
    sql: ${TABLE}.session_pkey

  - dimension: socialassettrackingcode
    sql: ${TABLE}.socialassettrackingcode

  - dimension: socialauthor
    sql: ${TABLE}.socialauthor

  - dimension: socialaveragesentiment
    sql: ${TABLE}.socialaveragesentiment

  - dimension: socialcontentprovider
    sql: ${TABLE}.socialcontentprovider

  - dimension: sociallanguage
    sql: ${TABLE}.sociallanguage

  - dimension: sociallatlong
    sql: ${TABLE}.sociallatlong

  - dimension: sociallink
    sql: ${TABLE}.sociallink

  - dimension: socialproperty
    sql: ${TABLE}.socialproperty

  - dimension: socialterm
    sql: ${TABLE}.socialterm

  - dimension: socialtermslist
    sql: ${TABLE}.socialtermslist

  - dimension: sourceid
    sql: ${TABLE}.sourceid

  - dimension: state
    sql: ${TABLE}.state

  - dimension: stats_server
    sql: ${TABLE}.stats_server

  - dimension: t_time_info
    sql: ${TABLE}.t_time_info

  - dimension: tnt
    sql: ${TABLE}.tnt

  - dimension: tnt_post_vista
    sql: ${TABLE}.tnt_post_vista

  - dimension: transactionid
    sql: ${TABLE}.transactionid

  - dimension: truncated_hit
    sql: ${TABLE}.truncated_hit

  - dimension: ua_color
    sql: ${TABLE}.ua_color

  - dimension: ua_os
    sql: ${TABLE}.ua_os

  - dimension: ua_pixels
    sql: ${TABLE}.ua_pixels

  - dimension: user_agent
    sql: ${TABLE}.user_agent

  - dimension: user_hash
    sql: ${TABLE}.user_hash

  - dimension: user_id
    sql: ${TABLE}.user_id

  - dimension: user_server
    sql: ${TABLE}.user_server

  - dimension: userid
    sql: ${TABLE}.userid

  - dimension: username
    sql: ${TABLE}.username

  - dimension: va_closer_detail
    sql: ${TABLE}.va_closer_detail

  - dimension: va_closer_id
    sql: ${TABLE}.va_closer_id

  - dimension: va_finder_detail
    sql: ${TABLE}.va_finder_detail

  - dimension: va_finder_id
    sql: ${TABLE}.va_finder_id

  - dimension: va_instance_event
    sql: ${TABLE}.va_instance_event

  - dimension: va_new_engagement
    sql: ${TABLE}.va_new_engagement

  - dimension: video
    sql: ${TABLE}.video

  - dimension: videoad
    sql: ${TABLE}.videoad

  - dimension: videoadinpod
    sql: ${TABLE}.videoadinpod

  - dimension: videoadplayername
    sql: ${TABLE}.videoadplayername

  - dimension: videoadpod
    sql: ${TABLE}.videoadpod

  - dimension: videochannel
    sql: ${TABLE}.videochannel

  - dimension: videocontenttype
    sql: ${TABLE}.videocontenttype

  - dimension: videopath
    sql: ${TABLE}.videopath

  - dimension: videoplayername
    sql: ${TABLE}.videoplayername

  - dimension: videosegment
    sql: ${TABLE}.videosegment

  - dimension: visid_high
    sql: ${TABLE}.visid_high

  - dimension: visid_low
    sql: ${TABLE}.visid_low

  - dimension: visid_new
    sql: ${TABLE}.visid_new

  - dimension: visid_timestamp
    sql: ${TABLE}.visid_timestamp

  - dimension: visid_type
    sql: ${TABLE}.visid_type

  - dimension: visit_keywords
    sql: ${TABLE}.visit_keywords

  - dimension: visit_num
    sql: ${TABLE}.visit_num

  - dimension: visit_page_num
    sql: ${TABLE}.visit_page_num

  - dimension: visit_referrer
    sql: ${TABLE}.visit_referrer

  - dimension: visit_search_engine
    sql: ${TABLE}.visit_search_engine

  - dimension: visit_start_page_url
    sql: ${TABLE}.visit_start_page_url

  - dimension: visit_start_pagename
    sql: ${TABLE}.visit_start_pagename

  - dimension: visit_start_time_gmt
    sql: ${TABLE}.visit_start_time_gmt

  - dimension: weekly_visitor
    sql: ${TABLE}.weekly_visitor

  - dimension: yearly_visitor
    sql: ${TABLE}.yearly_visitor

  - dimension: zip
    sql: ${TABLE}.zip

# MEASURES #

  - measure: count
    type: count
    drill_fields: detail*
  
  - measure: total_visitors
    type: count_distinct
    sql: ${user_id}
  
  ### We don't know what session pkey is doing, and if visits = sessions
  - measure: sessions
    hidden: true
    type: count_distinct
    sql: ${session_pkey} 
    drill_fields: detail*

    
  - measure: total_visits
    type: count_distinct
    sql: ${user_id} || ${session_pkey}
    drill_fields: detail*
    
  - measure: average_clicks_per_visit
    type: number
    sql: 1.0*${count}/NULLIF(${total_visits},0)
    value_format: '##.00'
    drill_fields: detail*
    
  - measure: visits_this_month
    type: count_distinct
    sql: ${user_id} || ${session_pkey}
    filter:
      event_date: 1 month ago for 1 month
    drill_fields: detail*
      
  - measure: visits_last_month
    type: count_distinct
    sql: ${user_id} || ${session_pkey}
    filters: 
      event_date: 2 months ago for 1 month
    drill_fields: detail*

  - measure: visits_last_month_last_year
    type: count_distinct
    sql:  ${user_id} || ${session_pkey}
    filters: 
      event_date: 14 months ago for 1 month
    drill_fields: detail*
      
  - measure: visit_growth_last_month
    description: Last month's total compared to last month a year ago
    sql: 100 * (${visits_last_month} - ${visits_last_month_last_year}) / NULLIF(${visits_last_month_last_year},0)
    type: number
    html: |
      {% if value >= 0 %}
        <p style="color: green">{{ rendered_value }}%</p>
      {% else %}
        <p style="color: red">{{ rendered_value }}%</p>
      {% endif %}
    value_format: '##.00%'
    drill_fields: detail*
  
  - measure: visits_year_to_date
    type: count_distinct
    sql: ${user_id} || ${session_pkey}
    filters: 
      event_year: this year
      is_before_current_month: yes
    drill_fields: detail*
  
  - measure: visits_last_year_to_date
    type: count_distinct
    sql: ${user_id} || ${session_pkey}
    filters: 
      event_year: last year
      is_before_current_month: yes
    drill_fields: detail*
      
  - measure: total_visitors_percent_of_previous
    type: percent_of_previous
    sql: ${total_visitors}
    drill_fields: detail*


  # ----- Sets of fields for drilling ------
  sets:
    detail:
    - first_hit_pagename
    - pagename
    - post_pagename
    - username
    - visit_start_pagename
    - post_videoadplayername
    - post_videoplayername
    - click_action
    - click_action_type
    - browser
