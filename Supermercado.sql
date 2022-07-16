create database Supermercado;

# Tablas.
use Supermercado;

CREATE TABLE Pais (
  ID_Pais varchar(10) NOT NULL,
  Nombre_Pais VARCHAR(20),
  PRIMARY KEY (ID_Pais));
  
create table Tienda(
ID_Tienda int(10) auto_increment,
ID_Pais varchar(20),
Nombre_Tienda varchar(20),
primary key (ID_Tienda,ID_Pais)
)auto_increment=101;
  
  create table Cliente(
Cedula int(15),
Nombre varchar(20),
Apellido varchar(20),
Telefono int(20),
primary key (Cedula)
);

create table Producto(
ID_Producto int(10),
Marca varchar(100),
Descripcion varchar(100),
primary key (ID_Producto)
);

create table Venta(
ID_Venta int(10),
ID_Tienda int(10),
Fecha date,
Valor_total int(10),
primary key (ID_Venta,ID_Tienda)
);

create table Producto_Venta(
ID_Venta int(10),
ID_Producto int(10),
Cedula int(10),
primary key (ID_Venta,ID_Producto,Cedula)
);

create table pv(
ID_Venta int(10),
ID_Producto int(10),
Cedula int(10),
foreign key (ID_Venta) References Venta(ID_Venta)
);

show tables;

# AGREGAR DATA.

# Pais
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('AR', 'ARGENTINA');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('CO', 'COLOMBIA');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('PE', 'PERU');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('CH', 'CHILE');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('EC', 'ECUADOR');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('BO', 'BOLIVIA');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('UY', 'URUGUAY');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('PY', 'PARAGUAY');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('MEX', 'MEXICO');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('CR', 'COSTA RICA');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('VZ', 'VENEZUELA');
INSERT INTO `supermercado`.`pais` (`ID_Pais`, `Nombre_Pais`) VALUES ('PN', 'PANAMA');

#------------------------------------------------------------------------------------------------------------------
# Tienda
insert into tienda (ID_Pais,Nombre_Tienda) values ("CO",'Gerhold-Lang');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CO",'Rogahn-Hansen');
insert into tienda (ID_Pais,Nombre_Tienda) values ("UY",'Hammes-Fay');
insert into tienda (ID_Pais,Nombre_Tienda) values ("BO",'Mosciski');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CH",'Reilly');
insert into tienda (ID_Pais,Nombre_Tienda) values ("PY",'Hegmann');
insert into tienda (ID_Pais,Nombre_Tienda) values ("PE",'Rau-Nikolaus');
insert into tienda (ID_Pais,Nombre_Tienda) values ("PY",'Davons');
insert into tienda (ID_Pais,Nombre_Tienda) values ("EC",'Crooksdt ');
insert into tienda (ID_Pais,Nombre_Tienda) values ("PN",'Bogisich');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CH",'Hodkiewicz');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CO",'Hirthe');
insert into tienda (ID_Pais,Nombre_Tienda) values ("PE",'Moen Group');
insert into tienda (ID_Pais,Nombre_Tienda) values ("BO",'Breitenberg');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CO",'Keeyer');
insert into tienda (ID_Pais,Nombre_Tienda) values ("VZ",'Wehners');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CH",'Reynolds');
insert into tienda (ID_Pais,Nombre_Tienda) values ("PN",'Macejkovick');
insert into tienda (ID_Pais,Nombre_Tienda) values ("CO",'Effertz');

#------------------------------------------------------------------------------------------------------------------------------
# Producto

