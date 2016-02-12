- view: sessions
  derived_table:
    sql_trigger_value: select current_date
    sortkeys: [start_at, user_id, visit_num]
    distkey: user_id
  
    sql: |
      WITH
            sessions_pre as (
              select 
                session_pkey
                , user_id
                , visit_num
                , min(date_time) as start_at
                , max(date_time) as last_event_at
                , count(1) as number_of_events
                , count(distinct(floor(extract(epoch from date_time)/30)))/2::float AS time_engaged_with_minutes
              from event_table -- change to event table name
              where user_id is not null
                and visit_num is not null
                and user_id != ''
                and date_time IS NOT NULL
                and date_time > '2000-01-01' -- Prevent SQL errors
                and date_time < '2030-01-01' -- Prevent SQL errors
              group by 1, 2, 3
            )
            
            select user_id
              , session_pkey
              , visit_num
              , start_at
              , least(last_event_at + interval '1 minute', lead(start_at) over (partition by user_id order by visit_num)) as end_at
              , number_of_events
              , time_engaged_with_minutes
            from sessions_pre

  fields:

# Basic Session Fields #

  - dimension: session_pkey
    primary_key: true
    hidden: true
    sql: ${TABLE}.session_pkey

  - dimension: user_id
    sql: ${TABLE}.user_id

  - dimension: visit_num
    type: number
    sql: ${TABLE}.visit_num

  - dimension_group: start
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.start_at

  - dimension_group: end
    type: time
    timeframes: [time, date, week, month]
    sql: ${TABLE}.end_at

  - dimension: number_of_events
    type: number
    sql: ${TABLE}.number_of_events

  - dimension: duration_minutes
    type: number
    sql: DATEDIFF(MINUTES, ${TABLE}.start_at, ${TABLE}.end_at)  
  
  - dimension: time_engaged_with_minutes
    sql: ${TABLE}.time_engaged_with_minutes

  - dimension: bounced
    type: yesno
    sql: ${number_of_events} = 1

  - dimension: is_first_session
    type: yesno
    sql: ${visit_num} = 1
  
  - dimension: new_vs_returning_visitor
    sql_case:
      new: ${visit_num} = 1
      returning: ${visit_num} > 1
      else: unknown
      
  - measure: count
    type: count
    drill_fields: count_drill*
  
  - measure: bounced_session_count
    type: count
    filter: 
      bounced: yes
    drill_fields: count_drill*
  
  - measure: bounce_rate
    type: number
    sql: 100.0 * ${bounced_session_count}::float/NULLIF(${count},0)
    value_format: '0.00\%'

  - measure: average_number_of_events
    type: average
    decimals: 2
    sql: ${number_of_events}

  - measure: average_duration_minutes
    type: average
    decimals: 2
    sql: ${duration_minutes}

  - measure: sessions_per_user
    type: number
    sql: ${count}::float/NULLIF(${user.count},0)
    decimals: 2

  - measure: user.count
    type: count_distinct
    sql: ${user_id}
    drill_fields: [user_id, events.ip_address]
  
  - measure: average_time_engaged_minutes
    type: average
    sql: ${time_engaged_with_minutes}
  
  - measure: sessions_from_new_visitors_count
    type: count
    filters:
      visit_num: 1
    drill_fields: count_drill*
  
  - measure: sessions_from_returning_visitors_count
    type: count
    filter: 
      visit_num: '>1'
    drill_fields: count_drill*
  
  - measure: percent_new_visitor_sessions
    type: number
    value_format: '#.00%'
    sql: ${sessions_from_new_visitors_count}::float/NULLIF(${count},0)

  - measure: percent_returning_visitor_sessions
    type: number
    value_format: '#.00%'
    sql: ${sessions_from_returning_visitors_count}::float/NULLIF(${count},0)

# Sets #

  sets:
    count_drill:
      - domain_userid
      - domain_sessionidx
      - start_at
      - end_at
      - duration_minutes
      - num_events
      
      