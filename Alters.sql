alter table public.tienda
    add constraint fklugar foreign key(fklugar) references Lugar(Lug_id);

alter table public.Departamento
    add constraint fktienda foreign key(fktienda) references Tienda(Tie_id);

/*alter table public.Horario_empleado
    add constraint fkempleado foreign key(fkempleado) references Empleado(Emp_id);

alter table public.Horario_empleado
    add constraint fkhorario foreign key(fkhorario) references Horario(Hor_id); */

alter table public.Pasillo
    add constraint fktienda foreign key(fktienda) references Tienda(Tie_id);

alter table public.Pasillo
    add constraint fkproducto foreign key(fkproducto) references Producto(Pro_id);

alter table public.Inventario
    add constraint fktienda foreign key(fktienda) references Tienda(Tie_id);

alter table public.Producto
    add constraint fksabor foreign key(fksabor) references Sabor(Sab_id);

alter table public.Producto
    add constraint fktipo foreign key(fktipo) references Tipo(Tip_id);

alter table public.Pro_inv
    add constraint fkproducto foreign key(fkproducto) references Producto(Pro_id);

alter table public.Pro_inv
    add constraint fkinventario foreign key(fkinventario) references Inventario(Inv_id);

alter table public.Ing_pro
    add constraint fkproducto foreign key(fkproducto) references Producto(Pro_id);

alter table Asistencia
    add constraint fkAsistencia_Empleado foreign key (Fkempleado) references Empleado(Emp_ci);

alter table public.Ing_pro
    add constraint fkingrediente foreign key(fkingrediente) references Ingrediente(Ing_id);

alter table Cliente
    add constraint fkTienda foreign key(fkTienda) references Tienda(Tie_id);

alter table Cli_lug
    add constraint fkCliente foreign key(fkCliente) references Cliente(Cli_id);

alter table Cli_lug
    add constraint fkLugar foreign key(fkLugar) references Lugar(Lug_id);

alter table Lugar
    add constraint fkLugar foreign key(fkLugar) references Lugar(Lug_id);

alter table Usuario
    add constraint fkCliente foreign key(fkCliente) references Cliente(Cli_id);

alter table Usuario
    add constraint fkRol foreign key(fkRol) references Rol(Rol_id);

alter table Contacto
    add constraint fkCliente foreign key(fkCliente) references Cliente(Cli_id);

alter table Telefono
    add constraint fkCliente foreign key(fkCliente) references Cliente(Cli_id);

alter table Pedido
    add constraint fkCliente foreign key(fkCliente) references Cliente(Cli_id);

alter table Pedido
    add constraint fkUsuario foreign key(fkUsuario) references Usuario (Usu_id);

alter table Presupuesto
    add constraint fkUsuario foreign key(FkUsuario) references Usuario(Usu_id);

alter table Punto
    add constraint fkPedido foreign key(fkPedido) references Pedido(Ped_id);

alter table Punto
    add constraint fkUsuario foreign key(fkUsuario) references Usuario(Usu_id);

alter table Punto
    add constraint fkHistorial foreign key(fkHistorial) references Punto_historial(Pun_id);

alter table Metodo_Pago
    add constraint fkCliente foreign key(fkCliente) references Cliente(Cli_id);

alter table Venta_Pago
    add constraint fkPunto foreign key(fkPunto) references Punto(Pun_id);

alter table Venta_Pago
    add constraint fkPedido foreign key(fkPedido) references Pedido(Ped_id);

alter table Venta_Pago
    add constraint fkMetodo_Pago foreign key(fkMetodo_Pago) references Metodo_Pago(Met_id);

alter table Descuento
    add constraint fkDiario foreign key(fkDiario) references Diario(Dia_id);

alter table Descuento
    add constraint fkProducto foreign key(fkProducto) references Producto(Pro_id);

alter table Ing_ing add constraint fkIngrediente1 foreign key(FkIngrediente1) references ingrediente(Ing_id);

alter table Ing_ing add constraint fkIngrediente2 foreign key(FkIngrediente2) references ingrediente(Ing_id);

Alter table Ped_pro add constraint fkped_pro_tienda foreign key (FkTienda) references Tienda(Tie_id);

Alter table Ped_pro add constraint fkped_pro_producto foreign key (FkProducto) references Producto(pro_id);

Alter table Ped_pro add constraint fkped_pro_pedido foreign key (FkPedido) references Pedido(ped_id);

Alter table Pedido_tienda add constraint fkpedido_tienda_tienda foreign key (FkTienda) references Tienda(tie_id);

Alter table Pre_pro add constraint fkpre_pro_producto foreign key (FkProducto) references Producto(pro_id);

Alter table Pre_pro add constraint fkpre_pro_presupuesto foreign key (FkPresupuesto) references Presupuesto(pre_id);

Alter table Rol_priv add constraint fkrol_priv_rol foreign key (FkRol) references Rol(rol_id);

Alter table Rol_priv add constraint fkrol_priv_privilegio foreign key (FkPrivilegio) references Privilegio(pri_id);

Alter table Sta_ped add constraint fksta_ped_status foreign key (FkStatus) references Status(sta_id);

Alter table Sta_ped add constraint fksta_ped_pedido foreign key (FkPedido) references Pedido(ped_id);

Alter table Tie_pro add constraint fktie_pro_producto foreign key (FkProducto) references Producto(pro_id);

Alter table Tie_pro add constraint fktie_pro_pedido_tienda foreign key (FkPedido_tienda) references Pedido_tienda(ped_id);

Alter table Tie_sta add constraint fktie_sta_status foreign key (FkStatus) references Status(sta_id);

Alter table Tie_sta add constraint fktie_sta_pedido_tienda foreign key (FkPedido_tienda) references Pedido_tienda (ped_id);

Alter table empleado add constraint fkdepartamento foreign key (fkdepartamento) references departamento(dep_id);

ALTER DATABASE "CandyUCAB" SET datestyle TO "ISO, DMY";
