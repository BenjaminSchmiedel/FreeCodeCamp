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
    note text,
    has_life boolean,
    visited boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.galaxy_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.galaxy_id_seq OWNER TO freecodecamp;

--
-- Name: galaxy_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.galaxy_id_seq OWNED BY public.galaxy.galaxy_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    planet_id integer NOT NULL
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.moon_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.moon_id_seq OWNER TO freecodecamp;

--
-- Name: moon_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.moon_id_seq OWNED BY public.moon.moon_id;


--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    is_spherical boolean,
    star_id integer NOT NULL
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.planet_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.planet_id_seq OWNER TO freecodecamp;

--
-- Name: planet_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.planet_id_seq OWNED BY public.planet.planet_id;


--
-- Name: spaceship; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.spaceship (
    spaceship_id integer NOT NULL,
    name character varying(30) NOT NULL,
    species character varying(30)
);


ALTER TABLE public.spaceship OWNER TO freecodecamp;

--
-- Name: spaceship_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.spaceship_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.spaceship_id_seq OWNER TO freecodecamp;

--
-- Name: spaceship_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.spaceship_id_seq OWNED BY public.spaceship.spaceship_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    galaxy_id integer NOT NULL
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.star_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.star_id_seq OWNER TO freecodecamp;

--
-- Name: star_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.star_id_seq OWNED BY public.star.star_id;


--
-- Name: galaxy galaxy_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy ALTER COLUMN galaxy_id SET DEFAULT nextval('public.galaxy_id_seq'::regclass);


--
-- Name: moon moon_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon ALTER COLUMN moon_id SET DEFAULT nextval('public.moon_id_seq'::regclass);


--
-- Name: planet planet_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet ALTER COLUMN planet_id SET DEFAULT nextval('public.planet_id_seq'::regclass);


--
-- Name: spaceship spaceship_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship ALTER COLUMN spaceship_id SET DEFAULT nextval('public.spaceship_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Andromeda Galaxy', 'Andromeda is the closest big galaxy to the Milky Way and is expected to collide with the Milky Way around 4.5 billion years from now. The two will eventually merge into a single new galaxy called Milkdromeda.', true, NULL);
INSERT INTO public.galaxy VALUES (2, 'Comet Galaxy', 'The comet effect is caused by tidal stripping by its galaxy cluster, Abell 2667.', false, NULL);
INSERT INTO public.galaxy VALUES (3, 'Cosmos Redshift 7', 'Galaxy Cosmos Redshift 7 is reported to be the brightest of distant galaxies (z > 6) and to contain some of the earliest first stars (first generation; Population III) that produced the chemical elements needed for the later formation of planets and life as we know it.', false, NULL);
INSERT INTO public.galaxy VALUES (4, 'Hoags Object', 'It is of the subtype Hoag-type galaxy, and may in fact be a polar-ring galaxy with the ring in the plane of rotation of the central object.', false, NULL);
INSERT INTO public.galaxy VALUES (5, 'Large Magellanic Cloud', 'This is the fourth-largest galaxy in the Local Group, and forms a pair with the SMC, and from recent research, may not be part of the Milky Way system of satellites at all.', false, NULL);
INSERT INTO public.galaxy VALUES (6, 'Milky Way', 'The galaxy containing the Sun and its Solar System, and therefore Earth.', true, NULL);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Mond', 32, 2, NULL, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 62, 2, NULL, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 72, 2, NULL, 4);
INSERT INTO public.moon VALUES (4, 'Triton', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (5, 'Hippocamp', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (6, 'Thalassa', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (7, 'Naiad', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (8, 'Nereid', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (9, 'Despina', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (10, 'Galatea', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (11, 'Neso', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (12, 'Proteus', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (13, 'Larissa', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (14, 'Halimede', 32, 2, NULL, 8);
INSERT INTO public.moon VALUES (15, 'Aria', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (16, 'Umbriel', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (17, 'Titania', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (18, 'Oberon', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (20, 'Cordelia', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (21, 'Ophelia', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (22, 'Bianca', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (23, 'Cressida', 32, 2, NULL, 7);
INSERT INTO public.moon VALUES (24, 'Juliet', 32, 2, NULL, 7);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 32, 32, 'gray', false, true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 32, 12.4, 'yellow', false, true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 32, 0, 'green', true, true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 32, 12.3, 'red', true, true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 33, 22.3, 'brown', true, true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 33, 32.3, 'brown', false, true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 31, 39.3, 'blue', false, true, 1);
INSERT INTO public.planet VALUES (8, 'Neptun', 33, 50.3, 'blue', false, true, 1);
INSERT INTO public.planet VALUES (9, 'Vulcan', 33, 122.3, NULL, true, true, 2);
INSERT INTO public.planet VALUES (10, 'Jarames', 33, 132.3, NULL, false, true, 2);
INSERT INTO public.planet VALUES (11, 'Superior', 31, 139.3, NULL, false, true, 2);
INSERT INTO public.planet VALUES (12, 'Auridia', 33, 150.3, NULL, false, true, 2);


--
-- Data for Name: spaceship; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.spaceship VALUES (1, 'USS Enterprise', 'Human');
INSERT INTO public.spaceship VALUES (2, 'Negh’Var-Class', 'Klingon');
INSERT INTO public.spaceship VALUES (3, 'D’deridex-Class', 'Romulan');
INSERT INTO public.spaceship VALUES (4, 'Cube Vessel', 'BORG');
INSERT INTO public.spaceship VALUES (5, 'USS Voyager', 'Human');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 32, 0.1, NULL, 6);
INSERT INTO public.star VALUES (2, 'Sirius', 34, 8.6, 'A0mA1 Va, DA2', 6);
INSERT INTO public.star VALUES (3, 'Canopus', 35, 0.1, NULL, 6);
INSERT INTO public.star VALUES (4, 'Rigil Kentaurus & Toliman', 31, 310, 'K0 III, G1 III', 6);
INSERT INTO public.star VALUES (5, 'Arcturus', 33, 4.4, NULL, 6);
INSERT INTO public.star VALUES (6, 'Vega', 30, 37, NULL, 6);
INSERT INTO public.star VALUES (7, 'Capella', 40, 25, NULL, 6);
INSERT INTO public.star VALUES (8, 'Rigel', 33, 43, NULL, 6);
INSERT INTO public.star VALUES (9, 'Procyon', 32, 860, NULL, 6);
INSERT INTO public.star VALUES (10, 'Achernar', 31, 11, 'B6 Vep', 6);
INSERT INTO public.star VALUES (11, 'Betelgeuse', 32, 139, NULL, 6);
INSERT INTO public.star VALUES (12, 'Hadar', 32, 700, NULL, 6);


--
-- Name: galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_id_seq', 6, true);


--
-- Name: moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_id_seq', 24, true);


--
-- Name: planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_id_seq', 12, true);


--
-- Name: spaceship_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.spaceship_id_seq', 5, true);


--
-- Name: star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_id_seq', 12, true);


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
-- Name: spaceship spaceship_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_name_key UNIQUE (name);


--
-- Name: spaceship spaceship_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.spaceship
    ADD CONSTRAINT spaceship_pkey PRIMARY KEY (spaceship_id);


--
-- Name: star star_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key UNIQUE (name);


--
-- Name: star star_name_key1; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_name_key1 UNIQUE (name);


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

