create table Cliente (
	Cli_id SERIAL,
	Cli_rif Varchar(50) not null,
	Cli_correo Varchar(50) not null,
	Cli_pagina_web Varchar(50),
	Cli_total_capital numeric,
	Cli_razon_social Varchar(50),
	Cli_deno_comercial Varchar(50),
	Cli_ci integer unique,
	Cli_nombre Varchar(50),
	Cli_apellido Varchar(50),
	Cli_numcarnet Varchar(50) not null unique,
	Cli_tipo Varchar(1) not null,
    fkTienda integer not null,
	constraint pk_cliente primary key(Cli_id),
	constraint check_tipo check(Cli_tipo IN ('J','N'))
);

create table Cli_lug (
	fkCliente integer not null,
	fkLugar integer not null,
	Cli_id SERIAL,
	constraint pk_cli_lug primary key(Cli_id)
);

create table Lugar (
	Lug_id integer,
	Lug_tipo Varchar(50) not null,
	Lug_nombre Varchar(50) not null,
	fkLugar integer,
	constraint pk_lugar primary key(Lug_id),
    constraint check_tipo check(Lug_tipo IN ('Estado','Municipio','Parroquia'))
);

create table Usuario (
	Usu_id SERIAL,
	Usu_nombre Varchar(50) not null,
	Usu_contrasena Varchar(50) not null,
	fkCliente integer not null,
	fkRol integer not null,
	constraint pk_usuario primary key(Usu_id)
);

create table Contacto (
	Con_id SERIAL,
	Con_nombre Varchar(50) not null,
	fkCliente integer not null,
	constraint pk_contacto primary key(Con_id)
);

create table Telefono(
	Tel_id SERIAL,
	Tel_numero Varchar(50) not null,
	Tel_tipo Varchar(50) not null,
	fkCliente integer not null,
	constraint pk_telefono primary key(Tel_id)
);

create table Pedido(
	Ped_id SERIAL,
	Ped_descripcion Varchar(50) not null,
	Ped_fecha Date not null,
	Ped_cantidad integer not null,
	Ped_total numeric not null,
	fkCliente integer,
	fkUsuario integer,
	constraint pk_pedido primary key(Ped_id)
);

create table Punto(
	Pun_id SERIAL,
	Pun_cantidad integer not null,
	Pun_fadquirido Date not null,
	fkPedido integer not null,
	fkUsuario integer not null,
    fkHistorial integer not null,
	constraint pk_punto primary key(Pun_id)
);

create table Metodo_Pago(
	Met_id SERIAL,
	Met_nombre_titular Varchar(50) not null,
	Met_fvencimiento Date,
	Met_num_tarjeta Varchar(50),
	Met_num_cheque Varchar(50),
	Met_banco Varchar(50),
	Met_tipo Varchar(1) not null,
    fkCliente integer not null,
	constraint pk_metodo_pago primary key(Met_id),
	constraint check_met_tipo check(Met_tipo IN ('T','C','E'))
);

create table Venta_Pago(
	Ven_id SERIAL,
    Ven_fpago Date,
    Ven_montototal Numeric,
	fkPunto integer,
	fkPedido integer not null,
	fkMetodo_Pago integer not null,
	constraint pk_venta_pago primary key(Ven_id)
);

create table Diario(
	Dia_id SERIAL,
	Dia_femision Date not null,
	Dia_fvencimiento Date not null,
	constraint pk_diario primary key(Dia_id)
);

create table Descuento(
	Des_id SERIAL,
	Des_new_precio numeric not null,
	Des_finicio Date not null,
	Des_ffinal Date not null,
	fkDiario integer not null,
	fkProducto integer not null,
	constraint pk_descuento primary key(Des_id)
);

create table public.Tienda (
    Tie_id serial,
    Tie_tipo varchar(20) not null,
    fklugar integer not null,
    constraint pk_tienda primary key(Tie_id),
    constraint check_tie_tipo check (Tie_tipo in('MiniCandyUCAB','CandyUCAB'))
    );

create table public.Departamento (
    Dep_id serial,
    Dep_nombre varchar(50) not null,
    Dep_tipo varchar(50) not null ,
    fktienda integer not null,
    constraint pk_departamento primary key(Dep_id)
);

create table public.Empleado (
    Emp_id serial,
    Emp_nombre varchar(50) not null,
    Emp_fecha date not null,
    constraint pk_empleado primary key(Emp_id)
);

create table public.Horario_empleado(
    Hor_id serial,
    fkempleado integer not null,
    fkhorario integer not null,
    constraint pk_horario_empleado primary key(Hor_id)
);

create table public.Horario (
    Hor_id serial,
    Hor_dia varchar(10) not null,
    Hor_hora_entrada date not null,
    Hor_hora_salida date not null,
    constraint pk_horario primary key(Hor_id),
    constraint check_hor_dia check (Hor_dia in('lunes','martes','miercoles','jueves','viernes','sabado','domingo'))
);

create table public.Pasillo (
    Pas_id serial,
    Pas_num_anaquel integer not null,
    Pas_zona_pasillo integer not null,
    fktienda integer not null,
    fkproducto integer not null,
    constraint pk_pasillo primary key(Pas_id)
);

