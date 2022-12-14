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
-- Name: civilization; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.civilization (
    civilization_id integer NOT NULL,
    name character varying(40),
    population_size integer NOT NULL,
    number_races integer NOT NULL,
    age numeric,
    main_resource text,
    hspace_travel boolean,
    is_peaceful boolean,
    planet_id integer
);


ALTER TABLE public.civilization OWNER TO freecodecamp;

--
-- Name: galaxy; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.galaxy (
    galaxy_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    distance integer NOT NULL,
    num_stars numeric,
    constellation text,
    spiral boolean,
    black_hole boolean
);


ALTER TABLE public.galaxy OWNER TO freecodecamp;

--
-- Name: moon; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.moon (
    moon_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    distance integer NOT NULL,
    age numeric,
    system text,
    has_atmosphere boolean,
    has_life boolean,
    planet_id integer,
    foo text
);


ALTER TABLE public.moon OWNER TO freecodecamp;

--
-- Name: planet; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.planet (
    planet_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    distance integer NOT NULL,
    age numeric,
    system text,
    has_water boolean,
    has_life boolean,
    star_id integer
);


ALTER TABLE public.planet OWNER TO freecodecamp;

--
-- Name: star; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.star (
    star_id integer NOT NULL,
    name character varying(30),
    size integer NOT NULL,
    distance integer NOT NULL,
    age numeric,
    star_constellation text,
    red_giant boolean,
    white_dwarf boolean,
    galaxy_id integer
);


ALTER TABLE public.star OWNER TO freecodecamp;

--
-- Data for Name: civilization; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.civilization VALUES (123, 'civ123', 123, 123, 123, 'copper', true, true, 1);
INSERT INTO public.civilization VALUES (124, 'civ124', 124, 124, 124, 'wood', true, true, 2);
INSERT INTO public.civilization VALUES (125, 'civ125', 125, 125, 125, 'glass', true, true, 3);


--
-- Data for Name: galaxy; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.galaxy VALUES (1, 'galone', 1, 1, 1, 'one', true, true);
INSERT INTO public.galaxy VALUES (2, 'galtwo', 2, 2, 2, 'two', true, true);
INSERT INTO public.galaxy VALUES (3, 'galthree', 3, 3, 3, 'three', false, false);
INSERT INTO public.galaxy VALUES (4, 'galfour', 4, 4, 4, 'four', false, false);
INSERT INTO public.galaxy VALUES (5, 'galfive', 5, 5, 5, 'five', true, true);
INSERT INTO public.galaxy VALUES (6, 'galsix', 6, 6, 6, 'six', true, true);
INSERT INTO public.galaxy VALUES (7, 'galseven', 7, 7, 7, 'seven', false, false);


--
-- Data for Name: moon; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.moon VALUES (1, 'moon1', 1, 1, 1, 'one', true, true, 1, NULL);
INSERT INTO public.moon VALUES (2, 'moon2', 2, 2, 2, 'two', true, true, 2, NULL);
INSERT INTO public.moon VALUES (3, 'moon3', 3, 3, 3, 'three', true, true, 3, NULL);
INSERT INTO public.moon VALUES (4, 'moon4', 4, 4, 4, 'four', true, true, 4, NULL);
INSERT INTO public.moon VALUES (5, 'moon5', 5, 5, 5, 'five', true, true, 5, NULL);
INSERT INTO public.moon VALUES (6, 'moon6', 6, 6, 6, 'six', false, false, 6, NULL);
INSERT INTO public.moon VALUES (7, 'moon7', 7, 7, 7, 'seven', false, false, 7, NULL);
INSERT INTO public.moon VALUES (11, 'moon11', 1, 1, 1, 'one', true, true, 1, NULL);
INSERT INTO public.moon VALUES (12, 'moon12', 2, 2, 2, 'two', true, true, 2, NULL);
INSERT INTO public.moon VALUES (13, 'moon13', 3, 3, 3, 'three', true, true, 3, NULL);
INSERT INTO public.moon VALUES (14, 'moon14', 4, 4, 4, 'four', true, true, 4, NULL);
INSERT INTO public.moon VALUES (15, 'moon15', 5, 5, 5, 'five', true, true, 5, NULL);
INSERT INTO public.moon VALUES (16, 'moon16', 6, 6, 6, 'six', false, false, 6, NULL);
INSERT INTO public.moon VALUES (17, 'moon17', 7, 7, 7, 'seven', false, false, 7, NULL);
INSERT INTO public.moon VALUES (112, 'moon112', 1, 1, 1, 'one', true, true, 1, NULL);
INSERT INTO public.moon VALUES (122, 'moon122', 2, 2, 2, 'two', true, true, 2, NULL);
INSERT INTO public.moon VALUES (133, 'moon133', 3, 3, 3, 'three', true, true, 3, NULL);
INSERT INTO public.moon VALUES (144, 'moon144', 4, 4, 4, 'four', true, true, 4, NULL);
INSERT INTO public.moon VALUES (155, 'moon155', 5, 5, 5, 'five', true, true, 5, NULL);
INSERT INTO public.moon VALUES (166, 'moon166', 6, 6, 6, 'six', false, false, 6, NULL);
INSERT INTO public.moon VALUES (177, 'moon177', 7, 7, 7, 'seven', false, false, 7, NULL);


