--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-05-27 20:39:20

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 2232 (class 1262 OID 16393)
-- Name: candyUCAB; Type: DATABASE; Schema: -; Owner: postgres
--

CREATE DATABASE "candyUCAB" WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';


ALTER DATABASE "candyUCAB" OWNER TO postgres;

\connect "candyUCAB"

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2235 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 193 (class 1259 OID 16482)
-- Name: Ing_ing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ing_ing" (
    "Ing_id" integer NOT NULL,
    "FkIngrediente1" integer NOT NULL,
    "FkIngrediente2" integer NOT NULL
);


ALTER TABLE public."Ing_ing" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16480)
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ing_ing_Ing_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ing_ing_Ing_id_seq" OWNER TO postgres;

--
-- TOC entry 2236 (class 0 OID 0)
-- Dependencies: 192
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ing_ing_Ing_id_seq" OWNED BY public."Ing_ing"."Ing_id";


--
-- TOC entry 184 (class 1259 OID 16421)
-- Name: Ped_Pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ped_Pro" (
    "Ped_precio" numeric NOT NULL,
    "Ped_cantidad" integer NOT NULL,
    "FkTienda" integer NOT NULL,
    "FkProducto" integer NOT NULL,
    "FkPedido" integer NOT NULL,
    "Ped_id" integer NOT NULL
);


ALTER TABLE public."Ped_Pro" OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 16521)
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Ped_Pro_Ped_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Ped_Pro_Ped_id_seq" OWNER TO postgres;

--
-- TOC entry 2237 (class 0 OID 0)
-- Dependencies: 197
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ped_Pro_Ped_id_seq" OWNED BY public."Ped_Pro"."Ped_id";


--
-- TOC entry 187 (class 1259 OID 16439)
-- Name: Pedido_tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pedido_tienda" (
    "Ped_descripcion" character varying(200)[] NOT NULL,
    "Ped_id" integer NOT NULL
);


ALTER TABLE public."Pedido_tienda" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16548)
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pedido_tienda_Ped_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pedido_tienda_Ped_id_seq" OWNER TO postgres;

--
-- TOC entry 2238 (class 0 OID 0)
-- Dependencies: 200
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pedido_tienda_Ped_id_seq" OWNED BY public."Pedido_tienda"."Ped_id";


--
-- TOC entry 189 (class 1259 OID 16462)
-- Name: Pre_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pre_pro" (
    "FkProducto" integer NOT NULL,
    "FkPresupuesto" integer NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE public."Pre_pro" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16571)
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Pre_pro_Pre_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Pre_pro_Pre_id_seq" OWNER TO postgres;

--
-- TOC entry 2239 (class 0 OID 0)
-- Dependencies: 202
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pre_pro_Pre_id_seq" OWNED BY public."Pre_pro"."Pre_id";


--
-- TOC entry 188 (class 1259 OID 16447)
-- Name: Presupuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Presupuesto" (
    "Pre_descripcion" character varying(200)[] NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE public."Presupuesto" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16560)
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Presupuesto_Pre_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Presupuesto_Pre_id_seq" OWNER TO postgres;

--
-- TOC entry 2240 (class 0 OID 0)
-- Dependencies: 201
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Presupuesto_Pre_id_seq" OWNED BY public."Presupuesto"."Pre_id";


--
-- TOC entry 182 (class 1259 OID 16399)
-- Name: Privilegio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Privilegio" (
    "Pri_nombre" character varying(30)[] NOT NULL,
    "Pri_id" integer NOT NULL
);


ALTER TABLE public."Privilegio" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16499)
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Privilegio_Pri_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Privilegio_Pri_id_seq" OWNER TO postgres;

--
-- TOC entry 2241 (class 0 OID 0)
-- Dependencies: 195
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Privilegio_Pri_id_seq" OWNED BY public."Privilegio"."Pri_id";


--
-- TOC entry 183 (class 1259 OID 16413)
-- Name: Rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol" (
    "Rol_tipo" character varying(50)[] NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE public."Rol" OWNER TO postgres;

