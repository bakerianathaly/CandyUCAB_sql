Insert into Cliente (Cli_rif, Cli_correo, Cli_tipo, Cli_pagina_web, Cli_total_capital, Cli_razon_social,Cli_deno_comercial, fktienda) values
('J123456723','codesystem@gmail.com','J','codesystem.com',198762.23,'C.A','Servicios informaticos',
   (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'El Cafetal' and T.fklugar= L.lug_id)),
('J123432423','codelife@gmail.com','J','codelife.com',1988908762.23,'Servicios Asociados','Servicios informaticos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'El Cafetal' and T.fklugar= L.lug_id)),
('J123456789','malakshop@gmail.com','J','malakshop.com',1200221312,'C.A','Venta al mayor y detal',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Maracaibo' and T.fklugar= L.lug_id)),
('J213123423','asot@gmail.com','J','asottv.com',19889087644423323342432422.23,'C.A','Trance music',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Maracaibo' and T.fklugar= L.lug_id)),
('J123478900','candy@gmail.com','J','caramelo.com',120221312.23,'C.A','Venta de caramelos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Iribarren' and T.fklugar= L.lug_id)),
('J980090324','krlsanoja@gmail.com','J','tudj.com',1981212,'Djs asociados','Servicios dj virtuales',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Iribarren' and T.fklugar= L.lug_id)),
('J120456789','empresaspolar@hotmail.com','J','empresaspolar.com',123132200000001312.23,'C.A','Distribuidor de comida',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Simón Rodríguez' and T.fklugar= L.lug_id)),
('J223473455','farma@gmail.com','J','labfarma.com',1921212188908762.2321312,'S.A','Laboratorio Farmaceutico',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Simón Rodríguez' and T.fklugar= L.lug_id)),
('J123200009','tupresimaduro@gmail.com','J','maduro.com',123132213129218739812798172983712987192749187249817294712987398172983179371972981,'C.A','Servicio de corrupcion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Guanare' and T.fklugar= L.lug_id)),
('J563450000','sony@yahoo.com','J','sony.com',198000000000008908762.23,'C.A','Servicios electronicos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Guanare' and T.fklugar= L.lug_id)),
('J121234789','natydanyshop@gmail.com','J','nathydanyshop.com',12313122457679000221312.23,'C.A','Venta de ropa para jovenes',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Falcón' and T.fklugar= L.lug_id)),
('J100456723','doofenshmirtz@gmail.com','J','doofenshmirtz.com',1988908762.23,'Doofenshmirtz Malvados Asociados','Servicios anonimos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Falcón' and T.fklugar= L.lug_id)),
('J123498779','armada@gmail.com','J','armadatv.com',12313221312000000000000000000000.23744567676,'C.A','Discografica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Valle de la Pascua' and T.fklugar= L.lug_id)),
('J128906000','hola@gmail.com','J','cod.com',1982314241448908762.23323212,'S.A','Constructora',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Valle de la Pascua' and T.fklugar= L.lug_id)),
('J198764009','contigo@hotmail.es','J','termoscontigo.com',12321453454565453322132413221312.009876543,'C.A','Venta de productos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Pedro María Ureña' and T.fklugar= L.lug_id)),
('J199886723','cet@gmail.com','J','cet.com',5153412342332988231908762.23435321,'Jugadores Asociados','Servicios de alquiler de juegos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Pedro María Ureña' and T.fklugar= L.lug_id)),
('J220000885','netflix@gmail.com','J','netflix.com',12312245453643767567423345346478900010003020200130010200.00203,'C.A','Servicios de Tv',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Félix' and T.fklugar= L.lug_id)),
('J556543023','instagram@gmail.com','J','instagram.com',198123218329142023482345734235523256252.52322532113,'C.A','Servicios fotografia y entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Félix' and T.fklugar= L.lug_id)),
('J839206789','vieji@outlook.com','J','elviejito.com',12313223212332144121312.21432412123,'C.A','Reparacion de Aires acondicionados',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Torres' and T.fklugar= L.lug_id)),
('J131216723','blackhole@gmail.com','J','blackholerecordings.com',1988123219310422835734652321.225353311,'C.A','Discografica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Torres' and T.fklugar= L.lug_id)),
('J123124450','aisec@gmail.com','J','aisec.com',12312123221312.21323,'S.A','Servicios integrales',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Páez' and T.fklugar= L.lug_id)),
('J832720390','wilson@yahoo.com','J','wilsonreminder.com',1988908321321762.312324325,'C.A','Servicios informaticos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Páez' and T.fklugar= L.lug_id)),
('J821727998','mm@gmail.com','J','m&m.com',12313221224253252643876456432531312,'C.A','Servicios de distribucion de dulces',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Cárdenas' and T.fklugar= L.lug_id)),
('J123000754','youtube@yahoo.com','J','youtube.com',1988923120314287214653221.21241242533,'C.A','Servicios de entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Cárdenas' and T.fklugar= L.lug_id)),
('J123409980','myway@gmail.com','J','myway.com',12213312413213423252231312.23,'C.A','Servicio de entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Petare' and T.fklugar= L.lug_id)),
('J120000800','maracayextrema@outlook.com','J','maracayextrema.com',1123124943823589254065865777562,'Servicios Asociados','Servicios de fotografia',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Petare' and T.fklugar= L.lug_id)),
('J134520000','codelife@gmail.com','J','codelife.com',123100000009002.2123,'C.A','Servicios informaticos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Atanasio Girardot' and T.fklugar= L.lug_id)),
('J990087655','dccomics@outlook.com','J','dccomics.com',198890834235420056457474576000000600,'S.A','Cinematografica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Atanasio Girardot' and T.fklugar= L.lug_id)),
('J100875861','menita@gmail.com','J','menita.com',1231322131121231200000000332345.3423,'C.A','Panaderia',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Caroní' and T.fklugar= L.lug_id)),
('J980087600','marvel@gmail.com','J','marvel.com',198321839143024385437664562.45622433,'C.A','Cinematografica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Caroní' and T.fklugar= L.lug_id)),
('J987608709','thanos@gmail.com','J','thanos.com',12313221312.23,'S.A','Servicios de exterminacion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Cristóbal' and T.fklugar= L.lug_id)),
('J213446430','realmadridfc@gmail.com','J','realmadrid.com',1988908762.23,'C.A','Asociacion de futbol',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Cristóbal' and T.fklugar= L.lug_id)),
('J870098789','visualcode@hotmail.es','J','visualcode.com',12312133123221421241432314525.2453322,'C.A','Servicios informaticos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Los Teques' and T.fklugar= L.lug_id)),
('J218045693','fcbarcelona@gmail.com','J','fcbarcelona.com',132211214923853845934603486475662.45263,'S.A','Asociacion de futbol',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Los Teques' and T.fklugar= L.lug_id)),
('J987760000','movistar@gmail.com','J','movistar.com',123241342431534345252651381882.29396543,'C.A','Servicios en comunicacion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Anaco' and T.fklugar= L.lug_id)),
('J213056903','gcd@gmail.com','J','gcd.com',1988908764535243234232.3413432,'Asociacion de ingenieros','Servicios informaticos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Anaco' and T.fklugar= L.lug_id)),
('J234326789','armind@gmail.com','J','armind.com',123132212132313122.44356567023,'C.A','Discografica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Casimiro' and T.fklugar= L.lug_id)),
('J900875623','apple@outlook.com','J','apple.com',121393218483429450348537466652.45264634,'C.A','Servicios de electronicos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Casimiro' and T.fklugar= L.lug_id)),
('J176655439','ck@gmail.com','J','ck.com',1231213143211532342526541653612643.3423433,'C.A','Venta de ropa para adultos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Antonio de los Altos' and T.fklugar= L.lug_id)),
('J450323020','avengers@hotmail.es','J','avengers.com',19889111111111123120000000008762.223133123,'S.A','Servicios de seguridad',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Antonio de los Altos' and T.fklugar= L.lug_id)),
('J154645009','soundadvice@gmail.com','J','soundadvice.com',21222312342334534623245673323.53232645,'C.A','Venta de Cds',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Antímano' and T.fklugar= L.lug_id)),
('J123476657','garuda@gmail.com','J','garudasounds.com',121391848235953201328762.4223342,'C.A','Servicios de entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Antímano' and T.fklugar= L.lug_id)),
('J123006789','jasongetta@gmail.com','J','friday13.com',12313224534588790006556713127665.275675673,'S.A','Compañia de juegos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'La Guaira' and T.fklugar= L.lug_id)),
('J485098694','blahblah@gmail.com','J','asot.com',19881239124032583457346563426.645263,'Asociacion discografica','Discografica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'La Guaira' and T.fklugar= L.lug_id)),
('J143567435','fornite@gmail.com','J','fornite.com',2123124323432345132213213422.3422342343,'C.A','Compañia de juegos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Nueva Esparta' and T.fklugar= L.lug_id)),
('J300456003','disney@gmail.com','J','tumundodisney.com',198324235839460458674562452323.422353,'S.A','Entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Nueva Esparta' and T.fklugar= L.lug_id)),
('J908456865','larast@gmail.com','J','larast.com',4345645271456212313221312,'C.A','Cursos de Programacion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Guanta' and T.fklugar= L.lug_id)),
('J404323543','styde@hotmail.com','J','styde.com',54323545,'Servicios Asociados','Cursos de Programacion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Guanta' and T.fklugar= L.lug_id)),
('J896456709','udemy@gmail.com','J','udemy.com',12000000007887682.6273,'S.A','Cursos de Programacion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Puerto La Cruz' and T.fklugar= L.lug_id)),
('J238766500','codigofacilito@outlook.com','J','codigofacilito.com',1988909888776543456708762.298765,'Servicios Asociados','Cursos de Programacion',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Puerto La Cruz' and T.fklugar= L.lug_id)),
('J126543980','virtualsystem@gmail.com','J','virtualsystem.com',323415456798078790122.2903,'C.A','Servicios de electronica',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Mérida' and T.fklugar= L.lug_id)),
('J806799023','chinatown@gmail.com','J','chinatown.com',12333231988908762.23,'Servicios Asociados','Servicios informaticos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Mérida' and T.fklugar= L.lug_id)),
('J819087630','vegetta777@gmail.com','J','vegetta777.com',123199865990.7283,'C.A','Youtuber',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Barinas' and T.fklugar= L.lug_id)),
('J998876709','samuraisushi@gmail.com','J','samuraisushi.com',89009876549888762.203,'C.A','Servicio de comida',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Barinas' and T.fklugar= L.lug_id)),
('J920567769','anana@gmail.com','J','espacioanana.com',12000032313212423.433,'S.A','Venta de manualidades',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Tucacas' and T.fklugar= L.lug_id)),
('J103806203','aerolineasargentina@gmail.com','J','aerolineasargentina.com',2314790988879,'S.A','Compañia aerea',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Tucacas' and T.fklugar= L.lug_id)),
('J123909889','latam@gmail.com','J','latam.com',123132000099098821312.309,'C.A','Compañia Aerea',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Zulia' and T.fklugar= L.lug_id)),
('J909085655','avior@gmail.com','J','avior.com',211321500988787062.2003,'S.A','Compañia Aerea',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Zulia' and T.fklugar= L.lug_id)),
('J495670089','americanairlines@gmail.com','J','americanairlines.com',1436098138961002.723,'C.A','Compañia Aerea',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'La Victoria' and T.fklugar= L.lug_id)),
('J435056780','delta@gmail.com','J','delta.com',2357681908797692.7823,'C.A','Compañia Aerea',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'La Victoria' and T.fklugar= L.lug_id)),
('J223489002','quatararways@gmail.com','J','quatararways.com',4312313004512.6423,'C.A','Compañia Aerea',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Zamora' and T.fklugar= L.lug_id)),
('J503456700','latraviatta@gmail.com','J','latraviatta.com',2155000076256.75623,'Cocineros Asociados','Servicios de Comida',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Zamora' and T.fklugar= L.lug_id)),
('J879005389','excelsior@gmail.com','J','excelsiorgama.com',75671231334645346221312.235674,'C.A','Supermercado',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Lagunillas' and T.fklugar= L.lug_id)),
('J356700000','centralmadeirense@gmail.com','J','centralmadeirense.com',6451345981643222357662.66453,'S.A','Supermercado',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Lagunillas' and T.fklugar= L.lug_id)),
('J456176879','sandiego@gmail.com','J','sandiego.com',2341245737137626721316542.4323,'C.A','Supermercado',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Heres' and T.fklugar= L.lug_id)),
('J960046054','cod@gmail.com','J','cod.com',5445198890876223,'C.A','Compañia de juegos',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Heres' and T.fklugar= L.lug_id)),
('J456657089','farmatodo@gmail.com','J','farmatodo.com',2341231324521452.623,'C.A','Farmacia',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Simón Bolívar' and T.fklugar= L.lug_id)),
('J344300823','farmaciasas@gmail.com','J','sas.com',645198000763242.2653,'Servicios Asociados','Farmacia',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Simón Bolívar' and T.fklugar= L.lug_id)),
('J605934559','amazon@gmail.com','J','amazon.com',654575688769680063128.2783,'C.A','Servicios variados',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Fernando' and T.fklugar= L.lug_id)),
('J405600723','totaun@gmail.com','J','totaun.com',5516569786588950877658900789762.88723,'Servicios Asociados','Servicios variados',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'San Fernando' and T.fklugar= L.lug_id)),
('J236400943','hackstore@hotmail.es','J','hackstore.net',3466587681013001020.023,'C.A','Servicios de entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Valencia' and T.fklugar= L.lug_id)),
('J567000063','tacobell@gmail.com','J','tacobell.com',671908908700062.2893,'C.A','Servicios de comidas',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Valencia' and T.fklugar= L.lug_id)),
('J658030988','7eleven@gmail.com','J','7eleven.com',7656713423130120986.6867823,'C.A','Servicios variados',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Maiquetía' and T.fklugar= L.lug_id)),
('J456756073','hiltonhotel@gmail.com','J','hiltonhotel.com',67876907076453432124253762.564323,'C.A','Servicios de hospedaje',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Maiquetía' and T.fklugar= L.lug_id)),
('J506070809','4season@gmail.com','J','4season.com',767618239010300012.6523,'C.A','Servicios de hospedaje',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Bermúdez' and T.fklugar= L.lug_id)),
('J356098703','granmelia@gmail.com','J','granmeliacaracas.com',56770003287643823324589065787623,'S.A','Servicios de hospedaje',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Bermúdez' and T.fklugar= L.lug_id)),
('J679098809','holidayinn@gmail.com','J','holidayinn.com',56651233641328792001031002.023,'Asociaciones Inn','Servicios de hospedaje',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Miranda' and T.fklugar= L.lug_id)),
('J453239063','hoteltamanaco@gmail.com','J','hoteltamanaco.com',456567165898800000623.67823,'C.A','Servicios de hospedaje',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Miranda' and T.fklugar= L.lug_id)),
('J500679809','cinesunidos@gmail.com','J','cinesunidos.com',37512313221657300102.0203,'C.A','Servicios de entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Trujillo' and T.fklugar= L.lug_id)),
('J780001935','cinex@gmail.com','J','cinex.com',657600812301893028921312.6545623,'C.A','Servicios de entretenimiento',
    (Select T.tie_id
    FROM Tienda T, Lugar L
    Where L.lug_nombre= 'Trujillo' and T.fklugar= L.lug_id));