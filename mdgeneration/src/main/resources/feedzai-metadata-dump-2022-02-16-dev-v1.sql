--
-- PostgreSQL database dump
--

-- Dumped from database version 9.6.10
-- Dumped by pg_dump version 9.6.10

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AM_EVENT_CARDS; Type: TABLE; Schema: casemanager; Owner: case_manager
--

CREATE TABLE casemanager."AM_EVENT_CARDS" (
    "EVENT_ID" character varying(1024) NOT NULL,
    "EVENT_TIMESTAMP" bigint NOT NULL,
    "EVENT_VERSION_ID" character varying(1024),
    "EVENT_VERSION_TIMESTAMP" bigint,
    "EVENT_ALERT" boolean NOT NULL,
    "EVENT_TENANT" character varying(40),
    "QUEUE_ID" character varying(40),
    "USER_ID" character varying(40),
    "ACCESS_GROUP_ID" character varying(40),
    "STATUS_ID" character varying(40),
    "EVENT_STATUS_ID" character varying(40),
    "DECISION_ID" character varying(40),
    "EVENT_DECISION_ID" character varying(40),
    "INVESTIGATION_STATUS_ID" character varying(40),
    "EVENT_INVESTIGATION_STATUS_ID" character varying(40),
    "channelId" character varying(1024),
    fraud_score double precision,
    amount bigint,
    currency_code character varying(1024),
    customer_id character varying(1024),
    customer_email character varying(1024),
    customer_phone character varying(1024),
    customer_city character varying(1024),
    customer_street_addr character varying(1024),
    card_pan character varying(1024),
    card_pan_masked character varying(1024),
    card_last4 character varying(1024),
    card_type character varying(1024),
    card_category character varying(1024),
    card_brand character varying(1024),
    card_id character varying(1024),
    acquirer_id character varying(1024),
    card_bin character varying(1024),
    lifecycle_id character varying(1024),
    account_bic character varying(1024),
    account_open_date bigint,
    account_iban character varying(1024),
    account_balance bigint,
    card_credit_limit bigint,
    account_number_of_cards integer,
    account_status character varying(1024),
    account_last_activity bigint,
    merchant_open_date bigint,
    merchant_legal_name character varying(1024),
    merchant_risk integer,
    merchant_zip character varying(1024),
    merchant_country_code character varying(1024),
    merchant_id character varying(1024),
    mcc character varying(1024),
    sic_code character varying(1024),
    terminal_id character varying(1024),
    terminal_street_addr character varying(1024),
    terminal_poc_flag character varying(1024),
    terminal_city character varying(1024),
    terminal_country_code character varying(1024),
    terminal_zip character varying(1024),
    event_type character varying(1024),
    info_type character varying(1024),
    feedback_type character varying(1024),
    action_code character varying(1024),
    event_occurred_at bigint,
    capture_date character varying(256),
    account_available_credit bigint,
    account_credit_limit bigint,
    card_effective_date character varying(1024),
    card_expiration_date character varying(1024),
    card_status character varying(1024),
    customer_region character varying(1024),
    customer_zip character varying(1024),
    card_presence_flag boolean,
    pos_read_cap character varying(1024),
    pos_card_capture_cap character varying(1024),
    pos_cardholder_ver_cap character varying(1024),
    terminal_region character varying(1024),
    merchant_mastercard_risk integer,
    merchant_visa_risk integer,
    merchant_risky_flag boolean,
    oob_start_date bigint,
    oob_end_date bigint,
    oob_comm_type character varying(1024),
    oob_notes character varying(1024),
    oob_feedback_notes character varying(1024),
    oob_response_type character varying(1024),
    dispute_start_date bigint,
    dispute_submitted_by character varying(1024),
    dispute_notes character varying(1024),
    dispute_reason character varying(1024),
    dispute_end_date character varying(1024),
    dispute_refunded character varying(1024),
    dispute_feedback_notes character varying(1024),
    merchant_street_addr character varying(1024),
    merchant_city character varying(1024),
    transaction_status character varying(1024),
    merchant_name character varying(1024),
    ttc character varying(1024),
    atc1 character varying(1024),
    atc2 character varying(1024),
    tenant character varying(1024),
    outcome_decision character varying(255),
    curated_explanations jsonb,
    action_alert boolean,
    action_auto_decline_card boolean,
    action_auto_approve_card boolean,
    action_limit_review_card boolean,
    action_stua boolean,
    cardholder_bill_amount double precision,
    cardholder_bill_currency_code character varying(1024),
    customer_member_number character varying(1024),
    pos_card_read_method character varying(1024),
    ecommerce_indicator character varying(1024),
    pos_cardholder_ver_method character varying(1024),
    transaction_status_reason character varying(1024),
    brand character varying(1024),
    scheme_score double precision,
    customer_name_prefix character varying(1024),
    customer_name_first character varying(1024),
    customer_name_middle character varying(1024),
    customer_name_last character varying(1024),
    tenant_service_type character varying(1024),
    card_wallet_type character varying(1024),
    secure_3d_val_code character varying(1024),
    local_datetime character varying(1024),
    service_code character varying(1024)
);


ALTER TABLE casemanager."AM_EVENT_CARDS" OWNER TO case_manager;

--
-- Name: AM_EVENT_COMMON; Type: TABLE; Schema: casemanager; Owner: case_manager
--

CREATE TABLE casemanager."AM_EVENT_COMMON" (
    "EVENT_ID" character varying(1024) NOT NULL,
    "EVENT_TIMESTAMP" bigint NOT NULL,
    "EVENT_VERSION_ID" character varying(40),
    "EVENT_VERSION_TIMESTAMP" bigint,
    "EVENT_ALERT" boolean NOT NULL,
    "EVENT_TENANT" character varying(255),
    "QUEUE_ID" character varying(40),
    "USER_ID" character varying(40),
    "ACCESS_GROUP_ID" character varying(40),
    "CHANNEL_ID" character varying(40) NOT NULL,
    "STATUS_ID" character varying(40),
    "EVENT_STATUS_ID" character varying(40),
    "DECISION_ID" character varying(40),
    "EVENT_DECISION_ID" character varying(40),
    "INVESTIGATION_STATUS_ID" character varying(40),
    "EVENT_INVESTIGATION_STATUS_ID" character varying(40),
    payment_date bigint,
    transaction_id character varying(255),
    customer_id character varying(255),
    tenant character varying(255),
    customer_phone character varying(255),
    customer_email character varying(255),
    action_stua boolean,
    outcome_decision character varying(255),
    fraud_score double precision,
    brand character varying(1024),
    customer_member_number character varying(1024),
    transaction_amount bigint,
    transaction_currency_code character varying(1024),
    customer_name_prefix character varying(1024),
    customer_name_first character varying(1024),
    customer_name_middle character varying(1024),
    customer_name_last character varying(1024),
    tenant_service_type character varying(1024)
);


ALTER TABLE casemanager."AM_EVENT_COMMON" OWNER TO case_manager;

--
-- Name: AM_EVENT_STATUS; Type: TABLE; Schema: casemanager; Owner: case_manager
--

CREATE TABLE casemanager."AM_EVENT_STATUS" (
    "EVENT_STATUS_ID" character varying(40) NOT NULL,
    "TIMESTAMP" bigint,
    "EVENT_ID" character varying(128),
    "EVENT_TIMESTAMP" bigint NOT NULL,
    "EVENT_CHANNEL_ID" character varying(256) NOT NULL,
    "OLD_STATUS_ID" character varying(40),
    "NEW_STATUS_ID" character varying(40),
    "NOTE" text,
    "USER_ID" character varying(40),
    "SOURCE_EVENT_ID" character varying(128)
);


ALTER TABLE casemanager."AM_EVENT_STATUS" OWNER TO case_manager;

--
-- Name: AM_EVENT_STATUS_REASON; Type: TABLE; Schema: casemanager; Owner: case_manager
--

CREATE TABLE casemanager."AM_EVENT_STATUS_REASON" (
    "EVENT_STATUS_ID" character varying(40) NOT NULL,
    "TIMESTAMP" bigint,
    "EVENT_TIMESTAMP" bigint NOT NULL,
    "STATUS_REASON_ID" character varying(40) NOT NULL
);


ALTER TABLE casemanager."AM_EVENT_STATUS_REASON" OWNER TO case_manager;

--
-- Name: AM_EVENT_TRANSFERS; Type: TABLE; Schema: casemanager; Owner: case_manager
--