--
-- TOC entry 181 (class 1259 OID 16394)
-- Name: Rol_Priv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol_Priv" (
    "FkRol" integer NOT NULL,
    "FkPrivilegio" integer NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE public."Rol_Priv" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16490)
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rol_Priv_Rol_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rol_Priv_Rol_id_seq" OWNER TO postgres;

--
-- TOC entry 2242 (class 0 OID 0)
-- Dependencies: 194
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rol_Priv_Rol_id_seq" OWNED BY public."Rol_Priv"."Rol_id";


--
-- TOC entry 196 (class 1259 OID 16510)
-- Name: Rol_Rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Rol_Rol_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Rol_Rol_id_seq" OWNER TO postgres;

--
-- TOC entry 2243 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rol_Rol_id_seq" OWNED BY public."Rol"."Rol_id";


--
-- TOC entry 190 (class 1259 OID 16467)
-- Name: Sta_ped; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Sta_ped" (
    "Sta_finicial" date NOT NULL,
    "Sta_ffinal" date,
    "FkStatus" integer NOT NULL,
    "FkPedido" integer NOT NULL,
    "Sta_id" integer NOT NULL
);


ALTER TABLE public."Sta_ped" OWNER TO postgres;

--
-- TOC entry 203 (class 1259 OID 16579)
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Sta_ped_Sta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Sta_ped_Sta_id_seq" OWNER TO postgres;

--
-- TOC entry 2244 (class 0 OID 0)
-- Dependencies: 203
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sta_ped_Sta_id_seq" OWNED BY public."Sta_ped"."Sta_id";


--
-- TOC entry 191 (class 1259 OID 16472)
-- Name: Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Status" (
    "Sta_tipo" character varying(50)[] NOT NULL,
    "Sta_id" integer NOT NULL
);


ALTER TABLE public."Status" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16587)
-- Name: Status_Sta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Status_Sta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Status_Sta_id_seq" OWNER TO postgres;

--
-- TOC entry 2245 (class 0 OID 0)
-- Dependencies: 204
-- Name: Status_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Status_Sta_id_seq" OWNED BY public."Status"."Sta_id";


--
-- TOC entry 185 (class 1259 OID 16429)
-- Name: Tie_Pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tie_Pro" (
    "Tie_cantidad" integer NOT NULL,
    "FkProducto" integer NOT NULL,
    "FkPedido_tienda" integer NOT NULL,
    "Tie_id" integer NOT NULL
);


ALTER TABLE public."Tie_Pro" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16532)
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tie_Pro_Tie_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tie_Pro_Tie_id_seq" OWNER TO postgres;

--
-- TOC entry 2246 (class 0 OID 0)
-- Dependencies: 198
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tie_Pro_Tie_id_seq" OWNED BY public."Tie_Pro"."Tie_id";


--
-- TOC entry 186 (class 1259 OID 16434)
-- Name: Tie_sta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Tie_sta" (
    "Tie_finicial" date NOT NULL,
    "Tie_ffinal" date,
    "FkStatus" integer NOT NULL,
    "FkPedido_tienda" integer NOT NULL,
    "Tie_id" integer NOT NULL
);


ALTER TABLE public."Tie_sta" OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 16540)
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public."Tie_sta_Tie_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public."Tie_sta_Tie_id_seq" OWNER TO postgres;

--
-- TOC entry 2247 (class 0 OID 0)
-- Dependencies: 199
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tie_sta_Tie_id_seq" OWNED BY public."Tie_sta"."Tie_id";


--
-- TOC entry 2064 (class 2604 OID 16485)
-- Name: Ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ing_ing" ALTER COLUMN "Ing_id" SET DEFAULT nextval('public."Ing_ing_Ing_id_seq"'::regclass);


--
-- TOC entry 2056 (class 2604 OID 16523)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ped_Pro" ALTER COLUMN "Ped_id" SET DEFAULT nextval('public."Ped_Pro_Ped_id_seq"'::regclass);


