--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.13

-- Started on 2018-05-28 01:14:52 -04

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12395)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2560 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 17677)
-- Name: Ing_ing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Ing_ing" (
    "Ing_id" integer NOT NULL,
    "FkIngrediente1" integer NOT NULL,
    "FkIngrediente2" integer NOT NULL
);


ALTER TABLE public."Ing_ing" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 17680)
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
-- TOC entry 2561 (class 0 OID 0)
-- Dependencies: 182
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ing_ing_Ing_id_seq" OWNED BY public."Ing_ing"."Ing_id";


--
-- TOC entry 183 (class 1259 OID 17682)
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
-- TOC entry 184 (class 1259 OID 17688)
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
-- TOC entry 2562 (class 0 OID 0)
-- Dependencies: 184
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Ped_Pro_Ped_id_seq" OWNED BY public."Ped_Pro"."Ped_id";


--
-- TOC entry 185 (class 1259 OID 17690)
-- Name: Pedido_tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pedido_tienda" (
    "Ped_descripcion" character varying(200)[] NOT NULL,
    "Ped_id" integer NOT NULL
);


ALTER TABLE public."Pedido_tienda" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 17696)
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
-- TOC entry 2563 (class 0 OID 0)
-- Dependencies: 186
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pedido_tienda_Ped_id_seq" OWNED BY public."Pedido_tienda"."Ped_id";


--
-- TOC entry 187 (class 1259 OID 17698)
-- Name: Pre_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Pre_pro" (
    "FkProducto" integer NOT NULL,
    "FkPresupuesto" integer NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE public."Pre_pro" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 17701)
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
-- TOC entry 2564 (class 0 OID 0)
-- Dependencies: 188
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Pre_pro_Pre_id_seq" OWNED BY public."Pre_pro"."Pre_id";


--
-- TOC entry 189 (class 1259 OID 17703)
-- Name: Presupuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Presupuesto" (
    "Pre_descripcion" character varying(200)[] NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE public."Presupuesto" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 17709)
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
-- TOC entry 2565 (class 0 OID 0)
-- Dependencies: 190
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Presupuesto_Pre_id_seq" OWNED BY public."Presupuesto"."Pre_id";


--
-- TOC entry 191 (class 1259 OID 17711)
-- Name: Privilegio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Privilegio" (
    "Pri_nombre" character varying(30)[] NOT NULL,
    "Pri_id" integer NOT NULL
);


ALTER TABLE public."Privilegio" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 17717)
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
-- TOC entry 2566 (class 0 OID 0)
-- Dependencies: 192
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Privilegio_Pri_id_seq" OWNED BY public."Privilegio"."Pri_id";


--
-- TOC entry 193 (class 1259 OID 17719)
-- Name: Rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol" (
    "Rol_tipo" character varying(50)[] NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE public."Rol" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 17725)
-- Name: Rol_Priv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Rol_Priv" (
    "FkRol" integer NOT NULL,
    "FkPrivilegio" integer NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE public."Rol_Priv" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 17728)
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
-- TOC entry 2567 (class 0 OID 0)
-- Dependencies: 195
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rol_Priv_Rol_id_seq" OWNED BY public."Rol_Priv"."Rol_id";


--
-- TOC entry 196 (class 1259 OID 17730)
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
-- TOC entry 2568 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Rol_Rol_id_seq" OWNED BY public."Rol"."Rol_id";


--
-- TOC entry 197 (class 1259 OID 17732)
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
-- TOC entry 198 (class 1259 OID 17735)
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
-- TOC entry 2569 (class 0 OID 0)
-- Dependencies: 198
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Sta_ped_Sta_id_seq" OWNED BY public."Sta_ped"."Sta_id";


--
-- TOC entry 199 (class 1259 OID 17737)
-- Name: Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public."Status" (
    "Sta_tipo" character varying(50)[] NOT NULL,
    "Sta_id" integer NOT NULL
);


ALTER TABLE public."Status" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 17743)
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
-- TOC entry 2570 (class 0 OID 0)
-- Dependencies: 200
-- Name: Status_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Status_Sta_id_seq" OWNED BY public."Status"."Sta_id";


--
-- TOC entry 201 (class 1259 OID 17745)
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
-- TOC entry 202 (class 1259 OID 17748)
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
-- TOC entry 2571 (class 0 OID 0)
-- Dependencies: 202
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tie_Pro_Tie_id_seq" OWNED BY public."Tie_Pro"."Tie_id";


--
-- TOC entry 203 (class 1259 OID 17750)
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
-- TOC entry 204 (class 1259 OID 17753)
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
-- TOC entry 2572 (class 0 OID 0)
-- Dependencies: 204
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public."Tie_sta_Tie_id_seq" OWNED BY public."Tie_sta"."Tie_id";


--
-- TOC entry 234 (class 1259 OID 18218)
-- Name: cli_lug; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cli_lug (
    fkcliente integer NOT NULL,
    fklugar integer NOT NULL,
    cli_id integer NOT NULL
);


ALTER TABLE public.cli_lug OWNER TO postgres;

--
-- TOC entry 233 (class 1259 OID 18216)
-- Name: cli_lug_cli_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cli_lug_cli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cli_lug_cli_id_seq OWNER TO postgres;

--
-- TOC entry 2573 (class 0 OID 0)
-- Dependencies: 233
-- Name: cli_lug_cli_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cli_lug_cli_id_seq OWNED BY public.cli_lug.cli_id;


--
-- TOC entry 232 (class 1259 OID 18202)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cliente (
    cli_id integer NOT NULL,
    cli_rif character varying(50) NOT NULL,
    cli_correo character varying(50) NOT NULL,
    cli_pagina_web character varying(50),
    cli_total_capital numeric,
    cli_razon_social character varying(50),
    cli_deno_comercial character varying(50),
    cli_ci integer,
    cli_nombre character varying(50),
    cli_apellido character varying(50),
    cli_numcarnet character varying(50) NOT NULL,
    cli_tipo character varying(1) NOT NULL,
    CONSTRAINT check_tipo CHECK (((cli_tipo)::text = ANY ((ARRAY['J'::character varying, 'N'::character varying])::text[])))
);


