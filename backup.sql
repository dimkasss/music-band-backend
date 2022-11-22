--
-- PostgreSQL database dump
--

-- Dumped from database version 14.5
-- Dumped by pg_dump version 14.5

-- Started on 2022-11-22 23:40:17

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
-- TOC entry 209 (class 1259 OID 16473)
-- Name: bands; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bands (
    name character varying(100) NOT NULL,
    implemented boolean DEFAULT false,
    bandtype character varying(500),
    country character varying(100),
    genre character varying(100),
    id integer NOT NULL
);


ALTER TABLE public.bands OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 16481)
-- Name: bands_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bands_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bands_id_seq OWNER TO postgres;

--
-- TOC entry 3316 (class 0 OID 0)
-- Dependencies: 210
-- Name: bands_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bands_id_seq OWNED BY public.bands.id;


--
-- TOC entry 3165 (class 2604 OID 16482)
-- Name: bands id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bands ALTER COLUMN id SET DEFAULT nextval('public.bands_id_seq'::regclass);


--
-- TOC entry 3309 (class 0 OID 16473)
-- Dependencies: 209
-- Data for Name: bands; Type: TABLE DATA; Schema: public; Owner: postgres
--

INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Savage', false, NULL, NULL, NULL, 1);
INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Scar Symmetry', true, NULL, NULL, NULL, 2);
INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Scars on Broadway', true, NULL, NULL, NULL, 3);
INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Seas of Years', true, 'instrumental', NULL, NULL, 4);
INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Sebdoom', false, 'instrumental', NULL, '#metal', 5);
INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Septicflesh', false, NULL, NULL, NULL, 6);
INSERT INTO public.bands (name, implemented, bandtype, country, genre, id) VALUES ('Subsets', false, 'instrumental', NULL, NULL, 7);


--
-- TOC entry 3317 (class 0 OID 0)
-- Dependencies: 210
-- Name: bands_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bands_id_seq', 7, true);


--
-- TOC entry 3167 (class 2606 OID 16480)
-- Name: bands bands_name_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bands
    ADD CONSTRAINT bands_name_key UNIQUE (name);


--
-- TOC entry 3169 (class 2606 OID 16484)
-- Name: bands bands_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bands
    ADD CONSTRAINT bands_pkey PRIMARY KEY (id);


-- Completed on 2022-11-22 23:40:17

--
-- PostgreSQL database dump complete
--