CREATE TABLE casemanager."AM_EVENT_TRANSFERS" (
    "EVENT_ID" character varying(1024) NOT NULL,
    "EVENT_TIMESTAMP" bigint NOT NULL,
    "EVENT_VERSION_ID" character varying(1024),
    "EVENT_VERSION_TIMESTAMP" bigint,
    "EVENT_ALERT" boolean NOT NULL,
    "EVENT_TENANT" character varying(40),
    "QUEUE_ID" character varying(40),
    "USER_ID" character varying(40),
    "ACCESS_GROUP_ID" character varying(40),
    "STATUS_ID" character varying(40),
    "EVENT_STATUS_ID" character varying(40),
    "DECISION_ID" character varying(40),
    "EVENT_DECISION_ID" character varying(40),
    "INVESTIGATION_STATUS_ID" character varying(40),
    "EVENT_INVESTIGATION_STATUS_ID" character varying(40),
    event_occurred_at bigint,
    "channelId" character varying(1024),
    customer_id character varying(1024),
    lifecycle_id character varying(1024),
    bulk_id character varying(1024),
    payment_type character varying(1024),
    payment_sub_type character varying(1024),
    product_code character varying(1024),
    geographic_scope character varying(1024),
    payment_status character varying(1024),
    created_at bigint,
    sender_initiated_at bigint,
    sender_urgency boolean,
    requested_execution_at bigint,
    execution_at bigint,
    frequency character varying(1024),
    number_of_payments integer,
    recurring_payment boolean,
    sender_city character varying(1024),
    sender_country_code character varying(256),
    sender_transact_amount bigint,
    sender_transact_currency character varying(1024),
    sender_transact_bank_accnumber character varying(1024),
    sender_bank_name character varying(1024),
    sender_bank_address character varying(1024),
    sender_bank_city character varying(1024),
    rcv_bank_name character varying(1024),
    rcv_bank_address character varying(1024),
    rcv_bank_city character varying(1024),
    rcv_transact_bank_acc_number character varying(1024),
    rcv_city character varying(1024),
    rcv_country_code character varying(256),
    device_operating_system character varying(1024),
    device_ip_address character varying(1024),
    device_longitude character varying(1024),
    device_latitude character varying(1024),
    device_user_agent character varying(1024),
    device_imei_number character varying(1024),
    device_tor_mode boolean,
    device_cookies boolean,
    device_first_seen bigint,
    device_app_version character varying(1024),
    user_email_address character varying(1024),
    user_phone_number character varying(1024),
    user_phone_number_country_code character varying(256),
    event_type character varying(1024),
    event_external_id character varying(1024),
    dispute_start_date bigint,
    dispute_reason character varying(1024),
    dispute_notes character varying(1024),
    dispute_submitted_by character varying(1024),
    dispute_end_date bigint,
    dispute_feedback_notes character varying(1024),
    dispute_refunded character varying(1024),
    oob_start_date bigint,
    oob_comm_type character varying(1024),
    oob_notes character varying(1024),
    oob_end_date bigint,
    oob_feedback_notes character varying(1024),
    oob_response_type character varying(1024),
    feedback_type character varying(1024),
    sender_id character varying(1024),
    sender_segment character varying(1024),
    sender_name character varying(1024),
    sender_email character varying(1024),
    sender_phone character varying(1024),
    sender_citizen_id_number character varying(1024),
    sender_passport_number character varying(1024),
    sender_ssn character varying(1024),
    sender_tax_number character varying(1024),
    sender_registration_date bigint,
    sender_street_addr character varying(1024),
    sender_region character varying(1024),
    sender_dob character varying(1024),
    sender_number_of_cards integer,
    sender_number_of_accounts integer,
    sender_total_balance bigint,
    sender_total_credit_limit bigint,
    sender_kyc_lvl character varying(1024),
    sender_occupation character varying(1024),
    sender_risk_rating character varying(1024),
    sender_currency character varying(1024),
    sender_alias character varying(1024),
    sender_alias_type character varying(1024),
    sender_alias_status character varying(1024),
    sender_alias_registration_time bigint,
    sender_alias_last_update_time bigint,
    sender_account_iban character varying(1024),
    sender_account_bic character varying(1024),
    sender_account_open_date bigint,
    sender_account_type character varying(1024),
    sender_account_currency character varying(1024),
    sender_account_balance bigint,
    sender_account_credit_limit bigint,
    sender_account_debt_balance bigint,
    sender_account_status character varying(1024),
    sender_account_last_activity bigint,
    sender_account_number_of_cards integer,
    rcv_id character varying(1024),
    rcv_segment character varying(1024),
    rcv_name character varying(1024),
    rcv_email character varying(1024),
    rcv_phone character varying(1024),
    rcv_citizen_id_number character varying(1024),
    rcv_passport_number character varying(1024),
    rcv_ssn character varying(1024),
    rcv_tax_number character varying(1024),
    rcv_registration_date bigint,
    rcv_street_addr character varying(1024),
    rcv_region character varying(1024),
    rcv_dob character varying(1024),
    rcv_number_of_cards integer,
    rcv_number_of_accounts integer,
    rcv_total_balance bigint,
    rcv_total_credit_limit bigint,
    rcv_kyc_lvl character varying(1024),
    rcv_occupation character varying(1024),
    rcv_risk_rating character varying(1024),
    rcv_currency character varying(1024),
    rcv_alias character varying(1024),
    rcv_alias_type character varying(1024),
    rcv_alias_status character varying(1024),
    text_for_receiver character varying(1024),
    rcv_alias_registration_time bigint,
    rcv_alias_last_update_time bigint,
    rcv_acc_iban character varying(1024),
    rcv_acc_bic character varying(1024),
    rcv_acc_open_date bigint,
    rcv_acc_type character varying(1024),
    rcv_acc_currency character varying(1024),
    rcv_acc_balance bigint,
    rcv_acc_credit_limit bigint,
    rcv_acc_debt_balance bigint,
    rcv_acc_status character varying(1024),
    rcv_acc_last_activity bigint,
    rcv_acc_number_of_cards integer,
    direction character varying(1024),
    channel_type character varying(1024),
    device_id character varying(1024),
    device_type character varying(1024),
    device_language character varying(1024),
    login_session_id character varying(1024),
    device_ip_address_location character varying(1024),
    sender_email_change_flag boolean,
    sender_phone_change_flag boolean,
    pass_reset boolean,
    proxy_flag boolean,
    malware_flag boolean,
    sender_bank_branch_id character varying(1024),
    receiver_bank_branch_id character varying(1024),
    sca_risk_score integer,
    last_sca_at bigint,
    reference_number character varying(1024),
    outcome_decision character varying(1024),
    fraud_score double precision,
    tenant character varying(1024),
    action_stua boolean,
    brand character varying(1024),
    sender_member_number character varying(1024),
    rcv_member_number character varying(1024),
    rcv_legal_name character varying(1024),
    rcv_zip character varying(1024),
    sender_bank_sort_code character varying(1024),
    sender_legal_name character varying(1024),
    sender_zip character varying(1024),
    device_tor_node boolean,
    device_is_vpn boolean,
    device_authentication_method character varying(1024),
    end_to_end_identification character varying(1024),
    device_customer_number character varying(1024),
    sender_transaction_notes character varying(1024),
    customer_name_prefix character varying(1024),
    customer_name_first character varying(1024),
    customer_name_middle character varying(1024),
    customer_name_last character varying(1024),
    customer_phone character varying(1024),
    customer_email character varying(1024),
    customer_member_number character varying(1024),
    tenant_service_type character varying(1024),
    branch_terminal_number character varying(1024)
);


ALTER TABLE casemanager."AM_EVENT_TRANSFERS" OWNER TO case_manager;

--
-- Name: AM_STATUS_REASON; Type: TABLE; Schema: casemanager; Owner: case_manager
--

CREATE TABLE casemanager."AM_STATUS_REASON" (
    "STATUS_REASON_ID" character varying(40) NOT NULL,
    "STATUS_ID" character varying(40),
    "STATUS_REASON_NAME" character varying(255),
    "DELETEDAT" bigint,
    "DELETEDBY" character varying(40)
);


ALTER TABLE casemanager."AM_STATUS_REASON" OWNER TO case_manager;

--
-- Name: 1cbd787e864f57928826fcea52f2fe; Type: TABLE; Schema: eventstorage; Owner: event_storage
--