ALTER TABLE public.cliente OWNER TO postgres;

--
-- TOC entry 231 (class 1259 OID 18200)
-- Name: cliente_cli_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cliente_cli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.cliente_cli_id_seq OWNER TO postgres;

--
-- TOC entry 2574 (class 0 OID 0)
-- Dependencies: 231
-- Name: cliente_cli_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cliente_cli_id_seq OWNED BY public.cliente.cli_id;


--
-- TOC entry 240 (class 1259 OID 18242)
-- Name: contacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.contacto (
    con_id integer NOT NULL,
    con_nombre character varying(50) NOT NULL,
    fkcliente integer
);


ALTER TABLE public.contacto OWNER TO postgres;

--
-- TOC entry 239 (class 1259 OID 18240)
-- Name: contacto_con_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.contacto_con_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.contacto_con_id_seq OWNER TO postgres;

--
-- TOC entry 2575 (class 0 OID 0)
-- Dependencies: 239
-- Name: contacto_con_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.contacto_con_id_seq OWNED BY public.contacto.con_id;


--
-- TOC entry 205 (class 1259 OID 17755)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departamento (
    dep_id integer NOT NULL,
    dep_nombre character varying(50) NOT NULL,
    dep_tipo character varying(50) NOT NULL,
    fktienda integer NOT NULL
);


ALTER TABLE public.departamento OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17758)
-- Name: departamento_dep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.departamento_dep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.departamento_dep_id_seq OWNER TO postgres;

--
-- TOC entry 2576 (class 0 OID 0)
-- Dependencies: 206
-- Name: departamento_dep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.departamento_dep_id_seq OWNED BY public.departamento.dep_id;


--
-- TOC entry 254 (class 1259 OID 18305)
-- Name: descuento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.descuento (
    des_id integer NOT NULL,
    des_new_precio numeric NOT NULL,
    des_finicio date NOT NULL,
    des_ffinal date NOT NULL,
    fkdiario integer,
    fkproducto integer
);


ALTER TABLE public.descuento OWNER TO postgres;

--
-- TOC entry 253 (class 1259 OID 18303)
-- Name: descuento_des_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.descuento_des_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.descuento_des_id_seq OWNER TO postgres;

--
-- TOC entry 2577 (class 0 OID 0)
-- Dependencies: 253
-- Name: descuento_des_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.descuento_des_id_seq OWNED BY public.descuento.des_id;


--
-- TOC entry 252 (class 1259 OID 18297)
-- Name: diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.diario (
    dia_id integer NOT NULL,
    dia_femision date NOT NULL,
    dia_fvencimiento date NOT NULL
);


ALTER TABLE public.diario OWNER TO postgres;

--
-- TOC entry 251 (class 1259 OID 18295)
-- Name: diario_dia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.diario_dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.diario_dia_id_seq OWNER TO postgres;

--
-- TOC entry 2578 (class 0 OID 0)
-- Dependencies: 251
-- Name: diario_dia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.diario_dia_id_seq OWNED BY public.diario.dia_id;


--
-- TOC entry 207 (class 1259 OID 17760)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.empleado (
    emp_id integer NOT NULL,
    emp_nombre character varying(50) NOT NULL,
    emp_fecha date NOT NULL
);


ALTER TABLE public.empleado OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17763)
-- Name: empleado_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.empleado_emp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.empleado_emp_id_seq OWNER TO postgres;

--
-- TOC entry 2579 (class 0 OID 0)
-- Dependencies: 208
-- Name: empleado_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.empleado_emp_id_seq OWNED BY public.empleado.emp_id;


--
-- TOC entry 209 (class 1259 OID 17765)
-- Name: horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horario (
    hor_id integer NOT NULL,
    hor_dia character varying(10) NOT NULL,
    hor_hora_entrada date NOT NULL,
    hor_hora_salida date NOT NULL,
    CONSTRAINT check_dia CHECK (((hor_dia)::text = ANY (ARRAY[('lunes'::character varying)::text, ('martes'::character varying)::text, ('miercoles'::character varying)::text, ('jueves'::character varying)::text, ('viernes'::character varying)::text, ('sabado'::character varying)::text, ('domingo'::character varying)::text])))
);


ALTER TABLE public.horario OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17769)
-- Name: horario_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.horario_empleado (
    hor_id integer NOT NULL,
    fkempleado integer NOT NULL,
    fkhorario integer NOT NULL,
    fktienda integer NOT NULL
);


ALTER TABLE public.horario_empleado OWNER TO postgres;

--
-- TOC entry 211 (class 1259 OID 17772)
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horario_empleado_hor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horario_empleado_hor_id_seq OWNER TO postgres;

--
-- TOC entry 2580 (class 0 OID 0)
-- Dependencies: 211
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horario_empleado_hor_id_seq OWNED BY public.horario_empleado.hor_id;


--
-- TOC entry 212 (class 1259 OID 17774)
-- Name: horario_hor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.horario_hor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.horario_hor_id_seq OWNER TO postgres;

--
-- TOC entry 2581 (class 0 OID 0)
-- Dependencies: 212
-- Name: horario_hor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.horario_hor_id_seq OWNED BY public.horario.hor_id;


--
-- TOC entry 213 (class 1259 OID 17776)
-- Name: ing_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ing_pro (
    ing_id integer NOT NULL,
    pkproducto integer NOT NULL,
    pkingrediente integer NOT NULL
);


ALTER TABLE public.ing_pro OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17779)
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ing_pro_ing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ing_pro_ing_id_seq OWNER TO postgres;

