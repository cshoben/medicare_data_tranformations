--
-- PostgreSQL database dump
--

-- Dumped from database version 15.2
-- Dumped by pg_dump version 15.2

-- Started on 2023-03-23 10:47:22 EDT

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

SET default_table_access_method = heap;

--
-- TOC entry 217 (class 1259 OID 17237)
-- Name: adobe_medicare; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.adobe_medicare (
    day date,
    adobe_id character varying,
    age_range text,
    gender text,
    channel text,
    campaign text,
    visits integer,
    visitor_actions text,
    recommended_plan text,
    id integer NOT NULL
);


ALTER TABLE public.adobe_medicare OWNER TO postgres;

--
-- TOC entry 219 (class 1259 OID 17287)
-- Name: adobe_medicare_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.adobe_medicare_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.adobe_medicare_id_seq OWNER TO postgres;

--
-- TOC entry 3605 (class 0 OID 0)
-- Dependencies: 219
-- Name: adobe_medicare_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.adobe_medicare_id_seq OWNED BY public.adobe_medicare.id;


--
-- TOC entry 216 (class 1259 OID 17232)
-- Name: db_cpc; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.db_cpc (
    person_id character varying,
    bc_registered integer,
    last_bc_login timestamp without time zone,
    paperless integer,
    autopay integer,
    mobile_num_confirm integer,
    email_confirm integer,
    sms_opt_in integer,
    id integer NOT NULL
);


ALTER TABLE public.db_cpc OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17277)
-- Name: db_cpc_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.db_cpc_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.db_cpc_id_seq OWNER TO postgres;

--
-- TOC entry 3606 (class 0 OID 0)
-- Dependencies: 218
-- Name: db_cpc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.db_cpc_id_seq OWNED BY public.db_cpc.id;


--
-- TOC entry 214 (class 1259 OID 17222)
-- Name: db_lookup; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.db_lookup (
    adobe_id character varying,
    person_id character varying,
    beneficiary_id character varying
);


ALTER TABLE public.db_lookup OWNER TO postgres;

--
-- TOC entry 215 (class 1259 OID 17227)
-- Name: med_beneficiaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.med_beneficiaries (
    beneficiary_id character varying,
    birth date,
    death date,
    sex integer,
    race text,
    es_renal_disease integer,
    state_code integer,
    county_code integer,
    hi_cvrage_tot_mons integer,
    smi_cvrage_tot_mons integer,
    hmo_cvrage_tot_mons integer,
    plan_cvrg_mos_num integer,
    alzheimer_related integer,
    heart_failure integer,
    kidney_disease integer,
    cancer integer,
    copd integer,
    depression integer,
    diabetes integer,
    isch_heart_disease integer,
    osteoprs integer,
    arthritis integer,
    stroke integer,
    medreimb_ip integer,
    benres_ip integer,
    pppymt_ip integer,
    medreimb_op integer,
    benres_op integer,
    pppymt_op integer,
    medreimb_car integer,
    benres_car integer,
    pppymt_car integer
);


ALTER TABLE public.med_beneficiaries OWNER TO postgres;

--
-- TOC entry 3453 (class 2604 OID 17288)
-- Name: adobe_medicare id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adobe_medicare ALTER COLUMN id SET DEFAULT nextval('public.adobe_medicare_id_seq'::regclass);


--
-- TOC entry 3452 (class 2604 OID 17278)
-- Name: db_cpc id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.db_cpc ALTER COLUMN id SET DEFAULT nextval('public.db_cpc_id_seq'::regclass);


--
-- TOC entry 3457 (class 2606 OID 17290)
-- Name: adobe_medicare adobe_medicare_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.adobe_medicare
    ADD CONSTRAINT adobe_medicare_pkey PRIMARY KEY (id);


--
-- TOC entry 3455 (class 2606 OID 17280)
-- Name: db_cpc db_cpc_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.db_cpc
    ADD CONSTRAINT db_cpc_pkey PRIMARY KEY (id);


-- Completed on 2023-03-23 10:47:22 EDT

--
-- PostgreSQL database dump complete
--

