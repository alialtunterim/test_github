# Define the database connection to be used for this model.
connection: "looker-private-demo"

# include all the views
include: "/views/**/*.view"

# Datagroups define a caching policy for an Explore. To learn more,
# use the Quick Help panel on the right to see documentation.

datagroup: test_github_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_github_default_datagroup

# Explores allow you to join together different views (database tables) based on the
# relationships between fields. By joining a view into an Explore, you make those
# fields available to users for data analysis.
# Explores should be purpose-built for specific use cases.

# To see the Explore you’re building, navigate to the Explore menu and select an Explore under "Test Github"

# To create more sophisticated Explores that involve multiple views, you can use the join parameter.
# Typically, join parameters require that you define the join type, join relationship, and a sql_on clause.
# Each joined view also needs to define a primary key.

explore: lr_fa3_cw1662921456807_user_impression_facts {}

explore: lr_fabsu1680220896275_gmail_rollup_gmail_month_ou {}

explore: lr_fabjk1662921459214_user_campaign_facts {}

explore: lr_faj0_t1680220912691_drive_rollup_drive_year_ou {}

explore: lr_fa0_gr1680220904175_login_rollup_login_month_ou {}

explore: lr_fafq41680220933546_drive_rollup_drive_month_ou {}

explore: lr_fa3_n51662921454042_impression_funnel {}

explore: lr_fa0_gu1680220929990_login_rollup_login_week_ou {}

explore: lr_fao411680220938127_drive_rollup_drive_week_ou {}

explore: lr_fajoc1680220864790_meet_facts {
  join: lr_fajoc1680220864790_meet_facts__participant_details {
    view_label: "Lr Fajoc1680220864790 Meet Facts: Participant Details"
    sql: LEFT JOIN UNNEST(${lr_fajoc1680220864790_meet_facts.participant_details}) as lr_fajoc1680220864790_meet_facts__participant_details ;;
    relationship: one_to_many
  }
}

explore: lr_fauy91680220887582_gmail_rollup_gmail_date_ou {}

explore: lr_fauw81680220917500_login_rollup_login_date_ou {}

explore: lr_fawy51680220921136_gmail_rollup_gmail_week_ou {}

explore: lr_fax5_l1680220880176_gmail_rollup_gmail_year_ou {}

explore: lr_faz9_u1680220869590_ou_lookup {}

explore: persons {}

explore: fulltext {}

explore: covid_vaccine_data {}

explore: lr_fazky1680220876575_login_rollup_login_year_ou {}

explore: connection_reg_r3 {}

explore: mytable {}

explore: lr_fakuh1680220907818_drive_rollup_drive_date_ou {}

explore: searches_table {}

explore: t1 {}

explore: t2 {}

explore: vrfy_view_3b93e6f39d979ffffb9d4f191a43be99 {}