--
-- TOC entry 2582 (class 0 OID 0)
-- Dependencies: 214
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ing_pro_ing_id_seq OWNED BY public.ing_pro.ing_id;


--
-- TOC entry 215 (class 1259 OID 17781)
-- Name: ingrediente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ingrediente (
    ing_id integer NOT NULL,
    ing_nombre character varying(50) NOT NULL
);


ALTER TABLE public.ingrediente OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17784)
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ingrediente_ing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.ingrediente_ing_id_seq OWNER TO postgres;

--
-- TOC entry 2583 (class 0 OID 0)
-- Dependencies: 216
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ingrediente_ing_id_seq OWNED BY public.ingrediente.ing_id;


--
-- TOC entry 217 (class 1259 OID 17786)
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventario (
    inv_id integer NOT NULL,
    inv_cantidad integer NOT NULL,
    inv_precio double precision NOT NULL,
    fktienda integer NOT NULL
);


ALTER TABLE public.inventario OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17789)
-- Name: inventario_inv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventario_inv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.inventario_inv_id_seq OWNER TO postgres;

--
-- TOC entry 2584 (class 0 OID 0)
-- Dependencies: 218
-- Name: inventario_inv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventario_inv_id_seq OWNED BY public.inventario.inv_id;


--
-- TOC entry 236 (class 1259 OID 18226)
-- Name: lugar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lugar (
    lug_id integer NOT NULL,
    lug_tipo character varying(50) NOT NULL,
    lug_nombre character varying(50) NOT NULL,
    fklugar integer
);


ALTER TABLE public.lugar OWNER TO postgres;

--
-- TOC entry 235 (class 1259 OID 18224)
-- Name: lugar_lug_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lugar_lug_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.lugar_lug_id_seq OWNER TO postgres;

--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 235
-- Name: lugar_lug_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lugar_lug_id_seq OWNED BY public.lugar.lug_id;


--
-- TOC entry 248 (class 1259 OID 18277)
-- Name: metodo_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.metodo_pago (
    met_id integer NOT NULL,
    met_nombre_titular character varying(50) NOT NULL,
    met_efectivo numeric,
    met_fvencimiento date,
    met_num_tarjeta character varying(50),
    met_num_cheque character varying(50),
    met_banco character varying(50),
    met_tipo character varying(1) NOT NULL,
    CONSTRAINT check_met_tipo CHECK (((met_tipo)::text = ANY ((ARRAY['T'::character varying, 'C'::character varying, 'E'::character varying])::text[])))
);


ALTER TABLE public.metodo_pago OWNER TO postgres;

--
-- TOC entry 247 (class 1259 OID 18275)
-- Name: metodo_pago_met_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.metodo_pago_met_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.metodo_pago_met_id_seq OWNER TO postgres;

--
-- TOC entry 2586 (class 0 OID 0)
-- Dependencies: 247
-- Name: metodo_pago_met_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.metodo_pago_met_id_seq OWNED BY public.metodo_pago.met_id;


--
-- TOC entry 219 (class 1259 OID 17791)
-- Name: pasillo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pasillo (
    pas_id integer NOT NULL,
    pas_num_anaquel integer NOT NULL,
    pas_zona_pasillo integer NOT NULL,
    fktienda integer NOT NULL,
    fkproducto integer NOT NULL
);


ALTER TABLE public.pasillo OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17794)
-- Name: pasillo_pas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pasillo_pas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pasillo_pas_id_seq OWNER TO postgres;

--
-- TOC entry 2587 (class 0 OID 0)
-- Dependencies: 220
-- Name: pasillo_pas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pasillo_pas_id_seq OWNED BY public.pasillo.pas_id;


--
-- TOC entry 244 (class 1259 OID 18258)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pedido (
    ped_id integer NOT NULL,
    ped_descripcion character varying(50) NOT NULL,
    ped_fecha date NOT NULL,
    ped_cantidad integer NOT NULL,
    ped_total numeric NOT NULL,
    fkcliente integer,
    fkusuario integer
);


ALTER TABLE public.pedido OWNER TO postgres;

--
-- TOC entry 243 (class 1259 OID 18256)
-- Name: pedido_ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pedido_ped_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pedido_ped_id_seq OWNER TO postgres;

--
-- TOC entry 2588 (class 0 OID 0)
-- Dependencies: 243
-- Name: pedido_ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pedido_ped_id_seq OWNED BY public.pedido.ped_id;


--
-- TOC entry 221 (class 1259 OID 17796)
-- Name: pro_inv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.pro_inv (
    pro_id integer NOT NULL,
    fkproducto integer NOT NULL,
    fkinventario integer NOT NULL
);


ALTER TABLE public.pro_inv OWNER TO postgres;

--
-- TOC entry 222 (class 1259 OID 17799)
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.pro_inv_pro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.pro_inv_pro_id_seq OWNER TO postgres;

--
-- TOC entry 2589 (class 0 OID 0)
-- Dependencies: 222
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.pro_inv_pro_id_seq OWNED BY public.pro_inv.pro_id;


--
-- TOC entry 223 (class 1259 OID 17801)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.producto (
    pro_id integer NOT NULL,
    pro_nombre character varying(50) NOT NULL,
    pro_relleno character varying(50),
    pro_textura character varying(50) NOT NULL,
    pro_puntuacion integer NOT NULL,
    pro_azucar boolean,
    fksabor integer NOT NULL,
    fktipo integer NOT NULL
);


ALTER TABLE public.producto OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17804)
-- Name: producto_pro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.producto_pro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.producto_pro_id_seq OWNER TO postgres;

--
-- TOC entry 2590 (class 0 OID 0)
-- Dependencies: 224
-- Name: producto_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.producto_pro_id_seq OWNED BY public.producto.pro_id;


