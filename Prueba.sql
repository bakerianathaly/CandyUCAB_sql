--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.5

-- Started on 2018-05-29 21:22:29

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- TOC entry 1 (class 3079 OID 12355)
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- TOC entry 2535 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 16923)
-- Name: Ing_ing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Ing_ing" (
    "Ing_id" integer NOT NULL,
    "FkIngrediente1" integer NOT NULL,
    "FkIngrediente2" integer NOT NULL
);


ALTER TABLE "Ing_ing" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16926)
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Ing_ing_Ing_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Ing_ing_Ing_id_seq" OWNER TO postgres;

--
-- TOC entry 2536 (class 0 OID 0)
-- Dependencies: 182
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Ing_ing_Ing_id_seq" OWNED BY "Ing_ing"."Ing_id";


--
-- TOC entry 183 (class 1259 OID 16928)
-- Name: Ped_Pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Ped_Pro" (
    "Ped_precio" numeric NOT NULL,
    "Ped_cantidad" integer NOT NULL,
    "FkTienda" integer NOT NULL,
    "FkProducto" integer NOT NULL,
    "FkPedido" integer NOT NULL,
    "Ped_id" integer NOT NULL
);


ALTER TABLE "Ped_Pro" OWNER TO postgres;

--
-- TOC entry 184 (class 1259 OID 16934)
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Ped_Pro_Ped_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Ped_Pro_Ped_id_seq" OWNER TO postgres;

--
-- TOC entry 2537 (class 0 OID 0)
-- Dependencies: 184
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Ped_Pro_Ped_id_seq" OWNED BY "Ped_Pro"."Ped_id";


--
-- TOC entry 185 (class 1259 OID 16936)
-- Name: Pedido_tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Pedido_tienda" (
    "Ped_descripcion" character varying(200)[] NOT NULL,
    "Ped_id" integer NOT NULL
);


ALTER TABLE "Pedido_tienda" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16942)
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pedido_tienda_Ped_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Pedido_tienda_Ped_id_seq" OWNER TO postgres;

--
-- TOC entry 2538 (class 0 OID 0)
-- Dependencies: 186
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pedido_tienda_Ped_id_seq" OWNED BY "Pedido_tienda"."Ped_id";


--
-- TOC entry 187 (class 1259 OID 16944)
-- Name: Pre_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Pre_pro" (
    "FkProducto" integer NOT NULL,
    "FkPresupuesto" integer NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE "Pre_pro" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16947)
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Pre_pro_Pre_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Pre_pro_Pre_id_seq" OWNER TO postgres;

--
-- TOC entry 2539 (class 0 OID 0)
-- Dependencies: 188
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pre_pro_Pre_id_seq" OWNED BY "Pre_pro"."Pre_id";


--
-- TOC entry 189 (class 1259 OID 16949)
-- Name: Presupuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Presupuesto" (
    "Pre_descripcion" character varying(200)[] NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE "Presupuesto" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16955)
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Presupuesto_Pre_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Presupuesto_Pre_id_seq" OWNER TO postgres;

--
-- TOC entry 2540 (class 0 OID 0)
-- Dependencies: 190
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Presupuesto_Pre_id_seq" OWNED BY "Presupuesto"."Pre_id";


--
-- TOC entry 191 (class 1259 OID 16957)
-- Name: Privilegio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Privilegio" (
    "Pri_nombre" character varying(30)[] NOT NULL,
    "Pri_id" integer NOT NULL
);


ALTER TABLE "Privilegio" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16963)
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Privilegio_Pri_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Privilegio_Pri_id_seq" OWNER TO postgres;

--
-- TOC entry 2541 (class 0 OID 0)
-- Dependencies: 192
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Privilegio_Pri_id_seq" OWNED BY "Privilegio"."Pri_id";


--
-- TOC entry 193 (class 1259 OID 16965)
-- Name: Rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Rol" (
    "Rol_tipo" character varying(50)[] NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE "Rol" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16971)
-- Name: Rol_Priv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Rol_Priv" (
    "FkRol" integer NOT NULL,
    "FkPrivilegio" integer NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE "Rol_Priv" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16974)
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Rol_Priv_Rol_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Rol_Priv_Rol_id_seq" OWNER TO postgres;

--
-- TOC entry 2542 (class 0 OID 0)
-- Dependencies: 195
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Rol_Priv_Rol_id_seq" OWNED BY "Rol_Priv"."Rol_id";


--
-- TOC entry 196 (class 1259 OID 16976)
-- Name: Rol_Rol_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Rol_Rol_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Rol_Rol_id_seq" OWNER TO postgres;

--
-- TOC entry 2543 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Rol_Rol_id_seq" OWNED BY "Rol"."Rol_id";


--
-- TOC entry 197 (class 1259 OID 16978)
-- Name: Sta_ped; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Sta_ped" (
    "Sta_finicial" date NOT NULL,
    "Sta_ffinal" date,
    "FkStatus" integer NOT NULL,
    "FkPedido" integer NOT NULL,
    "Sta_id" integer NOT NULL
);


ALTER TABLE "Sta_ped" OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 16981)
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Sta_ped_Sta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Sta_ped_Sta_id_seq" OWNER TO postgres;

--
-- TOC entry 2544 (class 0 OID 0)
-- Dependencies: 198
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Sta_ped_Sta_id_seq" OWNED BY "Sta_ped"."Sta_id";


--
-- TOC entry 199 (class 1259 OID 16983)
-- Name: Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Status" (
    "Sta_tipo" character varying(50)[] NOT NULL,
    "Sta_id" integer NOT NULL
);


ALTER TABLE "Status" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16989)
-- Name: Status_Sta_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Status_Sta_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Status_Sta_id_seq" OWNER TO postgres;

--
-- TOC entry 2545 (class 0 OID 0)
-- Dependencies: 200
-- Name: Status_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Status_Sta_id_seq" OWNED BY "Status"."Sta_id";


--
-- TOC entry 201 (class 1259 OID 16991)
-- Name: Tie_Pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Tie_Pro" (
    "Tie_cantidad" integer NOT NULL,
    "FkProducto" integer NOT NULL,
    "FkPedido_tienda" integer NOT NULL,
    "Tie_id" integer NOT NULL
);


ALTER TABLE "Tie_Pro" OWNER TO postgres;

--
-- TOC entry 202 (class 1259 OID 16994)
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tie_Pro_Tie_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Tie_Pro_Tie_id_seq" OWNER TO postgres;

--
-- TOC entry 2546 (class 0 OID 0)
-- Dependencies: 202
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tie_Pro_Tie_id_seq" OWNED BY "Tie_Pro"."Tie_id";


--
-- TOC entry 203 (class 1259 OID 16996)
-- Name: Tie_sta; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Tie_sta" (
    "Tie_finicial" date NOT NULL,
    "Tie_ffinal" date,
    "FkStatus" integer NOT NULL,
    "FkPedido_tienda" integer NOT NULL,
    "Tie_id" integer NOT NULL
);


ALTER TABLE "Tie_sta" OWNER TO postgres;

--
-- TOC entry 204 (class 1259 OID 16999)
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "Tie_sta_Tie_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "Tie_sta_Tie_id_seq" OWNER TO postgres;