insert into Producto (ID_Producto, Marca, Descripcion) values (1803, 'Aufderhar, Smith and Pacocha', 'Major Banks');
insert into Producto (ID_Producto, Marca, Descripcion) values (1912, 'Stracke, Huel and Mitchell', 'Other Consumer Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1184, 'Weissnat Inc', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1062, 'Leannon, Kertzmann and Krajcik', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1361, 'Block, Parker and Kozey', 'Savings Institutions');
insert into Producto (ID_Producto, Marca, Descripcion) values (1555, 'Wintheiser LLC', 'Finance: Consumer Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1736, 'Bashirian, Hettinger and Gutmann', 'Services-Misc. Amusement & Recreation');
insert into Producto (ID_Producto, Marca, Descripcion) values (1480, 'Hegmann-Schimmel', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1164, 'Bergnaum-Fisher', 'Building Products');
insert into Producto (ID_Producto, Marca, Descripcion) values (1421, 'Reichel Group', 'Oil & Gas Production');
insert into Producto (ID_Producto, Marca, Descripcion) values (1997, 'Hammes, Wehner and Johnston', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1248, 'Parker and Sons', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1363, 'Moore-Waelchi', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1956, 'Walker, Herzog and Stokes', 'Apparel');
insert into Producto (ID_Producto, Marca, Descripcion) values (1628, 'Baumbach-Carroll', 'Air Freight/Delivery Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1983, 'Wolf-Altenwerth', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1039, 'Ruecker-Schaden', 'Metal Fabrications');
insert into Producto (ID_Producto, Marca, Descripcion) values (1909, 'McGlynn, Sawayn and Hammes', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1494, 'Kulas-Hauck', 'Auto Parts:O.E.M.');
insert into Producto (ID_Producto, Marca, Descripcion) values (1226, 'Cummerata Inc', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1186, 'Hodkiewicz-Senger', 'Computer Communications Equipment');
insert into Producto (ID_Producto, Marca, Descripcion) values (1708, 'Smitham and Sons', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1702, 'O''Conner Inc', 'Property-Casualty Insurers');
insert into Producto (ID_Producto, Marca, Descripcion) values (1649, 'Sanford and Sons', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1719, 'Abshire, Medhurst and Schultz', 'Other Consumer Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1762, 'Toy, Braun and Shields', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1910, 'Nader LLC', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1603, 'Towne-Greenfelder', 'Computer Software: Prepackaged Software');
insert into Producto (ID_Producto, Marca, Descripcion) values (1207, 'Bahringer Inc', 'Commercial Banks');
insert into Producto (ID_Producto, Marca, Descripcion) values (1559, 'Goyette and Sons', 'Other Consumer Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1185, 'Gerlach, Boyer and Jacobi', 'Biotechnology: Biological Products (No Diagnostic Substances)');
insert into Producto (ID_Producto, Marca, Descripcion) values (1029, 'Bosco-Ankunding', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1562, 'White, Beatty and Olson', 'Diversified Commercial Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1216, 'Leuschke, Pacocha and Shields', 'Marine Transportation');
insert into Producto (ID_Producto, Marca, Descripcion) values (1187, 'Schultz Group', 'Investment Bankers/Brokers/Service');
insert into Producto (ID_Producto, Marca, Descripcion) values (1923, 'Fay and Sons', 'Real Estate Investment Trusts');
insert into Producto (ID_Producto, Marca, Descripcion) values (1995, 'Gerlach, Mosciski and Braun', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1432, 'Schumm Inc', 'Investment Managers');
insert into Producto (ID_Producto, Marca, Descripcion) values (1799, 'Ondricka-Weissnat', 'Broadcasting');
insert into Producto (ID_Producto, Marca, Descripcion) values (1029, 'Bayer Inc', 'Specialty Foods');
insert into Producto (ID_Producto, Marca, Descripcion) values (1763, 'Pagac LLC', 'Medical Specialities');
insert into Producto (ID_Producto, Marca, Descripcion) values (1604, 'Mosciski-Von', 'Semiconductors');
insert into Producto (ID_Producto, Marca, Descripcion) values (1979, 'Walter Inc', 'Medical Specialities');
insert into Producto (ID_Producto, Marca, Descripcion) values (1829, 'Sawayn-Lebsack', 'Biotechnology: In Vitro & In Vivo Diagnostic Substances');
insert into Producto (ID_Producto, Marca, Descripcion) values (1206, 'Rodriguez-Ratke', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1192, 'Bernhard Group', 'Electrical Products');
insert into Producto (ID_Producto, Marca, Descripcion) values (1737, 'Kautzer and Sons', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1491, 'Ankunding and Sons', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1601, 'Jerde, Schroeder and Strosin', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1640, 'Kuhn, Hirthe and McDermott', 'Computer Software: Prepackaged Software');
insert into Producto (ID_Producto, Marca, Descripcion) values (1302, 'McKenzie Group', 'Farming/Seeds/Milling');
insert into Producto (ID_Producto, Marca, Descripcion) values (1693, 'Robel, Veum and Moen', 'Real Estate Investment Trusts');
insert into Producto (ID_Producto, Marca, Descripcion) values (1209, 'Terry LLC', 'Publishing');
insert into Producto (ID_Producto, Marca, Descripcion) values (1104, 'Kuphal-Green', 'Investment Managers');
insert into Producto (ID_Producto, Marca, Descripcion) values (1135, 'Marquardt LLC', 'Metal Fabrications');
insert into Producto (ID_Producto, Marca, Descripcion) values (1311, 'O''Connell Inc', 'Military/Government/Technical');
insert into Producto (ID_Producto, Marca, Descripcion) values (1000, 'Runolfsson-Rutherford', 'Air Freight/Delivery Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1022, 'Homenick-Wintheiser', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1127, 'Howe-Ritchie', 'Real Estate');
insert into Producto (ID_Producto, Marca, Descripcion) values (1627, 'Hilll-Marks', 'Major Banks');
insert into Producto (ID_Producto, Marca, Descripcion) values (1194, 'Beahan LLC', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1793, 'Ernser-Smith', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1991, 'Wisoky-Nienow', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1015, 'Corkery Inc', 'Biotechnology: Biological Products (No Diagnostic Substances)');
insert into Producto (ID_Producto, Marca, Descripcion) values (1247, 'Mills-Erdman', 'Oil & Gas Production');
insert into Producto (ID_Producto, Marca, Descripcion) values (1299, 'Mueller-Moore', 'Telecommunications Equipment');
insert into Producto (ID_Producto, Marca, Descripcion) values (1887, 'Lockman LLC', 'Real Estate Investment Trusts');
insert into Producto (ID_Producto, Marca, Descripcion) values (1043, 'Sawayn-Goyette', 'Major Banks');
insert into Producto (ID_Producto, Marca, Descripcion) values (1628, 'McCullough Inc', 'Natural Gas Distribution');
insert into Producto (ID_Producto, Marca, Descripcion) values (1586, 'Jakubowski, Flatley and Kozey', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1746, 'Emmerich-Gibson', 'Natural Gas Distribution');
insert into Producto (ID_Producto, Marca, Descripcion) values (1064, 'Bernhard Group', 'Homebuilding');
insert into Producto (ID_Producto, Marca, Descripcion) values (1274, 'Torphy-Bartell', 'Catalog/Specialty Distribution');
insert into Producto (ID_Producto, Marca, Descripcion) values (1067, 'Osinski, Crooks and Treutel', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1910, 'Shanahan-Lowe', 'Metal Fabrications');
insert into Producto (ID_Producto, Marca, Descripcion) values (1978, 'Rolfson-Schmeler', 'Electrical Products');
insert into Producto (ID_Producto, Marca, Descripcion) values (1608, 'Sauer, Oberbrunner and Smith', 'Oil Refining/Marketing');
insert into Producto (ID_Producto, Marca, Descripcion) values (1026, 'Keebler LLC', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1277, 'Aufderhar-Cummings', 'Life Insurance');
insert into Producto (ID_Producto, Marca, Descripcion) values (1264, 'Prohaska and Sons', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1442, 'Bauch and Sons', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1020, 'McLaughlin Inc', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1463, 'Johnston-Berge', 'Diversified Commercial Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1355, 'Hilpert, Prosacco and Kihn', 'Semiconductors');
insert into Producto (ID_Producto, Marca, Descripcion) values (1407, 'Friesen-Cruickshank', 'Precious Metals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1055, 'Streich LLC', 'Specialty Chemicals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1518, 'Gorczany, Hahn and Lueilwitz', 'Business Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1842, 'Volkman and Sons', 'Electrical Products');
insert into Producto (ID_Producto, Marca, Descripcion) values (1239, 'Streich and Sons', 'Natural Gas Distribution');
insert into Producto (ID_Producto, Marca, Descripcion) values (1631, 'Conroy-Schroeder', 'Electronic Components');
insert into Producto (ID_Producto, Marca, Descripcion) values (1221, 'Jenkins LLC', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1692, 'Ziemann LLC', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1358, 'Koch LLC', 'Major Banks');
insert into Producto (ID_Producto, Marca, Descripcion) values (1671, 'Hagenes-D''Amore', 'Shoe Manufacturing');
insert into Producto (ID_Producto, Marca, Descripcion) values (1955, 'Huel, Gaylord and Price', 'Services-Misc. Amusement & Recreation');
insert into Producto (ID_Producto, Marca, Descripcion) values (1422, 'Schultz Inc', 'Major Pharmaceuticals');
insert into Producto (ID_Producto, Marca, Descripcion) values (1889, 'Mertz-Monahan', 'Business Services');
insert into Producto (ID_Producto, Marca, Descripcion) values (1907, 'Sanford-Haley', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1814, 'Mohr, Lowe and Hirthe', 'n/a');
insert into Producto (ID_Producto, Marca, Descripcion) values (1540, 'Bartell, Barton and Feil', 'Natural Gas Distribution');

#---------------------------------------------------------------------------------------------------------------------------

# Cliente 
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (242698767, 'Greggory', 'Bithell', 5690549);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (54729529, 'Megen', 'von Grollmann', 5743029);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (955557518, 'Ruperto', 'Lemonnier', 5374667);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (742918863, 'Mitzi', 'Turbayne', 5261023);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (535401319, 'Riordan', 'Simoncelli', 5810445);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (946452827, 'Karil', 'Froschauer', 5276046);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (185245051, 'Marion', 'Abramsky', 5867832);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (78962076, 'Malanie', 'Wylder', 5708942);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (452592607, 'Ellene', 'Birdis', 5848068);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (954216368, 'Joelynn', 'Brachell', 5490136);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (448626200, 'Mildrid', 'Lampkin', 5697791);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (230983945, 'Donn', 'Jahnig', 5821192);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (516842508, 'Charmion', 'Tedahl', 5273116);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (600200302, 'Natalina', 'Belly', 5464019);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (568818694, 'Murry', 'Zorro', 5856433);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (313172004, 'Gavra', 'Abrahamsohn', 5773475);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (916369618, 'Julius', 'Clother', 5691626);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (833755186, 'Amanda', 'Slaymaker', 5733575);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (205693368, 'Rafaellle', 'Thurske', 5906204);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (310977450, 'Bria', 'Pieters', 5776324);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (293034218, 'Thane', 'Belchamp', 5258776);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (476872631, 'Flori', 'Gaskell', 5410660);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (843994028, 'Bryon', 'Symonds', 5352222);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (739274051, 'Kaspar', 'Fazakerley', 5291288);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (425280201, 'Katy', 'Nacey', 5469129);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (720508184, 'Evangeline', 'Kidds', 5909013);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (212383151, 'Annalee', 'Jerrems', 5473594);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (603163647, 'Mellie', 'Backler', 5823150);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (129651215, 'Antony', 'Bucklan', 5613903);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (999068688, 'Derek', 'Billyeald', 5254320);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (893512763, 'Aleksandr', 'Asel', 5786851);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (334667820, 'Martie', 'Aggett', 5880263);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (692359055, 'Evelyn', 'Ebbings', 5615865);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (70353352, 'Eveleen', 'Rowth', 5596487);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (81829278, 'Paulo', 'Knight', 5877870);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (824995264, 'Cesare', 'Proughten', 5448764);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (933716858, 'Ninette', 'Flecknell', 5264663);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (57243865, 'Erroll', 'Clears', 5776101);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (228177354, 'Portia', 'Larway', 5840028);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (601814025, 'Romain', 'Colthard', 5404058);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (799780529, 'Nannie', 'Prandin', 5773015);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (316773038, 'Leisha', 'Horlock', 5545433);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (46725139, 'Fancy', 'Maciejak', 5575704);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (697391995, 'Kara-lynn', 'Bartali', 5519941);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (855956016, 'Marena', 'Schultes', 5526938);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (264956096, 'Amalee', 'Attridge', 5812637);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (274789962, 'Hector', 'Hedge', 5886503);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (87397430, 'Cleveland', 'Vivash', 5579643);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (74306157, 'Kacie', 'Cawdron', 5810730);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (893019586, 'Alexandrina', 'Minogue', 5745078);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (456572974, 'Binky', 'Keegan', 5315782);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (911969472, 'Rana', 'MacDermand', 5908817);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (300097109, 'Cleve', 'Gateley', 5566410);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (881831132, 'Helyn', 'Miere', 5243690);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (723863771, 'Roxanna', 'Pendrid', 5735604);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (196150766, 'Berny', 'Orht', 5885659);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (777047275, 'Aime', 'Caroline', 5856435);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (150175899, 'Rosa', 'Exeter', 5787026);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (442941487, 'Sherwood', 'Carnachen', 5531699);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (471588099, 'Stefa', 'Stanford', 5836886);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (246435007, 'Riobard', 'Minerdo', 5786032);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (133095751, 'Candi', 'Gerant', 5486009);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (943312228, 'Eal', 'Tapsfield', 5615004);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (869403137, 'Zahara', 'Yacob', 5903468);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (662270344, 'Cyrill', 'Benbow', 5254787);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (876264221, 'Ofelia', 'Land', 5908073);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (842893113, 'Kathlin', 'Dore', 5534005);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (435104520, 'Tyne', 'McTavish', 5704811);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (139438585, 'Pattie', 'Robjant', 5610082);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (606127487, 'Xavier', 'Fildery', 5293971);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (416123223, 'Fannie', 'Gainsford', 5766989);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (895214032, 'Laurent', 'Sparwell', 5894424);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (52226270, 'Alisa', 'Baser', 5589858);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (639661056, 'Harlie', 'Orneles', 5747276);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (302348511, 'Greg', 'Matuskiewicz', 5645357);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (84006442, 'Edgardo', 'Leuchars', 5814835);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (331472540, 'Delila', 'Hay', 5424937);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (78569534, 'Susannah', 'Curds', 5282665);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (549174984, 'Datha', 'Davitt', 5802088);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (658492926, 'Gabriella', 'Knappitt', 5727479);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (427005476, 'Tiffanie', 'Mattock', 5270494);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (338507491, 'Penni', 'Dudny', 5512794);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (724375608, 'Alana', 'Tilbrook', 5253603);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (548162540, 'Manda', 'Vannuccini', 5516354);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (348116467, 'Marthena', 'Jurs', 5835393);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (213082550, 'Devon', 'Beentjes', 5781184);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (837291059, 'Gerti', 'Rapi', 5761636);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (217012316, 'Eziechiele', 'Brewin', 5489459);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (65493375, 'Kit', 'McCrae', 5464700);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (579439284, 'Wilton', 'McGreay', 5509133);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (287646544, 'Brooks', 'Arkil', 5298816);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (89114203, 'Bell', 'Whickman', 5892990);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (398267688, 'Adelle', 'Aubury', 5501454);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (190823071, 'Jobyna', 'Dillestone', 5583839);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (766706299, 'Monika', 'Van Ross', 5907458);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (625923044, 'Ingra', 'Cresar', 5490595);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (847571029, 'Kassandra', 'Gutman', 5868367);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (625977983, 'Albert', 'Cortin', 5744117);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (976914325, 'Lucita', 'Roncelli', 5568866);
insert into Cliente (Cedula, Nombre, Apellido, Telefono) values (577136203, 'Dalston', 'Stendall', 5483179);

#------------
# Venta
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (886094305, 108, '2021-11-27', 81855);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (172269659, 110, '2022-05-27', 119891);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (68277519, 109, '2021-08-20', 11764);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (397275059, 116, '2021-07-21', 125651);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (616659929, 107, '2022-02-24', 178382);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (402708711, 116, '2022-01-25', 191888);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (892605685, 112, '2022-02-28', 87812);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (434400572, 101, '2022-01-02', 182793);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (578803153, 109, '2021-09-28', 53980);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (913208346, 118, '2021-09-30', 37286);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (903614870, 101, '2022-05-20', 165110);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (370000855, 109, '2022-05-14', 172898);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (917398787, 104, '2021-09-10', 180265);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (322231006, 111, '2021-11-27', 148481);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (695703117, 118, '2021-10-27', 166580);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (128941161, 118, '2021-12-30', 77828);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (635246910, 117, '2021-09-30', 118098);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (155466255, 120, '2021-08-26', 154124);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (365832755, 101, '2022-03-25', 18345);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (629738792, 109, '2021-12-09', 30835);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (127831866, 117, '2021-09-13', 154491);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (95363550, 106, '2021-12-02', 118946);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (655688004, 119, '2021-12-26', 186697);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (584840494, 119, '2021-11-22', 70894);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (780946369, 104, '2022-04-15', 101231);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (482571372, 117, '2022-06-21', 183986);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (528976244, 111, '2021-12-04', 114348);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (270884890, 112, '2021-10-01', 155145);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (762816359, 117, '2021-07-23', 183630);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (617367358, 101, '2022-05-09', 134627);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (936595859, 106, '2022-06-15', 90752);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (430118639, 108, '2022-06-04', 111200);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (225705224, 120, '2021-11-29', 54514);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (710107865, 108, '2021-09-25', 88246);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (380106569, 109, '2021-11-03', 64520);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (807944098, 114, '2022-04-14', 78520);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (722608881, 110, '2022-04-25', 188969);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (846905414, 106, '2021-11-10', 199760);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (416986517, 118, '2021-09-10', 171029);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (817047883, 117, '2021-12-10', 11894);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (797999941, 105, '2022-06-05', 93246);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (615736163, 103, '2022-02-02', 166617);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (669024323, 114, '2021-07-22', 198040);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (689330015, 101, '2021-09-21', 93556);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (939661546, 104, '2021-12-23', 140058);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (424376503, 105, '2021-10-28', 36736);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (952235379, 119, '2022-03-02', 99505);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (441500747, 106, '2022-04-30', 49975);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (879017879, 111, '2021-12-15', 183013);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (771969859, 120, '2022-05-24', 182642);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (852195137, 117, '2021-12-09', 125327);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (55835545, 115, '2022-04-29', 44565);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (351213640, 106, '2021-09-07', 116916);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (156373147, 107, '2021-09-01', 67650);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (819294939, 115, '2022-06-23', 187427);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (919890026, 111, '2021-12-15', 145804);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (120042148, 105, '2021-10-13', 142006);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (259672938, 117, '2021-07-17', 63836);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (417659763, 110, '2022-02-12', 102903);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (780421130, 116, '2021-12-27', 130528);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (335580244, 101, '2022-06-05', 43723);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (540424849, 117, '2022-02-02', 55387);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (701365810, 104, '2021-10-10', 47624);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (786659491, 113, '2021-10-02', 71670);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (839964253, 104, '2022-02-17', 46267);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (955314945, 109, '2022-04-14', 85955);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (837771172, 102, '2021-12-25', 96792);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (891170232, 103, '2022-04-08', 26615);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (682393510, 111, '2022-01-21', 79504);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (398310289, 104, '2022-03-04', 63326);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (230981259, 109, '2021-10-09', 180497);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (103531941, 104, '2021-07-21', 148834);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (718469354, 115, '2022-01-05', 115912);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (677227363, 121, '2021-10-06', 195805);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (473509334, 106, '2022-01-01', 47380);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (500324491, 117, '2022-04-10', 16657);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (516377587, 117, '2022-01-12', 29813);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (537804789, 105, '2022-04-21', 173370);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (442490538, 112, '2022-03-31', 111632);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (177140342, 105, '2022-03-31', 162827);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (164535217, 116, '2022-02-20', 48711);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (559904886, 101, '2022-01-16', 12102);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (802544624, 113, '2021-08-26', 178862);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (757338797, 105, '2021-10-14', 157437);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (172895055, 102, '2021-11-29', 50918);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (339446164, 111, '2021-08-01', 175025);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (801603702, 107, '2021-10-23', 197111);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (347350526, 114, '2022-01-21', 127326);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (165750639, 109, '2021-07-20', 108117);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (80527226, 108, '2021-12-26', 144663);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (136828246, 113, '2021-09-20', 177984);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (506113745, 103, '2022-05-22', 73000);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (292721666, 112, '2022-03-04', 93001);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (422551389, 110, '2022-02-19', 116032);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (110035559, 121, '2021-11-24', 193863);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (150692158, 118, '2022-05-10', 190352);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (417412173, 103, '2022-02-03', 25800);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (969235975, 114, '2021-11-19', 117322);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (854262858, 105, '2021-09-26', 28279);
insert into Venta (ID_Venta, ID_Tienda, Fecha, Valor_Total) values (615775521, 111, '2022-03-19', 53778);


#--------------------------------------------------------------------------------------------------------

# Primer punto.

select Cedula,sum(Valor_Total)  from venta
inner join producto_venta
on producto_venta.ID_VENTA = venta.ID_VENTA
Group by cedula;

# 300097109 -- 517776

# Revision
# 21308255 cedula
select * from producto_venta;

# Compras a nombre de la cedula
# 110035559
# 879017879


#669024323 -- 198040
#757338797 -- 157437
#839964253 -- 46267
#422551389 -- 116032

select ID_Venta,Valor_total from venta;


select Cedula,month(fecha),count(Valor_Total)  from venta
inner join producto_venta
on producto_venta.ID_VENTA = venta.ID_VENTA
Group by cedula, fecha;

# 196150766 2 transa

select * from producto_venta;