--
-- TOC entry 246 (class 1259 OID 18269)
-- Name: punto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.punto (
    pun_id integer NOT NULL,
    pun_cantidad integer NOT NULL,
    pun_fadquirido date NOT NULL,
    fkpedido integer,
    fkusuario integer
);


ALTER TABLE public.punto OWNER TO postgres;

--
-- TOC entry 245 (class 1259 OID 18267)
-- Name: punto_pun_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.punto_pun_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.punto_pun_id_seq OWNER TO postgres;

--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 245
-- Name: punto_pun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.punto_pun_id_seq OWNED BY public.punto.pun_id;


--
-- TOC entry 225 (class 1259 OID 17806)
-- Name: sabor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sabor (
    sab_id integer NOT NULL,
    sab_tipo character varying(50) NOT NULL,
    sab_nombre character varying(50) NOT NULL
);


ALTER TABLE public.sabor OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17809)
-- Name: sabor_sab_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sabor_sab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.sabor_sab_id_seq OWNER TO postgres;

--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 226
-- Name: sabor_sab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sabor_sab_id_seq OWNED BY public.sabor.sab_id;


--
-- TOC entry 242 (class 1259 OID 18250)
-- Name: telefono; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.telefono (
    tel_id integer NOT NULL,
    tel_numero character varying(50) NOT NULL,
    tel_tipo character varying(50) NOT NULL,
    fkcliente integer
);


ALTER TABLE public.telefono OWNER TO postgres;

--
-- TOC entry 241 (class 1259 OID 18248)
-- Name: telefono_tel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.telefono_tel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.telefono_tel_id_seq OWNER TO postgres;

--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 241
-- Name: telefono_tel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.telefono_tel_id_seq OWNED BY public.telefono.tel_id;


--
-- TOC entry 227 (class 1259 OID 17811)
-- Name: tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tienda (
    tie_id integer NOT NULL,
    tie_tipo character varying(20) NOT NULL,
    fklugar integer NOT NULL,
    CONSTRAINT check_tipo CHECK (((tie_tipo)::text = ANY (ARRAY[('MiniCandyUCAB'::character varying)::text, ('CandyUCAB'::character varying)::text])))
);


ALTER TABLE public.tienda OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17815)
-- Name: tienda_tie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tienda_tie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tienda_tie_id_seq OWNER TO postgres;

--
-- TOC entry 2594 (class 0 OID 0)
-- Dependencies: 228
-- Name: tienda_tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tienda_tie_id_seq OWNED BY public.tienda.tie_id;


--
-- TOC entry 229 (class 1259 OID 17817)
-- Name: tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.tipo (
    tip_id integer NOT NULL,
    tip_nombre character varying(50) NOT NULL
);


ALTER TABLE public.tipo OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17820)
-- Name: tipo_tip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.tipo_tip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tipo_tip_id_seq OWNER TO postgres;

--
-- TOC entry 2595 (class 0 OID 0)
-- Dependencies: 230
-- Name: tipo_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.tipo_tip_id_seq OWNED BY public.tipo.tip_id;


--
-- TOC entry 238 (class 1259 OID 18234)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.usuario (
    usu_id integer NOT NULL,
    usu_nombre character varying(50) NOT NULL,
    usu_contrasena character varying(50) NOT NULL,
    fkcliente integer,
    fkrol integer
);


ALTER TABLE public.usuario OWNER TO postgres;

--
-- TOC entry 237 (class 1259 OID 18232)
-- Name: usuario_usu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.usuario_usu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.usuario_usu_id_seq OWNER TO postgres;

--
-- TOC entry 2596 (class 0 OID 0)
-- Dependencies: 237
-- Name: usuario_usu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.usuario_usu_id_seq OWNED BY public.usuario.usu_id;


--
-- TOC entry 250 (class 1259 OID 18289)
-- Name: venta_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.venta_pago (
    ven_id integer NOT NULL,
    fkpunto integer,
    fkpedido integer,
    fkmetodo_pago integer
);


ALTER TABLE public.venta_pago OWNER TO postgres;

--
-- TOC entry 249 (class 1259 OID 18287)
-- Name: venta_pago_ven_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.venta_pago_ven_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.venta_pago_ven_id_seq OWNER TO postgres;

--
-- TOC entry 2597 (class 0 OID 0)
-- Dependencies: 249
-- Name: venta_pago_ven_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.venta_pago_ven_id_seq OWNED BY public.venta_pago.ven_id;


--
-- TOC entry 2245 (class 2604 OID 17822)
-- Name: Ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ing_ing" ALTER COLUMN "Ing_id" SET DEFAULT nextval('public."Ing_ing_Ing_id_seq"'::regclass);


--
-- TOC entry 2246 (class 2604 OID 17823)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ped_Pro" ALTER COLUMN "Ped_id" SET DEFAULT nextval('public."Ped_Pro_Ped_id_seq"'::regclass);


--
-- TOC entry 2247 (class 2604 OID 17824)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedido_tienda" ALTER COLUMN "Ped_id" SET DEFAULT nextval('public."Pedido_tienda_Ped_id_seq"'::regclass);


--
-- TOC entry 2248 (class 2604 OID 17825)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pre_pro" ALTER COLUMN "Pre_id" SET DEFAULT nextval('public."Pre_pro_Pre_id_seq"'::regclass);


--
-- TOC entry 2249 (class 2604 OID 17826)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Presupuesto" ALTER COLUMN "Pre_id" SET DEFAULT nextval('public."Presupuesto_Pre_id_seq"'::regclass);


--
-- TOC entry 2250 (class 2604 OID 17827)
-- Name: Pri_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Privilegio" ALTER COLUMN "Pri_id" SET DEFAULT nextval('public."Privilegio_Pri_id_seq"'::regclass);


--
-- TOC entry 2251 (class 2604 OID 17828)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol" ALTER COLUMN "Rol_id" SET DEFAULT nextval('public."Rol_Rol_id_seq"'::regclass);