--
-- TOC entry 2547 (class 0 OID 0)
-- Dependencies: 204
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tie_sta_Tie_id_seq" OWNED BY "Tie_sta"."Tie_id";


--
-- TOC entry 205 (class 1259 OID 17001)
-- Name: cli_lug; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cli_lug (
    fkcliente integer NOT NULL,
    fklugar integer NOT NULL,
    cli_id integer NOT NULL
);


ALTER TABLE cli_lug OWNER TO postgres;

--
-- TOC entry 206 (class 1259 OID 17004)
-- Name: cli_lug_cli_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cli_lug_cli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cli_lug_cli_id_seq OWNER TO postgres;

--
-- TOC entry 2548 (class 0 OID 0)
-- Dependencies: 206
-- Name: cli_lug_cli_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cli_lug_cli_id_seq OWNED BY cli_lug.cli_id;


--
-- TOC entry 207 (class 1259 OID 17006)
-- Name: cliente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cliente (
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
    CONSTRAINT check_tipo CHECK (((cli_tipo)::text = ANY (ARRAY[('J'::character varying)::text, ('N'::character varying)::text])))
);


ALTER TABLE cliente OWNER TO postgres;

--
-- TOC entry 208 (class 1259 OID 17013)
-- Name: cliente_cli_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cliente_cli_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cliente_cli_id_seq OWNER TO postgres;

--
-- TOC entry 2549 (class 0 OID 0)
-- Dependencies: 208
-- Name: cliente_cli_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cliente_cli_id_seq OWNED BY cliente.cli_id;


--
-- TOC entry 209 (class 1259 OID 17015)
-- Name: contacto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE contacto (
    con_id integer NOT NULL,
    con_nombre character varying(50) NOT NULL,
    fkcliente integer
);


ALTER TABLE contacto OWNER TO postgres;

--
-- TOC entry 210 (class 1259 OID 17018)
-- Name: contacto_con_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE contacto_con_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE contacto_con_id_seq OWNER TO postgres;

--
-- TOC entry 2550 (class 0 OID 0)
-- Dependencies: 210
-- Name: contacto_con_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE contacto_con_id_seq OWNED BY contacto.con_id;


--
-- TOC entry 211 (class 1259 OID 17020)
-- Name: departamento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE departamento (
    dep_id integer NOT NULL,
    dep_nombre character varying(50) NOT NULL,
    dep_tipo character varying(50) NOT NULL,
    fktienda integer NOT NULL
);


ALTER TABLE departamento OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 17023)
-- Name: departamento_dep_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE departamento_dep_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE departamento_dep_id_seq OWNER TO postgres;

--
-- TOC entry 2551 (class 0 OID 0)
-- Dependencies: 212
-- Name: departamento_dep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE departamento_dep_id_seq OWNED BY departamento.dep_id;


--
-- TOC entry 213 (class 1259 OID 17025)
-- Name: descuento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE descuento (
    des_id integer NOT NULL,
    des_new_precio numeric NOT NULL,
    des_finicio date NOT NULL,
    des_ffinal date NOT NULL,
    fkdiario integer,
    fkproducto integer
);


ALTER TABLE descuento OWNER TO postgres;

--
-- TOC entry 214 (class 1259 OID 17031)
-- Name: descuento_des_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE descuento_des_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE descuento_des_id_seq OWNER TO postgres;

--
-- TOC entry 2552 (class 0 OID 0)
-- Dependencies: 214
-- Name: descuento_des_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE descuento_des_id_seq OWNED BY descuento.des_id;


--
-- TOC entry 215 (class 1259 OID 17033)
-- Name: diario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE diario (
    dia_id integer NOT NULL,
    dia_femision date NOT NULL,
    dia_fvencimiento date NOT NULL
);


ALTER TABLE diario OWNER TO postgres;

--
-- TOC entry 216 (class 1259 OID 17036)
-- Name: diario_dia_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE diario_dia_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE diario_dia_id_seq OWNER TO postgres;

--
-- TOC entry 2553 (class 0 OID 0)
-- Dependencies: 216
-- Name: diario_dia_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE diario_dia_id_seq OWNED BY diario.dia_id;


--
-- TOC entry 217 (class 1259 OID 17038)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE empleado (
    emp_id integer NOT NULL,
    emp_nombre character varying(50) NOT NULL,
    emp_fecha date NOT NULL
);


ALTER TABLE empleado OWNER TO postgres;

--
-- TOC entry 218 (class 1259 OID 17041)
-- Name: empleado_emp_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empleado_emp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empleado_emp_id_seq OWNER TO postgres;

--
-- TOC entry 2554 (class 0 OID 0)
-- Dependencies: 218
-- Name: empleado_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleado_emp_id_seq OWNED BY empleado.emp_id;


--
-- TOC entry 219 (class 1259 OID 17043)
-- Name: horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE horario (
    hor_id integer NOT NULL,
    hor_dia character varying(10) NOT NULL,
    hor_hora_entrada date NOT NULL,
    hor_hora_salida date NOT NULL,
    CONSTRAINT check_dia CHECK (((hor_dia)::text = ANY (ARRAY[('lunes'::character varying)::text, ('martes'::character varying)::text, ('miercoles'::character varying)::text, ('jueves'::character varying)::text, ('viernes'::character varying)::text, ('sabado'::character varying)::text, ('domingo'::character varying)::text])))
);


ALTER TABLE horario OWNER TO postgres;

--
-- TOC entry 220 (class 1259 OID 17047)
-- Name: horario_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE horario_empleado (
    hor_id integer NOT NULL,
    fkempleado integer NOT NULL,
    fkhorario integer NOT NULL,
    fktienda integer NOT NULL
);


ALTER TABLE horario_empleado OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 17050)
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE horario_empleado_hor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE horario_empleado_hor_id_seq OWNER TO postgres;

--
-- TOC entry 2555 (class 0 OID 0)
-- Dependencies: 221
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE horario_empleado_hor_id_seq OWNED BY horario_empleado.hor_id;


--
-- TOC entry 222 (class 1259 OID 17052)
-- Name: horario_hor_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE horario_hor_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE horario_hor_id_seq OWNER TO postgres;

--
-- TOC entry 2556 (class 0 OID 0)
-- Dependencies: 222
-- Name: horario_hor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE horario_hor_id_seq OWNED BY horario.hor_id;


--
-- TOC entry 223 (class 1259 OID 17054)
-- Name: ing_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ing_pro (
    ing_id integer NOT NULL,
    fkproducto integer NOT NULL,
    fkingrediente integer NOT NULL
);


ALTER TABLE ing_pro OWNER TO postgres;

--
-- TOC entry 224 (class 1259 OID 17057)
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ing_pro_ing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ing_pro_ing_id_seq OWNER TO postgres;

--
-- TOC entry 2557 (class 0 OID 0)
-- Dependencies: 224
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ing_pro_ing_id_seq OWNED BY ing_pro.ing_id;


--
-- TOC entry 225 (class 1259 OID 17059)
-- Name: ingrediente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ingrediente (
    ing_id integer NOT NULL,
    ing_nombre character varying(50) NOT NULL
);


ALTER TABLE ingrediente OWNER TO postgres;

