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

DROP DATABASE worldcup;
--
-- Name: worldcup; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE worldcup WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE worldcup OWNER TO freecodecamp;

\connect worldcup

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
    year integer NOT NULL,
    round character varying NOT NULL,
    winner_id integer NOT NULL,
    opponent_id integer NOT NULL,
    winner_goals integer NOT NULL,
    opponent_goals integer NOT NULL
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
-- Name: teams; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.teams (
    team_id integer NOT NULL,
    name character varying(30) NOT NULL
);


ALTER TABLE public.teams OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.teams_team_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.teams_team_id_seq OWNER TO freecodecamp;

--
-- Name: teams_team_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.teams_team_id_seq OWNED BY public.teams.team_id;


--
-- Name: games game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games ALTER COLUMN game_id SET DEFAULT nextval('public.games_game_id_seq'::regclass);


--
-- Name: teams team_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams ALTER COLUMN team_id SET DEFAULT nextval('public.teams_team_id_seq'::regclass);


--
-- Data for Name: games; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.games VALUES (60, 2018, 'Final', 2, 4, 4, 2);
INSERT INTO public.games VALUES (61, 2018, 'Third Place', 3, 7, 2, 0);
INSERT INTO public.games VALUES (62, 2018, 'Semi-Final', 4, 7, 2, 1);
INSERT INTO public.games VALUES (63, 2018, 'Semi-Final', 2, 3, 1, 0);
INSERT INTO public.games VALUES (64, 2018, 'Quarter-Final', 4, 15, 3, 2);
INSERT INTO public.games VALUES (65, 2018, 'Quarter-Final', 7, 11, 2, 0);
INSERT INTO public.games VALUES (66, 2018, 'Quarter-Final', 3, 13, 2, 1);
INSERT INTO public.games VALUES (67, 2018, 'Quarter-Final', 2, 16, 2, 0);
INSERT INTO public.games VALUES (68, 2018, 'Eighth-Final', 7, 27, 2, 1);
INSERT INTO public.games VALUES (69, 2018, 'Eighth-Final', 11, 53, 1, 0);
INSERT INTO public.games VALUES (70, 2018, 'Eighth-Final', 3, 55, 3, 2);
INSERT INTO public.games VALUES (71, 2018, 'Eighth-Final', 13, 57, 2, 0);
INSERT INTO public.games VALUES (72, 2018, 'Eighth-Final', 4, 59, 2, 1);
INSERT INTO public.games VALUES (73, 2018, 'Eighth-Final', 15, 61, 2, 1);
INSERT INTO public.games VALUES (74, 2018, 'Eighth-Final', 16, 63, 2, 1);
INSERT INTO public.games VALUES (75, 2018, 'Eighth-Final', 2, 20, 4, 3);
INSERT INTO public.games VALUES (76, 2014, 'Final', 18, 20, 1, 0);
INSERT INTO public.games VALUES (77, 2014, 'Third Place', 19, 13, 3, 0);
INSERT INTO public.games VALUES (78, 2014, 'Semi-Final', 20, 19, 1, 0);
INSERT INTO public.games VALUES (79, 2014, 'Semi-Final', 18, 13, 7, 1);
INSERT INTO public.games VALUES (80, 2014, 'Quarter-Final', 19, 31, 1, 0);
INSERT INTO public.games VALUES (81, 2014, 'Quarter-Final', 20, 3, 1, 0);
INSERT INTO public.games VALUES (82, 2014, 'Quarter-Final', 13, 27, 2, 1);
INSERT INTO public.games VALUES (83, 2014, 'Quarter-Final', 18, 2, 1, 0);
INSERT INTO public.games VALUES (84, 2014, 'Eighth-Final', 13, 119, 2, 1);
INSERT INTO public.games VALUES (85, 2014, 'Eighth-Final', 27, 16, 2, 0);
INSERT INTO public.games VALUES (86, 2014, 'Eighth-Final', 2, 123, 2, 0);
INSERT INTO public.games VALUES (87, 2014, 'Eighth-Final', 18, 125, 2, 1);
INSERT INTO public.games VALUES (88, 2014, 'Eighth-Final', 19, 57, 2, 1);
INSERT INTO public.games VALUES (89, 2014, 'Eighth-Final', 31, 129, 2, 1);
INSERT INTO public.games VALUES (90, 2014, 'Eighth-Final', 20, 53, 1, 0);
INSERT INTO public.games VALUES (91, 2014, 'Eighth-Final', 3, 133, 2, 1);


--
-- Data for Name: teams; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.teams VALUES (2, 'France');
INSERT INTO public.teams VALUES (3, 'Belgium');
INSERT INTO public.teams VALUES (4, 'Croatia');
INSERT INTO public.teams VALUES (7, 'England');
INSERT INTO public.teams VALUES (11, 'Sweden');
INSERT INTO public.teams VALUES (13, 'Brazil');
INSERT INTO public.teams VALUES (15, 'Russia');
INSERT INTO public.teams VALUES (16, 'Uruguay');
INSERT INTO public.teams VALUES (18, 'Germany');
INSERT INTO public.teams VALUES (19, 'Netherlands');
INSERT INTO public.teams VALUES (20, 'Argentina');
INSERT INTO public.teams VALUES (27, 'Colombia');
INSERT INTO public.teams VALUES (31, 'Costa Rica');
INSERT INTO public.teams VALUES (53, 'Switzerland');
INSERT INTO public.teams VALUES (55, 'Japan');
INSERT INTO public.teams VALUES (57, 'Mexico');
INSERT INTO public.teams VALUES (59, 'Denmark');
INSERT INTO public.teams VALUES (61, 'Spain');
INSERT INTO public.teams VALUES (63, 'Portugal');
INSERT INTO public.teams VALUES (119, 'Chile');
INSERT INTO public.teams VALUES (123, 'Nigeria');
INSERT INTO public.teams VALUES (125, 'Algeria');
INSERT INTO public.teams VALUES (129, 'Greece');
INSERT INTO public.teams VALUES (133, 'United States');


--
-- Name: games_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.games_game_id_seq', 91, true);


--
-- Name: teams_team_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.teams_team_id_seq', 133, true);


--
-- Name: games games_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_pkey PRIMARY KEY (game_id);


--
-- Name: teams name; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT name UNIQUE (name);


--
-- Name: teams teams_name_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_name_key UNIQUE (name);


--
-- Name: teams teams_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.teams
    ADD CONSTRAINT teams_pkey PRIMARY KEY (team_id);


--
-- Name: games games_opponent_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_opponent_id_fkey FOREIGN KEY (opponent_id) REFERENCES public.teams(team_id);


--
-- Name: games games_winner_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.games
    ADD CONSTRAINT games_winner_id_fkey FOREIGN KEY (winner_id) REFERENCES public.teams(team_id);


--
-- PostgreSQL database dump complete
--