--
-- TOC entry 2252 (class 2604 OID 17829)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_Priv" ALTER COLUMN "Rol_id" SET DEFAULT nextval('public."Rol_Priv_Rol_id_seq"'::regclass);


--
-- TOC entry 2253 (class 2604 OID 17830)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sta_ped" ALTER COLUMN "Sta_id" SET DEFAULT nextval('public."Sta_ped_Sta_id_seq"'::regclass);


--
-- TOC entry 2254 (class 2604 OID 17831)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status" ALTER COLUMN "Sta_id" SET DEFAULT nextval('public."Status_Sta_id_seq"'::regclass);


--
-- TOC entry 2255 (class 2604 OID 17832)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_Pro" ALTER COLUMN "Tie_id" SET DEFAULT nextval('public."Tie_Pro_Tie_id_seq"'::regclass);


--
-- TOC entry 2256 (class 2604 OID 17833)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_sta" ALTER COLUMN "Tie_id" SET DEFAULT nextval('public."Tie_sta_Tie_id_seq"'::regclass);


--
-- TOC entry 2274 (class 2604 OID 18221)
-- Name: cli_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cli_lug ALTER COLUMN cli_id SET DEFAULT nextval('public.cli_lug_cli_id_seq'::regclass);


--
-- TOC entry 2272 (class 2604 OID 18205)
-- Name: cli_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente ALTER COLUMN cli_id SET DEFAULT nextval('public.cliente_cli_id_seq'::regclass);


--
-- TOC entry 2277 (class 2604 OID 18245)
-- Name: con_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto ALTER COLUMN con_id SET DEFAULT nextval('public.contacto_con_id_seq'::regclass);


--
-- TOC entry 2257 (class 2604 OID 17834)
-- Name: dep_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento ALTER COLUMN dep_id SET DEFAULT nextval('public.departamento_dep_id_seq'::regclass);


--
-- TOC entry 2285 (class 2604 OID 18308)
-- Name: des_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.descuento ALTER COLUMN des_id SET DEFAULT nextval('public.descuento_des_id_seq'::regclass);


--
-- TOC entry 2284 (class 2604 OID 18300)
-- Name: dia_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diario ALTER COLUMN dia_id SET DEFAULT nextval('public.diario_dia_id_seq'::regclass);


--
-- TOC entry 2258 (class 2604 OID 17835)
-- Name: emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado ALTER COLUMN emp_id SET DEFAULT nextval('public.empleado_emp_id_seq'::regclass);


--
-- TOC entry 2259 (class 2604 OID 17836)
-- Name: hor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario ALTER COLUMN hor_id SET DEFAULT nextval('public.horario_hor_id_seq'::regclass);


--
-- TOC entry 2261 (class 2604 OID 17837)
-- Name: hor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario_empleado ALTER COLUMN hor_id SET DEFAULT nextval('public.horario_empleado_hor_id_seq'::regclass);


--
-- TOC entry 2262 (class 2604 OID 17838)
-- Name: ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ing_pro ALTER COLUMN ing_id SET DEFAULT nextval('public.ing_pro_ing_id_seq'::regclass);


--
-- TOC entry 2263 (class 2604 OID 17839)
-- Name: ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingrediente ALTER COLUMN ing_id SET DEFAULT nextval('public.ingrediente_ing_id_seq'::regclass);


--
-- TOC entry 2264 (class 2604 OID 17840)
-- Name: inv_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario ALTER COLUMN inv_id SET DEFAULT nextval('public.inventario_inv_id_seq'::regclass);


--
-- TOC entry 2275 (class 2604 OID 18229)
-- Name: lug_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugar ALTER COLUMN lug_id SET DEFAULT nextval('public.lugar_lug_id_seq'::regclass);


--
-- TOC entry 2281 (class 2604 OID 18280)
-- Name: met_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metodo_pago ALTER COLUMN met_id SET DEFAULT nextval('public.metodo_pago_met_id_seq'::regclass);


--
-- TOC entry 2265 (class 2604 OID 17841)
-- Name: pas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasillo ALTER COLUMN pas_id SET DEFAULT nextval('public.pasillo_pas_id_seq'::regclass);


--
-- TOC entry 2279 (class 2604 OID 18261)
-- Name: ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido ALTER COLUMN ped_id SET DEFAULT nextval('public.pedido_ped_id_seq'::regclass);


--
-- TOC entry 2266 (class 2604 OID 17842)
-- Name: pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pro_inv ALTER COLUMN pro_id SET DEFAULT nextval('public.pro_inv_pro_id_seq'::regclass);


--
-- TOC entry 2267 (class 2604 OID 17843)
-- Name: pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto ALTER COLUMN pro_id SET DEFAULT nextval('public.producto_pro_id_seq'::regclass);


--
-- TOC entry 2280 (class 2604 OID 18272)
-- Name: pun_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.punto ALTER COLUMN pun_id SET DEFAULT nextval('public.punto_pun_id_seq'::regclass);


--
-- TOC entry 2268 (class 2604 OID 17844)
-- Name: sab_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sabor ALTER COLUMN sab_id SET DEFAULT nextval('public.sabor_sab_id_seq'::regclass);


--
-- TOC entry 2278 (class 2604 OID 18253)
-- Name: tel_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefono ALTER COLUMN tel_id SET DEFAULT nextval('public.telefono_tel_id_seq'::regclass);


--
-- TOC entry 2269 (class 2604 OID 17845)
-- Name: tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda ALTER COLUMN tie_id SET DEFAULT nextval('public.tienda_tie_id_seq'::regclass);


--
-- TOC entry 2271 (class 2604 OID 17846)
-- Name: tip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo ALTER COLUMN tip_id SET DEFAULT nextval('public.tipo_tip_id_seq'::regclass);