CREATE TABLE eventstorage."1cbd787e864f57928826fcea52f2fe" (
    "FDZ_PARTITION_INDEX" integer,
    "FDZ_UUID" character varying(256) NOT NULL,
    "FDZ_timestamp" bigint,
    lifecycle_id character varying(256),
    "FDZ_SOURCE_ID" character varying(256),
    "FDZ_TENANT_KEY" character varying(256),
    "FDZ_WKFL_STATE" jsonb,
    "FDZ_INTERNAL_STATE" jsonb,
    "FDZ_DIFFS" jsonb,
    "FDZ_RESULTS" jsonb,
    "FDZ_OUTCOMES" jsonb,
    "FDZ_TRIGGERED_ACTIONS" jsonb,
    "FDZ_FEEDBACKS" jsonb,
    "FDZ_SCHEMA_UID" character varying(256),
    event_type character varying(256),
    mandate_id character varying(256),
    event_occurred_at bigint,
    event_external_id character varying(256),
    initiator_party_name character varying(256),
    notification_id character varying(256),
    action_created_at bigint,
    mms_servicer_bic character varying(256),
    trigger character varying(256),
    priority character varying(256),
    porting_id character varying(256),
    decline_indicator boolean,
    decline_indicator_reason_code character varying(256),
    store_forward_indicator boolean,
    mandate_version bigint,
    mandate_registration_date bigint,
    mandate_status character varying(256),
    mandate_status_reason_code character varying(256),
    mandate_status_reason_code_des character varying(256),
    initiation_request_id character varying(256),
    npp_backoffice_service character varying(256),
    mandate_type character varying(256),
    establishment_scheme character varying(256),
    mandate_purpose_code character varying(256),
    description character varying(256),
    short_description character varying(256),
    validity_start_date bigint,
    validity_end_date bigint,
    transfer_arrangement character varying(256),
    automatic_extension_indicator character varying(256),
    additional_information character varying(256),
    debtor_party_type character varying(256),
    debtor_party_id_type character varying(256),
    debtor_party_id_value character varying(256),
    debtor_party_name character varying(256),
    debtor_ultimate_party_name character varying(256),
    debtor_account_servicer_bic character varying(256),
    debtor_account_type character varying(256),
    debtor_account_value character varying(256),
    debtor_account_issuer character varying(256),
    debtor_alias_type character varying(256),
    debtor_alias_value character varying(256),
    debtor_legal_name character varying(256),
    debtor_party_reference character varying(256),
    creditor_party_type character varying(256),
    creditor_party_id_type character varying(256),
    creditor_party_id_value character varying(256),
    creditor_party_name character varying(256),
    creditor_ultimate_party_name character varying(256),
    creditor_account_servicer_bic character varying(256),
    creditor_account_type character varying(256),
    creditor_account_value character varying(256),
    creditor_account_issuer character varying(256),
    creditor_alias_type character varying(256),
    creditor_alias_value character varying(256),
    creditor_legal_name character varying(256),
    creditor_party_reference character varying(256),
    initiator_party_id_type character varying(256),
    initiator_party_id_value character varying(256),
    initiator_party_legal_name character varying(256),
    initiator_party_servicer_bic character varying(256),
    payment_frequency character varying(256),
    payment_execute_not_before_tim bigint,
    count_per_period character varying(256),
    point_in_time character varying(256),
    payment_amount_type character varying(256),
    first_payment_date bigint,
    last_payment_date bigint,
    first_payment_amount bigint,
    first_payment_currency character varying(256),
    first_payment_currency_unit integer,
    last_payment_amount bigint,
    last_payment_currency character varying(256),
    last_payment_currency_unit integer,
    amount bigint,
    amount_currency character varying(256),
    amount_currency_unit integer,
    maximum_amount bigint,
    maximum_amount_currency character varying(256),
    maximum_amount_currency_unit integer,
    new_action_id character varying(256),
    new_type character varying(256),
    new_status character varying(256),
    new_bilateral boolean,
    new_expiry_time bigint,
    new_notification_priority character varying(256),
    new_creation_time bigint,
    new_creation_servicer_bic character varying(256),
    new_creation_sponsor_bic character varying(256),
    new_creation_party_role character varying(256),
    new_resolution_time bigint,
    new_resolution_servicer_bic character varying(256),
    new_resolution_sponsor_bic character varying(256),
    new_resolution_party_role character varying(256),
    new_resolution_reason character varying(256),
    new_resolution_reason_code character varying(256),
    new_resolution_requested_by bigint,
    new_initiation_request_identif character varying(256),
    new_npp_backoffice_service character varying(256),
    new_mandate_type character varying(256),
    new_establishment_scheme character varying(256),
    new_mandate_purpose_code character varying(256),
    new_description character varying(256),
    new_short_description character varying(256),
    new_validity_start_date bigint,
    new_validity_end_date bigint,
    new_transfer_arrangement character varying(256),
    new_automatic_extension_indica boolean,
    new_additional_information character varying(256),
    new_debtor_party_type character varying(256),
    new_debtor_party_id_type character varying(256),
    new_debtor_party_id_value character varying(256),
    new_debtor_party_name character varying(256),
    new_debtor_ultimate_party_name character varying(256),
    new_debtor_account_servicer_bi character varying(256),
    new_debtor_account_type character varying(256),
    new_debtor_account_value character varying(256),
    new_debtor_account_issuer character varying(256),
    new_debtor_alias_type character varying(256),
    new_debtor_alias_value character varying(256),
    new_debtor_legal_name character varying(256),
    new_debtor_party_reference character varying(256),
    new_creditor_party_type character varying(256),
    new_creditor_party_id_type character varying(256),
    new_creditor_party_id_value character varying(256),
    new_creditor_party_name character varying(256),
    new_creditor_ultimate_party_na character varying(256),
    new_creditor_account_servicer_ character varying(256),
    new_creditor_account_type character varying(256),
    new_creditor_account_value character varying(256),
    new_creditor_account_issuer character varying(256),
    new_creditor_alias_type character varying(256),
    new_creditor_alias_value character varying(256),
    new_creditor_legal_name character varying(256),
    new_creditor_party_reference character varying(256),
    new_initiator_party_id_type character varying(256),
    new_initiator_party_id_value character varying(256),
    new_initiator_party_name character varying(256),
    new_initiator_party_legal_name character varying(256),
    new_initiator_party_servicer_b character varying(256),
    new_payment_frequency character varying(256),
    new_payment_execute_not_before bigint,
    new_count_per_period character varying(256),
    new_point_in_time character varying(256),
    new_payment_amount_type character varying(256),
    new_first_payment_date bigint,
    new_last_payment_date bigint,
    new_first_payment_amount bigint,
    new_first_payment_currency character varying(256),
    new_first_payment_currency_uni integer,
    new_last_payment_amount bigint,
    new_last_payment_currency character varying(256),
    new_last_payment_currency_unit integer,
    new_amount bigint,
    new_amount_currency character varying(256),
    new_amount_currency_unit integer,
    new_maximum_amount bigint,
    new_maximum_amount_currency character varying(256),
    new_maximum_amount_currency_un integer,
    change character varying(256),
    reason_code character varying(256),
    reason_description character varying(256)
);


ALTER TABLE eventstorage."1cbd787e864f57928826fcea52f2fe" OWNER TO event_storage;

--
-- Name: 4cf993bb5be5806d15a4ed1549439d; Type: TABLE; Schema: eventstorage; Owner: event_storage
--

