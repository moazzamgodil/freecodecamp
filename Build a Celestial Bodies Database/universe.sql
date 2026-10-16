--
-- PostgreSQL database dump
--

-- Dumped from database version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)
-- Dumped by pg_dump version 12.22 (Ubuntu 12.22-0ubuntu0.20.04.4)

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
    name character varying(50),
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    is_spherical boolean NOT NULL
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
    name character varying(50),
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    is_spherical boolean NOT NULL,
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
    name character varying(50),
    age_in_millions_of_years integer,
    distance_from_earth numeric,
    description text,
    is_spherical boolean NOT NULL,
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
-- Name: space; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.space (
    space_id integer NOT NULL,
    name character varying(30) NOT NULL,
    description text
);


ALTER TABLE public.space OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.space_space_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.space_space_id_seq OWNER TO freecodecamp;

--
-- Name: space_space_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.space_space_id_seq OWNED BY public.space.space_id;


--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(50),
    distance_from_earth numeric,
    age_in_millions_of_years integer,
    description text,
    is_spherical boolean NOT NULL,
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
-- Name: space space_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space ALTER COLUMN space_id SET DEFAULT nextval('public.space_space_id_seq'::regclass);


--
-- Name: star star_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star ALTER COLUMN star_id SET DEFAULT nextval('public.star_star_id_seq'::regclass);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'Milky Way', 0, 13600, 'Our home galaxy containing the Solar System', false);
INSERT INTO public.galaxy VALUES (2, 'Andromeda', 2537000, 10000, 'Nearest major spiral galaxy to the Milky Way', false);
INSERT INTO public.galaxy VALUES (3, 'Triangulum', 2730000, 12000, 'Spiral galaxy in the Local Group', false);
INSERT INTO public.galaxy VALUES (4, 'Large Magellanic Cloud', 163000, 13000, 'Satellite galaxy of the Milky Way', false);
INSERT INTO public.galaxy VALUES (5, 'Small Magellanic Cloud', 200000, 12000, 'Dwarf irregular galaxy near the Milky Way', false);
INSERT INTO public.galaxy VALUES (6, 'Messier 87', 53500000, 13000, 'Giant elliptical galaxy containing a supermassive black hole', true);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'Moon', 0.00257, 4510, 'Earth natural satellite', true, 3);
INSERT INTO public.moon VALUES (2, 'Phobos', 0.52, 4500, 'Largest moon of Mars', false, 4);
INSERT INTO public.moon VALUES (3, 'Deimos', 0.52, 4500, 'Small outer moon of Mars', false, 4);
INSERT INTO public.moon VALUES (4, 'Io', 4.20, 4500, 'Volcanically active moon of Jupiter', true, 5);
INSERT INTO public.moon VALUES (5, 'Europa', 4.20, 4500, 'Icy moon with a subsurface ocean', true, 5);
INSERT INTO public.moon VALUES (6, 'Ganymede', 4.20, 4500, 'Largest moon in the Solar System', true, 5);
INSERT INTO public.moon VALUES (7, 'Callisto', 4.20, 4500, 'Heavily cratered moon of Jupiter', true, 5);
INSERT INTO public.moon VALUES (8, 'Amalthea', 4.20, 4500, 'Small irregular moon of Jupiter', false, 5);
INSERT INTO public.moon VALUES (9, 'Titan', 8.50, 4500, 'Largest moon of Saturn with a thick atmosphere', true, 6);
INSERT INTO public.moon VALUES (10, 'Enceladus', 8.50, 4500, 'Icy moon with water vapor geysers', true, 6);
INSERT INTO public.moon VALUES (11, 'Mimas', 8.50, 4500, 'Moon with a giant impact crater', true, 6);
INSERT INTO public.moon VALUES (12, 'Rhea', 8.50, 4500, 'Second largest moon of Saturn', true, 6);
INSERT INTO public.moon VALUES (13, 'Dione', 8.50, 4500, 'Icy moon with bright surface fractures', true, 6);
INSERT INTO public.moon VALUES (14, 'Iapetus', 8.50, 4500, 'Moon with contrasting light and dark hemispheres', true, 6);
INSERT INTO public.moon VALUES (15, 'Titania', 18.20, 4500, 'Largest moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (16, 'Oberon', 18.20, 4500, 'Second largest moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (17, 'Ariel', 18.20, 4500, 'Bright icy moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (18, 'Umbriel', 18.20, 4500, 'Dark moon of Uranus', true, 7);
INSERT INTO public.moon VALUES (19, 'Miranda', 18.20, 4500, 'Moon with unusual cliffs and terrain', true, 7);
INSERT INTO public.moon VALUES (20, 'Triton', 29.10, 4500, 'Largest moon of Neptune with retrograde orbit', true, 8);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'Mercury', 4500, 0.61, 'Closest planet to the Sun', true, 1);
INSERT INTO public.planet VALUES (2, 'Venus', 4500, 0.28, 'Hottest planet in the Solar System', true, 1);
INSERT INTO public.planet VALUES (3, 'Earth', 4540, 0, 'Our home planet with liquid water', true, 1);
INSERT INTO public.planet VALUES (4, 'Mars', 4600, 0.52, 'The red planet', true, 1);
INSERT INTO public.planet VALUES (5, 'Jupiter', 4600, 4.20, 'Largest planet in the Solar System', true, 1);
INSERT INTO public.planet VALUES (6, 'Saturn', 4500, 8.50, 'Gas giant famous for its rings', true, 1);
INSERT INTO public.planet VALUES (7, 'Uranus', 4500, 18.20, 'Ice giant with an extreme axial tilt', true, 1);
INSERT INTO public.planet VALUES (8, 'Neptune', 4500, 29.10, 'Farthest planet from the Sun', true, 1);
INSERT INTO public.planet VALUES (9, 'Proxima Centauri b', 4800, 4.24, 'Exoplanet orbiting Proxima Centauri', true, 1);
INSERT INTO public.planet VALUES (10, 'Kepler-22b', 4000, 635, 'Exoplanet in the habitable zone', true, 1);
INSERT INTO public.planet VALUES (11, 'TRAPPIST-1e', 7600, 40.7, 'Rocky exoplanet in the habitable zone', true, 1);
INSERT INTO public.planet VALUES (12, 'HD 209458 b', 4000, 159, 'Hot Jupiter exoplanet', true, 1);


--
-- Data for Name: space; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.space VALUES (1, 'space1', NULL);
INSERT INTO public.space VALUES (2, 'space2', NULL);
INSERT INTO public.space VALUES (3, 'space3', NULL);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'Sun', 0, 4600, 'Star at the center of our Solar System', true, 1);
INSERT INTO public.star VALUES (2, 'Proxima Centauri', 4.24, 4850, 'Closest known star to the Sun', true, 1);
INSERT INTO public.star VALUES (3, 'Sirius', 8.60, 242, 'Brightest star in the night sky', true, 1);
INSERT INTO public.star VALUES (4, 'Betelgeuse', 548, 8, 'Red supergiant star in Orion constellation', true, 1);
INSERT INTO public.star VALUES (5, 'Rigel', 860, 8, 'Blue supergiant star in Orion constellation', true, 1);
INSERT INTO public.star VALUES (6, 'Vega', 25.04, 455, 'Bright star in the Lyra constellation', true, 1);


--
-- Name: galaxy_galaxy_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.galaxy_galaxy_id_seq', 6, true);


--
-- Name: moon_moon_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.moon_moon_id_seq', 20, true);


--
-- Name: planet_planet_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.planet_planet_id_seq', 12, true);


--
-- Name: space_space_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.space_space_id_seq', 3, true);


--
-- Name: star_star_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.star_star_id_seq', 6, true);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


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
-- Name: space space_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_name_key UNIQUE (name);


--
-- Name: space space_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.space
    ADD CONSTRAINT space_pkey PRIMARY KEY (space_id);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: galaxy uq_galaxy_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT uq_galaxy_name UNIQUE (name);


--
-- Name: moon uq_moon_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT uq_moon_name UNIQUE (name);


--
-- Name: planet uq_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT uq_name UNIQUE (name);


--
-- Name: star uq_star_name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT uq_star_name UNIQUE (name);


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