--
-- TOC entry 2276 (class 2604 OID 18237)
-- Name: usu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario ALTER COLUMN usu_id SET DEFAULT nextval('public.usuario_usu_id_seq'::regclass);


--
-- TOC entry 2283 (class 2604 OID 18292)
-- Name: ven_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_pago ALTER COLUMN ven_id SET DEFAULT nextval('public.venta_pago_ven_id_seq'::regclass);


--
-- TOC entry 2478 (class 0 OID 17677)
-- Dependencies: 181
-- Data for Name: Ing_ing; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2598 (class 0 OID 0)
-- Dependencies: 182
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ing_ing_Ing_id_seq"', 1, false);


--
-- TOC entry 2480 (class 0 OID 17682)
-- Dependencies: 183
-- Data for Name: Ped_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2599 (class 0 OID 0)
-- Dependencies: 184
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Ped_Pro_Ped_id_seq"', 1, false);


--
-- TOC entry 2482 (class 0 OID 17690)
-- Dependencies: 185
-- Data for Name: Pedido_tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2600 (class 0 OID 0)
-- Dependencies: 186
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pedido_tienda_Ped_id_seq"', 1, false);


--
-- TOC entry 2484 (class 0 OID 17698)
-- Dependencies: 187
-- Data for Name: Pre_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2601 (class 0 OID 0)
-- Dependencies: 188
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Pre_pro_Pre_id_seq"', 1, false);


--
-- TOC entry 2486 (class 0 OID 17703)
-- Dependencies: 189
-- Data for Name: Presupuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2602 (class 0 OID 0)
-- Dependencies: 190
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Presupuesto_Pre_id_seq"', 1, false);


--
-- TOC entry 2488 (class 0 OID 17711)
-- Dependencies: 191
-- Data for Name: Privilegio; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2603 (class 0 OID 0)
-- Dependencies: 192
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Privilegio_Pri_id_seq"', 1, false);


--
-- TOC entry 2490 (class 0 OID 17719)
-- Dependencies: 193
-- Data for Name: Rol; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2491 (class 0 OID 17725)
-- Dependencies: 194
-- Data for Name: Rol_Priv; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2604 (class 0 OID 0)
-- Dependencies: 195
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_Priv_Rol_id_seq"', 1, false);


--
-- TOC entry 2605 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Rol_Rol_id_seq"', 1, false);


--
-- TOC entry 2494 (class 0 OID 17732)
-- Dependencies: 197
-- Data for Name: Sta_ped; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2606 (class 0 OID 0)
-- Dependencies: 198
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Sta_ped_Sta_id_seq"', 1, false);


--
-- TOC entry 2496 (class 0 OID 17737)
-- Dependencies: 199
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2607 (class 0 OID 0)
-- Dependencies: 200
-- Name: Status_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Status_Sta_id_seq"', 1, false);


--
-- TOC entry 2498 (class 0 OID 17745)
-- Dependencies: 201
-- Data for Name: Tie_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2608 (class 0 OID 0)
-- Dependencies: 202
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tie_Pro_Tie_id_seq"', 1, false);


--
-- TOC entry 2500 (class 0 OID 17750)
-- Dependencies: 203
-- Data for Name: Tie_sta; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2609 (class 0 OID 0)
-- Dependencies: 204
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."Tie_sta_Tie_id_seq"', 1, false);


--
-- TOC entry 2531 (class 0 OID 18218)
-- Dependencies: 234
-- Data for Name: cli_lug; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2610 (class 0 OID 0)
-- Dependencies: 233
-- Name: cli_lug_cli_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cli_lug_cli_id_seq', 1, false);


--
-- TOC entry 2529 (class 0 OID 18202)
-- Dependencies: 232
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2611 (class 0 OID 0)
-- Dependencies: 231
-- Name: cliente_cli_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cliente_cli_id_seq', 1, false);


--
-- TOC entry 2537 (class 0 OID 18242)
-- Dependencies: 240
-- Data for Name: contacto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2612 (class 0 OID 0)
-- Dependencies: 239
-- Name: contacto_con_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.contacto_con_id_seq', 1, false);


--
-- TOC entry 2502 (class 0 OID 17755)
-- Dependencies: 205
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2613 (class 0 OID 0)
-- Dependencies: 206
-- Name: departamento_dep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.departamento_dep_id_seq', 1, false);


--
-- TOC entry 2551 (class 0 OID 18305)
-- Dependencies: 254
-- Data for Name: descuento; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2614 (class 0 OID 0)
-- Dependencies: 253
-- Name: descuento_des_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.descuento_des_id_seq', 1, false);


--
-- TOC entry 2549 (class 0 OID 18297)
-- Dependencies: 252
-- Data for Name: diario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2615 (class 0 OID 0)
-- Dependencies: 251
-- Name: diario_dia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.diario_dia_id_seq', 1, false);


--
-- TOC entry 2504 (class 0 OID 17760)
-- Dependencies: 207
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2616 (class 0 OID 0)
-- Dependencies: 208
-- Name: empleado_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.empleado_emp_id_seq', 1, false);


--
-- TOC entry 2506 (class 0 OID 17765)
-- Dependencies: 209
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2507 (class 0 OID 17769)
-- Dependencies: 210
-- Data for Name: horario_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2617 (class 0 OID 0)
-- Dependencies: 211
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horario_empleado_hor_id_seq', 1, false);


--
-- TOC entry 2618 (class 0 OID 0)
-- Dependencies: 212
-- Name: horario_hor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.horario_hor_id_seq', 1, false);


--
-- TOC entry 2510 (class 0 OID 17776)
-- Dependencies: 213
-- Data for Name: ing_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2619 (class 0 OID 0)
-- Dependencies: 214
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ing_pro_ing_id_seq', 1, false);


