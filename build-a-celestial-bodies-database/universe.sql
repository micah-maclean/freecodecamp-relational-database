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
    name character varying(40) NOT NULL,
    has_life boolean,
    age_in_millions_of_year integer,
    number_of_stars integer
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
    planet_id integer,
    name character varying(40) NOT NULL,
    orbits character varying(40),
    rotational_period_in_days numeric
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
    star_id integer,
    name character varying(40) NOT NULL,
    has_life boolean,
    gravity numeric,
    description text
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(40) NOT NULL,
    nationality character varying(50)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(40) NOT NULL,
    solar_mass numeric,
    name_origin text
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--



--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 1, false);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 1, false);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 1, false);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 1, false);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 1, false);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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

camper: /project$ pg_dump -cC --inserts -U freecodecamp universe > universe.sq
camper: /project$ more universe.sq
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
    name character varying(40) NOT NULL,
    has_life boolean,
    age_in_millions_of_year integer,
    number_of_stars integer
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
    planet_id integer,
    name character varying(40) NOT NULL,
    orbits character varying(40),
    rotational_period_in_days numeric
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
    star_id integer,
    name character varying(40) NOT NULL,
    has_life boolean,
    gravity numeric,
    description text
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
-- Name: satellite; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.satellite (
    satellite_id integer NOT NULL,
    name character varying(40) NOT NULL,
    nationality character varying(50)
);


ALTER TABLE public.satellite OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.satellite_satellite_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.satellite_satellite_id_seq OWNER TO freecodecamp;