create table public.inventario(
    Inv_id serial,
    Inv_cantidad integer not null,
    Inv_precio float not null,
    fktienda integer not null,
    constraint pk_inventario primary key(Inv_id)
);

create table public.producto(
    Pro_id serial,
    Pro_nombre varchar(50) not null,
    Pro_relleno varchar(50),
    Pro_textura varchar(50) not null,
    Pro_puntuacion integer not null,
    Pro_azucar boolean,
    fksabor integer not null,
    fktipo integer not null,
    constraint pk_producto primary key(Pro_id)
);

create table public.Pro_inv (
    Pro_id serial,
    fkproducto integer not null,
    fkinventario integer not null,
    constraint pk_pro_inv primary key(Pro_id)
);

create table public.tipo(
    Tip_id serial,
    Tip_nombre varchar(50) not null,
    constraint pk_tipo primary key(Tip_id)
);

create table public.Sabor(
    Sab_id serial,
    Sab_tipo varchar(50) not null,
    Sab_nombre varchar(50) not null,
    constraint pk_sabor primary key(Sab_id)
);

create table public.Ing_pro (
    Ing_id serial,
    fkproducto integer not null,
    fkingrediente integer not null,
    constraint pk_ing_pro primary key(Ing_id)
);

create table public.ingrediente(
    Ing_id serial,
    Ing_nombre varchar(50) not null,
    constraint pk_ingrediente primary key(Ing_id)
);

CREATE TABLE public.Ing_ing (
    Ing_id serial NOT NULL,
    FkIngrediente1 integer NOT NULL,
    FkIngrediente2 integer NOT NULL,
    CONSTRAINT PK_Ing_ing PRIMARY KEY (Ing_id)
);

CREATE TABLE public.Ped_Pro (
    Ped_precio numeric NOT NULL,
    Ped_cantidad integer NOT NULL,
    FkTienda integer NOT NULL,
    FkProducto integer NOT NULL,
    FkPedido integer NOT NULL,
    Ped_id serial NOT NULL,
    CONSTRAINT PK_Ped_pro PRIMARY KEY (Ped_id)
);

CREATE TABLE public.Pedido_tienda (
    Ped_descripcion character varying(200)[] NOT NULL,
    Ped_id serial NOT NULL,
    FkTienda integer NOT NULL,
    Ped_fpedido date NOT NULL,
    CONSTRAINT PK_Pedido_tienda PRIMARY KEY (Ped_id)
);

CREATE TABLE public.Pre_pro (
    FkProducto integer NOT NULL,
    FkPresupuesto integer NOT NULL,
    Pre_id serial NOT NULL,
    Pre_cantidad integer NOT NULL,
    CONSTRAINT PK_Pre_pro PRIMARY KEY (Pre_id)
);

CREATE TABLE public.Presupuesto (
    Pre_descripcion character varying(200)[] NOT NULL,
    Pre_id serial NOT NULL,
    Pre_fcreacion date NOT NULL,
    Pre_montototal numeric NOT NULL,
    CONSTRAINT PK_Presupuesto PRIMARY KEY (Pre_id)
);

CREATE TABLE public.Privilegio (
    Pri_nombre character varying(30)[] NOT NULL,
    Pri_id serial NOT NULL,
    CONSTRAINT PK_Privilegio PRIMARY KEY (Pri_id)
);

CREATE TABLE public.Punto_historial (
    Pun_id serial NOT NULL,
    Pun_finicio date NOT NULL,
    Pun_ffinal date,
    Pun_cantidad numeric NOT NULL,
    CONSTRAINT PK_Punto_historial PRIMARY KEY (Pun_id)
);

CREATE TABLE public.Rol (
    Rol_tipo character varying(50)[] NOT NULL,
    Rol_id serial NOT NULL,
    CONSTRAINT PK_Rol PRIMARY KEY (Rol_id)
);

CREATE TABLE public.Rol_Priv (
    FkRol integer NOT NULL,
    FkPrivilegio integer NOT NULL,
    Rol_id serial NOT NULL,
    CONSTRAINT PK_Rol_priv PRIMARY KEY (Rol_id)
);

CREATE TABLE public.Sta_ped (
    Sta_finicial date NOT NULL,
    Sta_ffinal date,
    FkStatus integer NOT NULL,
    FkPedido integer NOT NULL,
    Sta_id serial NOT NULL,
    CONSTRAINT PK_Sta_ped PRIMARY KEY (Sta_id)
);

CREATE TABLE public.Status (
    Sta_nombre character varying(50)[] NOT NULL,
    Sta_id serial NOT NULL,
    CONSTRAINT PK_Status PRIMARY KEY (Sta_id)
);

CREATE TABLE public.Tie_Pro (
    Tie_cantidad integer NOT NULL,
    FkProducto integer NOT NULL,
    FkPedido_tienda integer NOT NULL,
    Tie_id serial NOT NULL,
    CONSTRAINT PK_Tie_pro PRIMARY KEY (Tie_id)
);

CREATE TABLE public.Tie_sta (
    Tie_finicial date NOT NULL,
    Tie_ffinal date,
    FkStatus integer NOT NULL,
    FkPedido_tienda integer NOT NULL,
    Tie_id serial NOT NULL,
    CONSTRAINT PK_Tie_sta PRIMARY KEY (Tie_id)
);
