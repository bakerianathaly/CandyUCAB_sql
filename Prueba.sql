--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.13
-- Dumped by pg_dump version 9.5.5

-- Started on 2018-05-27 23:14:53

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
-- TOC entry 2379 (class 0 OID 0)
-- Dependencies: 1
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 181 (class 1259 OID 16465)
-- Name: Ing_ing; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Ing_ing" (
    "Ing_id" integer NOT NULL,
    "FkIngrediente1" integer NOT NULL,
    "FkIngrediente2" integer NOT NULL
);


ALTER TABLE "Ing_ing" OWNER TO postgres;

--
-- TOC entry 182 (class 1259 OID 16468)
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
-- TOC entry 2380 (class 0 OID 0)
-- Dependencies: 182
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Ing_ing_Ing_id_seq" OWNED BY "Ing_ing"."Ing_id";


--
-- TOC entry 183 (class 1259 OID 16470)
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
-- TOC entry 184 (class 1259 OID 16476)
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
-- TOC entry 2381 (class 0 OID 0)
-- Dependencies: 184
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Ped_Pro_Ped_id_seq" OWNED BY "Ped_Pro"."Ped_id";


--
-- TOC entry 185 (class 1259 OID 16478)
-- Name: Pedido_tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Pedido_tienda" (
    "Ped_descripcion" character varying(200)[] NOT NULL,
    "Ped_id" integer NOT NULL
);


ALTER TABLE "Pedido_tienda" OWNER TO postgres;

--
-- TOC entry 186 (class 1259 OID 16484)
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
-- TOC entry 2382 (class 0 OID 0)
-- Dependencies: 186
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pedido_tienda_Ped_id_seq" OWNED BY "Pedido_tienda"."Ped_id";


--
-- TOC entry 187 (class 1259 OID 16486)
-- Name: Pre_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Pre_pro" (
    "FkProducto" integer NOT NULL,
    "FkPresupuesto" integer NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE "Pre_pro" OWNER TO postgres;

--
-- TOC entry 188 (class 1259 OID 16489)
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
-- TOC entry 2383 (class 0 OID 0)
-- Dependencies: 188
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Pre_pro_Pre_id_seq" OWNED BY "Pre_pro"."Pre_id";


--
-- TOC entry 189 (class 1259 OID 16491)
-- Name: Presupuesto; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Presupuesto" (
    "Pre_descripcion" character varying(200)[] NOT NULL,
    "Pre_id" integer NOT NULL
);


ALTER TABLE "Presupuesto" OWNER TO postgres;

--
-- TOC entry 190 (class 1259 OID 16497)
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
-- TOC entry 2384 (class 0 OID 0)
-- Dependencies: 190
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Presupuesto_Pre_id_seq" OWNED BY "Presupuesto"."Pre_id";


--
-- TOC entry 191 (class 1259 OID 16499)
-- Name: Privilegio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Privilegio" (
    "Pri_nombre" character varying(30)[] NOT NULL,
    "Pri_id" integer NOT NULL
);


ALTER TABLE "Privilegio" OWNER TO postgres;

--
-- TOC entry 192 (class 1259 OID 16505)
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
-- TOC entry 2385 (class 0 OID 0)
-- Dependencies: 192
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Privilegio_Pri_id_seq" OWNED BY "Privilegio"."Pri_id";


--
-- TOC entry 193 (class 1259 OID 16507)
-- Name: Rol; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Rol" (
    "Rol_tipo" character varying(50)[] NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE "Rol" OWNER TO postgres;

--
-- TOC entry 194 (class 1259 OID 16513)
-- Name: Rol_Priv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Rol_Priv" (
    "FkRol" integer NOT NULL,
    "FkPrivilegio" integer NOT NULL,
    "Rol_id" integer NOT NULL
);


ALTER TABLE "Rol_Priv" OWNER TO postgres;

--
-- TOC entry 195 (class 1259 OID 16516)
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
-- TOC entry 2386 (class 0 OID 0)
-- Dependencies: 195
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Rol_Priv_Rol_id_seq" OWNED BY "Rol_Priv"."Rol_id";