--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.satellite_satellite_id_seq OWNED BY public.satellite.satellite_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    galaxy_id integer,
    name character varying(40) NOT NULL,
    solar_mass numeric,
    name_origin text
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
-- Name: satellite satellite_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite ALTER COLUMN satellite_id SET DEFAULT nextval('public.satellite_satellite_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', true, 13600, 100000);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', false, 10000, 1000000);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', false, 12000, 40000);
INSERT INTO public.galaxy VALUES (4, 'Messier 87', false, 13000, 10000000);
INSERT INTO public.galaxy VALUES (5, 'Whirlpool', false, 9000, 150000);
INSERT INTO public.galaxy VALUES (6, 'Sombrero', false, 11000, 200000);
INSERT INTO public.galaxy VALUES (7, 'Large Magellanic Cloud', false, 13000, 30000);
INSERT INTO public.galaxy VALUES (8, 'Small Magellanic Cloud', false, 12000, 20000);
INSERT INTO public.galaxy VALUES (9, 'NGC 1300', false, 14000, 100000);
INSERT INTO public.galaxy VALUES (10, 'Hoag’s Object', false, 13000, 20000);
INSERT INTO public.galaxy VALUES (11, 'Antennae', false, 9000, 100000);
INSERT INTO public.galaxy VALUES (12, 'Tadpole', false, 8000, 100000);
INSERT INTO public.galaxy VALUES (13, 'Cartwheel', false, 9000, 150000);
INSERT INTO public.galaxy VALUES (14, 'Circinus', false, 7000, 70000);
INSERT INTO public.galaxy VALUES (15, 'Leo I', false, 12000, 50000);
INSERT INTO public.galaxy VALUES (16, 'Leo II', false, 11000, 60000);
INSERT INTO public.galaxy VALUES (17, 'NGC 6744', false, 10000, 200000);
INSERT INTO public.galaxy VALUES (18, 'NGC 4631', false, 9500, 100000);
INSERT INTO public.galaxy VALUES (19, 'NGC 3370', false, 10500, 90000);
INSERT INTO public.galaxy VALUES (20, 'IC 1101', false, 13000, 1000000);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 1, 'Moon', 'Earth', 27.3);
INSERT INTO public.moon VALUES (2, 2, 'Phobos', 'Mars', 0.3);
INSERT INTO public.moon VALUES (3, 2, 'Deimos', 'Mars', 1.3);
INSERT INTO public.moon VALUES (4, 3, 'Europa', 'Jupiter', 3.5);
INSERT INTO public.moon VALUES (5, 3, 'Ganymede', 'Jupiter', 7.1);
INSERT INTO public.moon VALUES (6, 4, 'Titan', 'Saturn', 16.0);
INSERT INTO public.moon VALUES (7, 5, 'Io', 'Jupiter', 1.8);
INSERT INTO public.moon VALUES (8, 6, 'Callisto', 'Jupiter', 16.7);
INSERT INTO public.moon VALUES (9, 7, 'Triton', 'Neptune', 5.9);
INSERT INTO public.moon VALUES (10, 8, 'Enceladus', 'Saturn', 1.4);
INSERT INTO public.moon VALUES (11, 9, 'Oberon', 'Uranus', 13.5);
INSERT INTO public.moon VALUES (12, 10, 'Charon', 'Pluto', 6.4);
INSERT INTO public.moon VALUES (13, 11, 'Mimas', 'Saturn', 0.9);
INSERT INTO public.moon VALUES (14, 12, 'Hyperion', 'Saturn', 21.3);
INSERT INTO public.moon VALUES (15, 13, 'Rhea', 'Saturn', 4.5);
INSERT INTO public.moon VALUES (16, 14, 'Iapetus', 'Saturn', 79.3);
INSERT INTO public.moon VALUES (17, 15, 'Ariel', 'Uranus', 2.5);
INSERT INTO public.moon VALUES (18, 16, 'Umbriel', 'Uranus', 4.1);
INSERT INTO public.moon VALUES (19, 17, 'Miranda', 'Uranus', 1.4);
INSERT INTO public.moon VALUES (20, 18, 'Proteus', 'Neptune', 1.1);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 1, 'Earth', true, 9.8, 'Home of humans');
INSERT INTO public.planet VALUES (2, 1, 'Mars', false, 3.7, 'Red Planet');
INSERT INTO public.planet VALUES (3, 2, 'Proxima b', false, NULL, 'Exoplanet');
INSERT INTO public.planet VALUES (4, 2, 'Kepler-442b', false, 9.8, 'Potentially habitable');
INSERT INTO public.planet VALUES (5, 3, 'Gliese 581g', false, NULL, 'Potentially habitable');
INSERT INTO public.planet VALUES (6, 4, 'HD 209458 b', false, 2.3, 'First exoplanet detected by transit');
INSERT INTO public.planet VALUES (7, 5, 'TOI-700d', false, 10.0, 'Habitable zone planet');
INSERT INTO public.planet VALUES (8, 6, '55 Cancri e', false, 8.6, 'Super-Earth');
INSERT INTO public.planet VALUES (9, 7, 'TRAPPIST-1e', false, 9.1, 'Potentially habitable');
INSERT INTO public.planet VALUES (10, 8, 'LHS 1140 b', false, 6.6, 'Super-Earth');
INSERT INTO public.planet VALUES (11, 9, 'K2-18b', false, NULL, 'Water vapor detected');
INSERT INTO public.planet VALUES (12, 10, 'HD 189733 b', false, NULL, 'Extreme weather planet');
INSERT INTO public.planet VALUES (13, 11, 'WASP-12b', false, NULL, 'Hot Jupiter');
INSERT INTO public.planet VALUES (14, 12, 'GJ 357 d', false, NULL, 'Possibly habitable');
INSERT INTO public.planet VALUES (15, 13, 'CoRoT-7b', false, 1.7, 'Rocky exoplanet');
INSERT INTO public.planet VALUES (16, 14, 'Ross 128 b', false, NULL, 'Potentially habitable');
INSERT INTO public.planet VALUES (17, 15, 'Wolf 1061c', false, NULL, 'Super-Earth');
INSERT INTO public.planet VALUES (18, 16, 'Kepler-22b', false, NULL, 'Ocean planet?');
INSERT INTO public.planet VALUES (19, 17, 'Kepler-186f', false, NULL, 'Similar to Earth');
INSERT INTO public.planet VALUES (20, 18, 'Gliese 667 Cc', false, NULL, 'Possibly habitable');


