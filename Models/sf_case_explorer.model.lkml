connection: "convoy_snowflake"

include: "/Views/sf_case.view"
include: "/Views/sf_user.view"

explore: sf_case {
  label: "SF_Case_Data"
  join: sf_user{
      type: left_outer
      relationship: one_to_one
      sql_on: ${sf_case.owner_id} = ${sf_user.id} ;;
      }
  }

  # https://cloud.google.com/looker/docs/working-with-joins