--
-- TOC entry 196 (class 1259 OID 16518)
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
-- TOC entry 2387 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Rol_Rol_id_seq" OWNED BY "Rol"."Rol_id";


--
-- TOC entry 197 (class 1259 OID 16520)
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
-- TOC entry 198 (class 1259 OID 16523)
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
-- TOC entry 2388 (class 0 OID 0)
-- Dependencies: 198
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Sta_ped_Sta_id_seq" OWNED BY "Sta_ped"."Sta_id";


--
-- TOC entry 199 (class 1259 OID 16525)
-- Name: Status; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "Status" (
    "Sta_tipo" character varying(50)[] NOT NULL,
    "Sta_id" integer NOT NULL
);


ALTER TABLE "Status" OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 16531)
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
-- TOC entry 2389 (class 0 OID 0)
-- Dependencies: 200
-- Name: Status_Sta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Status_Sta_id_seq" OWNED BY "Status"."Sta_id";


--
-- TOC entry 201 (class 1259 OID 16533)
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
-- TOC entry 202 (class 1259 OID 16536)
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
-- TOC entry 2390 (class 0 OID 0)
-- Dependencies: 202
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tie_Pro_Tie_id_seq" OWNED BY "Tie_Pro"."Tie_id";


--
-- TOC entry 203 (class 1259 OID 16538)
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
-- TOC entry 204 (class 1259 OID 16541)
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
-- TOC entry 2391 (class 0 OID 0)
-- Dependencies: 204
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "Tie_sta_Tie_id_seq" OWNED BY "Tie_sta"."Tie_id";


--
-- TOC entry 208 (class 1259 OID 16660)
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
-- TOC entry 207 (class 1259 OID 16658)
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
-- TOC entry 2392 (class 0 OID 0)
-- Dependencies: 207
-- Name: departamento_dep_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE departamento_dep_id_seq OWNED BY departamento.dep_id;


--
-- TOC entry 210 (class 1259 OID 16668)
-- Name: empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE empleado (
    emp_id integer NOT NULL,
    emp_nombre character varying(50) NOT NULL,
    emp_fecha date NOT NULL
);


ALTER TABLE empleado OWNER TO postgres;

--
-- TOC entry 209 (class 1259 OID 16666)
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
-- TOC entry 2393 (class 0 OID 0)
-- Dependencies: 209
-- Name: empleado_emp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleado_emp_id_seq OWNED BY empleado.emp_id;


--
-- TOC entry 214 (class 1259 OID 16684)
-- Name: horario; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE horario (
    hor_id integer NOT NULL,
    hor_dia character varying(10) NOT NULL,
    hor_hora_entrada date NOT NULL,
    hor_hora_salida date NOT NULL,
    CONSTRAINT check_dia CHECK (((hor_dia)::text = ANY ((ARRAY['lunes'::character varying, 'martes'::character varying, 'miercoles'::character varying, 'jueves'::character varying, 'viernes'::character varying, 'sabado'::character varying, 'domingo'::character varying])::text[])))
);


ALTER TABLE horario OWNER TO postgres;

--
-- TOC entry 212 (class 1259 OID 16676)
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
-- TOC entry 211 (class 1259 OID 16674)
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
-- TOC entry 2394 (class 0 OID 0)
-- Dependencies: 211
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE horario_empleado_hor_id_seq OWNED BY horario_empleado.hor_id;


--
-- TOC entry 213 (class 1259 OID 16682)
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
-- TOC entry 2395 (class 0 OID 0)
-- Dependencies: 213
-- Name: horario_hor_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE horario_hor_id_seq OWNED BY horario.hor_id;


--
-- TOC entry 228 (class 1259 OID 16741)
-- Name: ing_pro; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ing_pro (
    ing_id integer NOT NULL,
    pkproducto integer NOT NULL,
    pkingrediente integer NOT NULL
);


ALTER TABLE ing_pro OWNER TO postgres;

--
-- TOC entry 227 (class 1259 OID 16739)
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
-- TOC entry 2396 (class 0 OID 0)
-- Dependencies: 227
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ing_pro_ing_id_seq OWNED BY ing_pro.ing_id;


--
-- TOC entry 230 (class 1259 OID 16750)
-- Name: ingrediente; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ingrediente (
    ing_id integer NOT NULL,
    ing_nombre character varying(50) NOT NULL
);


