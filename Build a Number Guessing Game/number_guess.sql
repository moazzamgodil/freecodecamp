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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: games; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.games (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    guesses integer NOT NULL
);


ALTER TABLE public.games OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.games_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.games_game_id_seq OWNER TO freecodecamp;

--
-- Name: games_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.games_game_id_seq OWNED BY public.games.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (1, 1, 793);
INSERT INTO public.games VALUES (2, 2, 687);
INSERT INTO public.games VALUES (3, 1, 52);
INSERT INTO public.games VALUES (4, 1, 455);
INSERT INTO public.games VALUES (5, 1, 331);
INSERT INTO public.games VALUES (6, 3, 185);
INSERT INTO public.games VALUES (7, 4, 190);
INSERT INTO public.games VALUES (8, 3, 333);
INSERT INTO public.games VALUES (9, 3, 159);
INSERT INTO public.games VALUES (10, 3, 990);
INSERT INTO public.games VALUES (11, 5, 10);
INSERT INTO public.games VALUES (12, 6, 839);
INSERT INTO public.games VALUES (13, 7, 999);
INSERT INTO public.games VALUES (14, 6, 380);
INSERT INTO public.games VALUES (15, 6, 524);
INSERT INTO public.games VALUES (16, 6, 525);
INSERT INTO public.games VALUES (17, 8, 217);
INSERT INTO public.games VALUES (18, 9, 516);
INSERT INTO public.games VALUES (19, 8, 71);
INSERT INTO public.games VALUES (20, 8, 728);
INSERT INTO public.games VALUES (21, 8, 315);
INSERT INTO public.games VALUES (22, 10, 118);
INSERT INTO public.games VALUES (23, 11, 925);
INSERT INTO public.games VALUES (24, 10, 503);
INSERT INTO public.games VALUES (25, 10, 775);
INSERT INTO public.games VALUES (26, 10, 411);
INSERT INTO public.games VALUES (27, 12, 247);
INSERT INTO public.games VALUES (28, 13, 585);
INSERT INTO public.games VALUES (29, 12, 236);
INSERT INTO public.games VALUES (30, 12, 434);
INSERT INTO public.games VALUES (31, 12, 795);
INSERT INTO public.games VALUES (32, 14, 383);
INSERT INTO public.games VALUES (33, 15, 659);
INSERT INTO public.games VALUES (34, 14, 315);
INSERT INTO public.games VALUES (35, 14, 303);
INSERT INTO public.games VALUES (36, 14, 723);
INSERT INTO public.games VALUES (37, 16, 581);
INSERT INTO public.games VALUES (38, 17, 704);
INSERT INTO public.games VALUES (39, 16, 849);
INSERT INTO public.games VALUES (40, 16, 499);
INSERT INTO public.games VALUES (41, 16, 30);
INSERT INTO public.games VALUES (42, 18, 103);
INSERT INTO public.games VALUES (43, 19, 914);
INSERT INTO public.games VALUES (44, 18, 687);
INSERT INTO public.games VALUES (45, 18, 678);
INSERT INTO public.games VALUES (46, 18, 331);
INSERT INTO public.games VALUES (47, 20, 582);
INSERT INTO public.games VALUES (48, 21, 901);
INSERT INTO public.games VALUES (49, 20, 584);
INSERT INTO public.games VALUES (50, 20, 357);
INSERT INTO public.games VALUES (51, 20, 142);
INSERT INTO public.games VALUES (52, 22, 417);
INSERT INTO public.games VALUES (53, 23, 344);
INSERT INTO public.games VALUES (54, 22, 627);
INSERT INTO public.games VALUES (55, 22, 368);
INSERT INTO public.games VALUES (56, 22, 27);
INSERT INTO public.games VALUES (57, 24, 565);
INSERT INTO public.games VALUES (58, 25, 267);
INSERT INTO public.games VALUES (59, 24, 258);
INSERT INTO public.games VALUES (60, 24, 69);
INSERT INTO public.games VALUES (61, 24, 432);
INSERT INTO public.games VALUES (62, 26, 362);
INSERT INTO public.games VALUES (63, 27, 89);
INSERT INTO public.games VALUES (64, 26, 991);
INSERT INTO public.games VALUES (65, 26, 16);
INSERT INTO public.games VALUES (66, 26, 575);
INSERT INTO public.games VALUES (67, 28, 429);
INSERT INTO public.games VALUES (68, 29, 768);
INSERT INTO public.games VALUES (69, 28, 592);
INSERT INTO public.games VALUES (70, 28, 406);
INSERT INTO public.games VALUES (71, 28, 757);
INSERT INTO public.games VALUES (72, 30, 735);
INSERT INTO public.games VALUES (73, 31, 708);
INSERT INTO public.games VALUES (74, 30, 785);
INSERT INTO public.games VALUES (75, 30, 757);
INSERT INTO public.games VALUES (76, 30, 600);
INSERT INTO public.games VALUES (77, 32, 99);
INSERT INTO public.games VALUES (78, 33, 761);
INSERT INTO public.games VALUES (79, 32, 795);
INSERT INTO public.games VALUES (80, 32, 937);
INSERT INTO public.games VALUES (81, 32, 884);
INSERT INTO public.games VALUES (82, 34, 179);
INSERT INTO public.games VALUES (83, 35, 172);
INSERT INTO public.games VALUES (84, 34, 977);
INSERT INTO public.games VALUES (85, 34, 547);
INSERT INTO public.games VALUES (86, 34, 929);
INSERT INTO public.games VALUES (87, 36, 586);
INSERT INTO public.games VALUES (88, 37, 909);
INSERT INTO public.games VALUES (89, 36, 17);
INSERT INTO public.games VALUES (90, 36, 262);
INSERT INTO public.games VALUES (91, 36, 577);
INSERT INTO public.games VALUES (92, 38, 252);
INSERT INTO public.games VALUES (93, 39, 570);
INSERT INTO public.games VALUES (94, 38, 537);
INSERT INTO public.games VALUES (95, 38, 223);
INSERT INTO public.games VALUES (96, 38, 284);
INSERT INTO public.games VALUES (97, 40, 739);
INSERT INTO public.games VALUES (98, 41, 221);
INSERT INTO public.games VALUES (99, 40, 650);
INSERT INTO public.games VALUES (100, 40, 708);
INSERT INTO public.games VALUES (101, 40, 758);
INSERT INTO public.games VALUES (102, 42, 588);
INSERT INTO public.games VALUES (103, 43, 589);
INSERT INTO public.games VALUES (104, 42, 206);
INSERT INTO public.games VALUES (105, 42, 254);
INSERT INTO public.games VALUES (106, 42, 571);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'user_1792532610783');
INSERT INTO public.users VALUES (2, 'user_1792532610782');
INSERT INTO public.users VALUES (3, 'user_1792532647396');
INSERT INTO public.users VALUES (4, 'user_1792532647395');
INSERT INTO public.users VALUES (5, 'mg');
INSERT INTO public.users VALUES (6, 'user_1792532987938');
INSERT INTO public.users VALUES (7, 'user_1792532987937');
INSERT INTO public.users VALUES (8, 'user_1792533088062');
INSERT INTO public.users VALUES (9, 'user_1792533088061');
INSERT INTO public.users VALUES (10, 'user_1792533170369');
INSERT INTO public.users VALUES (11, 'user_1792533170368');
INSERT INTO public.users VALUES (12, 'user_1792533237389');
INSERT INTO public.users VALUES (13, 'user_1792533237388');
INSERT INTO public.users VALUES (14, 'user_1792533248395');
INSERT INTO public.users VALUES (15, 'user_1792533248394');
INSERT INTO public.users VALUES (16, 'user_1792533505767');
INSERT INTO public.users VALUES (17, 'user_1792533505766');
INSERT INTO public.users VALUES (18, 'user_1792533520103');
INSERT INTO public.users VALUES (19, 'user_1792533520102');
INSERT INTO public.users VALUES (20, 'user_1792533523909');
INSERT INTO public.users VALUES (21, 'user_1792533523908');
INSERT INTO public.users VALUES (22, 'user_1792533538379');
INSERT INTO public.users VALUES (23, 'user_1792533538378');
INSERT INTO public.users VALUES (24, 'user_1792533548588');
INSERT INTO public.users VALUES (25, 'user_1792533548587');
INSERT INTO public.users VALUES (26, 'user_1792533613887');
INSERT INTO public.users VALUES (27, 'user_1792533613886');
INSERT INTO public.users VALUES (28, 'user_1792533670928');
INSERT INTO public.users VALUES (29, 'user_1792533670927');
INSERT INTO public.users VALUES (30, 'user_1792533923064');
INSERT INTO public.users VALUES (31, 'user_1792533923063');
INSERT INTO public.users VALUES (32, 'user_1792534125408');
INSERT INTO public.users VALUES (33, 'user_1792534125407');
INSERT INTO public.users VALUES (34, 'user_1792534152372');
INSERT INTO public.users VALUES (35, 'user_1792534152371');
INSERT INTO public.users VALUES (36, 'user_1792534170144');
INSERT INTO public.users VALUES (37, 'user_1792534170143');
INSERT INTO public.users VALUES (38, 'user_1792534175533');
INSERT INTO public.users VALUES (39, 'user_1792534175532');
INSERT INTO public.users VALUES (40, 'user_1792534213104');
INSERT INTO public.users VALUES (41, 'user_1792534213103');
INSERT INTO public.users VALUES (42, 'user_1792534222301');
INSERT INTO public.users VALUES (43, 'user_1792534222300');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 106, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 43, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: games games_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

