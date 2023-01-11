--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text NOT NULL,
    is_spherical boolean,
    has_life boolean
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
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text NOT NULL,
    is_inhabitated boolean,
    has_rings boolean,
    planet_id integer
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
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text NOT NULL,
    has_rings boolean,
    has_life boolean,
    star_id integer
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
-- Name: quasar; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.quasar (
    quasar_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text NOT NULL
);


ALTER TABLE public.quasar OWNER TO freecodecamp;

--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.quasar_quasar_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quasar_quasar_id_seq OWNER TO freecodecamp;

--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.quasar_quasar_id_seq OWNED BY public.quasar.quasar_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30) NOT NULL,
    age_in_millions_of_years integer,
    distance_from_earth integer,
    diameter numeric,
    description text NOT NULL,
    is_red boolean,
    is_alive boolean,
    galaxy_id integer
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
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_planet_id_seq'::regclass);


--
-- Name: quasar quasar_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar ALTER COLUMN quasar_id SET DEFAULT nextval('public.quasar_quasar_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda', NULL, NULL, NULL, 'TBD', NULL, NULL);
INSERT INTO public.galaxy VALUES (2, 'Milky Way', NULL, NULL, NULL, 'TBD', NULL, NULL);
INSERT INTO public.galaxy VALUES (3, 'Large Magellanic', NULL, NULL, NULL, 'TBD', NULL, NULL);
INSERT INTO public.galaxy VALUES (4, 'Small Magellanic', NULL, NULL, NULL, 'TBD', NULL, NULL);
INSERT INTO public.galaxy VALUES (5, 'Triangulum', NULL, NULL, NULL, 'TBD', NULL, NULL);
INSERT INTO public.galaxy VALUES (6, 'Centaurus A', NULL, NULL, NULL, 'TBD', NULL, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (57, 'Moon', NULL, NULL, NULL, 'TBD', NULL, NULL, 3);
INSERT INTO public.moon VALUES (58, 'MoonA', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (59, 'MoonB', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (60, 'MoonC', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (61, 'MoonD', NULL, NULL, NULL, 'dbfusddfb, eusdfs', NULL, NULL, 10);
INSERT INTO public.moon VALUES (62, 'MoonE', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (63, 'MoonF', NULL, NULL, NULL, 'Besdfu', NULL, NULL, 10);
INSERT INTO public.moon VALUES (64, 'MoonG', NULL, NULL, NULL, 'BOEWNS', NULL, NULL, 10);
INSERT INTO public.moon VALUES (65, 'MoonH', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (66, 'MoonI', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (67, 'MoonJ', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (68, 'MoonK', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (69, 'MoonL', NULL, NULL, NULL, 'MAsdhf', NULL, NULL, 10);
INSERT INTO public.moon VALUES (70, 'MoonPK', NULL, NULL, NULL, 'Rejsdfbk', NULL, NULL, 10);
INSERT INTO public.moon VALUES (71, 'MooZL', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (72, 'MoonRK', NULL, NULL, NULL, 'TBD', NULL, NULL, 10);
INSERT INTO public.moon VALUES (73, 'MoonSL', NULL, NULL, NULL, 'Cpdierb', NULL, NULL, 11);
INSERT INTO public.moon VALUES (74, 'MoonM', NULL, NULL, NULL, 'TBD', NULL, NULL, 11);
INSERT INTO public.moon VALUES (75, 'MoonN', NULL, NULL, NULL, 'TBD', NULL, NULL, 11);
INSERT INTO public.moon VALUES (76, 'MoonO', NULL, NULL, NULL, 'TBD', NULL, NULL, 11);
INSERT INTO public.moon VALUES (77, 'MoonP', NULL, NULL, NULL, 'Preskd', NULL, NULL, 12);
INSERT INTO public.moon VALUES (78, 'MoonQ', NULL, NULL, NULL, 'TBD', NULL, NULL, 12);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (2, 'Venus', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (3, 'Earth', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (4, 'Mars', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (9, 'Pluto', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.planet VALUES (10, 'Candidate1', NULL, NULL, NULL, 'TBD', NULL, NULL, 2);
INSERT INTO public.planet VALUES (11, 'Kappa Andro', NULL, NULL, NULL, 'TBD', NULL, NULL, 3);
INSERT INTO public.planet VALUES (12, 'Naboo', NULL, NULL, NULL, 'TBD', NULL, NULL, 5);


--
-- Data for Name: quasar; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.quasar VALUES (1, 'TWQ', 'TBD');
INSERT INTO public.quasar VALUES (2, 'ECRS', 'TBD');
INSERT INTO public.quasar VALUES (3, 'CLV', 'TBD');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', NULL, NULL, NULL, 'TBD', NULL, NULL, 2);
INSERT INTO public.star VALUES (2, 'Alpha Centaurus A', NULL, NULL, NULL, 'TBD', NULL, NULL, 6);
INSERT INTO public.star VALUES (3, 'Kappa Andro', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.star VALUES (4, 'Alpha Andro', NULL, NULL, NULL, 'TBD', NULL, NULL, 1);
INSERT INTO public.star VALUES (5, 'Star Wars', NULL, NULL, NULL, 'TBD', NULL, NULL, 5);
INSERT INTO public.star VALUES (6, 'Pokemon', NULL, NULL, NULL, 'TBD', NULL, NULL, 6);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 78, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: quasar_quasar_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.quasar_quasar_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_name_key UNIQUE (name);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_name_key UNIQUE (name);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet planet_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_name_key UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: quasar quasar_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_name_key UNIQUE (name);


--
-- Name: quasar quasar_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.quasar
    ADD CONSTRAINT quasar_pkey PRIMARY KEY (quasar_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


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