--
-- TOC entry 226 (class 1259 OID 17062)
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ingrediente_ing_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ingrediente_ing_id_seq OWNER TO postgres;

--
-- TOC entry 2558 (class 0 OID 0)
-- Dependencies: 226
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ingrediente_ing_id_seq OWNED BY ingrediente.ing_id;


--
-- TOC entry 227 (class 1259 OID 17064)
-- Name: inventario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE inventario (
    inv_id integer NOT NULL,
    inv_cantidad integer NOT NULL,
    inv_precio double precision NOT NULL,
    fktienda integer NOT NULL
);


ALTER TABLE inventario OWNER TO postgres;

--
-- TOC entry 228 (class 1259 OID 17067)
-- Name: inventario_inv_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE inventario_inv_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE inventario_inv_id_seq OWNER TO postgres;

--
-- TOC entry 2559 (class 0 OID 0)
-- Dependencies: 228
-- Name: inventario_inv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE inventario_inv_id_seq OWNED BY inventario.inv_id;


--
-- TOC entry 229 (class 1259 OID 17069)
-- Name: lugar; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE lugar (
    lug_id integer NOT NULL,
    lug_tipo character varying(50) NOT NULL,
    lug_nombre character varying(50) NOT NULL,
    fklugar integer
);


ALTER TABLE lugar OWNER TO postgres;

--
-- TOC entry 230 (class 1259 OID 17072)
-- Name: lugar_lug_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE lugar_lug_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE lugar_lug_id_seq OWNER TO postgres;

--
-- TOC entry 2560 (class 0 OID 0)
-- Dependencies: 230
-- Name: lugar_lug_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE lugar_lug_id_seq OWNED BY lugar.lug_id;


--
-- TOC entry 231 (class 1259 OID 17074)
-- Name: metodo_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE metodo_pago (
    met_id integer NOT NULL,
    met_nombre_titular character varying(50) NOT NULL,
    met_efectivo numeric,
    met_fvencimiento date,
    met_num_tarjeta character varying(50),
    met_num_cheque character varying(50),
    met_banco character varying(50),
    met_tipo character varying(1) NOT NULL,
    CONSTRAINT check_met_tipo CHECK (((met_tipo)::text = ANY (ARRAY[('T'::character varying)::text, ('C'::character varying)::text, ('E'::character varying)::text])))
);


ALTER TABLE metodo_pago OWNER TO postgres;

--
-- TOC entry 232 (class 1259 OID 17081)
-- Name: metodo_pago_met_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE metodo_pago_met_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE metodo_pago_met_id_seq OWNER TO postgres;

--
-- TOC entry 2561 (class 0 OID 0)
-- Dependencies: 232
-- Name: metodo_pago_met_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE metodo_pago_met_id_seq OWNED BY metodo_pago.met_id;


--
-- TOC entry 233 (class 1259 OID 17083)
-- Name: pasillo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pasillo (
    pas_id integer NOT NULL,
    pas_num_anaquel integer NOT NULL,
    pas_zona_pasillo integer NOT NULL,
    fktienda integer NOT NULL,
    fkproducto integer NOT NULL
);


ALTER TABLE pasillo OWNER TO postgres;

--
-- TOC entry 234 (class 1259 OID 17086)
-- Name: pasillo_pas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pasillo_pas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pasillo_pas_id_seq OWNER TO postgres;

--
-- TOC entry 2562 (class 0 OID 0)
-- Dependencies: 234
-- Name: pasillo_pas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pasillo_pas_id_seq OWNED BY pasillo.pas_id;


--
-- TOC entry 235 (class 1259 OID 17088)
-- Name: pedido; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pedido (
    ped_id integer NOT NULL,
    ped_descripcion character varying(50) NOT NULL,
    ped_fecha date NOT NULL,
    ped_cantidad integer NOT NULL,
    ped_total numeric NOT NULL,
    fkcliente integer,
    fkusuario integer
);


ALTER TABLE pedido OWNER TO postgres;

--
-- TOC entry 236 (class 1259 OID 17094)
-- Name: pedido_ped_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pedido_ped_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pedido_ped_id_seq OWNER TO postgres;

--
-- TOC entry 2563 (class 0 OID 0)
-- Dependencies: 236
-- Name: pedido_ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pedido_ped_id_seq OWNED BY pedido.ped_id;


--
-- TOC entry 237 (class 1259 OID 17096)
-- Name: pro_inv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pro_inv (
    pro_id integer NOT NULL,
    fkproducto integer NOT NULL,
    fkinventario integer NOT NULL
);


ALTER TABLE pro_inv OWNER TO postgres;

--
-- TOC entry 238 (class 1259 OID 17099)
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pro_inv_pro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pro_inv_pro_id_seq OWNER TO postgres;

--
-- TOC entry 2564 (class 0 OID 0)
-- Dependencies: 238
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pro_inv_pro_id_seq OWNED BY pro_inv.pro_id;


--
-- TOC entry 239 (class 1259 OID 17101)
-- Name: producto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE producto (
    pro_id integer NOT NULL,
    pro_nombre character varying(50) NOT NULL,
    pro_relleno character varying(50),
    pro_textura character varying(50) NOT NULL,
    pro_puntuacion integer NOT NULL,
    pro_azucar boolean,
    fksabor integer NOT NULL,
    fktipo integer NOT NULL
);


ALTER TABLE producto OWNER TO postgres;

--
-- TOC entry 240 (class 1259 OID 17104)
-- Name: producto_pro_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE producto_pro_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE producto_pro_id_seq OWNER TO postgres;

--
-- TOC entry 2565 (class 0 OID 0)
-- Dependencies: 240
-- Name: producto_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE producto_pro_id_seq OWNED BY producto.pro_id;


--
-- TOC entry 241 (class 1259 OID 17106)
-- Name: punto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE punto (
    pun_id integer NOT NULL,
    pun_cantidad integer NOT NULL,
    pun_fadquirido date NOT NULL,
    fkpedido integer,
    fkusuario integer
);


ALTER TABLE punto OWNER TO postgres;

--
-- TOC entry 242 (class 1259 OID 17109)
-- Name: punto_pun_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE punto_pun_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE punto_pun_id_seq OWNER TO postgres;

--
-- TOC entry 2566 (class 0 OID 0)
-- Dependencies: 242
-- Name: punto_pun_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE punto_pun_id_seq OWNED BY punto.pun_id;


--
-- TOC entry 243 (class 1259 OID 17111)
-- Name: sabor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sabor (
    sab_id integer NOT NULL,
    sab_tipo character varying(50) NOT NULL,
    sab_nombre character varying(50) NOT NULL
);


ALTER TABLE sabor OWNER TO postgres;

--
-- TOC entry 244 (class 1259 OID 17114)
-- Name: sabor_sab_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sabor_sab_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sabor_sab_id_seq OWNER TO postgres;

--
-- TOC entry 2567 (class 0 OID 0)
-- Dependencies: 244
-- Name: sabor_sab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sabor_sab_id_seq OWNED BY sabor.sab_id;


--
-- TOC entry 245 (class 1259 OID 17116)
-- Name: telefono; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE telefono (
    tel_id integer NOT NULL,
    tel_numero character varying(50) NOT NULL,
    tel_tipo character varying(50) NOT NULL,
    fkcliente integer
);