--
-- Data for Name: planet; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.planet VALUES (1, 'plan1', 1, 1, 1, 'one', true, true, 1);
INSERT INTO public.planet VALUES (2, 'plan2', 2, 2, 2, 'two', true, true, 2);
INSERT INTO public.planet VALUES (3, 'plan3', 3, 3, 3, 'three', true, true, 3);
INSERT INTO public.planet VALUES (4, 'plan4', 4, 4, 4, 'four', true, true, 4);
INSERT INTO public.planet VALUES (5, 'plan5', 5, 5, 5, 'five', true, true, 5);
INSERT INTO public.planet VALUES (6, 'plan6', 6, 6, 6, 'six', false, false, 6);
INSERT INTO public.planet VALUES (7, 'plan7', 7, 7, 7, 'seven', false, false, 7);
INSERT INTO public.planet VALUES (8, 'plan8', 1, 1, 1, 'one', true, true, 1);
INSERT INTO public.planet VALUES (9, 'plan9', 2, 2, 2, 'two', true, true, 2);
INSERT INTO public.planet VALUES (13, 'plan13', 3, 3, 3, 'three', true, true, 3);
INSERT INTO public.planet VALUES (14, 'plan14', 4, 4, 4, 'four', true, true, 4);
INSERT INTO public.planet VALUES (15, 'plan15', 5, 5, 5, 'five', true, true, 5);
INSERT INTO public.planet VALUES (16, 'plan16', 6, 6, 6, 'six', false, false, 6);
INSERT INTO public.planet VALUES (17, 'plan17', 7, 7, 7, 'seven', false, false, 7);


--
-- Data for Name: star; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.star VALUES (1, 'star1', 1, 1, 1, 'one', true, true, 1);
INSERT INTO public.star VALUES (2, 'star2', 2, 2, 2, 'two', true, true, 2);
INSERT INTO public.star VALUES (3, 'star3', 3, 3, 3, 'three', true, true, 3);
INSERT INTO public.star VALUES (4, 'star4', 4, 4, 4, 'four', true, true, 4);
INSERT INTO public.star VALUES (5, 'star5', 5, 5, 5, 'five', true, true, 5);
INSERT INTO public.star VALUES (6, 'star6', 6, 6, 6, 'six', false, false, 6);
INSERT INTO public.star VALUES (7, 'star7', 7, 7, 7, 'seven', false, false, 7);


--
-- Name: civilization civilization_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_pkey PRIMARY KEY (civilization_id);


--
-- Name: galaxy constellation_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT constellation_unique UNIQUE (constellation);


--
-- Name: galaxy galaxy_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.galaxy
    ADD CONSTRAINT galaxy_pkey PRIMARY KEY (galaxy_id);


--
-- Name: moon moon_foo_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_foo_key UNIQUE (foo);


--
-- Name: moon moon_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.moon
    ADD CONSTRAINT moon_pkey PRIMARY KEY (moon_id);


--
-- Name: planet name_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT name_unique UNIQUE (name);


--
-- Name: planet planet_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.planet
    ADD CONSTRAINT planet_pkey PRIMARY KEY (planet_id);


--
-- Name: civilization resource_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT resource_unique UNIQUE (main_resource);


--
-- Name: star star_constellation_unique; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_constellation_unique UNIQUE (star_constellation);


--
-- Name: star star_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.star
    ADD CONSTRAINT star_pkey PRIMARY KEY (star_id);


--
-- Name: civilization civilization_planet_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.civilization
    ADD CONSTRAINT civilization_planet_id_fkey FOREIGN KEY (planet_id) REFERENCES public.planet(planet_id);


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