--
-- TOC entry 2512 (class 0 OID 17781)
-- Dependencies: 215
-- Data for Name: ingrediente; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2620 (class 0 OID 0)
-- Dependencies: 216
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ingrediente_ing_id_seq', 1, false);


--
-- TOC entry 2514 (class 0 OID 17786)
-- Dependencies: 217
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2621 (class 0 OID 0)
-- Dependencies: 218
-- Name: inventario_inv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventario_inv_id_seq', 1, false);


--
-- TOC entry 2533 (class 0 OID 18226)
-- Dependencies: 236
-- Data for Name: lugar; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2622 (class 0 OID 0)
-- Dependencies: 235
-- Name: lugar_lug_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lugar_lug_id_seq', 1, false);


--
-- TOC entry 2545 (class 0 OID 18277)
-- Dependencies: 248
-- Data for Name: metodo_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2623 (class 0 OID 0)
-- Dependencies: 247
-- Name: metodo_pago_met_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.metodo_pago_met_id_seq', 1, false);


--
-- TOC entry 2516 (class 0 OID 17791)
-- Dependencies: 219
-- Data for Name: pasillo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2624 (class 0 OID 0)
-- Dependencies: 220
-- Name: pasillo_pas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pasillo_pas_id_seq', 1, false);


--
-- TOC entry 2541 (class 0 OID 18258)
-- Dependencies: 244
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2625 (class 0 OID 0)
-- Dependencies: 243
-- Name: pedido_ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pedido_ped_id_seq', 1, false);


--
-- TOC entry 2518 (class 0 OID 17796)
-- Dependencies: 221
-- Data for Name: pro_inv; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2626 (class 0 OID 0)
-- Dependencies: 222
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.pro_inv_pro_id_seq', 1, false);


--
-- TOC entry 2520 (class 0 OID 17801)
-- Dependencies: 223
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2627 (class 0 OID 0)
-- Dependencies: 224
-- Name: producto_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.producto_pro_id_seq', 1, false);


--
-- TOC entry 2543 (class 0 OID 18269)
-- Dependencies: 246
-- Data for Name: punto; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2628 (class 0 OID 0)
-- Dependencies: 245
-- Name: punto_pun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.punto_pun_id_seq', 1, false);


--
-- TOC entry 2522 (class 0 OID 17806)
-- Dependencies: 225
-- Data for Name: sabor; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2629 (class 0 OID 0)
-- Dependencies: 226
-- Name: sabor_sab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sabor_sab_id_seq', 1, false);


--
-- TOC entry 2539 (class 0 OID 18250)
-- Dependencies: 242
-- Data for Name: telefono; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2630 (class 0 OID 0)
-- Dependencies: 241
-- Name: telefono_tel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.telefono_tel_id_seq', 1, false);


--
-- TOC entry 2524 (class 0 OID 17811)
-- Dependencies: 227
-- Data for Name: tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2631 (class 0 OID 0)
-- Dependencies: 228
-- Name: tienda_tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tienda_tie_id_seq', 1, false);


--
-- TOC entry 2526 (class 0 OID 17817)
-- Dependencies: 229
-- Data for Name: tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2632 (class 0 OID 0)
-- Dependencies: 230
-- Name: tipo_tip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.tipo_tip_id_seq', 1, false);


--
-- TOC entry 2535 (class 0 OID 18234)
-- Dependencies: 238
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2633 (class 0 OID 0)
-- Dependencies: 237
-- Name: usuario_usu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.usuario_usu_id_seq', 1, false);


--
-- TOC entry 2547 (class 0 OID 18289)
-- Dependencies: 250
-- Data for Name: venta_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--



--
-- TOC entry 2634 (class 0 OID 0)
-- Dependencies: 249
-- Name: venta_pago_ven_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.venta_pago_ven_id_seq', 1, false);


--
-- TOC entry 2287 (class 2606 OID 17848)
-- Name: PK_Ing_ing; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ing_ing"
    ADD CONSTRAINT "PK_Ing_ing" PRIMARY KEY ("Ing_id", "FkIngrediente1", "FkIngrediente2");


--
-- TOC entry 2289 (class 2606 OID 17850)
-- Name: PK_Ped_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Ped_Pro"
    ADD CONSTRAINT "PK_Ped_pro" PRIMARY KEY ("Ped_id", "FkTienda", "FkPedido", "FkProducto");


--
-- TOC entry 2291 (class 2606 OID 17852)
-- Name: PK_Pedido_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pedido_tienda"
    ADD CONSTRAINT "PK_Pedido_tienda" PRIMARY KEY ("Ped_id");


--
-- TOC entry 2293 (class 2606 OID 17854)
-- Name: PK_Pre_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Pre_pro"
    ADD CONSTRAINT "PK_Pre_pro" PRIMARY KEY ("Pre_id", "FkProducto", "FkPresupuesto");


--
-- TOC entry 2295 (class 2606 OID 17856)
-- Name: PK_Presupuesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Presupuesto"
    ADD CONSTRAINT "PK_Presupuesto" PRIMARY KEY ("Pre_id");


--
-- TOC entry 2297 (class 2606 OID 17858)
-- Name: PK_Privilegio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Privilegio"
    ADD CONSTRAINT "PK_Privilegio" PRIMARY KEY ("Pri_id");


--
-- TOC entry 2299 (class 2606 OID 17860)
-- Name: PK_Rol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol"
    ADD CONSTRAINT "PK_Rol" PRIMARY KEY ("Rol_id");


--
-- TOC entry 2301 (class 2606 OID 17862)
-- Name: PK_Rol_priv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Rol_Priv"
    ADD CONSTRAINT "PK_Rol_priv" PRIMARY KEY ("Rol_id", "FkRol", "FkPrivilegio");


--
-- TOC entry 2303 (class 2606 OID 17864)
-- Name: PK_Sta_ped; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Sta_ped"
    ADD CONSTRAINT "PK_Sta_ped" PRIMARY KEY ("Sta_id", "FkPedido", "FkStatus");