--
-- TOC entry 2059 (class 2604 OID 16550)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedido_tienda" ALTER COLUMN "Ped_id" SET DEFAULT nextval('public."Pedido_tienda_Ped_id_seq"'::regclass);


--
-- TOC entry 2061 (class 2604 OID 16573)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pre_pro" ALTER COLUMN "Pre_id" SET DEFAULT nextval('public."Pre_pro_Pre_id_seq"'::regclass);


--
-- TOC entry 2060 (class 2604 OID 16562)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Presupuesto" ALTER COLUMN "Pre_id" SET DEFAULT nextval('public."Presupuesto_Pre_id_seq"'::regclass);


--
-- TOC entry 2054 (class 2604 OID 16501)
-- Name: Pri_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Privilegio" ALTER COLUMN "Pri_id" SET DEFAULT nextval('public."Privilegio_Pri_id_seq"'::regclass);


--
-- TOC entry 2055 (class 2604 OID 16512)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol" ALTER COLUMN "Rol_id" SET DEFAULT nextval('public."Rol_Rol_id_seq"'::regclass);


--
-- TOC entry 2053 (class 2604 OID 16492)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_Priv" ALTER COLUMN "Rol_id" SET DEFAULT nextval('public."Rol_Priv_Rol_id_seq"'::regclass);


--
-- TOC entry 2062 (class 2604 OID 16581)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sta_ped" ALTER COLUMN "Sta_id" SET DEFAULT nextval('public."Sta_ped_Sta_id_seq"'::regclass);


--
-- TOC entry 2063 (class 2604 OID 16589)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status" ALTER COLUMN "Sta_id" SET DEFAULT nextval('public."Status_Sta_id_seq"'::regclass);


--
-- TOC entry 2057 (class 2604 OID 16534)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_Pro" ALTER COLUMN "Tie_id" SET DEFAULT nextval('public."Tie_Pro_Tie_id_seq"'::regclass);


--
-- TOC entry 2058 (class 2604 OID 16542)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_sta" ALTER COLUMN "Tie_id" SET DEFAULT nextval('public."Tie_sta_Tie_id_seq"'::regclass);


--
-- TOC entry 2215 (class 0 OID 16482)
-- Dependencies: 193
-- Data for Name: Ing_ing; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2248 (class 0 OID 0)
-- Dependencies: 192
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ing_ing_Ing_id_seq"', 1, false);


--
-- TOC entry 2206 (class 0 OID 16421)
-- Dependencies: 184
-- Data for Name: Ped_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2249 (class 0 OID 0)
-- Dependencies: 197
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ped_Pro_Ped_id_seq"', 1, false);


--
-- TOC entry 2209 (class 0 OID 16439)
-- Dependencies: 187
-- Data for Name: Pedido_tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2250 (class 0 OID 0)
-- Dependencies: 200
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pedido_tienda_Ped_id_seq"', 1, false);


--
-- TOC entry 2211 (class 0 OID 16462)
-- Dependencies: 189
-- Data for Name: Pre_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2251 (class 0 OID 0)
-- Dependencies: 202
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pre_pro_Pre_id_seq"', 1, false);


--
-- TOC entry 2210 (class 0 OID 16447)
-- Dependencies: 188
-- Data for Name: Presupuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2252 (class 0 OID 0)
-- Dependencies: 201
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Presupuesto_Pre_id_seq"', 1, false);


--
-- TOC entry 2204 (class 0 OID 16399)
-- Dependencies: 182
-- Data for Name: Privilegio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2253 (class 0 OID 0)
-- Dependencies: 195
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Privilegio_Pri_id_seq"', 1, false);


--
-- TOC entry 2205 (class 0 OID 16413)
-- Dependencies: 183
-- Data for Name: Rol; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2203 (class 0 OID 16394)
-- Dependencies: 181
-- Data for Name: Rol_Priv; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2254 (class 0 OID 0)
-- Dependencies: 194
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_Priv_Rol_id_seq"', 1, false);


--
-- TOC entry 2255 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_Rol_id_seq"', 1, false);


