--
-- PostgreSQL database dump
--

-- Dumped from database version 11.10
-- Dumped by pg_dump version 11.10

-- Started on 2021-02-08 15:18:53

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
-- TOC entry 201 (class 1259 OID 25188)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying(30),
    dept_name character varying(30)
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 196 (class 1259 OID 25173)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no integer,
    dept_no character varying(30)
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 25176)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    emp_no integer,
    dept_no character varying(30)
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 25179)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer,
    emp_title_id character varying(30),
    birth_date character varying(30),
    first_name character varying(30),
    last_name character varying(30),
    sex character varying(30),
    hire_date character varying(30)
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 25182)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer,
    salary integer
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 25185)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    title_id character varying(30),
    title character varying(30)
);


ALTER TABLE public.titles OWNER TO postgres;

-- Completed on 2021-02-08 15:18:53

--
-- PostgreSQL database dump complete
--

