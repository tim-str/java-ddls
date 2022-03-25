--
-- PostgreSQL database dump
--

-- Dumped from database version 10.13
-- Dumped by pg_dump version 10.18

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: AM_EVENT_CARDS; Type: TABLE; Schema: casemanager; Owner: csccasemanager
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
    secure_3d_val_code character varying(1024)
);


ALTER TABLE casemanager."AM_EVENT_CARDS" OWNER TO csccasemanager;

--
-- Name: AM_EVENT_COMMON; Type: TABLE; Schema: casemanager; Owner: csccasemanager
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


ALTER TABLE casemanager."AM_EVENT_COMMON" OWNER TO csccasemanager;

--
-- Name: AM_EVENT_STATUS; Type: TABLE; Schema: casemanager; Owner: csccasemanager
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


ALTER TABLE casemanager."AM_EVENT_STATUS" OWNER TO csccasemanager;

--
-- Name: AM_EVENT_STATUS_REASON; Type: TABLE; Schema: casemanager; Owner: csccasemanager
--

CREATE TABLE casemanager."AM_EVENT_STATUS_REASON" (
    "EVENT_STATUS_ID" character varying(40) NOT NULL,
    "TIMESTAMP" bigint,
    "EVENT_TIMESTAMP" bigint NOT NULL,
    "STATUS_REASON_ID" character varying(40) NOT NULL
);


ALTER TABLE casemanager."AM_EVENT_STATUS_REASON" OWNER TO csccasemanager;

--
-- Name: AM_EVENT_TRANSFERS; Type: TABLE; Schema: casemanager; Owner: csccasemanager
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


ALTER TABLE casemanager."AM_EVENT_TRANSFERS" OWNER TO csccasemanager;

--
-- Name: AM_STATUS_REASON; Type: TABLE; Schema: casemanager; Owner: csccasemanager
--

CREATE TABLE casemanager."AM_STATUS_REASON" (
    "STATUS_REASON_ID" character varying(40) NOT NULL,
    "STATUS_ID" character varying(40),
    "STATUS_REASON_NAME" character varying(255),
    "DELETEDAT" bigint,
    "DELETEDBY" character varying(40)
);


ALTER TABLE casemanager."AM_STATUS_REASON" OWNER TO csccasemanager;

--
-- Name: AM_EVENT_STATUS_REASON 44a79ea3a72040e995ef26ee98577b; Type: CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

ALTER TABLE ONLY casemanager."AM_EVENT_STATUS_REASON"
    ADD CONSTRAINT "44a79ea3a72040e995ef26ee98577b" PRIMARY KEY ("EVENT_STATUS_ID", "STATUS_REASON_ID");


--
-- Name: AM_EVENT_CARDS PK_AM_EVENT_CARDS; Type: CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

ALTER TABLE ONLY casemanager."AM_EVENT_CARDS"
    ADD CONSTRAINT "PK_AM_EVENT_CARDS" PRIMARY KEY ("EVENT_ID");


--
-- Name: AM_EVENT_COMMON PK_AM_EVENT_COMMON; Type: CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

ALTER TABLE ONLY casemanager."AM_EVENT_COMMON"
    ADD CONSTRAINT "PK_AM_EVENT_COMMON" PRIMARY KEY ("EVENT_ID", "CHANNEL_ID");


--
-- Name: AM_EVENT_TRANSFERS PK_AM_EVENT_TRANSFERS; Type: CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

ALTER TABLE ONLY casemanager."AM_EVENT_TRANSFERS"
    ADD CONSTRAINT "PK_AM_EVENT_TRANSFERS" PRIMARY KEY ("EVENT_ID");


--
-- Name: AM_STATUS_REASON a705ecc163ba0a9bb2488fa52c9202; Type: CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

ALTER TABLE ONLY casemanager."AM_STATUS_REASON"
    ADD CONSTRAINT a705ecc163ba0a9bb2488fa52c9202 PRIMARY KEY ("STATUS_REASON_ID");


--
-- Name: AM_EVENT_STATUS f65ff77606f7f60920764a3c04e3b9; Type: CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

ALTER TABLE ONLY casemanager."AM_EVENT_STATUS"
    ADD CONSTRAINT f65ff77606f7f60920764a3c04e3b9 PRIMARY KEY ("EVENT_STATUS_ID");


--
-- Name: 01bf194104969873cb4b7d7c9efac4; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "01bf194104969873cb4b7d7c9efac4" ON casemanager."AM_EVENT_COMMON" USING btree (customer_id);