ALTER TABLE ingrediente OWNER TO postgres;

--
-- TOC entry 229 (class 1259 OID 16748)
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
-- TOC entry 2397 (class 0 OID 0)
-- Dependencies: 229
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ingrediente_ing_id_seq OWNED BY ingrediente.ing_id;


--
-- TOC entry 218 (class 1259 OID 16701)
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
-- TOC entry 217 (class 1259 OID 16699)
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
-- TOC entry 2398 (class 0 OID 0)
-- Dependencies: 217
-- Name: inventario_inv_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE inventario_inv_id_seq OWNED BY inventario.inv_id;


--
-- TOC entry 216 (class 1259 OID 16693)
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
-- TOC entry 215 (class 1259 OID 16691)
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
-- TOC entry 2399 (class 0 OID 0)
-- Dependencies: 215
-- Name: pasillo_pas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pasillo_pas_id_seq OWNED BY pasillo.pas_id;


--
-- TOC entry 222 (class 1259 OID 16717)
-- Name: pro_inv; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pro_inv (
    pro_id integer NOT NULL,
    fkproducto integer NOT NULL,
    fkinventario integer NOT NULL
);


ALTER TABLE pro_inv OWNER TO postgres;

--
-- TOC entry 221 (class 1259 OID 16715)
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
-- TOC entry 2400 (class 0 OID 0)
-- Dependencies: 221
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pro_inv_pro_id_seq OWNED BY pro_inv.pro_id;


--
-- TOC entry 220 (class 1259 OID 16709)
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
-- TOC entry 219 (class 1259 OID 16707)
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
-- TOC entry 2401 (class 0 OID 0)
-- Dependencies: 219
-- Name: producto_pro_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE producto_pro_id_seq OWNED BY producto.pro_id;


--
-- TOC entry 226 (class 1259 OID 16733)
-- Name: sabor; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sabor (
    sab_id integer NOT NULL,
    sab_tipo character varying(50) NOT NULL,
    sab_nombre character varying(50) NOT NULL
);


ALTER TABLE sabor OWNER TO postgres;

--
-- TOC entry 225 (class 1259 OID 16731)
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
-- TOC entry 2402 (class 0 OID 0)
-- Dependencies: 225
-- Name: sabor_sab_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sabor_sab_id_seq OWNED BY sabor.sab_id;


--
-- TOC entry 206 (class 1259 OID 16652)
-- Name: tienda; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tienda (
    tie_id integer NOT NULL,
    tie_tipo character varying(20) NOT NULL,
    fklugar integer NOT NULL,
    CONSTRAINT check_tipo CHECK (((tie_tipo)::text = ANY ((ARRAY['MiniCandyUCAB'::character varying, 'CandyUCAB'::character varying])::text[])))
);


ALTER TABLE tienda OWNER TO postgres;

--
-- TOC entry 205 (class 1259 OID 16650)
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
-- TOC entry 2403 (class 0 OID 0)
-- Dependencies: 205
-- Name: tienda_tie_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tienda_tie_id_seq OWNED BY tienda.tie_id;


--
-- TOC entry 224 (class 1259 OID 16725)
-- Name: tipo; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo (
    tip_id integer NOT NULL,
    tip_nombre character varying(50) NOT NULL
);


ALTER TABLE tipo OWNER TO postgres;

--
-- TOC entry 223 (class 1259 OID 16723)
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
-- TOC entry 2404 (class 0 OID 0)
-- Dependencies: 223
-- Name: tipo_tip_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_tip_id_seq OWNED BY tipo.tip_id;


--
-- TOC entry 2131 (class 2604 OID 16543)
-- Name: Ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ing_ing" ALTER COLUMN "Ing_id" SET DEFAULT nextval('"Ing_ing_Ing_id_seq"'::regclass);


--
-- TOC entry 2132 (class 2604 OID 16544)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ped_Pro" ALTER COLUMN "Ped_id" SET DEFAULT nextval('"Ped_Pro_Ped_id_seq"'::regclass);


