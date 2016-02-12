- connection: connection_name #update with Looker database connection name

- include: "*.view.lookml"       # include all the views
- include: "*.dashboard.lookml"  # include all the dashboards

- explore: events
  label: 'Adobe Analytics Events'
  sql_always_where: ${events.user_id} is not null
  joins:
    - join: sessions
      type: inner
      relationship: many_to_one
      sql_on: ${events.user_id} = ${sessions.user_id} AND ${events.visit_num} = ${sessions.visit_num}

- explore: sessions