CREATE TABLE eventstorage."4cf993bb5be5806d15a4ed1549439d" (
    "FDZ_PARTITION_INDEX" integer,
    "FDZ_UUID" character varying(256) NOT NULL,
    "FDZ_timestamp" bigint,
    lifecycle_id character varying(256),
    "FDZ_SOURCE_ID" character varying(256),
    "FDZ_TENANT_KEY" character varying(256),
    "FDZ_WKFL_STATE" jsonb,
    "FDZ_INTERNAL_STATE" jsonb,
    "FDZ_DIFFS" jsonb,
    "FDZ_RESULTS" jsonb,
    "FDZ_OUTCOMES" jsonb,
    "FDZ_TRIGGERED_ACTIONS" jsonb,
    "FDZ_FEEDBACKS" jsonb,
    "FDZ_SCHEMA_UID" character varying(256),
    event_type character varying(256),
    mandate_id character varying(256),
    event_occurred_at bigint,
    event_external_id character varying(256),
    initiator_party_name character varying(256),
    notification_id character varying(256),
    action_created_at bigint,
    mms_servicer_bic character varying(256),
    trigger character varying(256),
    priority character varying(256),
    porting_id character varying(256),
    decline_indicator boolean,
    decline_indicator_reason_code character varying(256),
    store_forward_indicator boolean,
    mandate_version bigint,
    mandate_registration_date bigint,
    mandate_status character varying(256),
    mandate_status_reason_code character varying(256),
    mandate_status_reason_code_des character varying(256),
    initiation_request_id character varying(256),
    npp_backoffice_service character varying(256),
    mandate_type character varying(256),
    establishment_scheme character varying(256),
    mandate_purpose_code character varying(256),
    description character varying(256),
    short_description character varying(256),
    validity_start_date bigint,
    validity_end_date bigint,
    transfer_arrangement character varying(256),
    automatic_extension_indicator character varying(256),
    additional_information character varying(256),
    debtor_party_type character varying(256),
    debtor_party_id_type character varying(256),
    debtor_party_id_value character varying(256),
    debtor_party_name character varying(256),
    debtor_ultimate_party_name character varying(256),
    debtor_account_servicer_bic character varying(256),
    debtor_account_type character varying(256),
    debtor_account_value character varying(256),
    debtor_account_issuer character varying(256),
    debtor_alias_type character varying(256),
    debtor_alias_value character varying(256),
    debtor_legal_name character varying(256),
    debtor_party_reference character varying(256),
    creditor_party_type character varying(256),
    creditor_party_id_type character varying(256),
    creditor_party_id_value character varying(256),
    creditor_party_name character varying(256),
    creditor_ultimate_party_name character varying(256),
    creditor_account_servicer_bic character varying(256),
    creditor_account_type character varying(256),
    creditor_account_value character varying(256),
    creditor_account_issuer character varying(256),
    creditor_alias_type character varying(256),
    creditor_alias_value character varying(256),
    creditor_legal_name character varying(256),
    creditor_party_reference character varying(256),
    initiator_party_id_type character varying(256),
    initiator_party_id_value character varying(256),
    initiator_party_legal_name character varying(256),
    initiator_party_servicer_bic character varying(256),
    payment_frequency character varying(256),
    payment_execute_not_before_tim bigint,
    count_per_period character varying(256),
    point_in_time character varying(256),
    payment_amount_type character varying(256),
    first_payment_date bigint,
    last_payment_date bigint,
    first_payment_amount bigint,
    first_payment_currency character varying(256),
    first_payment_currency_unit integer,
    last_payment_amount bigint,
    last_payment_currency character varying(256),
    last_payment_currency_unit integer,
    amount bigint,
    amount_currency character varying(256),
    amount_currency_unit integer,
    maximum_amount bigint,
    maximum_amount_currency character varying(256),
    maximum_amount_currency_unit integer,
    new_action_id character varying(256),
    new_type character varying(256),
    new_status character varying(256),
    new_bilateral boolean,
    new_expiry_time bigint,
    new_notification_priority character varying(256),
    new_creation_time bigint,
    new_creation_servicer_bic character varying(256),
    new_creation_sponsor_bic character varying(256),
    new_creation_party_role character varying(256),
    new_resolution_time bigint,
    new_resolution_servicer_bic character varying(256),
    new_resolution_sponsor_bic character varying(256),
    new_resolution_party_role character varying(256),
    new_resolution_reason character varying(256),
    new_resolution_reason_code character varying(256),
    new_resolution_requested_by bigint,
    new_initiation_request_identif character varying(256),
    new_npp_backoffice_service character varying(256),
    new_mandate_type character varying(256),
    new_establishment_scheme character varying(256),
    new_mandate_purpose_code character varying(256),
    new_description character varying(256),
    new_short_description character varying(256),
    new_validity_start_date bigint,
    new_validity_end_date bigint,
    new_transfer_arrangement character varying(256),
    new_automatic_extension_indica boolean,
    new_additional_information character varying(256),
    new_debtor_party_type character varying(256),
    new_debtor_party_id_type character varying(256),
    new_debtor_party_id_value character varying(256),
    new_debtor_party_name character varying(256),
    new_debtor_ultimate_party_name character varying(256),
    new_debtor_account_servicer_bi character varying(256),
    new_debtor_account_type character varying(256),
    new_debtor_account_value character varying(256),
    new_debtor_account_issuer character varying(256),
    new_debtor_alias_type character varying(256),
    new_debtor_alias_value character varying(256),
    new_debtor_legal_name character varying(256),
    new_debtor_party_reference character varying(256),
    new_creditor_party_type character varying(256),
    new_creditor_party_id_type character varying(256),
    new_creditor_party_id_value character varying(256),
    new_creditor_party_name character varying(256),
    new_creditor_ultimate_party_na character varying(256),
    new_creditor_account_servicer_ character varying(256),
    new_creditor_account_type character varying(256),
    new_creditor_account_value character varying(256),
    new_creditor_account_issuer character varying(256),
    new_creditor_alias_type character varying(256),
    new_creditor_alias_value character varying(256),
    new_creditor_legal_name character varying(256),
    new_creditor_party_reference character varying(256),
    new_initiator_party_id_type character varying(256),
    new_initiator_party_id_value character varying(256),
    new_initiator_party_name character varying(256),
    new_initiator_party_legal_name character varying(256),
    new_initiator_party_servicer_b character varying(256),
    new_payment_frequency character varying(256),
    new_payment_execute_not_before bigint,
    new_count_per_period character varying(256),
    new_point_in_time character varying(256),
    new_payment_amount_type character varying(256),
    new_first_payment_date bigint,
    new_last_payment_date bigint,
    new_first_payment_amount bigint,
    new_first_payment_currency character varying(256),
    new_first_payment_currency_uni integer,
    new_last_payment_amount bigint,
    new_last_payment_currency character varying(256),
    new_last_payment_currency_unit integer,
    new_amount bigint,
    new_amount_currency character varying(256),
    new_amount_currency_unit integer,
    new_maximum_amount bigint,
    new_maximum_amount_currency character varying(256),
    new_maximum_amount_currency_un integer,
    change character varying(256),
    reason_code character varying(256),
    reason_description character varying(256)
);


ALTER TABLE eventstorage."4cf993bb5be5806d15a4ed1549439d" OWNER TO event_storage;

--
-- Name: deced856d7f1865f0bdd4e178bb5fc; Type: TABLE; Schema: eventstorage; Owner: event_storage
--

