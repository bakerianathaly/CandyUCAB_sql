alter table public.tienda 
    add constraint fklugar foreign key(fklugar) references Lugar(Lug_id);

alter table public.Departamento 
    add constraint fktienda foreign key(fktienda) references Tienda(Tie_id);

alter table public.Horario_empleado 
    add constraint fkempleado foreign key(fkempleado) references Empleado(Emp_id);

alter table public.Horario_empleado 
    add constraint fkhorario foreign key(fkhorario) references Horario(Hor_id);

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

