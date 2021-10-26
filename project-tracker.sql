--
-- PostgreSQL database dump
--

-- Dumped from database version 14.0
-- Dumped by pg_dump version 14.0

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
-- Name: projects; Type: TABLE; Schema: public; Owner: anushadhamera
--

CREATE TABLE public.projects (
    id integer NOT NULL,
    title character varying(20),
    description text,
    max_grade integer
);


ALTER TABLE public.projects OWNER TO anushadhamera;

--
-- Name: projects_id_seq; Type: SEQUENCE; Schema: public; Owner: anushadhamera
--

CREATE SEQUENCE public.projects_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.projects_id_seq OWNER TO anushadhamera;

--
-- Name: projects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anushadhamera
--

ALTER SEQUENCE public.projects_id_seq OWNED BY public.projects.id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: anushadhamera
--

CREATE TABLE public.students (
    id integer NOT NULL,
    fname character varying(20),
    lname character varying(20),
    github character varying(20)
);


ALTER TABLE public.students OWNER TO anushadhamera;

--
-- Name: students_id_seq; Type: SEQUENCE; Schema: public; Owner: anushadhamera
--

CREATE SEQUENCE public.students_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_id_seq OWNER TO anushadhamera;

--
-- Name: students_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: anushadhamera
--

ALTER SEQUENCE public.students_id_seq OWNED BY public.students.id;


--
-- Name: projects id; Type: DEFAULT; Schema: public; Owner: anushadhamera
--

ALTER TABLE ONLY public.projects ALTER COLUMN id SET DEFAULT nextval('public.projects_id_seq'::regclass);


--
-- Name: students id; Type: DEFAULT; Schema: public; Owner: anushadhamera
--

ALTER TABLE ONLY public.students ALTER COLUMN id SET DEFAULT nextval('public.students_id_seq'::regclass);


--
-- Data for Name: projects; Type: TABLE DATA; Schema: public; Owner: anushadhamera
--

COPY public.projects (id, title, description, max_grade) FROM stdin;
1	Markov	Tweets generated from Markov chains	50
2	Blockly	Programmatic Logic Puzzle Game	100
3	Algorithm	Maze Game	70
4	React	Trading Cards	150
5	Flask	Madlibs	30
\.


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: anushadhamera
--

COPY public.students (id, fname, lname, github) FROM stdin;
1	Jane	Hacker	jhacks
2	Sarah	Developer	sdevelops
\.


--
-- Name: projects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anushadhamera
--

SELECT pg_catalog.setval('public.projects_id_seq', 5, true);


--
-- Name: students_id_seq; Type: SEQUENCE SET; Schema: public; Owner: anushadhamera
--

SELECT pg_catalog.setval('public.students_id_seq', 2, true);


--
-- Name: projects projects_pkey; Type: CONSTRAINT; Schema: public; Owner: anushadhamera
--

ALTER TABLE ONLY public.projects
    ADD CONSTRAINT projects_pkey PRIMARY KEY (id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: anushadhamera
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