--
-- TOC entry 2133 (class 2604 OID 16545)
-- Name: Ped_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pedido_tienda" ALTER COLUMN "Ped_id" SET DEFAULT nextval('"Pedido_tienda_Ped_id_seq"'::regclass);


--
-- TOC entry 2134 (class 2604 OID 16546)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pre_pro" ALTER COLUMN "Pre_id" SET DEFAULT nextval('"Pre_pro_Pre_id_seq"'::regclass);


--
-- TOC entry 2135 (class 2604 OID 16547)
-- Name: Pre_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Presupuesto" ALTER COLUMN "Pre_id" SET DEFAULT nextval('"Presupuesto_Pre_id_seq"'::regclass);


--
-- TOC entry 2136 (class 2604 OID 16548)
-- Name: Pri_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Privilegio" ALTER COLUMN "Pri_id" SET DEFAULT nextval('"Privilegio_Pri_id_seq"'::regclass);


--
-- TOC entry 2137 (class 2604 OID 16549)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol" ALTER COLUMN "Rol_id" SET DEFAULT nextval('"Rol_Rol_id_seq"'::regclass);


--
-- TOC entry 2138 (class 2604 OID 16550)
-- Name: Rol_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol_Priv" ALTER COLUMN "Rol_id" SET DEFAULT nextval('"Rol_Priv_Rol_id_seq"'::regclass);


--
-- TOC entry 2139 (class 2604 OID 16551)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Sta_ped" ALTER COLUMN "Sta_id" SET DEFAULT nextval('"Sta_ped_Sta_id_seq"'::regclass);


--
-- TOC entry 2140 (class 2604 OID 16552)
-- Name: Sta_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Status" ALTER COLUMN "Sta_id" SET DEFAULT nextval('"Status_Sta_id_seq"'::regclass);


--
-- TOC entry 2141 (class 2604 OID 16553)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_Pro" ALTER COLUMN "Tie_id" SET DEFAULT nextval('"Tie_Pro_Tie_id_seq"'::regclass);


--
-- TOC entry 2142 (class 2604 OID 16554)
-- Name: Tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_sta" ALTER COLUMN "Tie_id" SET DEFAULT nextval('"Tie_sta_Tie_id_seq"'::regclass);


--
-- TOC entry 2145 (class 2604 OID 16663)
-- Name: dep_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento ALTER COLUMN dep_id SET DEFAULT nextval('departamento_dep_id_seq'::regclass);


--
-- TOC entry 2146 (class 2604 OID 16671)
-- Name: emp_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado ALTER COLUMN emp_id SET DEFAULT nextval('empleado_emp_id_seq'::regclass);


--
-- TOC entry 2148 (class 2604 OID 16687)
-- Name: hor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario ALTER COLUMN hor_id SET DEFAULT nextval('horario_hor_id_seq'::regclass);


--
-- TOC entry 2147 (class 2604 OID 16679)
-- Name: hor_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado ALTER COLUMN hor_id SET DEFAULT nextval('horario_empleado_hor_id_seq'::regclass);


--
-- TOC entry 2156 (class 2604 OID 16744)
-- Name: ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ing_pro ALTER COLUMN ing_id SET DEFAULT nextval('ing_pro_ing_id_seq'::regclass);


--
-- TOC entry 2157 (class 2604 OID 16753)
-- Name: ing_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ingrediente ALTER COLUMN ing_id SET DEFAULT nextval('ingrediente_ing_id_seq'::regclass);


--
-- TOC entry 2151 (class 2604 OID 16704)
-- Name: inv_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario ALTER COLUMN inv_id SET DEFAULT nextval('inventario_inv_id_seq'::regclass);


--
-- TOC entry 2150 (class 2604 OID 16696)
-- Name: pas_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasillo ALTER COLUMN pas_id SET DEFAULT nextval('pasillo_pas_id_seq'::regclass);


--
-- TOC entry 2153 (class 2604 OID 16720)
-- Name: pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pro_inv ALTER COLUMN pro_id SET DEFAULT nextval('pro_inv_pro_id_seq'::regclass);


--
-- TOC entry 2152 (class 2604 OID 16712)
-- Name: pro_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto ALTER COLUMN pro_id SET DEFAULT nextval('producto_pro_id_seq'::regclass);