ALTER TABLE telefono OWNER TO postgres;

--
-- TOC entry 246 (class 1259 OID 17119)
-- Name: telefono_tel_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE telefono_tel_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE telefono_tel_id_seq OWNER TO postgres;

--
-- TOC entry 2568 (class 0 OID 0)
-- Dependencies: 246
-- Name: telefono_tel_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE telefono_tel_id_seq OWNED BY telefono.tel_id;


--
-- TOC entry 247 (class 1259 OID 17121)
-- Name: tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tienda (
    tie_id integer NOT NULL,
    tie_tipo character varying(20) NOT NULL,
    fklugar integer NOT NULL,
    CONSTRAINT check_tipo CHECK (((tie_tipo)::text = ANY (ARRAY[('MiniCandyUCAB'::character varying)::text, ('CandyUCAB'::character varying)::text])))
);


ALTER TABLE tienda OWNER TO postgres;

--
-- TOC entry 248 (class 1259 OID 17125)
-- Name: tienda_tie_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tienda_tie_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tienda_tie_id_seq OWNER TO postgres;

--
-- TOC entry 2569 (class 0 OID 0)
-- Dependencies: 248
-- Name: tienda_tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tienda_tie_id_seq OWNED BY tienda.tie_id;


--
-- TOC entry 249 (class 1259 OID 17127)
-- Name: tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo (
    tip_id integer NOT NULL,
    tip_nombre character varying(50) NOT NULL
);


ALTER TABLE tipo OWNER TO postgres;

--
-- TOC entry 250 (class 1259 OID 17130)
-- Name: tipo_tip_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_tip_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_tip_id_seq OWNER TO postgres;

--
-- TOC entry 2570 (class 0 OID 0)
-- Dependencies: 250
-- Name: tipo_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_tip_id_seq OWNED BY tipo.tip_id;


--
-- TOC entry 251 (class 1259 OID 17132)
-- Name: usuario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE usuario (
    usu_id integer NOT NULL,
    usu_nombre character varying(50) NOT NULL,
    usu_contrasena character varying(50) NOT NULL,
    fkcliente integer,
    fkrol integer
);


ALTER TABLE usuario OWNER TO postgres;

--
-- TOC entry 252 (class 1259 OID 17135)
-- Name: usuario_usu_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE usuario_usu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE usuario_usu_id_seq OWNER TO postgres;

--
-- TOC entry 2571 (class 0 OID 0)
-- Dependencies: 252
-- Name: usuario_usu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE usuario_usu_id_seq OWNED BY usuario.usu_id;


--
-- TOC entry 253 (class 1259 OID 17137)
-- Name: venta_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE venta_pago (
    ven_id integer NOT NULL,
    fkpunto integer,
    fkpedido integer,
    fkmetodo_pago integer
);


ALTER TABLE venta_pago OWNER TO postgres;

--
-- TOC entry 254 (class 1259 OID 17140)
-- Name: venta_pago_ven_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE venta_pago_ven_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE venta_pago_ven_id_seq OWNER TO postgres;

--
-- TOC entry 2572 (class 0 OID 0)
-- Dependencies: 254
-- Name: venta_pago_ven_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE venta_pago_ven_id_seq OWNED BY venta_pago.ven_id;


--
-- TOC entry 2207 (class 2604 OID 17142)
-- Name: Ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ing_ing" ALTER COLUMN "Ing_id" SET DEFAULT nextval('"Ing_ing_Ing_id_seq"'::regclass);


--
-- TOC entry 2208 (class 2604 OID 17143)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ped_Pro" ALTER COLUMN "Ped_id" SET DEFAULT nextval('"Ped_Pro_Ped_id_seq"'::regclass);


--
-- TOC entry 2209 (class 2604 OID 17144)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pedido_tienda" ALTER COLUMN "Ped_id" SET DEFAULT nextval('"Pedido_tienda_Ped_id_seq"'::regclass);


--
-- TOC entry 2210 (class 2604 OID 17145)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pre_pro" ALTER COLUMN "Pre_id" SET DEFAULT nextval('"Pre_pro_Pre_id_seq"'::regclass);


--
-- TOC entry 2211 (class 2604 OID 17146)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Presupuesto" ALTER COLUMN "Pre_id" SET DEFAULT nextval('"Presupuesto_Pre_id_seq"'::regclass);


--
-- TOC entry 2212 (class 2604 OID 17147)
-- Name: Pri_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Privilegio" ALTER COLUMN "Pri_id" SET DEFAULT nextval('"Privilegio_Pri_id_seq"'::regclass);


--
-- TOC entry 2213 (class 2604 OID 17148)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol" ALTER COLUMN "Rol_id" SET DEFAULT nextval('"Rol_Rol_id_seq"'::regclass);


--
-- TOC entry 2214 (class 2604 OID 17149)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol_Priv" ALTER COLUMN "Rol_id" SET DEFAULT nextval('"Rol_Priv_Rol_id_seq"'::regclass);


--
-- TOC entry 2215 (class 2604 OID 17150)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Sta_ped" ALTER COLUMN "Sta_id" SET DEFAULT nextval('"Sta_ped_Sta_id_seq"'::regclass);


--
-- TOC entry 2216 (class 2604 OID 17151)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Status" ALTER COLUMN "Sta_id" SET DEFAULT nextval('"Status_Sta_id_seq"'::regclass);


--
-- TOC entry 2217 (class 2604 OID 17152)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_Pro" ALTER COLUMN "Tie_id" SET DEFAULT nextval('"Tie_Pro_Tie_id_seq"'::regclass);


--
-- TOC entry 2218 (class 2604 OID 17153)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_sta" ALTER COLUMN "Tie_id" SET DEFAULT nextval('"Tie_sta_Tie_id_seq"'::regclass);


--
-- TOC entry 2219 (class 2604 OID 17154)
-- Name: cli_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cli_lug ALTER COLUMN cli_id SET DEFAULT nextval('cli_lug_cli_id_seq'::regclass);


--
-- TOC entry 2220 (class 2604 OID 17155)
-- Name: cli_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente ALTER COLUMN cli_id SET DEFAULT nextval('cliente_cli_id_seq'::regclass);


--
-- TOC entry 2222 (class 2604 OID 17156)
-- Name: con_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contacto ALTER COLUMN con_id SET DEFAULT nextval('contacto_con_id_seq'::regclass);


--
-- TOC entry 2223 (class 2604 OID 17157)
-- Name: dep_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento ALTER COLUMN dep_id SET DEFAULT nextval('departamento_dep_id_seq'::regclass);


--
-- TOC entry 2224 (class 2604 OID 17158)
-- Name: des_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY descuento ALTER COLUMN des_id SET DEFAULT nextval('descuento_des_id_seq'::regclass);


--
-- TOC entry 2225 (class 2604 OID 17159)
-- Name: dia_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY diario ALTER COLUMN dia_id SET DEFAULT nextval('diario_dia_id_seq'::regclass);


--
-- TOC entry 2226 (class 2604 OID 17160)
-- Name: emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado ALTER COLUMN emp_id SET DEFAULT nextval('empleado_emp_id_seq'::regclass);