--
-- Data for Name: satellite; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.satellite VALUES (1, 'Hubble Space Telescope', 'USA');
INSERT INTO public.satellite VALUES (2, 'International Space Station', 'International');
INSERT INTO public.satellite VALUES (3, 'James Webb Space Telescope', 'USA');
INSERT INTO public.satellite VALUES (4, 'Voyager 1', 'USA');
INSERT INTO public.satellite VALUES (5, 'Voyager 2', 'USA');
INSERT INTO public.satellite VALUES (6, 'Sputnik 1', 'USSR');
INSERT INTO public.satellite VALUES (7, 'Landsat 8', 'USA');
INSERT INTO public.satellite VALUES (8, 'Galileo', 'ESA');
INSERT INTO public.satellite VALUES (9, 'Chandra X-ray Observatory', 'USA');
INSERT INTO public.satellite VALUES (10, 'Kepler Space Telescope', 'USA');
INSERT INTO public.satellite VALUES (11, 'Tiangong', 'China');
INSERT INTO public.satellite VALUES (12, 'INSAT-3D', 'India');
INSERT INTO public.satellite VALUES (13, 'Sentinel-1', 'ESA');
INSERT INTO public.satellite VALUES (14, 'Mars Reconnaissance Orbiter', 'USA');
INSERT INTO public.satellite VALUES (15, 'Akatsuki', 'Japan');
INSERT INTO public.satellite VALUES (16, 'Artemis I', 'USA');
INSERT INTO public.satellite VALUES (17, 'BepiColombo', 'ESA/Japan');
INSERT INTO public.satellite VALUES (18, 'Chang', 'China');
INSERT INTO public.satellite VALUES (19, 'COSMOS 2519', 'Russia');
INSERT INTO public.satellite VALUES (20, 'ALOS-2', 'Japan');


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 1, 'Sun', 1.0, 'Greek mythology');
INSERT INTO public.star VALUES (2, 1, 'Alpha Centauri', 1.1, 'Latin: "the closest"');
INSERT INTO public.star VALUES (3, 2, 'Betelgeuse', 18.0, 'Arabic origin');
INSERT INTO public.star VALUES (4, 2, 'Sirius', 2.1, 'Greek: "glowing"');
INSERT INTO public.star VALUES (5, 3, 'Vega', 2.2, 'Arabic: "falling eagle"');
INSERT INTO public.star VALUES (6, 3, 'Rigel', 23.0, 'Arabic: "foot"');
INSERT INTO public.star VALUES (7, 4, 'Antares', 15.0, 'Greek: "rival of Mars"');
INSERT INTO public.star VALUES (8, 4, 'Proxima Centauri', 0.12, 'Latin: "nearest"');
INSERT INTO public.star VALUES (9, 5, 'Arcturus', 1.1, 'Greek: "bear watcher"');
INSERT INTO public.star VALUES (10, 5, 'Polaris', 5.4, 'Greek: "pole star"');
INSERT INTO public.star VALUES (11, 6, 'Aldebaran', 1.7, 'Arabic: "follower"');
INSERT INTO public.star VALUES (12, 6, 'Fomalhaut', 1.9, 'Arabic: "fish’s mouth"');
INSERT INTO public.star VALUES (13, 7, 'Altair', 1.8, 'Arabic: "flying eagle"');
INSERT INTO public.star VALUES (14, 7, 'Deneb', 19.0, 'Arabic: "tail"');
INSERT INTO public.star VALUES (15, 8, 'Capella', 2.7, 'Latin: "little goat"');
INSERT INTO public.star VALUES (16, 8, 'Spica', 10.2, 'Latin: "ear of grain"');
INSERT INTO public.star VALUES (17, 9, 'Canopus', 15.0, 'Greek origin');
INSERT INTO public.star VALUES (18, 9, 'Bellatrix', 8.6, 'Latin: "female warrior"');
INSERT INTO public.star VALUES (19, 10, 'Alpheratz', 3.5, 'Arabic: "horse’s shoulder"');
INSERT INTO public.star VALUES (20, 10, 'Mira', 0.6, 'Latin: "wonderful"');


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 20, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 20, true);


--
-- Name: satellite_satellite_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.satellite_satellite_id_seq', 20, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 20, true);


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
-- Name: satellite satellite_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_name_key UNIQUE (name);


--
-- Name: satellite satellite_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.satellite
    ADD CONSTRAINT satellite_pkey PRIMARY KEY (satellite_id);


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