--
-- Name: 057b22ca0be1da82cf94fab0a2f5f5; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "057b22ca0be1da82cf94fab0a2f5f5" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_ALERT");


--
-- Name: 0589d992a41c87881aeba0b03da83f; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "0589d992a41c87881aeba0b03da83f" ON casemanager."AM_EVENT_CARDS" USING btree (lifecycle_id);


--
-- Name: 07e9b7d16ea07eaa611a148b420174; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "07e9b7d16ea07eaa611a148b420174" ON casemanager."AM_EVENT_CARDS" USING btree ("USER_ID");


--
-- Name: 0962f41f28e1023e47340bccbcdc4a; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "0962f41f28e1023e47340bccbcdc4a" ON casemanager."AM_EVENT_CARDS" USING btree (mcc);


--
-- Name: 0f8cc66aa4c784f8a5292777eb5822; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "0f8cc66aa4c784f8a5292777eb5822" ON casemanager."AM_EVENT_CARDS" USING btree (card_brand);


--
-- Name: 12e3c9129bc33a5dc1be380a38aa92; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "12e3c9129bc33a5dc1be380a38aa92" ON casemanager."AM_EVENT_CARDS" USING btree (event_occurred_at);


--
-- Name: 1dc59eb649bcee213d995bc5cd109e; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "1dc59eb649bcee213d995bc5cd109e" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_TIMESTAMP");


--
-- Name: 25010458314c996c0e2ad6d7615c7e; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "25010458314c996c0e2ad6d7615c7e" ON casemanager."AM_EVENT_COMMON" USING btree ("ACCESS_GROUP_ID");


--
-- Name: 25651f3fa96f7668a7063940565857; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "25651f3fa96f7668a7063940565857" ON casemanager."AM_EVENT_TRANSFERS" USING btree (direction);


--
-- Name: 2b890cf0e5cd32d13b91a586dcfca2; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "2b890cf0e5cd32d13b91a586dcfca2" ON casemanager."AM_EVENT_COMMON" USING btree ("CHANNEL_ID");


--
-- Name: 2e0a14e0f6647fed77fbc27476ef24; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "2e0a14e0f6647fed77fbc27476ef24" ON casemanager."AM_EVENT_CARDS" USING btree (customer_email);


--
-- Name: 3068ac6b6abc570c7652d3f274e288; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "3068ac6b6abc570c7652d3f274e288" ON casemanager."AM_EVENT_CARDS" USING btree ("channelId");


--
-- Name: 33cc487ad7b08c7f51b16383ba4e2e; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "33cc487ad7b08c7f51b16383ba4e2e" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("channelId");


--
-- Name: 3839279eff363d14c84a6dfcf80fd9; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "3839279eff363d14c84a6dfcf80fd9" ON casemanager."AM_EVENT_CARDS" USING btree (customer_phone);


--
-- Name: 40438dc16bac44c83266d5d6fcf929; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "40438dc16bac44c83266d5d6fcf929" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_ALERT");


--
-- Name: 459e917a3fef4ff48a488455fffe68; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "459e917a3fef4ff48a488455fffe68" ON casemanager."AM_EVENT_CARDS" USING btree (card_bin);


--
-- Name: 45ac0aac4812a327e633c6be2a7499; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "45ac0aac4812a327e633c6be2a7499" ON casemanager."AM_EVENT_COMMON" USING btree (outcome_decision);


--
-- Name: 48f40a037779538348727969767391; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "48f40a037779538348727969767391" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_DECISION_ID");


--
-- Name: 49e5343a03997b0a5eca6c0aa60a77; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "49e5343a03997b0a5eca6c0aa60a77" ON casemanager."AM_EVENT_COMMON" USING btree ("USER_ID");


--
-- Name: 524a84b3434885a1032caeadf0d1ba; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "524a84b3434885a1032caeadf0d1ba" ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_INVESTIGATION_STATUS_ID");


--
-- Name: 5298d1c8925a32eb44372ea825584a; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "5298d1c8925a32eb44372ea825584a" ON casemanager."AM_EVENT_CARDS" USING btree ("STATUS_ID");


--
-- Name: 569bcbf2a5bed6acf7b89e399cfafa; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "569bcbf2a5bed6acf7b89e399cfafa" ON casemanager."AM_EVENT_STATUS" USING btree ("EVENT_ID");


--
-- Name: 571aaa23e171c30759844c2029e439; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "571aaa23e171c30759844c2029e439" ON casemanager."AM_EVENT_CARDS" USING btree ("DECISION_ID");


