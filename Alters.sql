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