--
-- TOC entry 2227 (class 2604 OID 17161)
-- Name: hor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario ALTER COLUMN hor_id SET DEFAULT nextval('horario_hor_id_seq'::regclass);


--
-- TOC entry 2229 (class 2604 OID 17162)
-- Name: hor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado ALTER COLUMN hor_id SET DEFAULT nextval('horario_empleado_hor_id_seq'::regclass);


--
-- TOC entry 2230 (class 2604 OID 17163)
-- Name: ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ing_pro ALTER COLUMN ing_id SET DEFAULT nextval('ing_pro_ing_id_seq'::regclass);


--
-- TOC entry 2231 (class 2604 OID 17164)
-- Name: ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ingrediente ALTER COLUMN ing_id SET DEFAULT nextval('ingrediente_ing_id_seq'::regclass);


--
-- TOC entry 2232 (class 2604 OID 17165)
-- Name: inv_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario ALTER COLUMN inv_id SET DEFAULT nextval('inventario_inv_id_seq'::regclass);


--
-- TOC entry 2233 (class 2604 OID 17166)
-- Name: lug_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lugar ALTER COLUMN lug_id SET DEFAULT nextval('lugar_lug_id_seq'::regclass);


--
-- TOC entry 2234 (class 2604 OID 17167)
-- Name: met_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY metodo_pago ALTER COLUMN met_id SET DEFAULT nextval('metodo_pago_met_id_seq'::regclass);


--
-- TOC entry 2236 (class 2604 OID 17168)
-- Name: pas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasillo ALTER COLUMN pas_id SET DEFAULT nextval('pasillo_pas_id_seq'::regclass);


--
-- TOC entry 2237 (class 2604 OID 17169)
-- Name: ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pedido ALTER COLUMN ped_id SET DEFAULT nextval('pedido_ped_id_seq'::regclass);


--
-- TOC entry 2238 (class 2604 OID 17170)
-- Name: pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pro_inv ALTER COLUMN pro_id SET DEFAULT nextval('pro_inv_pro_id_seq'::regclass);


--
-- TOC entry 2239 (class 2604 OID 17171)
-- Name: pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto ALTER COLUMN pro_id SET DEFAULT nextval('producto_pro_id_seq'::regclass);


--
-- TOC entry 2240 (class 2604 OID 17172)
-- Name: pun_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY punto ALTER COLUMN pun_id SET DEFAULT nextval('punto_pun_id_seq'::regclass);


--
-- TOC entry 2241 (class 2604 OID 17173)
-- Name: sab_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sabor ALTER COLUMN sab_id SET DEFAULT nextval('sabor_sab_id_seq'::regclass);


--
-- TOC entry 2242 (class 2604 OID 17174)
-- Name: tel_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY telefono ALTER COLUMN tel_id SET DEFAULT nextval('telefono_tel_id_seq'::regclass);


--
-- TOC entry 2243 (class 2604 OID 17175)
-- Name: tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tienda ALTER COLUMN tie_id SET DEFAULT nextval('tienda_tie_id_seq'::regclass);


--
-- TOC entry 2245 (class 2604 OID 17176)
-- Name: tip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo ALTER COLUMN tip_id SET DEFAULT nextval('tipo_tip_id_seq'::regclass);


--
-- TOC entry 2246 (class 2604 OID 17177)
-- Name: usu_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario ALTER COLUMN usu_id SET DEFAULT nextval('usuario_usu_id_seq'::regclass);


--
-- TOC entry 2247 (class 2604 OID 17178)
-- Name: ven_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY venta_pago ALTER COLUMN ven_id SET DEFAULT nextval('venta_pago_ven_id_seq'::regclass);


--
-- TOC entry 2454 (class 0 OID 16923)
-- Dependencies: 181
-- Data for Name: Ing_ing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ing_ing" ("Ing_id", "FkIngrediente1", "FkIngrediente2") FROM stdin;
\.


--
-- TOC entry 2573 (class 0 OID 0)
-- Dependencies: 182
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ing_ing_Ing_id_seq"', 1, false);


--
-- TOC entry 2456 (class 0 OID 16928)
-- Dependencies: 183
-- Data for Name: Ped_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ped_Pro" ("Ped_precio", "Ped_cantidad", "FkTienda", "FkProducto", "FkPedido", "Ped_id") FROM stdin;
\.


--
-- TOC entry 2574 (class 0 OID 0)
-- Dependencies: 184
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ped_Pro_Ped_id_seq"', 1, false);


--
-- TOC entry 2458 (class 0 OID 16936)
-- Dependencies: 185
-- Data for Name: Pedido_tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pedido_tienda" ("Ped_descripcion", "Ped_id") FROM stdin;
\.


--
-- TOC entry 2575 (class 0 OID 0)
-- Dependencies: 186
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pedido_tienda_Ped_id_seq"', 1, false);


--
-- TOC entry 2460 (class 0 OID 16944)
-- Dependencies: 187
-- Data for Name: Pre_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pre_pro" ("FkProducto", "FkPresupuesto", "Pre_id") FROM stdin;
\.


--
-- TOC entry 2576 (class 0 OID 0)
-- Dependencies: 188
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pre_pro_Pre_id_seq"', 1, false);


--
-- TOC entry 2462 (class 0 OID 16949)
-- Dependencies: 189
-- Data for Name: Presupuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Presupuesto" ("Pre_descripcion", "Pre_id") FROM stdin;
\.


--
-- TOC entry 2577 (class 0 OID 0)
-- Dependencies: 190
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Presupuesto_Pre_id_seq"', 1, false);


--
-- TOC entry 2464 (class 0 OID 16957)
-- Dependencies: 191
-- Data for Name: Privilegio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Privilegio" ("Pri_nombre", "Pri_id") FROM stdin;
\.


--
-- TOC entry 2578 (class 0 OID 0)
-- Dependencies: 192
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Privilegio_Pri_id_seq"', 1, false);


--
-- TOC entry 2466 (class 0 OID 16965)
-- Dependencies: 193
-- Data for Name: Rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Rol" ("Rol_tipo", "Rol_id") FROM stdin;
\.


--
-- TOC entry 2467 (class 0 OID 16971)
-- Dependencies: 194
-- Data for Name: Rol_Priv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Rol_Priv" ("FkRol", "FkPrivilegio", "Rol_id") FROM stdin;
\.


--
-- TOC entry 2579 (class 0 OID 0)
-- Dependencies: 195
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Rol_Priv_Rol_id_seq"', 1, false);


--
-- TOC entry 2580 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Rol_Rol_id_seq"', 1, false);


--
-- TOC entry 2470 (class 0 OID 16978)
-- Dependencies: 197
-- Data for Name: Sta_ped; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Sta_ped" ("Sta_finicial", "Sta_ffinal", "FkStatus", "FkPedido", "Sta_id") FROM stdin;
\.


--
-- TOC entry 2581 (class 0 OID 0)
-- Dependencies: 198
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Sta_ped_Sta_id_seq"', 1, false);


--
-- TOC entry 2472 (class 0 OID 16983)
-- Dependencies: 199
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Status" ("Sta_tipo", "Sta_id") FROM stdin;
\.