CREATE TABLE eventstorage.deced856d7f1865f0bdd4e178bb5fc (
    "FDZ_PARTITION_INDEX" integer,
    "FDZ_UUID" character varying(256) NOT NULL,
    "FDZ_timestamp" bigint,
    lifecycle_id character varying(256),
    "FDZ_SOURCE_ID" character varying(256),
    "FDZ_TENANT_KEY" character varying(256),
    "FDZ_WKFL_STATE" jsonb,
    "FDZ_INTERNAL_STATE" jsonb,
    "FDZ_DIFFS" jsonb,
    "FDZ_RESULTS" jsonb,
    "FDZ_OUTCOMES" jsonb,
    "FDZ_TRIGGERED_ACTIONS" jsonb,
    "FDZ_FEEDBACKS" jsonb,
    "FDZ_SCHEMA_UID" character varying(256),
    initiator_party_name character varying(256),
    mandate_id character varying(256),
    bulk_id character varying(256),
    payment_type character varying(256),
    payment_sub_type character varying(256),
    product_code character varying(256),
    geographic_scope character varying(256),
    payment_status character varying(256),
    created_at bigint,
    cutoff_at bigint,
    sender_initiated_at bigint,
    sender_urgency boolean,
    risk_level character varying(256),
    requested_execution_at bigint,
    execution_at bigint,
    frequency character varying(256),
    number_of_payments integer,
    recurring_payment boolean,
    recurring_payment_day integer,
    recurring_payment_hour integer,
    payment_reference character varying(256),
    end_to_end_identification character varying(256),
    sender_city character varying(256),
    sender_country_code character varying(256),
    sender_transaction_amount bigint,
    sender_transaction_currency character varying(256),
    sender_transaction_foreign_exc double precision,
    sender_transaction_fee_type character varying(256),
    sender_transaction_fee_amount bigint,
    sender_transaction_fee_currenc character varying(256),
    sender_transaction_category_pu character varying(256),
    sender_transaction_purpose character varying(256),
    sender_transaction_bank_accoun character varying(256),
    sender_transaction_notes character varying(256),
    sender_bank_bic character varying(256),
    sender_bank_name character varying(256),
    sender_bank_postal_code character varying(256),
    sender_bank_address character varying(256),
    sender_bank_city character varying(256),
    sender_bank_country_code character varying(256),
    sender_bank_currency character varying(256),
    sender_bank_foreign_exchange_r double precision,
    sender_bank_fee_type character varying(256),
    sender_bank_fee_amount bigint,
    sender_bank_fee_currency character varying(256),
    receiver_bank_bic character varying(256),
    receiver_bank_name character varying(256),
    receiver_bank_postal_code character varying(256),
    receiver_bank_address character varying(256),
    receiver_bank_city character varying(256),
    receiver_bank_country_code character varying(256),
    receiver_bank_currency character varying(256),
    receiver_bank_foreign_exchange double precision,
    receiver_bank_fee_type character varying(256),
    receiver_bank_fee_amount bigint,
    receiver_bank_fee_currency character varying(256),
    receiver_transaction_amount bigint,
    receiver_transaction_currency character varying(256),
    receiver_transaction_foreign_e double precision,
    receiver_transaction_fee_type character varying(256),
    receiver_transaction_fee_amoun bigint,
    receiver_transaction_fee_curre character varying(256),
    receiver_settlement_at bigint,
    receiver_transaction_bank_acco character varying(256),
    receiver_transaction_notes character varying(256),
    receiver_city character varying(256),
    receiver_country_code character varying(256),
    device_type character varying(256),
    device_operating_system character varying(256),
    device_ip_address character varying(256),
    device_ip_address_location character varying(256),
    device_longitude character varying(256),
    device_latitude character varying(256),
    device_email character varying(256),
    device_phone_number character varying(256),
    device_phone_number_country_co character varying(256),
    challenge_risk_score integer,
    challenge_risk_flag boolean,
    sca_risk_score integer,
    sca_risk_flag boolean,
    number_of_authentications integer,
    max_number_of_authentications integer,
    approver_login_id character varying(256),
    approver_customer_id character varying(256),
    approver_type character varying(256),
    approval_total_approves integer,
    approval_final_approval boolean,
    approval_signatures_applied integer,
    approval_current_number integer,
    approval_primary_admin boolean,
    approval_submitted_at bigint,
    approval_type character varying(256),
    approval_status character varying(256),
    event_type character varying(256),
    event_external_id character varying(256),
    event_received_at bigint,
    info_type character varying(256),
    dispute_start_date bigint,
    dispute_reason character varying(256),
    dispute_notes character varying(256),
    dispute_submitted_by character varying(256),
    dispute_end_date bigint,
    dispute_feedback_notes character varying(256),
    dispute_refunded character varying(256),
    oob_start_date bigint,
    oob_comm_type character varying(256),
    oob_notes character varying(256),
    oob_end_date bigint,
    oob_feedback_notes character varying(256),
    oob_response_type character varying(256),
    feedback_type character varying(256),
    feedback_value boolean,
    feedback_label character varying(256),
    sender_correspondent_bank_bic character varying(256),
    sender_correspondent_bank_name character varying(256),
    sender_correspondent_bank_post character varying(256),
    sender_correspondent_bank_addr character varying(256),
    sender_correspondent_bank_city character varying(256),
    sender_correspondent_bank_coun character varying(256),
    sender_correspondent_bank_curr character varying(256),
    sender_correspondent_bank_fore double precision,
    sender_correspondent_bank_fee_ character varying(256),
    sender_correspondent_bank_fesr bigint,
    sender_correspondent_bank_fetr character varying(256),
    receiver_correspondent_bank_bi character varying(256),
    receiver_correspondent_bank_na character varying(256),
    receiver_correspondent_bank_po character varying(256),
    receiver_correspondent_bank_ad character varying(256),
    receiver_correspondent_bank_ci character varying(256),
    receiver_correspondent_bank_co character varying(256),
    receiver_correspondent_bank_cu character varying(256),
    receiver_correspondent_bank_fo double precision,
    receiver_correspondent_bank_fe character varying(256),
    receiver_correspondent_bank_sr bigint,
    receiver_correspondent_bank_tr character varying(256),
    sender_id character varying(256),
    sender_segment character varying(256),
    sender_name character varying(256),
    sender_email character varying(256),
    sender_phone character varying(256),
    sender_phone_val_code character varying(256),
    sender_citizen_id_number character varying(256),
    sender_passport_number character varying(256),
    sender_driver_license character varying(256),
    sender_ssn character varying(256),
    sender_tax_number character varying(256),
    sender_registration_date bigint,
    sender_street_addr character varying(256),
    sender_zip character varying(256),
    sender_region character varying(256),
    sender_dob character varying(256),
    sender_number_of_cards integer,
    sender_number_of_accounts integer,
    sender_total_balance bigint,
    sender_total_credit_limit bigint,
    sender_kyc_lvl character varying(256),
    sender_occupation character varying(256),
    sender_occupation_status character varying(256),
    sender_risk_rating character varying(256),
    sender_currency character varying(256),
    sender_account_bic character varying(256),
    sender_account_open_date bigint,
    sender_account_type character varying(256),
    sender_account_currency character varying(256),
    sender_account_balance bigint,
    sender_account_credit_limit bigint,
    sender_account_otb_limit bigint,
    sender_account_available_credi bigint,
    sender_account_debt_balance bigint,
    sender_account_cash_advance_ba bigint,
    sender_account_status character varying(256),
    sender_account_last_activity bigint,
    sender_account_last_payment_da bigint,
    sender_account_last_payment_am bigint,
    sender_account_pw_change_flag boolean,
    sender_account_rewards_used_co integer,
    sender_account_debt_payment_me character varying(256),
    sender_account_number_of_cards integer,
    sender_account_atc1 character varying(256),
    sender_account_atc2 character varying(256),
    receiver_id character varying(256),
    receiver_segment character varying(256),
    receiver_name character varying(256),
    receiver_email character varying(256),
    receiver_phone character varying(256),
    receiver_phone_val_code character varying(256),
    receiver_citizen_id_number character varying(256),
    receiver_passport_number character varying(256),
    receiver_driver_license character varying(256),
    receiver_ssn character varying(256),
    receiver_tax_number character varying(256),
    receiver_registration_date bigint,
    receiver_street_addr character varying(256),
    receiver_zip character varying(256),
    receiver_region character varying(256),
    receiver_dob character varying(256),
    receiver_number_of_cards integer,
    receiver_number_of_accounts integer,
    receiver_total_balance bigint,
    receiver_total_credit_limit bigint,
    receiver_kyc_lvl character varying(256),
    receiver_occupation character varying(256),
    receiver_occupation_status character varying(256),
    receiver_risk_rating character varying(256),
    receiver_currency character varying(256),
    receiver_account_bic character varying(256),
    receiver_account_open_date bigint,
    receiver_account_type character varying(256),
    receiver_account_currency character varying(256),
    receiver_account_balance bigint,
    receiver_account_credit_limit bigint,
    receiver_account_otb_limit bigint,
    receiver_account_available_cre bigint,
    receiver_account_debt_balance bigint,
    receiver_account_cash_advance_ bigint,
    receiver_account_status character varying(256),
    receiver_account_last_activity bigint,
    receiver_account_last_payment_ bigint,
    receiver_account_last_paymensr bigint,
    receiver_account_pw_change_fla boolean,
    receiver_account_rewards_used_ integer,
    receiver_account_debt_payment_ character varying(256),
    receiver_account_number_of_car integer,
    receiver_account_atc1 character varying(256),
    receiver_account_atc2 character varying(256),
    direction character varying(256),
    dd_mandate_name character varying(256),
    channel_type character varying(256),
    sender_bank_sort_code character varying(256),
    receiver_bank_sort_code character varying(256),
    device_id character varying(256),
    dd_mandate_number character varying(256),
    sender_bank_routing_number character varying(256),
    sender_bank_branch_id character varying(256),
    receiver_bank_routing_number character varying(256),
    receiver_bank_branch_id character varying(256),
    event_occurred_at bigint,
    tmx_device_id character varying(256),
    tmx_fuzzy_device_id character varying(256),
    tmx_os character varying(256),
    tmx_policy_score integer,
    tmx_proxy_type character varying(256),
    reason_code character varying(256),
    tmx_risk_rating character varying(256),
    tmx_session_id character varying(256),
    tmx_time_zone integer,
    tmx_reason_code jsonb,
    tmx_true_ip character varying(256),
    tmx_true_ip_routing_type character varying(256),
    tmx_ua_mobile character varying(256),
    tmx_review_status character varying(256),
    tmx_true_ip_connection_type character varying(256),
    tmx_true_ip_line_speed character varying(256),
    customer_id character varying(256),
    on_us_indicator boolean,
    biller_crn character varying(256),
    biller_code character varying(256),
    sender_alias character varying(256),
    sender_alias_type character varying(256),
    sender_alias_registration_time bigint,
    sender_alias_last_update_time bigint,
    sender_alias_status character varying(256),
    receiver_alias character varying(256),
    receiver_alias_type character varying(256),
    receiver_alias_registration_ti bigint,
    receiver_alias_last_update_tim bigint,
    receiver_alias_status character varying(256),
    text_for_receiver character varying(256),
    device_user_agent character varying(256),
    device_imei_number character varying(256),
    device_tor_mode boolean,
    device_cookies boolean,
    device_first_seen bigint,
    device_app_version character varying(256),
    trusted_receiver boolean,
    first_recurring_payment boolean,
    segment_channel_type character varying(256),
    reference_fraud_rate double precision,
    auth_type character varying(256),
    device_ip_country_code character varying(256),
    sender_country_code_change_fla boolean,
    sender_email_change_flag boolean,
    sender_phone_change_flag boolean,
    malware_flag boolean,
    proxy_flag boolean,
    device_language character varying(256),
    last_sca_at bigint,
    reference_number character varying(256),
    reference_number_entry_mode character varying(256),
    instant_transfer_processing_me character varying(256),
    login_session_id character varying(256),
    pass_reset boolean,
    brand character varying(256),
    tenant_service_type character varying(256),
    agent character varying(256),
    ai_application_id character varying(256),
    ai_end_user_id character varying(256),
    ai_note character varying(256),
    device_customer_number character varying(256),
    device_authentication_method character varying(256),
    scheme_score bigint,
    device_is_vpn boolean,
    receiver_scheme character varying(256),
    sender_scheme character varying(256),
    receiver_legal_name character varying(256),
    sender_legal_name character varying(256),
    counter_party_id character varying(256),
    counter_party_brand character varying(256),
    receiver_name_first character varying(256),
    receiver_name_last character varying(256),
    receiver_name_middle character varying(256),
    receiver_name_prefix character varying(256),
    receiver_phone_home character varying(256),
    receiver_phone_work character varying(256),
    receiver_phone_alt1 character varying(256),
    receiver_phone_alt2 character varying(256),
    receiver_contact_preferred character varying(256),
    receiver_street_addr_2 character varying(256),
    receiver_street_addr_alt character varying(256),
    receiver_street_addr_2_alt character varying(256),
    receiver_zip_alt character varying(256),
    receiver_city_alt character varying(256),
    receiver_region_alt character varying(256),
    receiver_member_number character varying(256),
    receiver_sub_member_number character varying(256),
    receiver_secret_question character varying(256),
    receiver_secret_answer character varying(256),
    receiver_maiden_name character varying(256),
    receiver_brand character varying(256),
    receiver_travel_notes character varying(256),
    receiver_company_abn character varying(256),
    receiver_company_name character varying(256),
    receiver_company_phone character varying(256),
    receiver_account_bban character varying(256),
    receiver_account_branch_no character varying(256),
    receiver_account_branch_name character varying(256),
    receiver_account_brand character varying(256),
    sender_name_first character varying(256),
    sender_name_last character varying(256),
    sender_name_middle character varying(256),
    sender_name_prefix character varying(256),
    sender_phone_home character varying(256),
    sender_phone_work character varying(256),
    sender_phone_alt1 character varying(256),
    sender_phone_alt2 character varying(256),
    sender_contact_preferred character varying(256),
    sender_street_addr_2 character varying(256),
    sender_street_addr_alt character varying(256),
    sender_street_addr_2_alt character varying(256),
    sender_zip_alt character varying(256),
    sender_city_alt character varying(256),
    sender_region_alt character varying(256),
    sender_member_number character varying(256),
    sender_sub_member_number character varying(256),
    sender_secret_question character varying(256),
    sender_secret_answer character varying(256),
    sender_maiden_name character varying(256),
    sender_brand character varying(256),
    sender_travel_notes character varying(256),
    sender_company_abn character varying(256),
    sender_company_name character varying(256),
    sender_company_phone character varying(256),
    sender_account_bban character varying(256),
    sender_account_branch_no character varying(256),
    sender_account_branch_name character varying(256),
    sender_account_brand character varying(256),
    customer_name_last character varying(256),
    customer_name_middle character varying(256),
    customer_name_first character varying(256),
    customer_name_prefix character varying(256),
    customer_email character varying(256),
    customer_phone character varying(256),
    customer_member_number character varying(256),
    branch_terminal_number character varying(256),
    receiver_account_close_date bigint,
    sender_account_close_date bigint,
    tenant character varying(256),
    customer_dob character varying(256),
    customer_city character varying(256),
    customer_region character varying(256),
    sender_account_iban character varying(256),
    receiver_account_iban character varying(256)
);