--
-- TOC entry 2155 (class 2604 OID 16736)
-- Name: sab_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sabor ALTER COLUMN sab_id SET DEFAULT nextval('sabor_sab_id_seq'::regclass);


--
-- TOC entry 2143 (class 2604 OID 16655)
-- Name: tie_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tienda ALTER COLUMN tie_id SET DEFAULT nextval('tienda_tie_id_seq'::regclass);


--
-- TOC entry 2154 (class 2604 OID 16728)
-- Name: tip_id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo ALTER COLUMN tip_id SET DEFAULT nextval('tipo_tip_id_seq'::regclass);


--
-- TOC entry 2322 (class 0 OID 16465)
-- Dependencies: 181
-- Data for Name: Ing_ing; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ing_ing" ("Ing_id", "FkIngrediente1", "FkIngrediente2") FROM stdin;
\.


--
-- TOC entry 2405 (class 0 OID 0)
-- Dependencies: 182
-- Name: Ing_ing_Ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ing_ing_Ing_id_seq"', 1, false);


--
-- TOC entry 2324 (class 0 OID 16470)
-- Dependencies: 183
-- Data for Name: Ped_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Ped_Pro" ("Ped_precio", "Ped_cantidad", "FkTienda", "FkProducto", "FkPedido", "Ped_id") FROM stdin;
\.


--
-- TOC entry 2406 (class 0 OID 0)
-- Dependencies: 184
-- Name: Ped_Pro_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Ped_Pro_Ped_id_seq"', 1, false);


--
-- TOC entry 2326 (class 0 OID 16478)
-- Dependencies: 185
-- Data for Name: Pedido_tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pedido_tienda" ("Ped_descripcion", "Ped_id") FROM stdin;
\.


--
-- TOC entry 2407 (class 0 OID 0)
-- Dependencies: 186
-- Name: Pedido_tienda_Ped_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pedido_tienda_Ped_id_seq"', 1, false);


--
-- TOC entry 2328 (class 0 OID 16486)
-- Dependencies: 187
-- Data for Name: Pre_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Pre_pro" ("FkProducto", "FkPresupuesto", "Pre_id") FROM stdin;
\.


--
-- TOC entry 2408 (class 0 OID 0)
-- Dependencies: 188
-- Name: Pre_pro_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Pre_pro_Pre_id_seq"', 1, false);


--
-- TOC entry 2330 (class 0 OID 16491)
-- Dependencies: 189
-- Data for Name: Presupuesto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Presupuesto" ("Pre_descripcion", "Pre_id") FROM stdin;
\.


--
-- TOC entry 2409 (class 0 OID 0)
-- Dependencies: 190
-- Name: Presupuesto_Pre_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Presupuesto_Pre_id_seq"', 1, false);


--
-- TOC entry 2332 (class 0 OID 16499)
-- Dependencies: 191
-- Data for Name: Privilegio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Privilegio" ("Pri_nombre", "Pri_id") FROM stdin;
\.


--
-- TOC entry 2410 (class 0 OID 0)
-- Dependencies: 192
-- Name: Privilegio_Pri_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Privilegio_Pri_id_seq"', 1, false);


--
-- TOC entry 2334 (class 0 OID 16507)
-- Dependencies: 193
-- Data for Name: Rol; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Rol" ("Rol_tipo", "Rol_id") FROM stdin;
\.


--
-- TOC entry 2335 (class 0 OID 16513)
-- Dependencies: 194
-- Data for Name: Rol_Priv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Rol_Priv" ("FkRol", "FkPrivilegio", "Rol_id") FROM stdin;
\.


--
-- TOC entry 2411 (class 0 OID 0)
-- Dependencies: 195
-- Name: Rol_Priv_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Rol_Priv_Rol_id_seq"', 1, false);


--
-- TOC entry 2412 (class 0 OID 0)
-- Dependencies: 196
-- Name: Rol_Rol_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Rol_Rol_id_seq"', 1, false);


--
-- TOC entry 2338 (class 0 OID 16520)
-- Dependencies: 197
-- Data for Name: Sta_ped; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Sta_ped" ("Sta_finicial", "Sta_ffinal", "FkStatus", "FkPedido", "Sta_id") FROM stdin;
\.


