create table cliente
(
CODCLI char(4) NOT NULL,
NOMCLI varchar(60) NOT NULL,
APECLI varchar(80) NOT NULL,
EMACLI varchar(80) NOT NULL,
CELCLI char(9) NOT NULL,
DIRCLI varchar(70) NOT NULL,
ESTCLI char(1) NOT NULL,
)
GO

create table vendedor
(
CODVEND char(4) NOT NULL,
NOMVEND varchar(60) NOT NULL,
APEVEND varchar(80) NOT NULL,
EMAVEND varchar(80) NOT NULL,
CELVEND char(9) NOT NULL,
DIRVEND varchar(70) NOT NULL,
ESTVEND char(1) NOT NULL,
)
go


create table producto 
(
CODPRO varchar(5) NOT NULL,
DESCPRO varchar(80) NOT NULL,
CATPRO char(1) NOT NULL,
PREPRO decimal(8,2) NOT NULL,
STOCKPRO int NOT NULL,
ESTPRO char(1) NOT NULL,
)
go


create table proveedor
(
CODPROV char(5) NOT NULL,
RAZSOCPROV varchar(90)  NOT NULL,
RUCPROV varchar(11) NOT NULL,
EMAPROV varchar(70) NOT NULL,
ESTPROV char(1) NOT NULL,
)
go



create table venta
(
CODVEN char(5) NOT NULL,
FECVEN datetime NOT NULL,
CODCLI char(4) NOT NULL,
CODVEND char(4) NOT NULL,
ESTVEN char(1) NOT NULL,
)


create table venta_detalle
(
IDVENDET int NOT NULL,
CODVEN char(5) NOT NULL,
CODPRO char(5) NOT NULL,
CANTPRO int NOT NULL,
)



create table compra
(
CODCOM char(5) NOT NULL,
FECCOM datetime NOT NULL,
CODVEND char(4) NOT NULL,
CODPROV char(5) NOT NULL,
ESTCOM char(1) NOT NULL, 
)

create table compra_detalle
( 
IDCOMDET int  NOT NULL, 
CODCOM  char(5) NOT NULL, 
CODPRO char(5) NOT NULL, 
CANTPRO int NOT NULL, 
)

/*insertando registros de cliente */

INSERT INTO CLIENTE
(CODCLI,NOMCLI,APECLI,EMACLI,CELCLI,DIRCLI,ESTCLI)
VALUES 

('CL01','Juana','Campos Ortiz','juana.campos@gmail.com','987485152','AV.Miraflores','A'),
('CL02','Sofia','Barrios Salcedo','sofia.barrios@outlook.com','','Jr.Huallaga','A'),
('CL03','Claudio','Perez Luna','claudio.perez@outlook.com','984510147','AV.Libertadores','A'),
('CL04','Marcos','Avila Manco','marcos.avila@yahoo.com','','Calle Huallaga','A'),
('CL05','Anastasio','Salomon Inti','anastasio.salomon@gmail.com','','Jr.San Martin','A')

select * from cliente

/*insertando registros de vendedor */

INSERT INTO VENDEDOR
(CODVEND,NOMVEND,APEVEND,EMAVEND,CELVEND,DIRVEND,ESTVEND)
VALUES 
('VEN1','Gloria','Carrizales Paredes','gloria.carrizales@gmail.com','984574123','Calle Las Begonias','A'),
('VEN2','Gabriel','Lozada Lombardi','gabriel.lozada@gmail.com','974512368','Av.Los Girasoles','A'),
('VEN3','Gilberto','Martinez Guerra','gilberto.martinez@gmail.com','','Jr.Palomares','A')

select * from vendedor

/*insertando registros de proveedor */

INSERT INTO PROVEEDOR
(CODPROV,RAZSOCPROV,RUCPROV,EMAPROV,ESTPROV)
VALUES
('PRV01','LG Corportation','87542136951','informes@lg.com.pe','A'),
('PRV02','SONY','45213698741','informes@sony.com.pe','A'),
('PRV03','SAMSUNG','85321697661','informes@samsung.com.pe','A'),
('PRV04','OSTER SRL','55663214478','informes@oster.com.pe','A'),
('PRV05','ASUS','99663325478','informes@asus.com.pe','A')

select * from proveedor


/*insertando registros de producto */
INSERT INTO PRODUCTO
(CODPRO,DESCPRO,CATPRO,PREPRO,STOCKPRO,ESTPRO)
VALUES
('PRO01','Refrigeradora LG Side By Side','1','4149','15','A'),
('PRO02','Refrigeradora SBS 602L','1','3599','10','A'),
('PRO03','Refrigeradora Top Mount 500 L','1','4149','8','A'),
('PRO04','TV SAMSUNG UHD 55','2','4149','25','A'),
('PRO05','Televisor 65 LG UHD 4K','2','4149','20','A'),
('PRO06','TV CRYSTAL UHD 55','2','4149','7','A'),
('PRO07','ASUS X415JA Core i3 10a Gen 14','3','4149','17','A'),
('PRO08','Lenovo IdeaPad 5i Intel Core i7 14','3','4149','10','A'),
('PRO09','Laptop HP 15-dw1085la Intel Core i3','3','4149','15','A'),
('PRO10','Galaxy A52 128GB','4','4149','25','A'),
('PRO11','iphone 11 64GB Morado','4','4149','30','A'),
('PRO12','Poco X3 GT 5G 256GB 8GB','4','1450','20','A')

select * from producto