ALTER TABLE eventstorage.deced856d7f1865f0bdd4e178bb5fc OWNER TO event_storage;

--
-- Name: FDZ_APP_MGDLIST_ITEM; Type: TABLE; Schema: pulse; Owner: pulse
--

CREATE TABLE pulse."FDZ_APP_MGDLIST_ITEM" (
    "APP_ID" character varying(22) NOT NULL,
    "MGDLIST_ITEM_ID" character varying(22) NOT NULL,
    "MGDLIST_ID" character varying(22) NOT NULL,
    "MGDLIST_ITEM_ENABLED" boolean NOT NULL,
    "MGDLIST_ITEM_TIMESPAN_START" bigint,
    "MGDLIST_ITEM_TIMESPAN_END" bigint,
    "MGDLIST_ITEM_KEY" character varying(254) NOT NULL,
    "MGDLIST_ITEM_VALUE" text,
    "MGDLIST_ITEM_COMMENT" character varying(256),
    "TENANT_ID" character varying(22) NOT NULL,
    "TENANT_GROUP_ID" character varying(22),
    "CREATEDAT" bigint,
    "CREATEDBY" character varying(22),
    "UPDATEDAT" bigint,
    "UPDATEDBY" character varying(22)
);


ALTER TABLE pulse."FDZ_APP_MGDLIST_ITEM" OWNER TO pulse;

--
-- Name: AM_EVENT_STATUS_REASON 44a79ea3a72040e995ef26ee98577b; Type: CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_EVENT_STATUS_REASON"
    ADD CONSTRAINT "44a79ea3a72040e995ef26ee98577b" PRIMARY KEY ("EVENT_STATUS_ID", "STATUS_REASON_ID");


--
-- Name: AM_EVENT_CARDS PK_AM_EVENT_CARDS; Type: CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_EVENT_CARDS"
    ADD CONSTRAINT "PK_AM_EVENT_CARDS" PRIMARY KEY ("EVENT_ID");


--
-- Name: AM_EVENT_COMMON PK_AM_EVENT_COMMON; Type: CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_EVENT_COMMON"
    ADD CONSTRAINT "PK_AM_EVENT_COMMON" PRIMARY KEY ("EVENT_ID", "CHANNEL_ID");


--
-- Name: AM_EVENT_TRANSFERS PK_AM_EVENT_TRANSFERS; Type: CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_EVENT_TRANSFERS"
    ADD CONSTRAINT "PK_AM_EVENT_TRANSFERS" PRIMARY KEY ("EVENT_ID");


--
-- Name: AM_STATUS_REASON a705ecc163ba0a9bb2488fa52c9202; Type: CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_STATUS_REASON"
    ADD CONSTRAINT a705ecc163ba0a9bb2488fa52c9202 PRIMARY KEY ("STATUS_REASON_ID");


--
-- Name: AM_EVENT_STATUS f65ff77606f7f60920764a3c04e3b9; Type: CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_EVENT_STATUS"
    ADD CONSTRAINT f65ff77606f7f60920764a3c04e3b9 PRIMARY KEY ("EVENT_STATUS_ID");


--
-- Name: 1cbd787e864f57928826fcea52f2fe 1cbd787e864f57928826fcea52f2fe_pkey; Type: CONSTRAINT; Schema: eventstorage; Owner: event_storage
--

ALTER TABLE ONLY eventstorage."1cbd787e864f57928826fcea52f2fe"
    ADD CONSTRAINT "1cbd787e864f57928826fcea52f2fe_pkey" PRIMARY KEY ("FDZ_UUID");


--
-- Name: 4cf993bb5be5806d15a4ed1549439d 4cf993bb5be5806d15a4ed1549439d_pkey; Type: CONSTRAINT; Schema: eventstorage; Owner: event_storage
--

ALTER TABLE ONLY eventstorage."4cf993bb5be5806d15a4ed1549439d"
    ADD CONSTRAINT "4cf993bb5be5806d15a4ed1549439d_pkey" PRIMARY KEY ("FDZ_UUID");


--
-- Name: deced856d7f1865f0bdd4e178bb5fc deced856d7f1865f0bdd4e178bb5fc_pkey; Type: CONSTRAINT; Schema: eventstorage; Owner: event_storage
--

ALTER TABLE ONLY eventstorage.deced856d7f1865f0bdd4e178bb5fc
    ADD CONSTRAINT deced856d7f1865f0bdd4e178bb5fc_pkey PRIMARY KEY ("FDZ_UUID");


--
-- Name: FDZ_APP_MGDLIST_ITEM a6d2d8b421ac7849a555e5bc4ec7ec39; Type: CONSTRAINT; Schema: pulse; Owner: pulse
--

ALTER TABLE ONLY pulse."FDZ_APP_MGDLIST_ITEM"
    ADD CONSTRAINT a6d2d8b421ac7849a555e5bc4ec7ec39 PRIMARY KEY ("MGDLIST_ITEM_ID", "MGDLIST_ID", "APP_ID");


--
-- Name: 01bf194104969873cb4b7d7c9efac4; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "01bf194104969873cb4b7d7c9efac4" ON casemanager."AM_EVENT_COMMON" USING btree (customer_id);


--
-- Name: 057b22ca0be1da82cf94fab0a2f5f5; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "057b22ca0be1da82cf94fab0a2f5f5" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_ALERT");


--
-- Name: 0589d992a41c87881aeba0b03da83f; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "0589d992a41c87881aeba0b03da83f" ON casemanager."AM_EVENT_CARDS" USING btree (lifecycle_id);


--
-- Name: 07e9b7d16ea07eaa611a148b420174; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "07e9b7d16ea07eaa611a148b420174" ON casemanager."AM_EVENT_CARDS" USING btree ("USER_ID");


--
-- Name: 0962f41f28e1023e47340bccbcdc4a; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "0962f41f28e1023e47340bccbcdc4a" ON casemanager."AM_EVENT_CARDS" USING btree (mcc);


--
-- Name: 0f8cc66aa4c784f8a5292777eb5822; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "0f8cc66aa4c784f8a5292777eb5822" ON casemanager."AM_EVENT_CARDS" USING btree (card_brand);


--
-- Name: 12e3c9129bc33a5dc1be380a38aa92; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "12e3c9129bc33a5dc1be380a38aa92" ON casemanager."AM_EVENT_CARDS" USING btree (event_occurred_at);


--
-- Name: 1dc59eb649bcee213d995bc5cd109e; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "1dc59eb649bcee213d995bc5cd109e" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_TIMESTAMP");


--
-- Name: 25010458314c996c0e2ad6d7615c7e; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "25010458314c996c0e2ad6d7615c7e" ON casemanager."AM_EVENT_COMMON" USING btree ("ACCESS_GROUP_ID");


--
-- Name: 25651f3fa96f7668a7063940565857; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "25651f3fa96f7668a7063940565857" ON casemanager."AM_EVENT_TRANSFERS" USING btree (direction);