--
-- TOC entry 2413 (class 0 OID 0)
-- Dependencies: 198
-- Name: Sta_ped_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Sta_ped_Sta_id_seq"', 1, false);


--
-- TOC entry 2340 (class 0 OID 16525)
-- Dependencies: 199
-- Data for Name: Status; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Status" ("Sta_tipo", "Sta_id") FROM stdin;
\.


--
-- TOC entry 2414 (class 0 OID 0)
-- Dependencies: 200
-- Name: Status_Sta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Status_Sta_id_seq"', 1, false);


--
-- TOC entry 2342 (class 0 OID 16533)
-- Dependencies: 201
-- Data for Name: Tie_Pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tie_Pro" ("Tie_cantidad", "FkProducto", "FkPedido_tienda", "Tie_id") FROM stdin;
\.


--
-- TOC entry 2415 (class 0 OID 0)
-- Dependencies: 202
-- Name: Tie_Pro_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tie_Pro_Tie_id_seq"', 1, false);


--
-- TOC entry 2344 (class 0 OID 16538)
-- Dependencies: 203
-- Data for Name: Tie_sta; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "Tie_sta" ("Tie_finicial", "Tie_ffinal", "FkStatus", "FkPedido_tienda", "Tie_id") FROM stdin;
\.


--
-- TOC entry 2416 (class 0 OID 0)
-- Dependencies: 204
-- Name: Tie_sta_Tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"Tie_sta_Tie_id_seq"', 1, false);


--
-- TOC entry 2349 (class 0 OID 16660)
-- Dependencies: 208
-- Data for Name: departamento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY departamento (dep_id, dep_nombre, dep_tipo, fktienda) FROM stdin;
\.


--
-- TOC entry 2417 (class 0 OID 0)
-- Dependencies: 207
-- Name: departamento_dep_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('departamento_dep_id_seq', 1, false);


--
-- TOC entry 2351 (class 0 OID 16668)
-- Dependencies: 210
-- Data for Name: empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY empleado (emp_id, emp_nombre, emp_fecha) FROM stdin;
\.


--
-- TOC entry 2418 (class 0 OID 0)
-- Dependencies: 209
-- Name: empleado_emp_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleado_emp_id_seq', 1, false);


--
-- TOC entry 2355 (class 0 OID 16684)
-- Dependencies: 214
-- Data for Name: horario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY horario (hor_id, hor_dia, hor_hora_entrada, hor_hora_salida) FROM stdin;
\.


--
-- TOC entry 2353 (class 0 OID 16676)
-- Dependencies: 212
-- Data for Name: horario_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY horario_empleado (hor_id, fkempleado, fkhorario, fktienda) FROM stdin;
\.


--
-- TOC entry 2419 (class 0 OID 0)
-- Dependencies: 211
-- Name: horario_empleado_hor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('horario_empleado_hor_id_seq', 1, false);


--
-- TOC entry 2420 (class 0 OID 0)
-- Dependencies: 213
-- Name: horario_hor_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('horario_hor_id_seq', 1, false);


--
-- TOC entry 2369 (class 0 OID 16741)
-- Dependencies: 228
-- Data for Name: ing_pro; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ing_pro (ing_id, pkproducto, pkingrediente) FROM stdin;
\.


--
-- TOC entry 2421 (class 0 OID 0)
-- Dependencies: 227
-- Name: ing_pro_ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ing_pro_ing_id_seq', 1, false);


--
-- TOC entry 2371 (class 0 OID 16750)
-- Dependencies: 230
-- Data for Name: ingrediente; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ingrediente (ing_id, ing_nombre) FROM stdin;
\.


--
-- TOC entry 2422 (class 0 OID 0)
-- Dependencies: 229
-- Name: ingrediente_ing_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ingrediente_ing_id_seq', 1, false);


--
-- TOC entry 2359 (class 0 OID 16701)
-- Dependencies: 218
-- Data for Name: inventario; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY inventario (inv_id, inv_cantidad, inv_precio, fktienda) FROM stdin;
\.


--
-- TOC entry 2423 (class 0 OID 0)
-- Dependencies: 217
-- Name: inventario_inv_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('inventario_inv_id_seq', 1, false);


