view: sf_case {
  sql_table_name: "SRC"."SF_CASE" ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}."ID" ;;
  }
  dimension_group: _fivetran_synced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."_FIVETRAN_SYNCED" AS TIMESTAMP_NTZ) ;;
  }
  dimension: account_id {
    type: string
    sql: ${TABLE}."ACCOUNT_ID" ;;
  }
  dimension: actions_taken_c {
    type: string
    sql: ${TABLE}."ACTIONS_TAKEN_C" ;;
  }
  dimension: additional_resources_needed_c {
    type: yesno
    sql: ${TABLE}."ADDITIONAL_RESOURCES_NEEDED_C" ;;
  }
  dimension: amazonconnect_ac_contact_id_c {
    type: string
    sql: ${TABLE}."AMAZONCONNECT_AC_CONTACT_ID_C" ;;
  }
  dimension: asset_id {
    type: string
    sql: ${TABLE}."ASSET_ID" ;;
  }
  dimension: assigned_agent_c {
    type: string
    sql: ${TABLE}."ASSIGNED_AGENT_C" ;;
  }
  dimension: aws_inbound_call_c {
    type: yesno
    sql: ${TABLE}."AWS_INBOUND_CALL_C" ;;
  }
  dimension: business_hours_id {
    type: string
    sql: ${TABLE}."BUSINESS_HOURS_ID" ;;
  }
  dimension: call_disposition_c {
    type: string
    sql: ${TABLE}."CALL_DISPOSITION_C" ;;
  }
  dimension: callback_comment_c {
    type: string
    sql: ${TABLE}."CALLBACK_COMMENT_C" ;;
  }
  dimension: callback_number_c {
    type: string
    sql: ${TABLE}."CALLBACK_NUMBER_C" ;;
  }
  dimension: caller_language_c {
    type: string
    sql: ${TABLE}."CALLER_LANGUAGE_C" ;;
  }
  dimension: carrier_c {
    type: string
    sql: ${TABLE}."CARRIER_C" ;;
  }
  dimension: case_category_c {
    type: string
    sql: ${TABLE}."CASE_CATEGORY_C" ;;
  }
  dimension: case_number {
    type: string
    sql: ${TABLE}."CASE_NUMBER" ;;
  }
  dimension: case_owner_notes_c {
    type: string
    sql: ${TABLE}."CASE_OWNER_NOTES_C" ;;
  }
  dimension_group: closed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CLOSED_DATE" AS TIMESTAMP_NTZ) ;;
  }
  dimension: comments {
    type: string
    sql: ${TABLE}."COMMENTS" ;;
  }
  dimension: contact_email {
    type: string
    sql: ${TABLE}."CONTACT_EMAIL" ;;
  }
  dimension: contact_fax {
    type: string
    sql: ${TABLE}."CONTACT_FAX" ;;
  }
  dimension: contact_id {
    type: string
    sql: ${TABLE}."CONTACT_ID" ;;
  }
  dimension: contact_mobile {
    type: string
    sql: ${TABLE}."CONTACT_MOBILE" ;;
  }
  dimension: contact_phone {
    type: string
    sql: ${TABLE}."CONTACT_PHONE" ;;
  }
  dimension: convoy_user_c {
    type: string
    sql: ${TABLE}."CONVOY_USER_C" ;;
  }
  dimension: created_by_id {
    type: string
    sql: ${TABLE}."CREATED_BY_ID" ;;
  }
  dimension_group: created {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."CREATED_DATE" AS TIMESTAMP_NTZ) ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }
  dimension: email_alias_c {
    type: string
    sql: ${TABLE}."EMAIL_ALIAS_C" ;;
  }
  dimension: email_thread_id_c {
    type: string
    sql: ${TABLE}."EMAIL_THREAD_ID_C" ;;
  }
  dimension: exception_id_c {
    type: string
    sql: ${TABLE}."EXCEPTION_ID_C" ;;
  }
  dimension: fault_c {
    type: string
    sql: ${TABLE}."FAULT_C" ;;
  }
  dimension_group: follow_up_time_c {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."FOLLOW_UP_TIME_C" AS TIMESTAMP_NTZ) ;;
  }
  dimension: follow_up_user_c {
    type: string
    sql: ${TABLE}."FOLLOW_UP_USER_C" ;;
  }
  dimension: helps_meet_an_okr_c {
    type: yesno
    sql: ${TABLE}."HELPS_MEET_AN_OKR_C" ;;
  }
  dimension: hours_spent_c {
    type: number
    sql: ${TABLE}."HOURS_SPENT_C" ;;
  }
  dimension: is_callback_c {
    type: yesno
    sql: ${TABLE}."IS_CALLBACK_C" ;;
  }
  dimension: is_closed {
    type: yesno
    sql: ${TABLE}."IS_CLOSED" ;;
  }
  dimension: is_closed_on_create {
    type: yesno
    sql: ${TABLE}."IS_CLOSED_ON_CREATE" ;;
  }
  dimension: is_deleted {
    type: yesno
    sql: ${TABLE}."IS_DELETED" ;;
  }
  dimension: is_escalated {
    type: yesno
    sql: ${TABLE}."IS_ESCALATED" ;;
  }
  dimension: is_exception_reply_c {
    type: yesno
    sql: ${TABLE}."IS_EXCEPTION_REPLY_C" ;;
  }
  dimension: is_parent_c {
    type: yesno
    sql: ${TABLE}."IS_PARENT_C" ;;
  }
  dimension: language {
    type: string
    sql: ${TABLE}."LANGUAGE" ;;
  }
  dimension: language_c {
    type: string
    sql: ${TABLE}."LANGUAGE_C" ;;
  }
  dimension: last_modified_by_id {
    type: string
    sql: ${TABLE}."LAST_MODIFIED_BY_ID" ;;
  }
  dimension_group: last_modified {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_MODIFIED_DATE" AS TIMESTAMP_NTZ) ;;
  }
  dimension_group: last_referenced {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_REFERENCED_DATE" AS TIMESTAMP_NTZ) ;;
  }
  dimension_group: last_viewed {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."LAST_VIEWED_DATE" AS TIMESTAMP_NTZ) ;;
  }
  dimension: master_record_id {
    type: string
    sql: ${TABLE}."MASTER_RECORD_ID" ;;
  }
  dimension: next_steps_c {
    type: string
    sql: ${TABLE}."NEXT_STEPS_C" ;;
  }
  dimension_group: orginial_request_date_c {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."ORGINIAL_REQUEST_DATE_C" ;;
  }
  dimension: origin {
    type: string
    sql: ${TABLE}."ORIGIN" ;;
  }
  dimension: overnight_assigned_agent_c {
    type: string
    sql: ${TABLE}."OVERNIGHT_ASSIGNED_AGENT_C" ;;
  }
  dimension: owner_id {
    type: string
    sql: ${TABLE}."OWNER_ID" ;;
  }
  dimension: parent_id {
    type: string
    sql: ${TABLE}."PARENT_ID" ;;
  }
  dimension: priority {
    type: string
    sql: ${TABLE}."PRIORITY" ;;
  }
  dimension: reason {
    type: string
    sql: ${TABLE}."REASON" ;;
  }
  dimension: record_type_id {
    type: string
    sql: ${TABLE}."RECORD_TYPE_ID" ;;
  }
  dimension: resolution_c {
    type: string
    sql: ${TABLE}."RESOLUTION_C" ;;
  }
  dimension: resolution_new_c {
    type: string
    sql: ${TABLE}."RESOLUTION_NEW_C" ;;
  }
  dimension: root_cause_c {
    type: string
    sql: ${TABLE}."ROOT_CAUSE_C" ;;
  }
  dimension: sales_ops_define_business_process_c {
    type: yesno
    sql: ${TABLE}."SALES_OPS_DEFINE_BUSINESS_PROCESS_C" ;;
  }
  dimension: shipment_c {
    type: string
    sql: ${TABLE}."SHIPMENT_C" ;;
  }
  dimension: shipment_short_id_old_c {
    type: string
    sql: ${TABLE}."SHIPMENT_SHORT_ID_OLD_C" ;;
  }
  dimension: skip_overnight_queue_c {
    type: yesno
    sql: ${TABLE}."SKIP_OVERNIGHT_QUEUE_C" ;;
  }
  dimension: source_id {
    type: string
    sql: ${TABLE}."SOURCE_ID" ;;
  }
  dimension: status {
    type: string
    sql: ${TABLE}."STATUS" ;;
  }
  dimension: stop_location_c {
    type: string
    sql: ${TABLE}."STOP_LOCATION_C" ;;
  }
  dimension: sub_category_c {
    type: string
    sql: ${TABLE}."SUB_CATEGORY_C" ;;
  }
  dimension: subject {
    type: string
    sql: ${TABLE}."SUBJECT" ;;
  }
  dimension: supplied_company {
    type: string
    sql: ${TABLE}."SUPPLIED_COMPANY" ;;
  }
  dimension: supplied_email {
    type: string
    sql: ${TABLE}."SUPPLIED_EMAIL" ;;
  }
  dimension: supplied_name {
    type: string
    sql: ${TABLE}."SUPPLIED_NAME" ;;
  }
  dimension: supplied_phone {
    type: string
    sql: ${TABLE}."SUPPLIED_PHONE" ;;
  }
  dimension_group: system_modstamp {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: CAST(${TABLE}."SYSTEM_MODSTAMP" AS TIMESTAMP_NTZ) ;;
  }
  dimension: talkdesk_auto_pop_up_case_c {
    type: yesno
    sql: ${TABLE}."TALKDESK_AUTO_POP_UP_CASE_C" ;;
  }
  dimension: team_requesting_c {
    type: string
    sql: ${TABLE}."TEAM_REQUESTING_C" ;;
  }
  dimension: trailer_number_c {
    type: string
    sql: ${TABLE}."TRAILER_NUMBER_C" ;;
  }
  dimension: two_plus_hours_of_work_c {
    type: yesno
    sql: ${TABLE}."TWO_PLUS_HOURS_OF_WORK_C" ;;
  }
  dimension: type {
    type: string
    sql: ${TABLE}."TYPE" ;;
  }
  dimension: validated_c {
    type: yesno
    sql: ${TABLE}."VALIDATED_C" ;;
  }
  dimension: work_session_id_c {
    type: string
    sql: ${TABLE}."WORK_SESSION_ID_C" ;;
  }
  measure: count {
    type: count
    drill_fields: [id, supplied_name]
  }
}