--
-- TOC entry 2305 (class 2606 OID 17866)
-- Name: PK_Status; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Sta_id");


--
-- TOC entry 2307 (class 2606 OID 17868)
-- Name: PK_Tie_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_Pro"
    ADD CONSTRAINT "PK_Tie_pro" PRIMARY KEY ("Tie_id", "FkProducto", "FkPedido_tienda");


--
-- TOC entry 2309 (class 2606 OID 17870)
-- Name: PK_Tie_sta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public."Tie_sta"
    ADD CONSTRAINT "PK_Tie_sta" PRIMARY KEY ("Tie_id", "FkStatus", "FkPedido_tienda");


--
-- TOC entry 2337 (class 2606 OID 18213)
-- Name: cliente_cli_ci_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cli_ci_key UNIQUE (cli_ci);


--
-- TOC entry 2339 (class 2606 OID 18215)
-- Name: cliente_cli_numcarnet_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT cliente_cli_numcarnet_key UNIQUE (cli_numcarnet);


--
-- TOC entry 2343 (class 2606 OID 18223)
-- Name: pk_cli_lug; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cli_lug
    ADD CONSTRAINT pk_cli_lug PRIMARY KEY (fkcliente, fklugar, cli_id);


--
-- TOC entry 2341 (class 2606 OID 18211)
-- Name: pk_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (cli_id);


--
-- TOC entry 2349 (class 2606 OID 18247)
-- Name: pk_contacto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.contacto
    ADD CONSTRAINT pk_contacto PRIMARY KEY (con_id);


--
-- TOC entry 2311 (class 2606 OID 17872)
-- Name: pk_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (dep_id);


--
-- TOC entry 2363 (class 2606 OID 18313)
-- Name: pk_descuento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY (des_id);


--
-- TOC entry 2361 (class 2606 OID 18302)
-- Name: pk_diario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.diario
    ADD CONSTRAINT pk_diario PRIMARY KEY (dia_id);


--
-- TOC entry 2313 (class 2606 OID 17874)
-- Name: pk_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (emp_id);


--
-- TOC entry 2315 (class 2606 OID 17876)
-- Name: pk_horario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario
    ADD CONSTRAINT pk_horario PRIMARY KEY (hor_id);


--
-- TOC entry 2317 (class 2606 OID 17878)
-- Name: pk_horario_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.horario_empleado
    ADD CONSTRAINT pk_horario_empleado PRIMARY KEY (hor_id, fkhorario, fkempleado);


--
-- TOC entry 2319 (class 2606 OID 17880)
-- Name: pk_ing_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ing_pro
    ADD CONSTRAINT pk_ing_pro PRIMARY KEY (ing_id, pkproducto, pkingrediente);


--
-- TOC entry 2321 (class 2606 OID 17882)
-- Name: pk_ingrediente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ingrediente
    ADD CONSTRAINT pk_ingrediente PRIMARY KEY (ing_id);


--
-- TOC entry 2323 (class 2606 OID 17884)
-- Name: pk_inventario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventario
    ADD CONSTRAINT pk_inventario PRIMARY KEY (inv_id);


--
-- TOC entry 2345 (class 2606 OID 18231)
-- Name: pk_lugar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lugar
    ADD CONSTRAINT pk_lugar PRIMARY KEY (lug_id);


--
-- TOC entry 2357 (class 2606 OID 18286)
-- Name: pk_metodo_pago; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.metodo_pago
    ADD CONSTRAINT pk_metodo_pago PRIMARY KEY (met_id);


--
-- TOC entry 2325 (class 2606 OID 17886)
-- Name: pk_pasillo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pasillo
    ADD CONSTRAINT pk_pasillo PRIMARY KEY (pas_id, fkproducto, fktienda);


--
-- TOC entry 2353 (class 2606 OID 18266)
-- Name: pk_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pedido
    ADD CONSTRAINT pk_pedido PRIMARY KEY (ped_id);


--
-- TOC entry 2327 (class 2606 OID 17888)
-- Name: pk_pro_inv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.pro_inv
    ADD CONSTRAINT pk_pro_inv PRIMARY KEY (pro_id, fkproducto, fkinventario);


--
-- TOC entry 2329 (class 2606 OID 17890)
-- Name: pk_producto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.producto
    ADD CONSTRAINT pk_producto PRIMARY KEY (pro_id);


--
-- TOC entry 2355 (class 2606 OID 18274)
-- Name: pk_punto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.punto
    ADD CONSTRAINT pk_punto PRIMARY KEY (pun_id);


--
-- TOC entry 2331 (class 2606 OID 17892)
-- Name: pk_sabor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sabor
    ADD CONSTRAINT pk_sabor PRIMARY KEY (sab_id);


--
-- TOC entry 2351 (class 2606 OID 18255)
-- Name: pk_telefono; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.telefono
    ADD CONSTRAINT pk_telefono PRIMARY KEY (tel_id);


--
-- TOC entry 2333 (class 2606 OID 17894)
-- Name: pk_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tienda
    ADD CONSTRAINT pk_tienda PRIMARY KEY (tie_id);


--
-- TOC entry 2335 (class 2606 OID 17896)
-- Name: pk_tipo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.tipo
    ADD CONSTRAINT pk_tipo PRIMARY KEY (tip_id);


--
-- TOC entry 2347 (class 2606 OID 18239)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (usu_id);


--
-- TOC entry 2359 (class 2606 OID 18294)
-- Name: pk_venta_pago; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.venta_pago
    ADD CONSTRAINT pk_venta_pago PRIMARY KEY (ven_id);


--
-- TOC entry 2559 (class 0 OID 0)
-- Dependencies: 7
-- Name: SCHEMA public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-05-28 01:14:52 -04

--
-- PostgreSQL database dump complete
--