--
-- Name: 2b890cf0e5cd32d13b91a586dcfca2; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "2b890cf0e5cd32d13b91a586dcfca2" ON casemanager."AM_EVENT_COMMON" USING btree ("CHANNEL_ID");


--
-- Name: 2e0a14e0f6647fed77fbc27476ef24; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "2e0a14e0f6647fed77fbc27476ef24" ON casemanager."AM_EVENT_CARDS" USING btree (customer_email);


--
-- Name: 3068ac6b6abc570c7652d3f274e288; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "3068ac6b6abc570c7652d3f274e288" ON casemanager."AM_EVENT_CARDS" USING btree ("channelId");


--
-- Name: 33cc487ad7b08c7f51b16383ba4e2e; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "33cc487ad7b08c7f51b16383ba4e2e" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("channelId");


--
-- Name: 3839279eff363d14c84a6dfcf80fd9; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "3839279eff363d14c84a6dfcf80fd9" ON casemanager."AM_EVENT_CARDS" USING btree (customer_phone);


--
-- Name: 40438dc16bac44c83266d5d6fcf929; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "40438dc16bac44c83266d5d6fcf929" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_ALERT");


--
-- Name: 459e917a3fef4ff48a488455fffe68; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "459e917a3fef4ff48a488455fffe68" ON casemanager."AM_EVENT_CARDS" USING btree (card_bin);


--
-- Name: 45ac0aac4812a327e633c6be2a7499; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "45ac0aac4812a327e633c6be2a7499" ON casemanager."AM_EVENT_COMMON" USING btree (outcome_decision);


--
-- Name: 48f40a037779538348727969767391; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "48f40a037779538348727969767391" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_DECISION_ID");


--
-- Name: 49e5343a03997b0a5eca6c0aa60a77; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "49e5343a03997b0a5eca6c0aa60a77" ON casemanager."AM_EVENT_COMMON" USING btree ("USER_ID");


--
-- Name: 524a84b3434885a1032caeadf0d1ba; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "524a84b3434885a1032caeadf0d1ba" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_INVESTIGATION_STATUS_ID");


--
-- Name: 5298d1c8925a32eb44372ea825584a; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "5298d1c8925a32eb44372ea825584a" ON casemanager."AM_EVENT_CARDS" USING btree ("STATUS_ID");


--
-- Name: 569bcbf2a5bed6acf7b89e399cfafa; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "569bcbf2a5bed6acf7b89e399cfafa" ON casemanager."AM_EVENT_STATUS" USING btree ("EVENT_ID");


--
-- Name: 571aaa23e171c30759844c2029e439; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "571aaa23e171c30759844c2029e439" ON casemanager."AM_EVENT_CARDS" USING btree ("DECISION_ID");


--
-- Name: 5ee2dce3e8f352c75d1f86533110c2; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "5ee2dce3e8f352c75d1f86533110c2" ON casemanager."AM_EVENT_TRANSFERS" USING btree (tenant);


--
-- Name: 62acbfd6191388b6c9dee1bb68018f; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "62acbfd6191388b6c9dee1bb68018f" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_STATUS_ID");


--
-- Name: 65df32d1a0fe7e4c26104c0936603b; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "65df32d1a0fe7e4c26104c0936603b" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("QUEUE_ID");


--
-- Name: 6adf70771d75cb3e4e9ae2df8f111c; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "6adf70771d75cb3e4e9ae2df8f111c" ON casemanager."AM_EVENT_TRANSFERS" USING btree (outcome_decision);


--
-- Name: 77625ab10aa55a98c235fc65862c89; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "77625ab10aa55a98c235fc65862c89" ON casemanager."AM_EVENT_COMMON" USING btree (action_stua);


--
-- Name: 783752e355ed368eaa550b72722d4b; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "783752e355ed368eaa550b72722d4b" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("INVESTIGATION_STATUS_ID");


--
-- Name: 855a3131d26f3233d493d68ce15866; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "855a3131d26f3233d493d68ce15866" ON casemanager."AM_EVENT_TRANSFERS" USING btree (rcv_name);


--
-- Name: 856c9a36f215cd572f113529644d34; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "856c9a36f215cd572f113529644d34" ON casemanager."AM_EVENT_CARDS" USING btree (tenant);


--
-- Name: 868d1224a5737bf3bef8ce40992aed; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "868d1224a5737bf3bef8ce40992aed" ON casemanager."AM_EVENT_CARDS" USING btree ("QUEUE_ID");


--
-- Name: 87c6bc28231c850e3d45027c5a4f4d; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "87c6bc28231c850e3d45027c5a4f4d" ON casemanager."AM_EVENT_COMMON" USING btree (customer_email);


--
-- Name: 9216ac1632cb32c91f186719c536fb; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "9216ac1632cb32c91f186719c536fb" ON casemanager."AM_EVENT_COMMON" USING btree (customer_phone);


--
-- Name: 94e4a9d72e4d95138b9c07ce62c095; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "94e4a9d72e4d95138b9c07ce62c095" ON casemanager."AM_EVENT_STATUS_REASON" USING btree ("EVENT_TIMESTAMP");


--
-- Name: 952d9693f5d6bcc50b4243ed1e19eb; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "952d9693f5d6bcc50b4243ed1e19eb" ON casemanager."AM_EVENT_CARDS" USING btree ("INVESTIGATION_STATUS_ID");


--
-- Name: 9ca7c1df0c43c95a496aecc606d863; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX "9ca7c1df0c43c95a496aecc606d863" ON casemanager."AM_EVENT_TRANSFERS" USING btree (sender_name);


--
-- Name: a70ffb18c91f6691de803b0ba4380b; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX a70ffb18c91f6691de803b0ba4380b ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_INVESTIGATION_STATUS_ID");


--
-- Name: a81f4b0a40c8379f318428cb47c88c; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX a81f4b0a40c8379f318428cb47c88c ON casemanager."AM_EVENT_CARDS" USING btree ("ACCESS_GROUP_ID");


--
-- Name: a87e4c9136ed904ef2568fda8a09ad; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX a87e4c9136ed904ef2568fda8a09ad ON casemanager."AM_EVENT_TRANSFERS" USING btree ("ACCESS_GROUP_ID");


--
-- Name: aa7326434e2420909ae9ff31774072; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX aa7326434e2420909ae9ff31774072 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_TIMESTAMP");


--
-- Name: aa7c289da48b65fd06af4e431aae87; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX aa7c289da48b65fd06af4e431aae87 ON casemanager."AM_EVENT_COMMON" USING btree (payment_date);


--
-- Name: ab0fb398d42e5141edd0ba369a1c95; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX ab0fb398d42e5141edd0ba369a1c95 ON casemanager."AM_EVENT_COMMON" USING btree ("QUEUE_ID");


--
-- Name: bc3123b907a735758324fe5c97cc5a; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX bc3123b907a735758324fe5c97cc5a ON casemanager."AM_EVENT_TRANSFERS" USING btree ("USER_ID");


--
-- Name: c04da5cd9d1f43bc6e36a5904e1946; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX c04da5cd9d1f43bc6e36a5904e1946 ON casemanager."AM_EVENT_COMMON" USING btree ("EVENT_ALERT");


--
-- Name: c98572e16a32ef542d9428f2f820c1; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX c98572e16a32ef542d9428f2f820c1 ON casemanager."AM_EVENT_CARDS" USING btree (customer_id);


--
-- Name: cbd321720abcea527a75de910535f0; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX cbd321720abcea527a75de910535f0 ON casemanager."AM_EVENT_CARDS" USING btree (card_id);


--
-- Name: ce3cee04eac3a8680afdb50f23ec28; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX ce3cee04eac3a8680afdb50f23ec28 ON casemanager."AM_EVENT_COMMON" USING btree ("EVENT_TIMESTAMP");


--
-- Name: d2b3da61ce049123d885c0fce93206; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX d2b3da61ce049123d885c0fce93206 ON casemanager."AM_EVENT_CARDS" USING btree (account_iban);


--
-- Name: d46ddf1fd857e2bca2516bc494d4ff; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX d46ddf1fd857e2bca2516bc494d4ff ON casemanager."AM_EVENT_TRANSFERS" USING btree (customer_id);


--
-- Name: d552cb21ed047a201e6882534be20a; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX d552cb21ed047a201e6882534be20a ON casemanager."AM_EVENT_TRANSFERS" USING btree (sender_transact_amount);


--
-- Name: d5dd000d7c4be63ac9377d45a5b037; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX d5dd000d7c4be63ac9377d45a5b037 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("DECISION_ID");


--
-- Name: db49359b487ed2c277358b088d79a9; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX db49359b487ed2c277358b088d79a9 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("STATUS_ID");


--
-- Name: ea28322214293049f4a279c483745b; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX ea28322214293049f4a279c483745b ON casemanager."AM_EVENT_COMMON" USING btree (tenant);