--
-- Name: 5ee2dce3e8f352c75d1f86533110c2; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "5ee2dce3e8f352c75d1f86533110c2" ON casemanager."AM_EVENT_TRANSFERS" USING btree (tenant);


--
-- Name: 62acbfd6191388b6c9dee1bb68018f; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "62acbfd6191388b6c9dee1bb68018f" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_STATUS_ID");


--
-- Name: 65df32d1a0fe7e4c26104c0936603b; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "65df32d1a0fe7e4c26104c0936603b" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("QUEUE_ID");


--
-- Name: 6adf70771d75cb3e4e9ae2df8f111c; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "6adf70771d75cb3e4e9ae2df8f111c" ON casemanager."AM_EVENT_TRANSFERS" USING btree (outcome_decision);


--
-- Name: 77625ab10aa55a98c235fc65862c89; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "77625ab10aa55a98c235fc65862c89" ON casemanager."AM_EVENT_COMMON" USING btree (action_stua);


--
-- Name: 783752e355ed368eaa550b72722d4b; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "783752e355ed368eaa550b72722d4b" ON casemanager."AM_EVENT_TRANSFERS" USING btree ("INVESTIGATION_STATUS_ID");


--
-- Name: 855a3131d26f3233d493d68ce15866; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "855a3131d26f3233d493d68ce15866" ON casemanager."AM_EVENT_TRANSFERS" USING btree (rcv_name);


--
-- Name: 856c9a36f215cd572f113529644d34; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "856c9a36f215cd572f113529644d34" ON casemanager."AM_EVENT_CARDS" USING btree (tenant);


--
-- Name: 868d1224a5737bf3bef8ce40992aed; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "868d1224a5737bf3bef8ce40992aed" ON casemanager."AM_EVENT_CARDS" USING btree ("QUEUE_ID");


--
-- Name: 87c6bc28231c850e3d45027c5a4f4d; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "87c6bc28231c850e3d45027c5a4f4d" ON casemanager."AM_EVENT_COMMON" USING btree (customer_email);


--
-- Name: 9216ac1632cb32c91f186719c536fb; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "9216ac1632cb32c91f186719c536fb" ON casemanager."AM_EVENT_COMMON" USING btree (customer_phone);


--
-- Name: 94e4a9d72e4d95138b9c07ce62c095; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "94e4a9d72e4d95138b9c07ce62c095" ON casemanager."AM_EVENT_STATUS_REASON" USING btree ("EVENT_TIMESTAMP");


--
-- Name: 952d9693f5d6bcc50b4243ed1e19eb; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "952d9693f5d6bcc50b4243ed1e19eb" ON casemanager."AM_EVENT_CARDS" USING btree ("INVESTIGATION_STATUS_ID");


--
-- Name: 9ca7c1df0c43c95a496aecc606d863; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX "9ca7c1df0c43c95a496aecc606d863" ON casemanager."AM_EVENT_TRANSFERS" USING btree (sender_name);


--
-- Name: a70ffb18c91f6691de803b0ba4380b; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX a70ffb18c91f6691de803b0ba4380b ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_INVESTIGATION_STATUS_ID");


--
-- Name: a81f4b0a40c8379f318428cb47c88c; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX a81f4b0a40c8379f318428cb47c88c ON casemanager."AM_EVENT_CARDS" USING btree ("ACCESS_GROUP_ID");


--
-- Name: a87e4c9136ed904ef2568fda8a09ad; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX a87e4c9136ed904ef2568fda8a09ad ON casemanager."AM_EVENT_TRANSFERS" USING btree ("ACCESS_GROUP_ID");


--
-- Name: aa7326434e2420909ae9ff31774072; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX aa7326434e2420909ae9ff31774072 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_TIMESTAMP");


--
-- Name: aa7c289da48b65fd06af4e431aae87; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX aa7c289da48b65fd06af4e431aae87 ON casemanager."AM_EVENT_COMMON" USING btree (payment_date);


--
-- Name: ab0fb398d42e5141edd0ba369a1c95; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX ab0fb398d42e5141edd0ba369a1c95 ON casemanager."AM_EVENT_COMMON" USING btree ("QUEUE_ID");


--
-- Name: arch_casemanager_am_event_cards; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX arch_casemanager_am_event_cards ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_VERSION_TIMESTAMP");