--
-- TOC entry 2357 (class 0 OID 16693)
-- Dependencies: 216
-- Data for Name: pasillo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pasillo (pas_id, pas_num_anaquel, pas_zona_pasillo, fktienda, fkproducto) FROM stdin;
\.


--
-- TOC entry 2424 (class 0 OID 0)
-- Dependencies: 215
-- Name: pasillo_pas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pasillo_pas_id_seq', 1, false);


--
-- TOC entry 2363 (class 0 OID 16717)
-- Dependencies: 222
-- Data for Name: pro_inv; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pro_inv (pro_id, fkproducto, fkinventario) FROM stdin;
\.


--
-- TOC entry 2425 (class 0 OID 0)
-- Dependencies: 221
-- Name: pro_inv_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pro_inv_pro_id_seq', 1, false);


--
-- TOC entry 2361 (class 0 OID 16709)
-- Dependencies: 220
-- Data for Name: producto; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY producto (pro_id, pro_nombre, pro_relleno, pro_textura, pro_puntuacion, pro_azucar, fksabor, fktipo) FROM stdin;
\.


--
-- TOC entry 2426 (class 0 OID 0)
-- Dependencies: 219
-- Name: producto_pro_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('producto_pro_id_seq', 1, false);


--
-- TOC entry 2367 (class 0 OID 16733)
-- Dependencies: 226
-- Data for Name: sabor; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sabor (sab_id, sab_tipo, sab_nombre) FROM stdin;
\.


--
-- TOC entry 2427 (class 0 OID 0)
-- Dependencies: 225
-- Name: sabor_sab_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sabor_sab_id_seq', 1, false);


--
-- TOC entry 2347 (class 0 OID 16652)
-- Dependencies: 206
-- Data for Name: tienda; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tienda (tie_id, tie_tipo, fklugar) FROM stdin;
\.


--
-- TOC entry 2428 (class 0 OID 0)
-- Dependencies: 205
-- Name: tienda_tie_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tienda_tie_id_seq', 1, false);


--
-- TOC entry 2365 (class 0 OID 16725)
-- Dependencies: 224
-- Data for Name: tipo; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo (tip_id, tip_nombre) FROM stdin;
\.


--
-- TOC entry 2429 (class 0 OID 0)
-- Dependencies: 223
-- Name: tipo_tip_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_tip_id_seq', 1, false);


--
-- TOC entry 2159 (class 2606 OID 16556)
-- Name: PK_Ing_ing; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ing_ing"
    ADD CONSTRAINT "PK_Ing_ing" PRIMARY KEY ("Ing_id", "FkIngrediente1", "FkIngrediente2");


--
-- TOC entry 2161 (class 2606 OID 16558)
-- Name: PK_Ped_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Ped_Pro"
    ADD CONSTRAINT "PK_Ped_pro" PRIMARY KEY ("Ped_id", "FkTienda", "FkPedido", "FkProducto");


--
-- TOC entry 2163 (class 2606 OID 16560)
-- Name: PK_Pedido_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pedido_tienda"
    ADD CONSTRAINT "PK_Pedido_tienda" PRIMARY KEY ("Ped_id");


--
-- TOC entry 2165 (class 2606 OID 16562)
-- Name: PK_Pre_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Pre_pro"
    ADD CONSTRAINT "PK_Pre_pro" PRIMARY KEY ("Pre_id", "FkProducto", "FkPresupuesto");


--
-- TOC entry 2167 (class 2606 OID 16564)
-- Name: PK_Presupuesto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Presupuesto"
    ADD CONSTRAINT "PK_Presupuesto" PRIMARY KEY ("Pre_id");


--
-- TOC entry 2169 (class 2606 OID 16566)
-- Name: PK_Privilegio; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Privilegio"
    ADD CONSTRAINT "PK_Privilegio" PRIMARY KEY ("Pri_id");


--
-- TOC entry 2171 (class 2606 OID 16568)
-- Name: PK_Rol; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol"
    ADD CONSTRAINT "PK_Rol" PRIMARY KEY ("Rol_id");