--
-- Name: f357388f7d6e6191a96d07a23e49dd; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX f357388f7d6e6191a96d07a23e49dd ON casemanager."AM_EVENT_STATUS" USING btree ("EVENT_TIMESTAMP");


--
-- Name: f464d12c477b1df63da38d0df9b5e1; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX f464d12c477b1df63da38d0df9b5e1 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_DECISION_ID");


--
-- Name: fcad8680e9a4d01138833ab726bda2; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX fcad8680e9a4d01138833ab726bda2 ON casemanager."AM_EVENT_COMMON" USING btree (transaction_id);


--
-- Name: fcb53c8577c452f6d9a3e6fee2ff5b; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX fcb53c8577c452f6d9a3e6fee2ff5b ON casemanager."AM_EVENT_CARDS" USING btree (card_type);


--
-- Name: ff1d6d4427828e5fcf1a9cf75c6595; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX ff1d6d4427828e5fcf1a9cf75c6595 ON casemanager."AM_EVENT_CARDS" USING btree (ttc);


--
-- Name: ffe666a7cc827010ec9f08387170a2; Type: INDEX; Schema: casemanager; Owner: case_manager
--

CREATE INDEX ffe666a7cc827010ec9f08387170a2 ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_STATUS_ID");


--
-- Name: 1cbd787e864f57928826fcea52f2fe_lifecycle_id; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX "1cbd787e864f57928826fcea52f2fe_lifecycle_id" ON eventstorage."1cbd787e864f57928826fcea52f2fe" USING btree (lifecycle_id);


--
-- Name: 4cf993bb5be5806d15a4ed1549439d_lifecycle_id; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX "4cf993bb5be5806d15a4ed1549439d_lifecycle_id" ON eventstorage."4cf993bb5be5806d15a4ed1549439d" USING btree (lifecycle_id);


--
-- Name: deced856d7f1865f0bdd4e178bb5fc_lifecycle_id; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX deced856d7f1865f0bdd4e178bb5fc_lifecycle_id ON eventstorage.deced856d7f1865f0bdd4e178bb5fc USING btree (lifecycle_id);


--
-- Name: idx_es_1cbd787e864f57928826fcea52f2fe_fdz_partition_timestamp; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX idx_es_1cbd787e864f57928826fcea52f2fe_fdz_partition_timestamp ON eventstorage."1cbd787e864f57928826fcea52f2fe" USING btree ("FDZ_PARTITION_INDEX", "FDZ_timestamp");


--
-- Name: idx_es_1cbd787e864f57928826fcea52f2fe_fdz_timestamp; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX idx_es_1cbd787e864f57928826fcea52f2fe_fdz_timestamp ON eventstorage."1cbd787e864f57928826fcea52f2fe" USING btree ("FDZ_timestamp");


--
-- Name: idx_es_4cf993bb5be5806d15a4ed1549439d_fdz_partition_timestamp; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX idx_es_4cf993bb5be5806d15a4ed1549439d_fdz_partition_timestamp ON eventstorage."4cf993bb5be5806d15a4ed1549439d" USING btree ("FDZ_PARTITION_INDEX", "FDZ_timestamp");


--
-- Name: idx_es_4cf993bb5be5806d15a4ed1549439d_fdz_timestamp; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX idx_es_4cf993bb5be5806d15a4ed1549439d_fdz_timestamp ON eventstorage."4cf993bb5be5806d15a4ed1549439d" USING btree ("FDZ_timestamp");


--
-- Name: idx_es_deced856d7f1865f0bdd4e178bb5fc_fdz_partition_timestamp; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX idx_es_deced856d7f1865f0bdd4e178bb5fc_fdz_partition_timestamp ON eventstorage.deced856d7f1865f0bdd4e178bb5fc USING btree ("FDZ_PARTITION_INDEX", "FDZ_timestamp");


--
-- Name: idx_es_deced856d7f1865f0bdd4e178bb5fc_fdz_timestamp; Type: INDEX; Schema: eventstorage; Owner: event_storage
--

CREATE INDEX idx_es_deced856d7f1865f0bdd4e178bb5fc_fdz_timestamp ON eventstorage.deced856d7f1865f0bdd4e178bb5fc USING btree ("FDZ_timestamp");


--
-- Name: 04e22b8f3014a82c3763cc5ff5fd7753; Type: INDEX; Schema: pulse; Owner: pulse
--

CREATE UNIQUE INDEX "04e22b8f3014a82c3763cc5ff5fd7753" ON pulse."FDZ_APP_MGDLIST_ITEM" USING btree ("MGDLIST_ID", "MGDLIST_ITEM_TIMESPAN_START", "MGDLIST_ITEM_TIMESPAN_END", "MGDLIST_ITEM_KEY", "TENANT_ID", "TENANT_GROUP_ID", "APP_ID");


--
-- Name: 7cf2c0033525848bd4e182ccffd8b217; Type: INDEX; Schema: pulse; Owner: pulse
--

CREATE INDEX "7cf2c0033525848bd4e182ccffd8b217" ON pulse."FDZ_APP_MGDLIST_ITEM" USING btree ("MGDLIST_ID", "MGDLIST_ITEM_KEY", "APP_ID");


--
-- Name: AM_EVENT_CARDS casemanager_am_event_cards_part_fun; Type: TRIGGER; Schema: casemanager; Owner: case_manager
--

CREATE TRIGGER casemanager_am_event_cards_part_fun BEFORE INSERT ON casemanager."AM_EVENT_CARDS" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_cards_part_fun();


--
-- Name: AM_EVENT_COMMON casemanager_am_event_common_part_fun; Type: TRIGGER; Schema: casemanager; Owner: case_manager
--

CREATE TRIGGER casemanager_am_event_common_part_fun BEFORE INSERT ON casemanager."AM_EVENT_COMMON" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_common_part_fun();


--
-- Name: AM_EVENT_STATUS casemanager_am_event_status_part_fun; Type: TRIGGER; Schema: casemanager; Owner: case_manager
--

CREATE TRIGGER casemanager_am_event_status_part_fun BEFORE INSERT ON casemanager."AM_EVENT_STATUS" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_status_part_fun();


--
-- Name: AM_EVENT_STATUS_REASON casemanager_am_event_status_reason_part_fun; Type: TRIGGER; Schema: casemanager; Owner: case_manager
--

CREATE TRIGGER casemanager_am_event_status_reason_part_fun BEFORE INSERT ON casemanager."AM_EVENT_STATUS_REASON" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_status_reason_part_fun();


--
-- Name: AM_EVENT_TRANSFERS casemanager_am_event_transfers_part_fun; Type: TRIGGER; Schema: casemanager; Owner: case_manager
--

CREATE TRIGGER casemanager_am_event_transfers_part_fun BEFORE INSERT ON casemanager."AM_EVENT_TRANSFERS" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_transfers_part_fun();


--
-- Name: 1cbd787e864f57928826fcea52f2fe eventstorage_1cbd787e864f57928826fcea52f2fe_part_fun; Type: TRIGGER; Schema: eventstorage; Owner: event_storage
--

CREATE TRIGGER eventstorage_1cbd787e864f57928826fcea52f2fe_part_fun BEFORE INSERT ON eventstorage."1cbd787e864f57928826fcea52f2fe" FOR EACH ROW EXECUTE PROCEDURE eventstorage.eventstorage_1cbd787e864f57928826fcea52f2fe_part_fun();


--
-- Name: 4cf993bb5be5806d15a4ed1549439d eventstorage_4cf993bb5be5806d15a4ed1549439d_part_fun; Type: TRIGGER; Schema: eventstorage; Owner: event_storage
--

CREATE TRIGGER eventstorage_4cf993bb5be5806d15a4ed1549439d_part_fun BEFORE INSERT ON eventstorage."4cf993bb5be5806d15a4ed1549439d" FOR EACH ROW EXECUTE PROCEDURE eventstorage.eventstorage_4cf993bb5be5806d15a4ed1549439d_part_fun();


--
-- Name: deced856d7f1865f0bdd4e178bb5fc eventstorage_deced856d7f1865f0bdd4e178bb5fc_part_fun; Type: TRIGGER; Schema: eventstorage; Owner: event_storage
--

CREATE TRIGGER eventstorage_deced856d7f1865f0bdd4e178bb5fc_part_fun BEFORE INSERT ON eventstorage.deced856d7f1865f0bdd4e178bb5fc FOR EACH ROW EXECUTE PROCEDURE eventstorage.eventstorage_deced856d7f1865f0bdd4e178bb5fc_part_fun();


--
-- Name: AM_EVENT_STATUS_REASON 2e71e236537f27f063d0009a9e10b9; Type: FK CONSTRAINT; Schema: casemanager; Owner: case_manager
--

ALTER TABLE ONLY casemanager."AM_EVENT_STATUS_REASON"
    ADD CONSTRAINT "2e71e236537f27f063d0009a9e10b9" FOREIGN KEY ("STATUS_REASON_ID") REFERENCES casemanager."AM_STATUS_REASON"("STATUS_REASON_ID");


--
-- PostgreSQL database dump complete
--