--
-- Name: arch_casemanager_am_event_transfers; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX arch_casemanager_am_event_transfers ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_VERSION_TIMESTAMP");


--
-- Name: bc3123b907a735758324fe5c97cc5a; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX bc3123b907a735758324fe5c97cc5a ON casemanager."AM_EVENT_TRANSFERS" USING btree ("USER_ID");


--
-- Name: c04da5cd9d1f43bc6e36a5904e1946; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX c04da5cd9d1f43bc6e36a5904e1946 ON casemanager."AM_EVENT_COMMON" USING btree ("EVENT_ALERT");


--
-- Name: c98572e16a32ef542d9428f2f820c1; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX c98572e16a32ef542d9428f2f820c1 ON casemanager."AM_EVENT_CARDS" USING btree (customer_id);


--
-- Name: cbd321720abcea527a75de910535f0; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX cbd321720abcea527a75de910535f0 ON casemanager."AM_EVENT_CARDS" USING btree (card_id);


--
-- Name: ce3cee04eac3a8680afdb50f23ec28; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX ce3cee04eac3a8680afdb50f23ec28 ON casemanager."AM_EVENT_COMMON" USING btree ("EVENT_TIMESTAMP");


--
-- Name: d2b3da61ce049123d885c0fce93206; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX d2b3da61ce049123d885c0fce93206 ON casemanager."AM_EVENT_CARDS" USING btree (account_iban);


--
-- Name: d46ddf1fd857e2bca2516bc494d4ff; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX d46ddf1fd857e2bca2516bc494d4ff ON casemanager."AM_EVENT_TRANSFERS" USING btree (customer_id);


--
-- Name: d552cb21ed047a201e6882534be20a; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX d552cb21ed047a201e6882534be20a ON casemanager."AM_EVENT_TRANSFERS" USING btree (sender_transact_amount);


--
-- Name: d5dd000d7c4be63ac9377d45a5b037; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX d5dd000d7c4be63ac9377d45a5b037 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("DECISION_ID");


--
-- Name: db49359b487ed2c277358b088d79a9; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX db49359b487ed2c277358b088d79a9 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("STATUS_ID");


--
-- Name: ea28322214293049f4a279c483745b; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX ea28322214293049f4a279c483745b ON casemanager."AM_EVENT_COMMON" USING btree (tenant);


--
-- Name: f357388f7d6e6191a96d07a23e49dd; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX f357388f7d6e6191a96d07a23e49dd ON casemanager."AM_EVENT_STATUS" USING btree ("EVENT_TIMESTAMP");


--
-- Name: f464d12c477b1df63da38d0df9b5e1; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX f464d12c477b1df63da38d0df9b5e1 ON casemanager."AM_EVENT_TRANSFERS" USING btree ("EVENT_DECISION_ID");


--
-- Name: fcad8680e9a4d01138833ab726bda2; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX fcad8680e9a4d01138833ab726bda2 ON casemanager."AM_EVENT_COMMON" USING btree (transaction_id);


--
-- Name: fcb53c8577c452f6d9a3e6fee2ff5b; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX fcb53c8577c452f6d9a3e6fee2ff5b ON casemanager."AM_EVENT_CARDS" USING btree (card_type);


--
-- Name: ff1d6d4427828e5fcf1a9cf75c6595; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX ff1d6d4427828e5fcf1a9cf75c6595 ON casemanager."AM_EVENT_CARDS" USING btree (ttc);


--
-- Name: ffe666a7cc827010ec9f08387170a2; Type: INDEX; Schema: casemanager; Owner: csccasemanager
--

CREATE INDEX ffe666a7cc827010ec9f08387170a2 ON casemanager."AM_EVENT_CARDS" USING btree ("EVENT_STATUS_ID");


--
-- Name: AM_EVENT_CARDS casemanager_am_event_cards_part_fun; Type: TRIGGER; Schema: casemanager; Owner: csccasemanager
--

CREATE TRIGGER casemanager_am_event_cards_part_fun BEFORE INSERT ON casemanager."AM_EVENT_CARDS" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_cards_part_fun();


--
-- Name: AM_EVENT_COMMON casemanager_am_event_common_part_fun; Type: TRIGGER; Schema: casemanager; Owner: csccasemanager
--

CREATE TRIGGER casemanager_am_event_common_part_fun BEFORE INSERT ON casemanager."AM_EVENT_COMMON" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_common_part_fun();


--
-- Name: AM_EVENT_STATUS casemanager_am_event_status_part_fun; Type: TRIGGER; Schema: casemanager; Owner: csccasemanager
--