--
-- TOC entry 2173 (class 2606 OID 16570)
-- Name: PK_Rol_priv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Rol_Priv"
    ADD CONSTRAINT "PK_Rol_priv" PRIMARY KEY ("Rol_id", "FkRol", "FkPrivilegio");


--
-- TOC entry 2175 (class 2606 OID 16572)
-- Name: PK_Sta_ped; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Sta_ped"
    ADD CONSTRAINT "PK_Sta_ped" PRIMARY KEY ("Sta_id", "FkPedido", "FkStatus");


--
-- TOC entry 2177 (class 2606 OID 16574)
-- Name: PK_Status; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Status"
    ADD CONSTRAINT "PK_Status" PRIMARY KEY ("Sta_id");


--
-- TOC entry 2179 (class 2606 OID 16576)
-- Name: PK_Tie_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_Pro"
    ADD CONSTRAINT "PK_Tie_pro" PRIMARY KEY ("Tie_id", "FkProducto", "FkPedido_tienda");


--
-- TOC entry 2181 (class 2606 OID 16578)
-- Name: PK_Tie_sta; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "Tie_sta"
    ADD CONSTRAINT "PK_Tie_sta" PRIMARY KEY ("Tie_id", "FkStatus", "FkPedido_tienda");


--
-- TOC entry 2185 (class 2606 OID 16665)
-- Name: pk_departamento; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY departamento
    ADD CONSTRAINT pk_departamento PRIMARY KEY (dep_id);


--
-- TOC entry 2187 (class 2606 OID 16673)
-- Name: pk_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleado
    ADD CONSTRAINT pk_empleado PRIMARY KEY (emp_id);


--
-- TOC entry 2191 (class 2606 OID 16690)
-- Name: pk_horario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario
    ADD CONSTRAINT pk_horario PRIMARY KEY (hor_id);


--
-- TOC entry 2189 (class 2606 OID 16681)
-- Name: pk_horario_empleado; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY horario_empleado
    ADD CONSTRAINT pk_horario_empleado PRIMARY KEY (hor_id, fkhorario, fkempleado);


--
-- TOC entry 2205 (class 2606 OID 16746)
-- Name: pk_ing_pro; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ing_pro
    ADD CONSTRAINT pk_ing_pro PRIMARY KEY (ing_id, pkproducto, pkingrediente);


--
-- TOC entry 2207 (class 2606 OID 16755)
-- Name: pk_ingrediente; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ingrediente
    ADD CONSTRAINT pk_ingrediente PRIMARY KEY (ing_id);


--
-- TOC entry 2195 (class 2606 OID 16706)
-- Name: pk_inventario; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY inventario
    ADD CONSTRAINT pk_inventario PRIMARY KEY (inv_id);


--
-- TOC entry 2193 (class 2606 OID 16698)
-- Name: pk_pasillo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pasillo
    ADD CONSTRAINT pk_pasillo PRIMARY KEY (pas_id, fkproducto, fktienda);


--
-- TOC entry 2199 (class 2606 OID 16722)
-- Name: pk_pro_inv; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pro_inv
    ADD CONSTRAINT pk_pro_inv PRIMARY KEY (pro_id, fkproducto, fkinventario);


--
-- TOC entry 2197 (class 2606 OID 16714)
-- Name: pk_producto; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto
    ADD CONSTRAINT pk_producto PRIMARY KEY (pro_id);


--
-- TOC entry 2203 (class 2606 OID 16738)
-- Name: pk_sabor; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sabor
    ADD CONSTRAINT pk_sabor PRIMARY KEY (sab_id);


--
-- TOC entry 2183 (class 2606 OID 16657)
-- Name: pk_tienda; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tienda
    ADD CONSTRAINT pk_tienda PRIMARY KEY (tie_id);


--
-- TOC entry 2201 (class 2606 OID 16730)
-- Name: pk_tipo; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo
    ADD CONSTRAINT pk_tipo PRIMARY KEY (tip_id);


--
-- TOC entry 2378 (class 0 OID 0)
-- Dependencies: 7
-- Name: public; Type: ACL; Schema: -; Owner: postgres
--

REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;


-- Completed on 2018-05-27 23:14:53

--
-- PostgreSQL database dump complete
--