--
-- TOC entry 2582 (class 0 OID 0)
-- Dependencies: 200
-- Name: Status_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Status_Sta_id_seq"', 1, false);


--
-- TOC entry 2474 (class 0 OID 16991)
-- Dependencies: 201
-- Data for Name: Tie_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tie_Pro" ("Tie_cantidad", "FkProducto", "FkPedido_tienda", "Tie_id") FROM stdin;
\.


--
-- TOC entry 2583 (class 0 OID 0)
-- Dependencies: 202
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tie_Pro_Tie_id_seq"', 1, false);


--
-- TOC entry 2476 (class 0 OID 16996)
-- Dependencies: 203
-- Data for Name: Tie_sta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tie_sta" ("Tie_finicial", "Tie_ffinal", "FkStatus", "FkPedido_tienda", "Tie_id") FROM stdin;
\.


--
-- TOC entry 2584 (class 0 OID 0)
-- Dependencies: 204
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tie_sta_Tie_id_seq"', 1, false);


--
-- TOC entry 2478 (class 0 OID 17001)
-- Dependencies: 205
-- Data for Name: cli_lug; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cli_lug (fkcliente, fklugar, cli_id) FROM stdin;
\.


--
-- TOC entry 2585 (class 0 OID 0)
-- Dependencies: 206
-- Name: cli_lug_cli_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cli_lug_cli_id_seq', 1, false);


--
-- TOC entry 2480 (class 0 OID 17006)
-- Dependencies: 207
-- Data for Name: cliente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cliente (cli_id, cli_rif, cli_correo, cli_pagina_web, cli_total_capital, cli_razon_social, cli_deno_comercial, cli_ci, cli_nombre, cli_apellido, cli_numcarnet, cli_tipo) FROM stdin;
\.


--
-- TOC entry 2586 (class 0 OID 0)
-- Dependencies: 208
-- Name: cliente_cli_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cliente_cli_id_seq', 1, false);


--
-- TOC entry 2482 (class 0 OID 17015)
-- Dependencies: 209
-- Data for Name: contacto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY contacto (con_id, con_nombre, fkcliente) FROM stdin;
\.


--
-- TOC entry 2587 (class 0 OID 0)
-- Dependencies: 210
-- Name: contacto_con_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('contacto_con_id_seq', 1, false);


--
-- TOC entry 2484 (class 0 OID 17020)
-- Dependencies: 211
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departamento (dep_id, dep_nombre, dep_tipo, fktienda) FROM stdin;
\.


--
-- TOC entry 2588 (class 0 OID 0)
-- Dependencies: 212
-- Name: departamento_dep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('departamento_dep_id_seq', 1, false);


--
-- TOC entry 2486 (class 0 OID 17025)
-- Dependencies: 213
-- Data for Name: descuento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY descuento (des_id, des_new_precio, des_finicio, des_ffinal, fkdiario, fkproducto) FROM stdin;
\.


--
-- TOC entry 2589 (class 0 OID 0)
-- Dependencies: 214
-- Name: descuento_des_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('descuento_des_id_seq', 1, false);


--
-- TOC entry 2488 (class 0 OID 17033)
-- Dependencies: 215
-- Data for Name: diario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY diario (dia_id, dia_femision, dia_fvencimiento) FROM stdin;
\.


--
-- TOC entry 2590 (class 0 OID 0)
-- Dependencies: 216
-- Name: diario_dia_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('diario_dia_id_seq', 1, false);


--
-- TOC entry 2490 (class 0 OID 17038)
-- Dependencies: 217
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY empleado (emp_id, emp_nombre, emp_fecha) FROM stdin;
\.


--
-- TOC entry 2591 (class 0 OID 0)
-- Dependencies: 218
-- Name: empleado_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleado_emp_id_seq', 1, false);


--
-- TOC entry 2492 (class 0 OID 17043)
-- Dependencies: 219
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY horario (hor_id, hor_dia, hor_hora_entrada, hor_hora_salida) FROM stdin;
\.


--
-- TOC entry 2493 (class 0 OID 17047)
-- Dependencies: 220
-- Data for Name: horario_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY horario_empleado (hor_id, fkempleado, fkhorario, fktienda) FROM stdin;
\.


--
-- TOC entry 2592 (class 0 OID 0)
-- Dependencies: 221
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('horario_empleado_hor_id_seq', 1, false);


--
-- TOC entry 2593 (class 0 OID 0)
-- Dependencies: 222
-- Name: horario_hor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('horario_hor_id_seq', 1, false);


--
-- TOC entry 2496 (class 0 OID 17054)
-- Dependencies: 223
-- Data for Name: ing_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ing_pro (ing_id, fkproducto, fkingrediente) FROM stdin;
\.


--
-- TOC entry 2594 (class 0 OID 0)
-- Dependencies: 224
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ing_pro_ing_id_seq', 1, false);


--
-- TOC entry 2498 (class 0 OID 17059)
-- Dependencies: 225
-- Data for Name: ingrediente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ingrediente (ing_id, ing_nombre) FROM stdin;
\.


--
-- TOC entry 2595 (class 0 OID 0)
-- Dependencies: 226
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ingrediente_ing_id_seq', 1, false);


--
-- TOC entry 2500 (class 0 OID 17064)
-- Dependencies: 227
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY inventario (inv_id, inv_cantidad, inv_precio, fktienda) FROM stdin;
\.


--
-- TOC entry 2596 (class 0 OID 0)
-- Dependencies: 228
-- Name: inventario_inv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inventario_inv_id_seq', 1, false);


--
-- TOC entry 2502 (class 0 OID 17069)
-- Dependencies: 229
-- Data for Name: lugar; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY lugar (lug_id, lug_tipo, lug_nombre, fklugar) FROM stdin;
\.


--
-- TOC entry 2597 (class 0 OID 0)
-- Dependencies: 230
-- Name: lugar_lug_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('lugar_lug_id_seq', 1, false);


--
-- TOC entry 2504 (class 0 OID 17074)
-- Dependencies: 231
-- Data for Name: metodo_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY metodo_pago (met_id, met_nombre_titular, met_efectivo, met_fvencimiento, met_num_tarjeta, met_num_cheque, met_banco, met_tipo) FROM stdin;
\.


--
-- TOC entry 2598 (class 0 OID 0)
-- Dependencies: 232
-- Name: metodo_pago_met_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('metodo_pago_met_id_seq', 1, false);


--
-- TOC entry 2506 (class 0 OID 17083)
-- Dependencies: 233
-- Data for Name: pasillo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pasillo (pas_id, pas_num_anaquel, pas_zona_pasillo, fktienda, fkproducto) FROM stdin;
\.


--
-- TOC entry 2599 (class 0 OID 0)
-- Dependencies: 234
-- Name: pasillo_pas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pasillo_pas_id_seq', 1, false);


--
-- TOC entry 2508 (class 0 OID 17088)
-- Dependencies: 235
-- Data for Name: pedido; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pedido (ped_id, ped_descripcion, ped_fecha, ped_cantidad, ped_total, fkcliente, fkusuario) FROM stdin;
\.


--
-- TOC entry 2600 (class 0 OID 0)
-- Dependencies: 236
-- Name: pedido_ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pedido_ped_id_seq', 1, false);


