--
-- PostgreSQL database dump
--

-- Dumped from database version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)
-- Dumped by pg_dump version 12.17 (Ubuntu 12.17-1.pgdg22.04+1)

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

DROP DATABASE universe;
--
-- Name: universe; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE universe WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE universe OWNER TO freecodecamp;

\connect universe

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
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean,
    size_in_lightyears numeric,
    description text
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: gravity; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.gravity (
    gravity_id integer NOT NULL,
    name character varying(100) NOT NULL,
    gravity_strenght text,
    gravity_strength integer
);


ALTER TABLE public.gravity OWNER TO freecodecamp;

--
-- Name: gravity_gravity_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.gravity_gravity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.gravity_gravity_id_seq OWNER TO freecodecamp;

--
-- Name: gravity_gravity_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.gravity_gravity_id_seq OWNED BY public.gravity.gravity_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(100) NOT NULL,
    planet_id integer NOT NULL,
    has_life boolean,
    radius numeric
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(100) NOT NULL,
    star_id integer NOT NULL,
    weight numeric,
    size numeric
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(100) NOT NULL,
    has_life boolean DEFAULT false,
    galaxy_id integer NOT NULL,
    size numeric,
    distance integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_star_id_seq OWNER TO freecodecamp;

--
-- Name: star_star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_galaxy_id_seq'::regclass);


--
-- Name: gravity gravity_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gravity ALTER COLUMN gravity_id SET DEFAULT nextval('public.gravity_gravity_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galaxy1', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'galaxy2', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'galaxy3', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'galaxy4', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'galaxy5', NULL, NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'galaxy6', NULL, NULL, NULL);


--
-- Data for Name: gravity; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.gravity VALUES (1, 'gravity1', NULL, 3);
INSERT INTO public.gravity VALUES (2, 'gravity2', NULL, 2);
INSERT INTO public.gravity VALUES (3, 'gravity3', NULL, 7);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, NULL, 4.3);
INSERT INTO public.moon VALUES (2, 'moon2', 1, NULL, 6.2);
INSERT INTO public.moon VALUES (3, 'moon3', 1, NULL, 7.0);
INSERT INTO public.moon VALUES (4, 'moon4', 2, NULL, 5.4);
INSERT INTO public.moon VALUES (5, 'moon5', 3, NULL, 3.8);
INSERT INTO public.moon VALUES (6, 'moon6', 3, NULL, 4.1);
INSERT INTO public.moon VALUES (7, 'moon7', 4, NULL, 11.1);
INSERT INTO public.moon VALUES (8, 'moon8', 4, NULL, 7.3);
INSERT INTO public.moon VALUES (9, 'moon9', 5, NULL, 8.2);
INSERT INTO public.moon VALUES (10, 'moon10', 5, NULL, 7.3);
INSERT INTO public.moon VALUES (11, 'moon11', 6, NULL, 9.4);
INSERT INTO public.moon VALUES (12, 'moon12', 6, NULL, 8.1);
INSERT INTO public.moon VALUES (13, 'moon13', 6, NULL, 9.6);
INSERT INTO public.moon VALUES (14, 'moon14', 7, NULL, 5.1);
INSERT INTO public.moon VALUES (15, 'moon15', 7, NULL, 4.7);
INSERT INTO public.moon VALUES (16, 'moon16', 8, NULL, 6.1);
INSERT INTO public.moon VALUES (17, 'moon17', 9, NULL, 7.1);
INSERT INTO public.moon VALUES (18, 'moon18', 10, NULL, 5.9);
INSERT INTO public.moon VALUES (19, 'moon19', 11, NULL, 8.5);
INSERT INTO public.moon VALUES (20, 'moon20', 12, NULL, 7.1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'planet1', 1, NULL, 4.4);
INSERT INTO public.planet VALUES (2, 'planet2', 1, NULL, 2.8);
INSERT INTO public.planet VALUES (3, 'planet3', 1, NULL, 3.6);
INSERT INTO public.planet VALUES (4, 'planet4', 2, NULL, 1.9);
INSERT INTO public.planet VALUES (5, 'planet5', 2, NULL, 5.2);
INSERT INTO public.planet VALUES (6, 'planet6', 2, NULL, 7.3);
INSERT INTO public.planet VALUES (7, 'planet7', 3, NULL, 6.1);
INSERT INTO public.planet VALUES (8, 'planet8', 3, NULL, 8.2);
INSERT INTO public.planet VALUES (9, 'planet9', 4, NULL, 5.0);
INSERT INTO public.planet VALUES (10, 'planet10', 4, NULL, 7.1);
INSERT INTO public.planet VALUES (11, 'planet11', 5, NULL, 4.8);
INSERT INTO public.planet VALUES (12, 'planet12', 6, NULL, 6.1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', false, 1, NULL, NULL);
INSERT INTO public.star VALUES (2, 'star2', false, 2, NULL, NULL);
INSERT INTO public.star VALUES (3, 'star3', false, 3, NULL, NULL);
INSERT INTO public.star VALUES (4, 'star4', false, 4, NULL, NULL);
INSERT INTO public.star VALUES (5, 'star5', false, 5, NULL, NULL);
INSERT INTO public.star VALUES (6, 'star6', false, 6, NULL, NULL);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: gravity_gravity_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.gravity_gravity_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 7, true);


--
-- Name: galaxy galaxy_galaxy_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_galaxy_id_key UNIQUE (galaxy_id);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: gravity gravity_gravity_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gravity
    ADD CONSTRAINT gravity_gravity_id_key UNIQUE (gravity_id);


--
-- Name: gravity gravity_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.gravity
    ADD CONSTRAINT gravity_pkey PRIMARY KEY (gravity_id);


--
-- Name: moon moon_moon_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_moon_id_key UNIQUE (moon_id);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: planet planet_planet_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_planet_id_key UNIQUE (planet_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: star star_star_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_star_id_key UNIQUE (star_id);


--
-- Name: moon moon_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


--
-- Name: planet planet_star_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_star_id_fkey FOREIGN KEY (star_id) REFERENCES public.star(star_id);


--
-- Name: star star_galaxy_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_galaxy_id_fkey FOREIGN KEY (galaxy_id) REFERENCES public.galaxy(galaxy_id);


--
-- PostgreSQL database dump complete
--