CREATE TRIGGER casemanager_am_event_status_part_fun BEFORE INSERT ON casemanager."AM_EVENT_STATUS" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_status_part_fun();


--
-- Name: AM_EVENT_STATUS_REASON casemanager_am_event_status_reason_part_fun; Type: TRIGGER; Schema: casemanager; Owner: csccasemanager
--

CREATE TRIGGER casemanager_am_event_status_reason_part_fun BEFORE INSERT ON casemanager."AM_EVENT_STATUS_REASON" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_status_reason_part_fun();


--
-- Name: AM_EVENT_TRANSFERS casemanager_am_event_transfers_part_fun; Type: TRIGGER; Schema: casemanager; Owner: csccasemanager
--

CREATE TRIGGER casemanager_am_event_transfers_part_fun BEFORE INSERT ON casemanager."AM_EVENT_TRANSFERS" FOR EACH ROW EXECUTE PROCEDURE casemanager.casemanager_am_event_transfers_part_fun();


--
-- Name: AM_EVENT_STATUS_REASON 2e71e236537f27f063d0009a9e10b9; Type: FK CONSTRAINT; Schema: casemanager; Owner: csccasemanager
--

-- ALTER TABLE ONLY casemanager."AM_EVENT_STATUS_REASON"
    ADD CONSTRAINT "2e71e236537f27f063d0009a9e10b9" FOREIGN KEY ("STATUS_REASON_ID") REFERENCES casemanager."AM_STATUS_REASON"("STATUS_REASON_ID");


--
-- Name: TABLE "AM_EVENT_CARDS"; Type: ACL; Schema: casemanager; Owner: csccasemanager
--

GRANT SELECT,INSERT,UPDATE ON TABLE casemanager."AM_EVENT_CARDS" TO cscbatchprocessor;
GRANT SELECT ON TABLE casemanager."AM_EVENT_CARDS" TO support;
GRANT SELECT ON TABLE casemanager."AM_EVENT_CARDS" TO datascience;


--
-- Name: TABLE "AM_EVENT_COMMON"; Type: ACL; Schema: casemanager; Owner: csccasemanager
--

GRANT SELECT,INSERT,UPDATE ON TABLE casemanager."AM_EVENT_COMMON" TO cscbatchprocessor;
GRANT SELECT ON TABLE casemanager."AM_EVENT_COMMON" TO support;
GRANT SELECT ON TABLE casemanager."AM_EVENT_COMMON" TO datascience;


--
-- Name: TABLE "AM_EVENT_STATUS"; Type: ACL; Schema: casemanager; Owner: csccasemanager
--

GRANT SELECT,INSERT,UPDATE ON TABLE casemanager."AM_EVENT_STATUS" TO cscbatchprocessor;
GRANT SELECT ON TABLE casemanager."AM_EVENT_STATUS" TO support;
GRANT SELECT ON TABLE casemanager."AM_EVENT_STATUS" TO datascience;


--
-- Name: TABLE "AM_EVENT_STATUS_REASON"; Type: ACL; Schema: casemanager; Owner: csccasemanager
--

GRANT SELECT,INSERT,UPDATE ON TABLE casemanager."AM_EVENT_STATUS_REASON" TO cscbatchprocessor;
GRANT SELECT ON TABLE casemanager."AM_EVENT_STATUS_REASON" TO support;
GRANT SELECT ON TABLE casemanager."AM_EVENT_STATUS_REASON" TO datascience;


--
-- Name: TABLE "AM_EVENT_TRANSFERS"; Type: ACL; Schema: casemanager; Owner: csccasemanager
--

GRANT SELECT,INSERT,UPDATE ON TABLE casemanager."AM_EVENT_TRANSFERS" TO cscbatchprocessor;
GRANT SELECT ON TABLE casemanager."AM_EVENT_TRANSFERS" TO support;
GRANT SELECT ON TABLE casemanager."AM_EVENT_TRANSFERS" TO datascience;


--
-- Name: TABLE "AM_STATUS_REASON"; Type: ACL; Schema: casemanager; Owner: csccasemanager
--

GRANT SELECT,INSERT,UPDATE ON TABLE casemanager."AM_STATUS_REASON" TO cscbatchprocessor;
GRANT SELECT ON TABLE casemanager."AM_STATUS_REASON" TO support;
GRANT SELECT ON TABLE casemanager."AM_STATUS_REASON" TO datascience;


--
-- PostgreSQL database dump complete
--