--
-- TOC entry 2510 (class 0 OID 17096)
-- Dependencies: 237
-- Data for Name: pro_inv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pro_inv (pro_id, fkproducto, fkinventario) FROM stdin;
\.


--
-- TOC entry 2601 (class 0 OID 0)
-- Dependencies: 238
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pro_inv_pro_id_seq', 1, false);


--
-- TOC entry 2512 (class 0 OID 17101)
-- Dependencies: 239
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY producto (pro_id, pro_nombre, pro_relleno, pro_textura, pro_puntuacion, pro_azucar, fksabor, fktipo) FROM stdin;
\.


--
-- TOC entry 2602 (class 0 OID 0)
-- Dependencies: 240
-- Name: producto_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('producto_pro_id_seq', 1, false);


--
-- TOC entry 2514 (class 0 OID 17106)
-- Dependencies: 241
-- Data for Name: punto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY punto (pun_id, pun_cantidad, pun_fadquirido, fkpedido, fkusuario) FROM stdin;
\.


--
-- TOC entry 2603 (class 0 OID 0)
-- Dependencies: 242
-- Name: punto_pun_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('punto_pun_id_seq', 1, false);


--
-- TOC entry 2516 (class 0 OID 17111)
-- Dependencies: 243
-- Data for Name: sabor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sabor (sab_id, sab_tipo, sab_nombre) FROM stdin;
\.


--
-- TOC entry 2604 (class 0 OID 0)
-- Dependencies: 244
-- Name: sabor_sab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sabor_sab_id_seq', 1, false);


--
-- TOC entry 2518 (class 0 OID 17116)
-- Dependencies: 245
-- Data for Name: telefono; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY telefono (tel_id, tel_numero, tel_tipo, fkcliente) FROM stdin;
\.


--
-- TOC entry 2605 (class 0 OID 0)
-- Dependencies: 246
-- Name: telefono_tel_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('telefono_tel_id_seq', 1, false);


--
-- TOC entry 2520 (class 0 OID 17121)
-- Dependencies: 247
-- Data for Name: tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tienda (tie_id, tie_tipo, fklugar) FROM stdin;
\.


--
-- TOC entry 2606 (class 0 OID 0)
-- Dependencies: 248
-- Name: tienda_tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tienda_tie_id_seq', 1, false);


--
-- TOC entry 2522 (class 0 OID 17127)
-- Dependencies: 249
-- Data for Name: tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo (tip_id, tip_nombre) FROM stdin;
\.


--
-- TOC entry 2607 (class 0 OID 0)
-- Dependencies: 250
-- Name: tipo_tip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_tip_id_seq', 1, false);


--
-- TOC entry 2524 (class 0 OID 17132)
-- Dependencies: 251
-- Data for Name: usuario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY usuario (usu_id, usu_nombre, usu_contrasena, fkcliente, fkrol) FROM stdin;
\.


--
-- TOC entry 2608 (class 0 OID 0)
-- Dependencies: 252
-- Name: usuario_usu_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('usuario_usu_id_seq', 1, false);


--
-- TOC entry 2526 (class 0 OID 17137)
-- Dependencies: 253
-- Data for Name: venta_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY venta_pago (ven_id, fkpunto, fkpedido, fkmetodo_pago) FROM stdin;
\.


--
-- TOC entry 2609 (class 0 OID 0)
-- Dependencies: 254
-- Name: venta_pago_ven_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('venta_pago_ven_id_seq', 1, false);


--
-- TOC entry 2249 (class 2606 OID 17180)
-- Name: PK_Ing_ing; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ing_ing"
    ADD CONSTRAINT "PK_Ing_ing" PRIMARY KEY ("Ing_id", "FkIngrediente1", "FkIngrediente2");


--
-- TOC entry 2251 (class 2606 OID 17182)
-- Name: PK_Ped_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ped_Pro"
    ADD CONSTRAINT "PK_Ped_pro" PRIMARY KEY ("Ped_id", "FkTienda", "FkPedido", "FkProducto");


--
-- TOC entry 2253 (class 2606 OID 17184)
-- Name: PK_Pedido_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pedido_tienda"
    ADD CONSTRAINT "PK_Pedido_tienda" PRIMARY KEY ("Ped_id");


--
-- TOC entry 2255 (class 2606 OID 17186)
-- Name: PK_Pre_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pre_pro"
    ADD CONSTRAINT "PK_Pre_pro" PRIMARY KEY ("Pre_id", "FkProducto", "FkPresupuesto");


--
-- TOC entry 2257 (class 2606 OID 17188)
-- Name: PK_Presupuesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Presupuesto"
    ADD CONSTRAINT "PK_Presupuesto" PRIMARY KEY ("Pre_id");


--
-- TOC entry 2259 (class 2606 OID 17190)
-- Name: PK_Privilegio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Privilegio"
    ADD CONSTRAINT "PK_Privilegio" PRIMARY KEY ("Pri_id");


--
-- TOC entry 2261 (class 2606 OID 17192)
-- Name: PK_Rol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol"
    ADD CONSTRAINT "PK_Rol" PRIMARY KEY ("Rol_id");


--
-- TOC entry 2263 (class 2606 OID 17194)
-- Name: PK_Rol_priv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol_Priv"
    ADD CONSTRAINT "PK_Rol_priv" PRIMARY KEY ("Rol_id", "FkRol", "FkPrivilegio");


--
-- TOC entry 2265 (class 2606 OID 17196)
-- Name: PK_Sta_ped; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Sta_ped"
    ADD CONSTRAINT "PK_Sta_ped" PRIMARY KEY ("Sta_id", "FkPedido", "FkStatus");


--
-- TOC entry 2267 (class 2606 OID 17198)
-- Name: PK_Status; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Sta_id");


--
-- TOC entry 2269 (class 2606 OID 17200)
-- Name: PK_Tie_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_Pro"
    ADD CONSTRAINT "PK_Tie_pro" PRIMARY KEY ("Tie_id", "FkProducto", "FkPedido_tienda");


--
-- TOC entry 2271 (class 2606 OID 17202)
-- Name: PK_Tie_sta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_sta"
    ADD CONSTRAINT "PK_Tie_sta" PRIMARY KEY ("Tie_id", "FkStatus", "FkPedido_tienda");


--
-- TOC entry 2275 (class 2606 OID 17204)
-- Name: cliente_cli_ci_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_cli_ci_key UNIQUE (cli_ci);


--
-- TOC entry 2277 (class 2606 OID 17206)
-- Name: cliente_cli_numcarnet_key; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT cliente_cli_numcarnet_key UNIQUE (cli_numcarnet);


--
-- TOC entry 2273 (class 2606 OID 17208)
-- Name: pk_cli_lug; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cli_lug
    ADD CONSTRAINT pk_cli_lug PRIMARY KEY (fkcliente, fklugar, cli_id);


--
-- TOC entry 2279 (class 2606 OID 17210)
-- Name: pk_cliente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cliente
    ADD CONSTRAINT pk_cliente PRIMARY KEY (cli_id);


--
-- TOC entry 2281 (class 2606 OID 17212)
-- Name: pk_contacto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY contacto
    ADD CONSTRAINT pk_contacto PRIMARY KEY (con_id);


