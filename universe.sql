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
    name character varying(20) NOT NULL,
    distance_from_earth numeric,
    description text,
    has_life boolean,
    diameter integer,
    no_of_stars integer NOT NULL
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
-- Name: info; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.info (
    info_id integer NOT NULL,
    name character varying(20) NOT NULL,
    details text
);


ALTER TABLE public.info OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.info_info_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.info_info_id_seq OWNER TO freecodecamp;

--
-- Name: info_info_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.info_info_id_seq OWNED BY public.info.info_id;


--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(20) NOT NULL,
    rotation text,
    has_water boolean,
    mean_radius_km integer,
    planet_id integer,
    orbital_period numeric
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
    name character varying(20) NOT NULL,
    distance_from_star numeric,
    description text,
    has_life boolean,
    no_of_moons integer,
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
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(20) NOT NULL,
    distance_from_earth numeric,
    description text,
    has_planets boolean,
    disc_year integer,
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
-- Name: info info_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info ALTER COLUMN info_id SET DEFAULT nextval('public.info_info_id_seq'::regclass);


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

INSERT INTO public.galaxy VALUES (1, 'Milky way', 0.025, 'Our home galaxy', true, 87400, 100);
INSERT INTO public.galaxy VALUES (2, 'SagDEG', 0.75, 'Sagitarus DWARF SPH', false, 10000, 100);
INSERT INTO public.galaxy VALUES (3, 'LMC', 0.205, 'Large Megalitic Cloud', false, 32200, 100);
INSERT INTO public.galaxy VALUES (4, 'Bootes 1', 0.197, 'Satellite of milky way', false, 0, 100);
INSERT INTO public.galaxy VALUES (5, 'SMC', 0.205, 'Satellite of milky way', false, 18900, 100);
INSERT INTO public.galaxy VALUES (6, 'Draco Dwarf', 0.258, 'Satellite of milky way with dark matter', false, 2700, 100);


--
-- Data for Name: info; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.info VALUES (1, 'Distance From Star', 'The Distance is in Astronomical units AU');
INSERT INTO public.info VALUES (2, 'Distance From Earth', 'The Distance is from galactic center');
INSERT INTO public.info VALUES (3, 'Loreum ispum', 'Loreum ispum dollar sit amit');


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (2, 'Moon', 'Synchronous rotation', false, 1738, 4, 27.32);
INSERT INTO public.moon VALUES (3, 'Phobos', 'Synchronous rotation', false, 11, 5, 11.267);
INSERT INTO public.moon VALUES (4, 'Deimos', 'Synchronous rotation', false, 6, 5, 1.262);
INSERT INTO public.moon VALUES (5, 'IO', 'Main g moon', false, 421800, 6, 1.76);
INSERT INTO public.moon VALUES (6, 'Europa', 'Main g moon', false, 671100, 6, 3.551);
INSERT INTO public.moon VALUES (7, 'Mimas', 'Main g moon', false, 185540, 7, 0.942);
INSERT INTO public.moon VALUES (8, 'Enceladus', 'Main g moon', false, 238040, 7, 1.370);
INSERT INTO public.moon VALUES (9, 'Ariel', 'Main g moon', false, 190900, 8, 2.520);
INSERT INTO public.moon VALUES (10, 'Umbriel', 'Main g moon', false, 266000, 8, 4.144);
INSERT INTO public.moon VALUES (11, 'Triton', 'Retrograde', false, 354800, 9, 5.877);
INSERT INTO public.moon VALUES (12, 'Nereid', 'Retrograde', false, 5513820, 9, 360.14);
INSERT INTO public.moon VALUES (13, 'Charon', 'Retrograde', false, 606, 11, 6.383);
INSERT INTO public.moon VALUES (14, 'Nixon', 'Chaotic', false, 0, 11, 0);
INSERT INTO public.moon VALUES (15, 'Hydra', 'Chaotic', false, 0, 11, 0);
INSERT INTO public.moon VALUES (16, 'Kerberos', 'Chaotic', false, 0, 11, 0);
INSERT INTO public.moon VALUES (17, 'Styx', 'Chaotic', false, 0, 11, 0);
INSERT INTO public.moon VALUES (18, 'Haiika', 'Chaotic', false, 0, 12, 0);
INSERT INTO public.moon VALUES (19, 'Namaka', 'Chaotic', false, 0, 12, 0);
INSERT INTO public.moon VALUES (20, 'S/2015 136472 1', 'NA', false, 0, 13, 0);
INSERT INTO public.moon VALUES (21, 'Gynemede', 'Chaotic', false, 0, 6, 0);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 0.38709893, 'The first planet in our Solar System', false, 0, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 0.72333199, 'The second planet in our Solar System', false, 0, 1);
INSERT INTO public.planet VALUES (4, 'Earth', 1.00000011, 'Sweet Home', true, 1, 1);
INSERT INTO public.planet VALUES (5, 'Mars', 1.52366231, 'Next Home', false, 2, 1);
INSERT INTO public.planet VALUES (6, 'Jupitar', 5.20336301, 'Gas giant', false, 72, 1);
INSERT INTO public.planet VALUES (7, 'Saturn', 9.53707032, 'Jewel of Solar System', false, 66, 1);
INSERT INTO public.planet VALUES (8, 'Uranus', 19.19126393, 'Icy giant', false, 28, 1);
INSERT INTO public.planet VALUES (9, 'Neptune', 30.06896348, 'Second ice giant', false, 16, 1);
INSERT INTO public.planet VALUES (10, 'Cerus', 2.766, 'Minor planet 1', false, 0, 1);
INSERT INTO public.planet VALUES (11, 'Pluto', 39.482, 'Minor plane 134340', false, 5, 1);
INSERT INTO public.planet VALUES (12, 'Haumea', 43.335, 'Minor planet 136108', false, 2, 1);
INSERT INTO public.planet VALUES (13, 'Makemake', 45.792, 'Minor planet 136472', false, 0, 1);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'sun', 150.32, 'Center of our Solar System', true, 0, 1);
INSERT INTO public.star VALUES (2, 'Proxima', 4.2465, 'Nearest Neighbour', true, 2019, 1);
INSERT INTO public.star VALUES (3, 'Bernard Star', 5.9629, 'Flare Star', true, 2019, 1);
INSERT INTO public.star VALUES (4, 'Luhman 16', 6.925, 'Brown Dwarf', false, 0, 1);
INSERT INTO public.star VALUES (5, 'Wolf 395', 7.9, 'Flare Star with habitable zone', true, 2021, 1);
INSERT INTO public.star VALUES (6, 'Alpha Cinus Majoris', 8.7094, 'Brightest Star in the sky', true, 0, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: info_info_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.info_info_id_seq', 3, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 21, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 13, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


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
-- Name: info info_info_id_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_info_id_key UNIQUE (info_id);


--
-- Name: info info_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.info
    ADD CONSTRAINT info_pkey PRIMARY KEY (info_id);


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