--
-- TOC entry 2212 (class 0 OID 16467)
-- Dependencies: 190
-- Data for Name: Sta_ped; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2256 (class 0 OID 0)
-- Dependencies: 203
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sta_ped_Sta_id_seq"', 1, false);


--
-- TOC entry 2213 (class 0 OID 16472)
-- Dependencies: 191
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2257 (class 0 OID 0)
-- Dependencies: 204
-- Name: Status_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Status_Sta_id_seq"', 1, false);


--
-- TOC entry 2207 (class 0 OID 16429)
-- Dependencies: 185
-- Data for Name: Tie_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2258 (class 0 OID 0)
-- Dependencies: 198
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tie_Pro_Tie_id_seq"', 1, false);


--
-- TOC entry 2208 (class 0 OID 16434)
-- Dependencies: 186
-- Data for Name: Tie_sta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2259 (class 0 OID 0)
-- Dependencies: 199
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tie_sta_Tie_id_seq"', 1, false);


--
-- TOC entry 2088 (class 2606 OID 16487)
-- Name: PK_Ing_ing; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ing_ing"
    ADD CONSTRAINT "PK_Ing_ing" PRIMARY KEY ("Ing_id", "FkIngrediente1", "FkIngrediente2");


--
-- TOC entry 2072 (class 2606 OID 16531)
-- Name: PK_Ped_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ped_Pro"
    ADD CONSTRAINT "PK_Ped_pro" PRIMARY KEY ("Ped_id", "FkTienda", "FkPedido", "FkProducto");


--
-- TOC entry 2078 (class 2606 OID 16558)
-- Name: PK_Pedido_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedido_tienda"
    ADD CONSTRAINT "PK_Pedido_tienda" PRIMARY KEY ("Ped_id");


--
-- TOC entry 2082 (class 2606 OID 16578)
-- Name: PK_Pre_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pre_pro"
    ADD CONSTRAINT "PK_Pre_pro" PRIMARY KEY ("Pre_id", "FkProducto", "FkPresupuesto");


--
-- TOC entry 2080 (class 2606 OID 16570)
-- Name: PK_Presupuesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Presupuesto"
    ADD CONSTRAINT "PK_Presupuesto" PRIMARY KEY ("Pre_id");


--
-- TOC entry 2068 (class 2606 OID 16509)
-- Name: PK_Privilegio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Privilegio"
    ADD CONSTRAINT "PK_Privilegio" PRIMARY KEY ("Pri_id");


--
-- TOC entry 2070 (class 2606 OID 16520)
-- Name: PK_Rol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol"
    ADD CONSTRAINT "PK_Rol" PRIMARY KEY ("Rol_id");


--
-- TOC entry 2066 (class 2606 OID 16498)
-- Name: PK_Rol_priv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_Priv"
    ADD CONSTRAINT "PK_Rol_priv" PRIMARY KEY ("Rol_id", "FkRol", "FkPrivilegio");


--
-- TOC entry 2084 (class 2606 OID 16586)
-- Name: PK_Sta_ped; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sta_ped"
    ADD CONSTRAINT "PK_Sta_ped" PRIMARY KEY ("Sta_id", "FkPedido", "FkStatus");


--
-- TOC entry 2086 (class 2606 OID 16597)
-- Name: PK_Status; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Sta_id");


--
-- TOC entry 2074 (class 2606 OID 16539)
-- Name: PK_Tie_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_Pro"
    ADD CONSTRAINT "PK_Tie_pro" PRIMARY KEY ("Tie_id", "FkProducto", "FkPedido_tienda");


--
-- TOC entry 2076 (class 2606 OID 16547)
-- Name: PK_Tie_sta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_sta"
    ADD CONSTRAINT "PK_Tie_sta" PRIMARY KEY ("Tie_id", "FkStatus", "FkPedido_tienda");


--
-- TOC entry 2234 (class 0 OID 0)
-- Dependencies: 6
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-05-27 20:39:20

--
-- PostgreSQL database dump complete
--