--
-- TOC entry 2283 (class 2606 OID 17214)
-- Name: pk_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (dep_id);


--
-- TOC entry 2285 (class 2606 OID 17216)
-- Name: pk_descuento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY descuento
    ADD CONSTRAINT pk_descuento PRIMARY KEY (des_id);


--
-- TOC entry 2287 (class 2606 OID 17218)
-- Name: pk_diario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY diario
    ADD CONSTRAINT pk_diario PRIMARY KEY (dia_id);


--
-- TOC entry 2289 (class 2606 OID 17220)
-- Name: pk_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (emp_id);


--
-- TOC entry 2291 (class 2606 OID 17222)
-- Name: pk_horario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario
    ADD CONSTRAINT pk_horario PRIMARY KEY (hor_id);


--
-- TOC entry 2293 (class 2606 OID 17224)
-- Name: pk_horario_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado
    ADD CONSTRAINT pk_horario_empleado PRIMARY KEY (hor_id, fkhorario, fkempleado);


--
-- TOC entry 2295 (class 2606 OID 17226)
-- Name: pk_ing_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ing_pro
    ADD CONSTRAINT pk_ing_pro PRIMARY KEY (ing_id, fkproducto, fkingrediente);


--
-- TOC entry 2297 (class 2606 OID 17228)
-- Name: pk_ingrediente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ingrediente
    ADD CONSTRAINT pk_ingrediente PRIMARY KEY (ing_id);


--
-- TOC entry 2299 (class 2606 OID 17230)
-- Name: pk_inventario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT pk_inventario PRIMARY KEY (inv_id);


--
-- TOC entry 2301 (class 2606 OID 17232)
-- Name: pk_lugar; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY lugar
    ADD CONSTRAINT pk_lugar PRIMARY KEY (lug_id);


--
-- TOC entry 2303 (class 2606 OID 17234)
-- Name: pk_metodo_pago; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY metodo_pago
    ADD CONSTRAINT pk_metodo_pago PRIMARY KEY (met_id);


--
-- TOC entry 2305 (class 2606 OID 17236)
-- Name: pk_pasillo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasillo
    ADD CONSTRAINT pk_pasillo PRIMARY KEY (pas_id, fkproducto, fktienda);


--
-- TOC entry 2307 (class 2606 OID 17238)
-- Name: pk_pedido; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pedido
    ADD CONSTRAINT pk_pedido PRIMARY KEY (ped_id);


--
-- TOC entry 2309 (class 2606 OID 17240)
-- Name: pk_pro_inv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pro_inv
    ADD CONSTRAINT pk_pro_inv PRIMARY KEY (pro_id, fkproducto, fkinventario);


--
-- TOC entry 2311 (class 2606 OID 17242)
-- Name: pk_producto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT pk_producto PRIMARY KEY (pro_id);


--
-- TOC entry 2313 (class 2606 OID 17244)
-- Name: pk_punto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY punto
    ADD CONSTRAINT pk_punto PRIMARY KEY (pun_id);


--
-- TOC entry 2315 (class 2606 OID 17246)
-- Name: pk_sabor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sabor
    ADD CONSTRAINT pk_sabor PRIMARY KEY (sab_id);


--
-- TOC entry 2317 (class 2606 OID 17248)
-- Name: pk_telefono; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY telefono
    ADD CONSTRAINT pk_telefono PRIMARY KEY (tel_id);


--
-- TOC entry 2319 (class 2606 OID 17250)
-- Name: pk_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tienda
    ADD CONSTRAINT pk_tienda PRIMARY KEY (tie_id);


--
-- TOC entry 2321 (class 2606 OID 17252)
-- Name: pk_tipo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo
    ADD CONSTRAINT pk_tipo PRIMARY KEY (tip_id);


--
-- TOC entry 2323 (class 2606 OID 17254)
-- Name: pk_usuario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY usuario
    ADD CONSTRAINT pk_usuario PRIMARY KEY (usu_id);


--
-- TOC entry 2325 (class 2606 OID 17256)
-- Name: pk_venta_pago; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY venta_pago
    ADD CONSTRAINT pk_venta_pago PRIMARY KEY (ven_id);


--
-- TOC entry 2327 (class 2606 OID 17268)
-- Name: fkempleado; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado
    ADD CONSTRAINT fkempleado FOREIGN KEY (fkempleado) REFERENCES empleado(emp_id);


--
-- TOC entry 2328 (class 2606 OID 17273)
-- Name: fkhorario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado
    ADD CONSTRAINT fkhorario FOREIGN KEY (fkhorario) REFERENCES horario(hor_id);


--
-- TOC entry 2331 (class 2606 OID 17323)
-- Name: fkingrediente; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ing_pro
    ADD CONSTRAINT fkingrediente FOREIGN KEY (fkingrediente) REFERENCES ingrediente(ing_id);


--
-- TOC entry 2336 (class 2606 OID 17313)
-- Name: fkinventario; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pro_inv
    ADD CONSTRAINT fkinventario FOREIGN KEY (fkinventario) REFERENCES inventario(inv_id);


--
-- TOC entry 2339 (class 2606 OID 17258)
-- Name: fklugar; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tienda
    ADD CONSTRAINT fklugar FOREIGN KEY (fklugar) REFERENCES lugar(lug_id);


--
-- TOC entry 2334 (class 2606 OID 17288)
-- Name: fkproducto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasillo
    ADD CONSTRAINT fkproducto FOREIGN KEY (fkproducto) REFERENCES producto(pro_id);


--
-- TOC entry 2335 (class 2606 OID 17308)
-- Name: fkproducto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pro_inv
    ADD CONSTRAINT fkproducto FOREIGN KEY (fkproducto) REFERENCES producto(pro_id);


--
-- TOC entry 2330 (class 2606 OID 17318)
-- Name: fkproducto; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ing_pro
    ADD CONSTRAINT fkproducto FOREIGN KEY (fkproducto) REFERENCES producto(pro_id);


--
-- TOC entry 2337 (class 2606 OID 17298)
-- Name: fksabor; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT fksabor FOREIGN KEY (fksabor) REFERENCES sabor(sab_id);


--
-- TOC entry 2326 (class 2606 OID 17263)
-- Name: fktienda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT fktienda FOREIGN KEY (fktienda) REFERENCES tienda(tie_id);


--
-- TOC entry 2329 (class 2606 OID 17278)
-- Name: fktienda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado
    ADD CONSTRAINT fktienda FOREIGN KEY (fktienda) REFERENCES tienda(tie_id);


--
-- TOC entry 2333 (class 2606 OID 17283)
-- Name: fktienda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasillo
    ADD CONSTRAINT fktienda FOREIGN KEY (fktienda) REFERENCES tienda(tie_id);


--
-- TOC entry 2332 (class 2606 OID 17293)
-- Name: fktienda; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT fktienda FOREIGN KEY (fktienda) REFERENCES tienda(tie_id);


--
-- TOC entry 2338 (class 2606 OID 17303)
-- Name: fktipo; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT fktipo FOREIGN KEY (fktipo) REFERENCES tipo(tip_id);


--
-- TOC entry 2534 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-05-29 21:22:30

--
-- PostgreSQL database dump complete
--

